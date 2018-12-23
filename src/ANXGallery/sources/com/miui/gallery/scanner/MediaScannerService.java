package com.miui.gallery.scanner;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.text.TextUtils;
import com.miui.gallery.preference.GalleryPreferences.MediaScanner;
import com.miui.gallery.scanner.ScanTaskManager.OnAllTasksExecutedListener;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.GalleryDataCache;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.StorageUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class MediaScannerService extends Service {
    private ScanTaskManager mManager;
    private BroadcastReceiver mMediaUnmountedReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.MEDIA_UNMOUNTED".equals(intent.getAction()) && !MiscUtil.isValid(StorageUtils.getMountedVolumePaths(context))) {
                MediaScannerService.this.mManager.cancelByPriority(6);
                Log.d("MediaScannerService", "All external storage are unmounted, cancel cleanup task");
            }
        }
    };

    private class CleanupTask extends ScanTask {
        public CleanupTask(boolean foreground) {
            super(6, foreground);
            Log.i("MediaScannerService", toString());
        }

        public Void run(JobContext jc) {
            boolean hasExternalStorageMounted = MiscUtil.isValid(StorageUtils.getMountedVolumePaths(MediaScannerService.this));
            boolean hasMainSDCard = StorageUtils.isPrimaryStorageWritable(MediaScannerService.this);
            if (hasExternalStorageMounted && hasMainSDCard) {
                MediaScanner.cleanup(MediaScannerService.this, jc);
            } else {
                if (!hasExternalStorageMounted) {
                    MediaScannerService.this.recordStorageUnmounted();
                }
                if (!hasMainSDCard) {
                    MediaScannerService.this.recordMainSDCardUnwritable();
                }
            }
            return null;
        }

        protected boolean canRunningInBackground() {
            return true;
        }

        public boolean equals(Object o) {
            if (o == null || !(o instanceof CleanupTask)) {
                return super.equals(o);
            }
            return true;
        }

        public int hashCode() {
            return 1;
        }

        public String toString() {
            return String.format(Locale.US, "CleanupTask priority %d, foreground %s", new Object[]{Integer.valueOf(getPriority()), Boolean.valueOf(isForeground())});
        }
    }

    private class ScanFileTask extends ScanTask {
        private String mPath;

        public ScanFileTask(String path, int priority, boolean foreground, boolean forceScan) {
            super(priority, foreground, forceScan);
            this.mPath = path;
            Log.i("MediaScannerService", toString());
        }

        public Void run(JobContext jc) {
            MediaScanner.scanSingleFileForExternal(MediaScannerService.this, this.mPath);
            return null;
        }

        public String getFilePath() {
            return this.mPath;
        }

        public boolean equals(Object o) {
            if (o == null || !(o instanceof ScanFileTask)) {
                return super.equals(o);
            }
            return TextUtils.equals(this.mPath, ((ScanFileTask) o).getFilePath());
        }

        public int hashCode() {
            return TextUtils.isEmpty(this.mPath) ? 1 : this.mPath.hashCode();
        }

        public String toString() {
            return String.format(Locale.US, "ScanFileTask priority %d, foreground %s, path %s", new Object[]{Integer.valueOf(getPriority()), Boolean.valueOf(isForeground()), this.mPath});
        }
    }

    private class ScanFilesTask extends ScanTask {
        private List<String> mFiles;
        private int mScanStartIndex;
        private int mScanType;
        private long mTaskStartTime;

        public ScanFilesTask(List<String> files, int priority, boolean foreground, int scanType, long taskStartTime) {
            super(priority, foreground);
            this.mFiles = files;
            this.mScanType = scanType;
            this.mTaskStartTime = taskStartTime;
            Log.i("MediaScannerService", toString());
        }

        public List<String> getFiles() {
            return this.mFiles;
        }

        protected boolean canRunningInBackground() {
            return true;
        }

        public Void run(JobContext jc) {
            if (this.mScanStartIndex < this.mFiles.size()) {
                List<String> files = this.mFiles.subList(this.mScanStartIndex, this.mFiles.size());
                if (MiscUtil.isValid(files)) {
                    Log.d("MediaScannerService", "%s %s", Thread.currentThread().toString(), files);
                    long start = System.currentTimeMillis();
                    int nextScanIndex = MediaScanner.scanFiles(MediaScannerService.this, files, jc);
                    this.mScanStartIndex += nextScanIndex;
                    if (nextScanIndex == files.size() || jc == null || !jc.isCancelled()) {
                        if (this.mScanType == 1) {
                            MediaScanner.setLastImagesScanTime(this.mTaskStartTime);
                        } else if (this.mScanType == 2) {
                            MediaScanner.setLastVideosScanTime(this.mTaskStartTime);
                        }
                    }
                    String str = "MediaScannerService";
                    String str2 = "ScanFilesTask [%s], scan [%d] files costs [%d]";
                    Object obj = (jc == null || !jc.isCancelled()) ? "finished" : "interrupted";
                    Log.d(str, str2, obj, Integer.valueOf(nextScanIndex), Long.valueOf(System.currentTimeMillis() - start));
                }
            }
            return null;
        }

        public boolean equals(Object o) {
            if (o == null || !(o instanceof ScanFilesTask)) {
                return super.equals(o);
            }
            List<String> existingFiles = ((ScanFilesTask) o).getFiles();
            if (this.mFiles == null || existingFiles == null || existingFiles.size() < this.mFiles.size()) {
                return false;
            }
            for (String file : this.mFiles) {
                if (!existingFiles.contains(file)) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            return this.mFiles == null ? 1 : this.mFiles.hashCode();
        }

        public String toString() {
            return String.format(Locale.US, "ScanFilesTask priority %d, foreground %s, files %s", new Object[]{Integer.valueOf(getPriority()), Boolean.valueOf(isForeground()), this.mFiles});
        }
    }

    private class ScanFoldersTask extends ScanTask {
        private boolean mBulkNotify;
        private List<String> mPaths;
        private boolean mRecursiveScan;
        private int mScanStartIndex;

        public ScanFoldersTask(List<String> paths, int priority, boolean recursiveScan, boolean foreground) {
            super(priority, foreground);
            this.mBulkNotify = true;
            this.mPaths = paths;
            this.mRecursiveScan = recursiveScan;
            Log.i("MediaScannerService", toString());
        }

        public ScanFoldersTask(MediaScannerService mediaScannerService, List<String> paths, int priority, boolean recursiveScan, boolean foreground, boolean bulkNotify) {
            this(paths, priority, recursiveScan, foreground);
            this.mBulkNotify = bulkNotify;
        }

        public List<String> getPaths() {
            return this.mPaths;
        }

        public Void run(JobContext jc) {
            if (this.mScanStartIndex < this.mPaths.size()) {
                List<String> paths = this.mPaths.subList(this.mScanStartIndex, this.mPaths.size());
                if (MiscUtil.isValid(paths)) {
                    Log.d("MediaScannerService", "%s %s", Thread.currentThread().toString(), paths);
                    long start = System.currentTimeMillis();
                    int nextScanIndex = MediaScanner.scanDirectories(MediaScannerService.this, paths, jc, this.mRecursiveScan, this.mBulkNotify);
                    this.mScanStartIndex += nextScanIndex;
                    String str = "MediaScannerService";
                    String str2 = "ScanFoldersTask [%s], scan [%d] directories costs [%d]";
                    Object obj = (jc == null || !jc.isCancelled()) ? "finished" : "interrupted";
                    Log.d(str, str2, obj, Integer.valueOf(nextScanIndex), Long.valueOf(System.currentTimeMillis() - start));
                }
            }
            return null;
        }

        public boolean equals(Object o) {
            if (o == null || !(o instanceof ScanFoldersTask)) {
                return super.equals(o);
            }
            ScanFoldersTask existingTask = (ScanFoldersTask) o;
            if (existingTask.getPriority() > getPriority()) {
                return false;
            }
            List<String> existingPaths = existingTask.getPaths();
            if (this.mPaths == null || existingPaths == null || existingPaths.size() < this.mPaths.size()) {
                return false;
            }
            for (String path : this.mPaths) {
                if (!existingPaths.contains(path)) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            return this.mPaths == null ? 1 : this.mPaths.hashCode();
        }

        public String toString() {
            return String.format(Locale.US, "ScanFoldersTask priority %d, recursiveScan %b, foreground %b, paths %s", new Object[]{Integer.valueOf(getPriority()), Boolean.valueOf(this.mRecursiveScan), Boolean.valueOf(isForeground()), this.mPaths});
        }
    }

    public void onCreate() {
        this.mManager = new ScanTaskManager(1, new OnAllTasksExecutedListener() {
            public void onAllTasksExecuted() {
                Log.i("MediaScannerService", "onAllTasksExecuted");
                MediaScannerService.this.stopSelf();
            }
        });
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        filter.addDataScheme("file");
        registerReceiver(this.mMediaUnmountedReceiver, filter);
        Log.i("MediaScannerService", "onCreate");
    }

    public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent == null || intent.getExtras() == null) {
            return 2;
        }
        String cacheKey;
        Log.i("MediaScannerService", "onStartCommand: " + startId);
        String filePath = intent.getStringExtra("scan_file_path");
        ArrayList<String> filePaths = null;
        if (intent.hasExtra("scan_files_path")) {
            cacheKey = intent.getStringExtra("scan_files_path");
            if (!TextUtils.isEmpty(cacheKey)) {
                filePaths = (ArrayList) GalleryDataCache.getInstance().remove(cacheKey);
            }
        }
        ArrayList<String> folderPaths = null;
        if (intent.hasExtra("scan_folder_paths")) {
            cacheKey = intent.getStringExtra("scan_folder_paths");
            if (!TextUtils.isEmpty(cacheKey)) {
                folderPaths = (ArrayList) GalleryDataCache.getInstance().remove(cacheKey);
            }
        }
        String volume = intent.getStringExtra("scan_volume");
        int scanPriority = intent.getIntExtra("key_scan_priority", 7);
        boolean foreground = MiscUtil.isAppProcessInForeground(this);
        boolean forceScan = intent.getBooleanExtra("key_force_scan", false);
        if (intent.getBooleanExtra("key_cancel_running", false)) {
            this.mManager.cancelAll();
        }
        if (intent.getBooleanExtra("key_trigger_cleanup", false)) {
            try {
                this.mManager.submit(new CleanupTask(foreground));
            } catch (Throwable e) {
                Log.w("MediaScannerService", e);
            }
        }
        if (!TextUtils.isEmpty(filePath)) {
            try {
                this.mManager.submit(new ScanFileTask(filePath, scanPriority, foreground, forceScan));
            } catch (Throwable e2) {
                Log.w("MediaScannerService", e2);
            }
        }
        if (MiscUtil.isValid(filePaths)) {
            try {
                this.mManager.submit(new ScanFilesTask(filePaths, scanPriority, foreground, intent.getIntExtra("key_scan_type", 0), intent.getLongExtra("key_task_start_time", System.currentTimeMillis())));
            } catch (Throwable e22) {
                Log.w("MediaScannerService", e22);
            }
        }
        if (MiscUtil.isValid(folderPaths)) {
            try {
                boolean bulkNotify = intent.getBooleanExtra("key_bulk_notify", true);
                boolean recursiveScan = intent.getBooleanExtra("key_recursive_scan", false);
                if (scanPriority == 3) {
                    this.mManager.cancelByPriority(3);
                }
                this.mManager.submit(new ScanFoldersTask(this, folderPaths, scanPriority, recursiveScan, foreground, bulkNotify));
            } catch (Throwable e222) {
                Log.w("MediaScannerService", e222);
            }
        }
        if ("external".equals(volume)) {
            Log.i("MediaScannerService", "scan external volume");
            List<String> paths = StorageUtils.getMountedVolumePaths(getApplicationContext());
            if (MiscUtil.isValid(paths)) {
                this.mManager.submit(new ScanFoldersTask(paths, scanPriority, true, foreground));
            }
        } else if ("internal".equals(volume)) {
            Log.w("MediaScannerService", "Received a scan internal volume command, ignore it.");
        }
        return 3;
    }

    private void recordStorageUnmounted() {
        Log.e("MediaScannerService", "No external storage mounted, skip cleanup");
        GallerySamplingStatHelper.recordErrorEvent("media_scanner", "no_external_storage_mounted", GallerySamplingStatHelper.generatorCommonParams());
    }

    private void recordMainSDCardUnwritable() {
        Log.e("MediaScannerService", "Main SDCard is unwritable, skip cleanup");
        GallerySamplingStatHelper.recordErrorEvent("media_scanner", "main_sdcard_unwritable", GallerySamplingStatHelper.generatorCommonParams());
    }

    public void onDestroy() {
        unregisterReceiver(this.mMediaUnmountedReceiver);
        this.mManager.shutdown();
        Log.d("MediaScannerService", "onDestroy");
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onTrimMemory(int level) {
        super.onTrimMemory(level);
        if (level == 20) {
            Log.i("MediaScannerService", "TRIM_MEMORY_UI_HIDDEN");
            this.mManager.cancelForegroundTask();
        }
    }
}
