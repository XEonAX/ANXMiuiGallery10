package com.miui.gallery.ui;

import android.app.Activity;
import android.app.Dialog;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.GalleryDialogFragment;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import miui.app.ProgressDialog;

public class SaveUriDialogFragment extends GalleryDialogFragment {
    private OnCompleteListener mListener;
    private ProgressDialog mProgressDialog;

    public interface OnCompleteListener {
        void onComplete(String str);
    }

    public static void show(Activity activity, Uri uri, OnCompleteListener listener) {
        SaveUriDialogFragment dialog = new SaveUriDialogFragment();
        Bundle data = new Bundle();
        data.putParcelable("key_uri", uri);
        dialog.setArguments(data);
        dialog.setOnCompleteListener(listener);
        dialog.showAllowingStateLoss(activity.getFragmentManager(), "SaveUriDialogFragment");
    }

    public void setOnCompleteListener(OnCompleteListener listener) {
        this.mListener = listener;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.mProgressDialog = ProgressDialog.show(getActivity(), "", getActivity().getString(R.string.adding_to_album), true, false);
        return this.mProgressDialog;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        save((Uri) getArguments().getParcelable("key_uri"));
    }

    public void onDestroy() {
        setOnCompleteListener(null);
        super.onDestroy();
    }

    private void save(final Uri uri) {
        if (uri != null) {
            ThreadManager.getMiscPool().submit(new Job<String>() {
                public String run(JobContext jc) {
                    return SaveUriDialogFragment.this.saveInternal(uri);
                }
            }, new FutureListener<String>() {
                public void onFutureDone(final Future<String> future) {
                    if (SaveUriDialogFragment.this.getActivity() != null) {
                        SaveUriDialogFragment.this.getActivity().runOnUiThread(new Runnable() {
                            public void run() {
                                if (SaveUriDialogFragment.this.mListener != null) {
                                    SaveUriDialogFragment.this.mListener.onComplete((String) future.get());
                                }
                                if (SaveUriDialogFragment.this.isAdded()) {
                                    SaveUriDialogFragment.this.dismissAllowingStateLoss();
                                }
                            }
                        });
                    }
                }
            });
        } else if (this.mListener != null) {
            this.mListener.onComplete(null);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x00a4 A:{SYNTHETIC, Splitter: B:30:0x00a4} */
    private java.lang.String saveInternal(android.net.Uri r15) {
        /*
        r14 = this;
        r10 = 0;
        r7 = 0;
        r4 = 0;
        r8 = 0;
        r11 = com.miui.gallery.GalleryApp.sGetAndroidContext();	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        r11 = r11.getContentResolver();	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        r12 = "r";
        r7 = r11.openFileDescriptor(r15, r12);	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        r3 = r7.getFileDescriptor();	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        r6 = r14.getMimeType(r15);	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        r2 = miui.net.MimeUtils.guessExtensionFromMimeType(r6);	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        r11 = android.text.TextUtils.isEmpty(r2);	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        if (r11 == 0) goto L_0x0033;
    L_0x0024:
        r11 = "SaveUriDialogFragment";
        r12 = "fail to save [%s] because of can't get right file extension";
        com.miui.gallery.util.Log.e(r11, r12, r15);	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        com.miui.gallery.util.MiscUtil.closeSilently(r7);
        com.miui.gallery.util.MiscUtil.closeSilently(r4);
        r9 = r10;
    L_0x0032:
        return r9;
    L_0x0033:
        r11 = "DCIM/Camera";
        r0 = com.miui.gallery.util.StorageUtils.getSafePathInPriorStorageForUnadapted(r11);	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        r11 = new java.io.File;	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        r11.<init>(r0);	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        r12 = 0;
        r11 = com.miui.gallery.util.FileUtils.createFolder(r11, r12);	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        if (r11 != 0) goto L_0x004d;
    L_0x0045:
        com.miui.gallery.util.MiscUtil.closeSilently(r7);
        com.miui.gallery.util.MiscUtil.closeSilently(r4);
        r9 = r10;
        goto L_0x0032;
    L_0x004d:
        r8 = generateFileForSaving(r0, r2);	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        if (r8 != 0) goto L_0x005b;
    L_0x0053:
        com.miui.gallery.util.MiscUtil.closeSilently(r7);
        com.miui.gallery.util.MiscUtil.closeSilently(r4);
        r9 = r10;
        goto L_0x0032;
    L_0x005b:
        r5 = new java.io.FileInputStream;	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        r5.<init>(r3);	 Catch:{ FileNotFoundException -> 0x0091, Exception -> 0x00a1 }
        r11 = miui.os.FileUtils.copyToFile(r5, r8);	 Catch:{ FileNotFoundException -> 0x00cb, Exception -> 0x00c8, all -> 0x00c5 }
        if (r11 != 0) goto L_0x006f;
    L_0x0066:
        com.miui.gallery.util.MiscUtil.closeSilently(r7);
        com.miui.gallery.util.MiscUtil.closeSilently(r5);
        r4 = r5;
        r9 = r10;
        goto L_0x0032;
    L_0x006f:
        r9 = r8.getAbsolutePath();	 Catch:{ FileNotFoundException -> 0x00cb, Exception -> 0x00c8, all -> 0x00c5 }
        r11 = r14.getActivity();	 Catch:{ FileNotFoundException -> 0x00cb, Exception -> 0x00c8, all -> 0x00c5 }
        r11 = r11.getApplicationContext();	 Catch:{ FileNotFoundException -> 0x00cb, Exception -> 0x00c8, all -> 0x00c5 }
        r12 = 0;
        com.miui.gallery.scanner.MediaScannerUtil.scanSingleFile(r11, r9, r12);	 Catch:{ FileNotFoundException -> 0x00cb, Exception -> 0x00c8, all -> 0x00c5 }
        r11 = 1;
        r12 = 1;
        r12 = new java.io.File[r12];	 Catch:{ FileNotFoundException -> 0x00cb, Exception -> 0x00c8, all -> 0x00c5 }
        r13 = 0;
        r12[r13] = r8;	 Catch:{ FileNotFoundException -> 0x00cb, Exception -> 0x00c8, all -> 0x00c5 }
        com.miui.gallery.util.MediaFileUtils.triggerMediaScan(r11, r12);	 Catch:{ FileNotFoundException -> 0x00cb, Exception -> 0x00c8, all -> 0x00c5 }
        com.miui.gallery.util.MiscUtil.closeSilently(r7);
        com.miui.gallery.util.MiscUtil.closeSilently(r5);
        r4 = r5;
        goto L_0x0032;
    L_0x0091:
        r1 = move-exception;
    L_0x0092:
        r11 = "SaveUriDialogFragment";
        r12 = "fail to open %s %s";
        com.miui.gallery.util.Log.e(r11, r12, r15, r1);	 Catch:{ all -> 0x00bd }
        com.miui.gallery.util.MiscUtil.closeSilently(r7);
        com.miui.gallery.util.MiscUtil.closeSilently(r4);
    L_0x009f:
        r9 = r10;
        goto L_0x0032;
    L_0x00a1:
        r1 = move-exception;
    L_0x00a2:
        if (r8 == 0) goto L_0x00af;
    L_0x00a4:
        r11 = com.miui.gallery.util.MediaFileUtils.FileType.TEMP;	 Catch:{ all -> 0x00bd }
        r12 = 1;
        r12 = new java.io.File[r12];	 Catch:{ all -> 0x00bd }
        r13 = 0;
        r12[r13] = r8;	 Catch:{ all -> 0x00bd }
        com.miui.gallery.util.MediaFileUtils.deleteFileType(r11, r12);	 Catch:{ all -> 0x00bd }
    L_0x00af:
        r11 = "SaveUriDialogFragment";
        r12 = "fail to save %s %s";
        com.miui.gallery.util.Log.e(r11, r12, r15, r1);	 Catch:{ all -> 0x00bd }
        com.miui.gallery.util.MiscUtil.closeSilently(r7);
        com.miui.gallery.util.MiscUtil.closeSilently(r4);
        goto L_0x009f;
    L_0x00bd:
        r10 = move-exception;
    L_0x00be:
        com.miui.gallery.util.MiscUtil.closeSilently(r7);
        com.miui.gallery.util.MiscUtil.closeSilently(r4);
        throw r10;
    L_0x00c5:
        r10 = move-exception;
        r4 = r5;
        goto L_0x00be;
    L_0x00c8:
        r1 = move-exception;
        r4 = r5;
        goto L_0x00a2;
    L_0x00cb:
        r1 = move-exception;
        r4 = r5;
        goto L_0x0092;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.ui.SaveUriDialogFragment.saveInternal(android.net.Uri):java.lang.String");
    }

    private String getMimeType(Uri uri) {
        String type = null;
        String extension = MimeTypeMap.getFileExtensionFromUrl(uri.toString());
        if (!TextUtils.isEmpty(extension)) {
            type = MimeTypeMap.getSingleton().getMimeTypeFromExtension(extension.toLowerCase());
        }
        if (TextUtils.isEmpty(type)) {
            return GalleryApp.sGetAndroidContext().getContentResolver().getType(uri);
        }
        return type;
    }

    private static File generateFileForSaving(String directory, String extension) {
        String filePath = "";
        String DATETIME_FORMAT_STR = "yyyyMMdd_kkmmss";
        int index = 0;
        while (true) {
            Date now = new Date(System.currentTimeMillis());
            String fileName = String.format("SAVE_%s", new Object[]{new SimpleDateFormat("yyyyMMdd_kkmmss").format(now)});
            filePath = String.format("%s/%s", new Object[]{directory, fileName});
            if (index > 0) {
                filePath = filePath + "_" + index + "." + extension;
            } else {
                filePath = filePath + "." + extension;
            }
            File file = new File(filePath);
            if (file.exists()) {
                index++;
            } else {
                try {
                    file.createNewFile();
                    return file;
                } catch (IOException e) {
                    Log.e("SaveUriDialogFragment", "generateFileForSaving() failed %s %s", file.getAbsolutePath(), e);
                    return null;
                }
            }
        }
    }
}
