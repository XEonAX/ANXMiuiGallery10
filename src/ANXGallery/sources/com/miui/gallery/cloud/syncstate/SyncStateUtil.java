package com.miui.gallery.cloud.syncstate;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.miui.account.AccountHelper;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.deviceprovider.UploadStatusController;
import java.util.Locale;
import miui.cloud.MiCloudCompat;
import miui.cloud.sync.MiCloudStatusInfo;
import miui.cloud.sync.MiCloudStatusInfo.QuotaInfo;

public class SyncStateUtil {

    public static class CloudSpaceInfo {
        private QuotaInfo mInfo;

        public CloudSpaceInfo(Context context) {
            MiCloudStatusInfo statusInfo = null;
            try {
                statusInfo = MiCloudStatusInfo.fromUserData(context);
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.mInfo = statusInfo != null ? statusInfo.getQuotaInfo() : null;
        }

        public boolean isSpaceLow() {
            if (this.mInfo == null || this.mInfo.isSpaceFull() || this.mInfo.isSpaceLowPercent()) {
                return true;
            }
            return false;
        }

        public long getTotal() {
            return this.mInfo != null ? this.mInfo.getTotal() : 0;
        }

        public long getUsed() {
            return this.mInfo != null ? this.mInfo.getUsed() : 0;
        }
    }

    public static int[] getSyncedCount(Context context) {
        return queryCount(context, Cloud.CLOUD_URI, String.format(Locale.US, "%s AND (%s = %s OR %s = %s) GROUP BY %s", new Object[]{"(localFlag = 0 AND serverStatus = 'custom')", "serverType", Integer.valueOf(1), "serverType", Integer.valueOf(2), "serverType"}));
    }

    public static long[] getSyncedSize(Context context) {
        return querySize(context, Cloud.CLOUD_URI, String.format(Locale.US, "%s AND (%s = %s OR %s = %s) GROUP BY %s", new Object[]{"(localFlag = 0 AND serverStatus = 'custom')", "serverType", Integer.valueOf(1), "serverType", Integer.valueOf(2), "serverType"}));
    }

    public static int[] getDirtyCount(Context context) {
        String OWNER_DIRTY_SELECTION = String.format(Locale.US, "(%s) AND (%s = %s OR %s = %s) AND (%s = %s OR %s = %s) GROUP BY %s", new Object[]{CloudUtils.SELECTION_OWNER_NEED_SYNC, "serverType", Integer.valueOf(1), "serverType", Integer.valueOf(2), "localFlag", Integer.valueOf(7), "localFlag", Integer.valueOf(8), "serverType"});
        String SHARER_DIRTY_SELECTION = String.format(Locale.US, "(%s = %d OR %s = %d)  GROUP BY %s", new Object[]{"localFlag", Integer.valueOf(7), "localFlag", Integer.valueOf(8), "serverType"});
        int[] ownerDirtyCount = queryCount(context, GalleryCloudUtils.CLOUD_URI, OWNER_DIRTY_SELECTION);
        int[] sharerDirtyCount = queryCount(context, GalleryCloudUtils.SHARE_IMAGE_URI, SHARER_DIRTY_SELECTION);
        int imageDirtyCount = 0;
        int videoDirtyCount = 0;
        if (ownerDirtyCount != null) {
            imageDirtyCount = 0 + ownerDirtyCount[0];
            videoDirtyCount = 0 + ownerDirtyCount[1];
        }
        if (sharerDirtyCount != null) {
            imageDirtyCount += sharerDirtyCount[0];
            videoDirtyCount += sharerDirtyCount[1];
        }
        return new int[]{imageDirtyCount, videoDirtyCount};
    }

    public static long[] getDirtySize(Context context) {
        String OWNER_DIRTY_SIZE_SELECTION = String.format(Locale.US, "(%s) AND (%s = %s OR %s = %s) AND (%s = %s OR %s = %s) GROUP BY %s", new Object[]{CloudUtils.SELECTION_OWNER_NEED_SYNC, "serverType", Integer.valueOf(1), "serverType", Integer.valueOf(2), "localFlag", Integer.valueOf(7), "localFlag", Integer.valueOf(8), "serverType"});
        String SHARE_DIRTY_SIZE_SELECTION = String.format(Locale.US, "(%s = %d OR %s = %d) GROUP BY %s", new Object[]{"localFlag", Integer.valueOf(7), "localFlag", Integer.valueOf(8), "serverType"});
        long[] owner = querySize(context, Cloud.CLOUD_URI, OWNER_DIRTY_SIZE_SELECTION);
        long[] share = querySize(context, ShareImage.SHARE_URI, SHARE_DIRTY_SIZE_SELECTION);
        return new long[]{owner[0] + share[0], owner[1] + share[1]};
    }

    private static long[] querySize(Context context, Uri uri, String selection) {
        return (long[]) SafeDBUtil.safeQuery(context, uri, new String[]{"sum(size)", "serverType"}, selection, null, null, new QueryHandler<long[]>() {
            public long[] handle(Cursor cursor) {
                long[] querySize = new long[]{0, 0};
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        long count = cursor.getLong(0);
                        if (cursor.getInt(1) == 1) {
                            querySize[0] = count;
                        } else {
                            querySize[1] = count;
                        }
                    }
                }
                return querySize;
            }
        });
    }

    private static int[] queryCount(Context context, Uri uri, String selection) {
        return (int[]) SafeDBUtil.safeQuery(context, uri, new String[]{"count(*)", "serverType"}, selection, null, null, new QueryHandler<int[]>() {
            public int[] handle(Cursor cursor) {
                int[] queryCount = new int[]{0, 0};
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        int count = cursor.getInt(0);
                        if (cursor.getInt(1) == 1) {
                            queryCount[0] = count;
                        } else {
                            queryCount[1] = count;
                        }
                    }
                }
                return queryCount;
            }
        });
    }

    public static CloudSpaceInfo getCloudSpaceInfo(Context context) {
        return new CloudSpaceInfo(context);
    }

    public static String getQuantityStringWithUnit(Context context, long value) {
        return MiCloudCompat.getQuantityStringWithUnit(value);
    }

    public static boolean isSyncing(Context context) {
        Account account = AccountHelper.getXiaomiAccount(context);
        if (account == null) {
            return false;
        }
        if (ContentResolver.isSyncActive(account, "com.miui.gallery.cloud.provider") || UploadStatusController.getInstance().isUploading()) {
            return true;
        }
        return false;
    }

    public static boolean hasSyncedData(Context context) {
        return ((Integer) SafeDBUtil.safeQuery(context, Cloud.CLOUD_URI, new String[]{"count(*)"}, String.format(Locale.US, "%s AND %s", new Object[]{"(localFlag = 0 AND serverStatus = 'custom')", "serverType IN (1,2)"}), null, null, new QueryHandler<Integer>() {
            public Integer handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToFirst()) {
                    return Integer.valueOf(0);
                }
                return Integer.valueOf(cursor.getInt(0));
            }
        })).intValue() > 0;
    }
}
