package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.LoggerInterface;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import com.xiaomi.push.log.MIPushDebugLog;
import com.xiaomi.push.log.MIPushLog2File;
import java.io.File;

public class Logger {
    private static boolean sDisablePushLog = false;
    private static LoggerInterface sUserLogger = null;

    public static void setLogger(Context context, LoggerInterface newLogger) {
        sUserLogger = newLogger;
        setPushLog(context);
    }

    protected static LoggerInterface getUserLogger() {
        return sUserLogger;
    }

    public static void setPushLog(Context context) {
        boolean shouldOpenUserLogger = sUserLogger != null;
        LoggerInterface pushLog2File = new MIPushLog2File(context);
        if (!sDisablePushLog && hasWritePermission(context) && shouldOpenUserLogger) {
            MyLog.setLogger(new MIPushDebugLog(sUserLogger, pushLog2File));
        } else if (!sDisablePushLog && hasWritePermission(context)) {
            MyLog.setLogger(pushLog2File);
        } else if (shouldOpenUserLogger) {
            MyLog.setLogger(sUserLogger);
        } else {
            MyLog.setLogger(new MIPushDebugLog(null, null));
        }
    }

    private static boolean hasWritePermission(Context context) {
        try {
            String[] permissionList = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (permissionList == null) {
                return false;
            }
            for (String permission : permissionList) {
                if ("android.permission.WRITE_EXTERNAL_STORAGE".equals(permission)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public static void uploadLogFile(final Context context, final boolean isXMSF) {
        ScheduledJobManager.getInstance(context).addOneShootJob(new Runnable() {
            /* JADX WARNING: Removed duplicated region for block: B:30:? A:{SYNTHETIC, RETURN, SKIP, Catch:{ Throwable -> 0x00a6 }} */
            /* JADX WARNING: Removed duplicated region for block: B:19:0x008c  */
            public void run() {
                /*
                r11 = this;
                r5 = 0;
                r8 = r2;	 Catch:{ Throwable -> 0x00a6 }
                r9 = "";
                r1 = com.xiaomi.mipush.sdk.MiPushUtils.collectDeviceInfo(r8, r9);	 Catch:{ Throwable -> 0x00a6 }
                r8 = r3;	 Catch:{ Throwable -> 0x00a6 }
                if (r8 == 0) goto L_0x0023;
            L_0x000d:
                r8 = r2;	 Catch:{ Throwable -> 0x00a6 }
                r8 = r8.getFilesDir();	 Catch:{ Throwable -> 0x00a6 }
                r0 = r8.getAbsolutePath();	 Catch:{ Throwable -> 0x00a6 }
            L_0x0017:
                r2 = com.xiaomi.mipush.sdk.Logger.getLogFile(r0);	 Catch:{ Throwable -> 0x00a6 }
                if (r2 != 0) goto L_0x0042;
            L_0x001d:
                r8 = "log file null";
                com.xiaomi.channel.commonutils.logger.MyLog.w(r8);	 Catch:{ Throwable -> 0x00a6 }
            L_0x0022:
                return;
            L_0x0023:
                r8 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00a6 }
                r8.<init>();	 Catch:{ Throwable -> 0x00a6 }
                r9 = r2;	 Catch:{ Throwable -> 0x00a6 }
                r10 = 0;
                r9 = r9.getExternalFilesDir(r10);	 Catch:{ Throwable -> 0x00a6 }
                r9 = r9.getAbsolutePath();	 Catch:{ Throwable -> 0x00a6 }
                r8 = r8.append(r9);	 Catch:{ Throwable -> 0x00a6 }
                r9 = com.xiaomi.push.log.MIPushLog2File.MIPUSH_LOG_PATH;	 Catch:{ Throwable -> 0x00a6 }
                r8 = r8.append(r9);	 Catch:{ Throwable -> 0x00a6 }
                r0 = r8.toString();	 Catch:{ Throwable -> 0x00a6 }
                goto L_0x0017;
            L_0x0042:
                r8 = r2;	 Catch:{ Throwable -> 0x00a6 }
                r3 = r8.getPackageName();	 Catch:{ Throwable -> 0x00a6 }
                r6 = new java.io.File;	 Catch:{ Throwable -> 0x00a6 }
                r8 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00a6 }
                r8.<init>();	 Catch:{ Throwable -> 0x00a6 }
                r8 = r8.append(r3);	 Catch:{ Throwable -> 0x00a6 }
                r9 = ".zip";
                r8 = r8.append(r9);	 Catch:{ Throwable -> 0x00a6 }
                r8 = r8.toString();	 Catch:{ Throwable -> 0x00a6 }
                r6.<init>(r0, r8);	 Catch:{ Throwable -> 0x00a6 }
                com.xiaomi.channel.commonutils.file.IOUtils.zip(r6, r2);	 Catch:{ Throwable -> 0x00a0 }
                r8 = r6.exists();	 Catch:{ Throwable -> 0x00a0 }
                if (r8 == 0) goto L_0x0099;
            L_0x0069:
                r8 = r3;	 Catch:{ Throwable -> 0x00a0 }
                if (r8 == 0) goto L_0x0096;
            L_0x006d:
                r7 = "https://api.xmpush.xiaomi.com/upload/xmsf_log?file=";
            L_0x006f:
                r8 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00a0 }
                r8.<init>();	 Catch:{ Throwable -> 0x00a0 }
                r8 = r8.append(r7);	 Catch:{ Throwable -> 0x00a0 }
                r9 = r6.getName();	 Catch:{ Throwable -> 0x00a0 }
                r8 = r8.append(r9);	 Catch:{ Throwable -> 0x00a0 }
                r8 = r8.toString();	 Catch:{ Throwable -> 0x00a0 }
                r9 = "file";
                com.xiaomi.channel.commonutils.network.Network.uploadFile(r8, r1, r6, r9);	 Catch:{ Throwable -> 0x00a0 }
            L_0x0089:
                r5 = r6;
            L_0x008a:
                if (r5 == 0) goto L_0x0022;
            L_0x008c:
                r8 = r5.exists();
                if (r8 == 0) goto L_0x0022;
            L_0x0092:
                r5.delete();
                goto L_0x0022;
            L_0x0096:
                r7 = "https://api.xmpush.xiaomi.com/upload/app_log?file=";
                goto L_0x006f;
            L_0x0099:
                r8 = "zip log file failed";
                com.xiaomi.channel.commonutils.logger.MyLog.w(r8);	 Catch:{ Throwable -> 0x00a0 }
                goto L_0x0089;
            L_0x00a0:
                r4 = move-exception;
                r5 = r6;
            L_0x00a2:
                com.xiaomi.channel.commonutils.logger.MyLog.e(r4);
                goto L_0x008a;
            L_0x00a6:
                r4 = move-exception;
                goto L_0x00a2;
                */
                throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.Logger.1.run():void");
            }
        });
    }

    public static File getLogFile(String dirPath) {
        try {
            File dir = new File(dirPath);
            if (!dir.exists() || !dir.isDirectory()) {
                return null;
            }
            File[] files = dir.listFiles();
            int i = 0;
            while (i < files.length) {
                if (files[i].isFile() && !files[i].getName().contains("lock") && files[i].getName().contains("log")) {
                    return files[i];
                }
                i++;
            }
            return null;
        } catch (NullPointerException e) {
            MyLog.e("null pointer exception while retrieve file.");
            return null;
        }
    }
}
