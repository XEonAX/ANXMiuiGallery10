package com.miui.gallery.data;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.miui.gallery.provider.CloudUtils;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.StorageUtils;
import java.io.File;
import java.io.FilenameFilter;

public class BackgroundJobService extends IntentService {
    public BackgroundJobService() {
        super("BackgroundJobService");
    }

    protected void onHandleIntent(Intent intent) {
        int job = intent.getIntExtra("job", 0);
        switch (job) {
            case 1:
                OldThumbnailTransferer.getInstance().transfer();
                return;
            case 2:
                deleteSecretThumbnail();
                return;
            case 3:
                CloudUtils.deleteBySha1(this, intent.getBooleanExtra("keep_dup", true), 54, intent.getStringArrayExtra("sha1_list"));
                return;
            case 4:
                CloudUtils.deleteByPath(this, 54, intent.getStringArrayExtra("path_list"));
                return;
            default:
                throw new IllegalArgumentException("unsupported job: " + job);
        }
    }

    private void deleteSecretThumbnail() {
        deleteSecretThumbnail(StorageUtils.getPathInPrimaryStorage("MIUI/Gallery/cloud/.secretAlbum"));
        deleteSecretThumbnail(StorageUtils.getPathInSecondaryStorage("MIUI/Gallery/cloud/.secretAlbum"));
    }

    private void deleteSecretThumbnail(String secretFolderPath) {
        File secretFolder = new File(secretFolderPath);
        if (secretFolder.exists()) {
            File[] files = secretFolder.listFiles(new FilenameFilter() {
                public boolean accept(File dir, String filename) {
                    return filename.length() > 0 && filename.endsWith(".sa");
                }
            });
            if (files != null) {
                for (File file : files) {
                    MediaFileUtils.deleteFileType(FileType.THUMBNAIL, file);
                }
            }
        }
    }

    static void startJobTransferOldThumbnail(Context context) {
        Intent intent = new Intent(context, BackgroundJobService.class);
        intent.putExtra("job", 1);
        context.startService(intent);
    }

    public static void startJobDeleteSecretThumbnail(Context context) {
        Intent intent = new Intent(context, BackgroundJobService.class);
        intent.putExtra("job", 2);
        context.startService(intent);
    }

    public static void startJobDeleteImageBySha1(Context context, String[] sha1s, boolean keepDup) {
        Intent intent = new Intent(context, BackgroundJobService.class);
        intent.putExtra("job", 3);
        intent.putExtra("sha1_list", sha1s);
        intent.putExtra("keep_dup", keepDup);
        context.startService(intent);
    }

    public static void startJobDeleteImageByPath(Context context, String[] paths) {
        Intent intent = new Intent(context, BackgroundJobService.class);
        intent.putExtra("job", 4);
        intent.putExtra("path_list", paths);
        context.startService(intent);
    }
}
