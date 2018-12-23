package com.miui.gallery.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.DownloadPathHelper;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.StorageUtils;
import java.util.Map;

public class CheckThumbnailHelper {
    /* JADX WARNING: Missing block: B:10:0x0032, code:
            if (checkOriginalRecordExist(r14, r4.getPath(), r0) != false) goto L_0x0034;
     */
    /* JADX WARNING: Missing block: B:15:0x004d, code:
            if (checkUserCommentSha1Exist(r4.getPath()) == false) goto L_0x004f;
     */
    /* JADX WARNING: Missing block: B:16:0x004f, code:
            r5 = 1;
     */
    public static android.database.Cursor checkThumbnail(android.content.Context r14, java.lang.String[] r15, boolean r16) {
        /*
        if (r15 != 0) goto L_0x0004;
    L_0x0002:
        r2 = 0;
    L_0x0003:
        return r2;
    L_0x0004:
        r6 = java.lang.System.currentTimeMillis();
        r2 = new android.database.MatrixCursor;
        r8 = 1;
        r8 = new java.lang.String[r8];
        r9 = 0;
        r10 = "check_thumbnail_result";
        r8[r9] = r10;
        r9 = r15.length;
        r2.<init>(r8, r9);
        r0 = new java.util.HashMap;
        r0.<init>();
        r9 = r15.length;
        r8 = 0;
    L_0x001d:
        if (r8 >= r9) goto L_0x005a;
    L_0x001f:
        r3 = r15[r8];
        r5 = 1;
        r4 = android.net.Uri.parse(r3);	 Catch:{ Exception -> 0x0051 }
        if (r4 == 0) goto L_0x0035;
    L_0x0028:
        if (r16 == 0) goto L_0x0045;
    L_0x002a:
        r10 = r4.getPath();	 Catch:{ Exception -> 0x0051 }
        r10 = checkOriginalRecordExist(r14, r10, r0);	 Catch:{ Exception -> 0x0051 }
        if (r10 == 0) goto L_0x004f;
    L_0x0034:
        r5 = 0;
    L_0x0035:
        r10 = 1;
        r10 = new java.lang.Integer[r10];
        r11 = 0;
        r12 = java.lang.Integer.valueOf(r5);
        r10[r11] = r12;
        r2.addRow(r10);
        r8 = r8 + 1;
        goto L_0x001d;
    L_0x0045:
        r10 = r4.getPath();	 Catch:{ Exception -> 0x0051 }
        r10 = checkUserCommentSha1Exist(r10);	 Catch:{ Exception -> 0x0051 }
        if (r10 != 0) goto L_0x0034;
    L_0x004f:
        r5 = 1;
        goto L_0x0035;
    L_0x0051:
        r1 = move-exception;
        r10 = "CheckThumbnailHelper";
        r11 = "Failed checking file %s\n %s";
        com.miui.gallery.util.Log.e(r10, r11, r3, r1);
        goto L_0x0035;
    L_0x005a:
        r8 = "CheckThumbnailHelper";
        r9 = "Checked %d files, cost %ss";
        r10 = r15.length;
        r10 = java.lang.Integer.valueOf(r10);
        r12 = java.lang.System.currentTimeMillis();
        r12 = r12 - r6;
        r11 = java.lang.String.valueOf(r12);
        com.miui.gallery.util.Log.d(r8, r9, r10, r11);
        goto L_0x0003;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.provider.CheckThumbnailHelper.checkThumbnail(android.content.Context, java.lang.String[], boolean):android.database.Cursor");
    }

    private static boolean checkUserCommentSha1Exist(String filePath) {
        return !TextUtils.isEmpty(ExifUtil.getUserCommentSha1(filePath));
    }

    private static boolean checkOriginalRecordExist(Context context, String filePath, Map<String, Long> cachedAlbumMap) throws Exception {
        if (TextUtils.isEmpty(ExifUtil.getUserCommentSha1(filePath))) {
            return false;
        }
        boolean isThumbnail = false;
        Cursor cursor = null;
        try {
            ContentResolver contentResolver = context.getContentResolver();
            String parentPath = FileUtils.getParentFolderPath(StorageUtils.getRelativePath(context, filePath)).toLowerCase();
            if (DownloadPathHelper.isShareFolderRelativePath(parentPath)) {
                cursor = contentResolver.query(ShareImage.SHARE_URI, new String[]{"_id"}, String.format("%s LIKE '%s'", new Object[]{"sha1", sha1}), null, null);
                if (cursor == null || !cursor.moveToFirst()) {
                    isThumbnail = false;
                } else {
                    isThumbnail = true;
                }
            } else {
                Long albumId = (Long) cachedAlbumMap.get(parentPath);
                if (albumId == null) {
                    String where = "serverId = %s";
                    if (CloudUtils.getCameraLocalFile().equalsIgnoreCase(parentPath)) {
                        where = String.format(where, new Object[]{Long.valueOf(1)});
                    } else if (CloudUtils.getScreenshotsLocalFile().equalsIgnoreCase(parentPath)) {
                        where = String.format(where, new Object[]{Long.valueOf(2)});
                    } else {
                        where = String.format("%s LIKE '%s' AND %s AND %s", new Object[]{"localFile", parentPath, "serverType=0", "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))"});
                    }
                    cursor = contentResolver.query(Cloud.CLOUD_URI, new String[]{"_id"}, where, null, null);
                    if (cursor != null && cursor.moveToFirst()) {
                        albumId = Long.valueOf(cursor.getLong(0));
                        cachedAlbumMap.put(parentPath, albumId);
                    }
                    MiscUtil.closeSilently(cursor);
                }
                if (albumId != null) {
                    ContentResolver contentResolver2 = contentResolver;
                    cursor = contentResolver2.query(Cloud.CLOUD_URI, new String[]{"_id"}, String.format("%s=%s AND %s LIKE '%s'", new Object[]{"localGroupId", String.valueOf(albumId), "sha1", sha1}), null, null);
                    if (cursor == null || !cursor.moveToFirst()) {
                        isThumbnail = false;
                    } else {
                        isThumbnail = true;
                    }
                }
            }
            MiscUtil.closeSilently(cursor);
            return isThumbnail;
        } catch (Throwable th) {
            MiscUtil.closeSilently(null);
        }
    }
}
