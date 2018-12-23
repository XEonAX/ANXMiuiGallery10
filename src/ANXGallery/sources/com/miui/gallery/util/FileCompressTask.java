package com.miui.gallery.util;

import android.graphics.Bitmap.Config;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import java.util.List;

public class FileCompressTask implements Job {
    private String mCompressFolder;
    private List<String> mCompressItems;
    private OnCompressListener mCompressListener;
    private DisplayImageOptions mDisplayImageOptions = new Builder().imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).build();

    public interface OnCompressListener {
        void onCompressComplete(List<String> list, List<String> list2);

        void onCompressProgress(float f);
    }

    public FileCompressTask(List<String> items, OnCompressListener listener, String compressFolder) {
        this.mCompressItems = items;
        this.mCompressListener = listener;
        this.mCompressFolder = compressFolder;
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x013b  */
    public java.lang.Object run(com.miui.gallery.threadpool.ThreadPool.JobContext r23) {
        /*
        r22 = this;
        r0 = r22;
        r0 = r0.mCompressItems;
        r17 = r0;
        r17 = com.miui.gallery.util.MiscUtil.isValid(r17);
        if (r17 == 0) goto L_0x01a1;
    L_0x000c:
        r0 = r22;
        r0 = r0.mCompressItems;
        r17 = r0;
        r15 = r17.size();
        r10 = 0;
        r12 = new java.util.ArrayList;
        r12.<init>();
        r7 = new java.util.ArrayList;
        r7.<init>();
        r5 = new java.io.File;
        r0 = r22;
        r0 = r0.mCompressFolder;
        r17 = r0;
        r17 = com.miui.gallery.util.StorageUtils.getSafePathInPriorStorageForUnadapted(r17);
        r0 = r17;
        r5.<init>(r0);
        r17 = r5.exists();
        if (r17 == 0) goto L_0x0049;
    L_0x0038:
        r17 = com.miui.gallery.util.MediaFileUtils.FileType.FOLDER;
        r18 = 1;
        r0 = r18;
        r0 = new java.io.File[r0];
        r18 = r0;
        r19 = 0;
        r18[r19] = r5;
        com.miui.gallery.util.MediaFileUtils.deleteFileType(r17, r18);
    L_0x0049:
        r17 = 1;
        r0 = r17;
        com.miui.gallery.util.FileUtils.createFolder(r5, r0);
        r0 = r22;
        r0 = r0.mCompressItems;
        r17 = r0;
        r17 = r17.iterator();
    L_0x005a:
        r18 = r17.hasNext();
        if (r18 == 0) goto L_0x0189;
    L_0x0060:
        r16 = r17.next();
        r16 = (java.lang.String) r16;
        r18 = r23.isCancelled();
        if (r18 == 0) goto L_0x006f;
    L_0x006c:
        r17 = 0;
    L_0x006e:
        return r17;
    L_0x006f:
        r18 = com.nostra13.universalimageloader.core.ImageLoader.getInstance();
        r19 = com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme.FILE;
        r0 = r19;
        r1 = r16;
        r19 = r0.wrap(r1);
        r0 = r22;
        r0 = r0.mDisplayImageOptions;
        r20 = r0;
        r4 = r18.loadImageSync(r19, r20);
        r18 = com.miui.gallery.util.BitmapUtils.isValidate(r4);
        if (r18 == 0) goto L_0x0157;
    L_0x008d:
        r18 = com.miui.gallery.util.FileUtils.getFileName(r16);
        r14 = com.miui.gallery.util.FileUtils.getFileTitle(r18);
        r13 = new java.io.File;
        r18 = new java.lang.StringBuilder;
        r18.<init>();
        r0 = r18;
        r18 = r0.append(r14);
        r19 = ".jpg";
        r18 = r18.append(r19);
        r18 = r18.toString();
        r0 = r18;
        r13.<init>(r5, r0);
        r18 = r13.exists();
        if (r18 == 0) goto L_0x00e5;
    L_0x00b7:
        r13 = new java.io.File;
        r18 = new java.lang.StringBuilder;
        r18.<init>();
        r0 = r18;
        r18 = r0.append(r14);
        r19 = "_";
        r18 = r18.append(r19);
        r20 = java.lang.System.currentTimeMillis();
        r0 = r18;
        r1 = r20;
        r18 = r0.append(r1);
        r19 = ".jpg";
        r18 = r18.append(r19);
        r18 = r18.toString();
        r0 = r18;
        r13.<init>(r5, r0);
    L_0x00e5:
        r8 = 0;
        r9 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x012a }
        r9.<init>(r13);	 Catch:{ Exception -> 0x012a }
        r18 = android.graphics.Bitmap.CompressFormat.JPEG;	 Catch:{ Exception -> 0x01a8, all -> 0x01a5 }
        r19 = 90;
        r0 = r18;
        r1 = r19;
        r4.compress(r0, r1, r9);	 Catch:{ Exception -> 0x01a8, all -> 0x01a5 }
        r18 = r13.getAbsolutePath();	 Catch:{ Exception -> 0x01a8, all -> 0x01a5 }
        r0 = r18;
        r12.add(r0);	 Catch:{ Exception -> 0x01a8, all -> 0x01a5 }
        com.miui.gallery.util.MiscUtil.closeSilently(r9);
        r10 = r10 + 1;
        r0 = r22;
        r0 = r0.mCompressListener;
        r18 = r0;
        if (r18 == 0) goto L_0x005a;
    L_0x010c:
        r18 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r0 = (float) r10;
        r19 = r0;
        r18 = r18 * r19;
        r0 = (float) r15;
        r19 = r0;
        r11 = r18 / r19;
        r18 = com.miui.gallery.threadpool.ThreadManager.getMainHandler();
        r19 = new com.miui.gallery.util.FileCompressTask$1;
        r0 = r19;
        r1 = r22;
        r0.<init>(r11);
        r18.post(r19);
        goto L_0x005a;
    L_0x012a:
        r6 = move-exception;
    L_0x012b:
        r6.printStackTrace();	 Catch:{ all -> 0x015e }
        com.miui.gallery.util.MiscUtil.closeSilently(r8);
        r10 = r10 + 1;
        r0 = r22;
        r0 = r0.mCompressListener;
        r18 = r0;
        if (r18 == 0) goto L_0x0157;
    L_0x013b:
        r18 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r0 = (float) r10;
        r19 = r0;
        r18 = r18 * r19;
        r0 = (float) r15;
        r19 = r0;
        r11 = r18 / r19;
        r18 = com.miui.gallery.threadpool.ThreadManager.getMainHandler();
        r19 = new com.miui.gallery.util.FileCompressTask$1;
        r0 = r19;
        r1 = r22;
        r0.<init>(r11);
        r18.post(r19);
    L_0x0157:
        r0 = r16;
        r7.add(r0);
        goto L_0x005a;
    L_0x015e:
        r17 = move-exception;
    L_0x015f:
        com.miui.gallery.util.MiscUtil.closeSilently(r8);
        r10 = r10 + 1;
        r0 = r22;
        r0 = r0.mCompressListener;
        r18 = r0;
        if (r18 == 0) goto L_0x0188;
    L_0x016c:
        r18 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r0 = (float) r10;
        r19 = r0;
        r18 = r18 * r19;
        r0 = (float) r15;
        r19 = r0;
        r11 = r18 / r19;
        r18 = com.miui.gallery.threadpool.ThreadManager.getMainHandler();
        r19 = new com.miui.gallery.util.FileCompressTask$1;
        r0 = r19;
        r1 = r22;
        r0.<init>(r11);
        r18.post(r19);
    L_0x0188:
        throw r17;
    L_0x0189:
        r0 = r22;
        r0 = r0.mCompressListener;
        r17 = r0;
        if (r17 == 0) goto L_0x01a1;
    L_0x0191:
        r17 = com.miui.gallery.threadpool.ThreadManager.getMainHandler();
        r18 = new com.miui.gallery.util.FileCompressTask$2;
        r0 = r18;
        r1 = r22;
        r0.<init>(r12, r7);
        r17.post(r18);
    L_0x01a1:
        r17 = 0;
        goto L_0x006e;
    L_0x01a5:
        r17 = move-exception;
        r8 = r9;
        goto L_0x015f;
    L_0x01a8:
        r6 = move-exception;
        r8 = r9;
        goto L_0x012b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.util.FileCompressTask.run(com.miui.gallery.threadpool.ThreadPool$JobContext):java.lang.Object");
    }
}
