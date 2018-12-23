package com.xiaomi.clientreport.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.string.Base64Coder;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.clientreport.manager.ClientReportLogicManager;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.List;

public class ClientReportUtil {
    public static String getOs() {
        return VERSION.RELEASE + "-" + VERSION.INCREMENTAL;
    }

    @TargetApi(9)
    public static byte[] parseKey(String key) {
        byte[] parsedKey = Arrays.copyOf(Base64Coder.decode(key), 16);
        parsedKey[0] = (byte) 68;
        parsedKey[15] = (byte) 84;
        return parsedKey;
    }

    public static String getEventKeyWithDefault(Context context) {
        String key = SPManager.getInstance(context).getStringValue("sp_client_report_status", "sp_client_report_key", "");
        if (!TextUtils.isEmpty(key)) {
            return key;
        }
        key = XMStringUtils.generateRandomString(20);
        SPManager.getInstance(context).setStringnValue("sp_client_report_status", "sp_client_report_key", key);
        return key;
    }

    public static boolean isSupportXMSFUpload(Context context) {
        try {
            if (context.getApplicationContext().getPackageManager().getPackageInfo("com.xiaomi.xmsf", 0).versionCode >= BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE) {
                return true;
            }
            return false;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void sendData(Context context, String eventData) {
        Intent intent = new Intent("com.xiaomi.xmsf.push.XMSF_UPLOAD_ACTIVE");
        intent.putExtra("pkgname", context.getPackageName());
        intent.putExtra("category", "category_client_report_data");
        intent.putExtra("name", "quality_support");
        intent.putExtra("data", eventData);
        context.sendBroadcast(intent, "com.xiaomi.xmsf.permission.USE_XMSF_UPLOAD");
    }

    public static void sendFile(Context context, List<String> datas) {
        if (datas != null && datas.size() > 0 && isSupportXMSFUpload(context)) {
            for (String data : datas) {
                if (!TextUtils.isEmpty(data)) {
                    sendData(context, data);
                }
            }
        }
    }

    public static int checkPerfNeedUpload(Context context) {
        if (!ClientReportLogicManager.getInstance(context).getConfig().isPerfUploadSwitchOpen()) {
            return -1;
        }
        int frequency = (int) ClientReportLogicManager.getInstance(context).getConfig().getPerfUploadFrequency();
        int timeDiff = (int) ((System.currentTimeMillis() - SPManager.getInstance(context).getLongValue("sp_client_report_status", "perf_last_upload_time", 0)) / 1000);
        MyLog.v(context.getPackageName() + " start perf upload timeDiff " + timeDiff);
        if (timeDiff >= frequency - 5) {
            return 0;
        }
        return timeDiff;
    }

    public static int checkEventNeedUpload(Context context) {
        if (!ClientReportLogicManager.getInstance(context).getConfig().isEventUploadSwitchOpen()) {
            return -1;
        }
        int frequency = (int) ClientReportLogicManager.getInstance(context).getConfig().getEventUploadFrequency();
        int timeDiff = (int) ((System.currentTimeMillis() - SPManager.getInstance(context).getLongValue("sp_client_report_status", "event_last_upload_time", 0)) / 1000);
        MyLog.v(context.getPackageName() + " start event upload timeDiff " + timeDiff);
        if (timeDiff >= frequency - 5) {
            return 0;
        }
        return timeDiff;
    }

    /* JADX WARNING: Removed duplicated region for block: B:78:0x0136  */
    public static void moveFiles(android.content.Context r23, java.lang.String r24, java.lang.String r25) {
        /*
        r0 = r23;
        r1 = r25;
        r6 = r0.getExternalFilesDir(r1);
        if (r6 == 0) goto L_0x0022;
    L_0x000a:
        r17 = r6.exists();
        if (r17 != 0) goto L_0x0013;
    L_0x0010:
        r6.mkdirs();
    L_0x0013:
        r11 = r23.getExternalFilesDir(r24);
        if (r11 == 0) goto L_0x0022;
    L_0x0019:
        r17 = r11.exists();
        if (r17 != 0) goto L_0x0023;
    L_0x001f:
        r11.mkdirs();
    L_0x0022:
        return;
    L_0x0023:
        r17 = new com.xiaomi.clientreport.util.ClientReportUtil$1;
        r17.<init>();
        r0 = r17;
        r10 = r11.listFiles(r0);
        if (r10 == 0) goto L_0x0022;
    L_0x0030:
        r0 = r10.length;
        r17 = r0;
        if (r17 <= 0) goto L_0x0022;
    L_0x0035:
        r15 = 0;
        r12 = 0;
        r13 = 0;
        r18 = java.lang.System.currentTimeMillis();
        r0 = r10.length;
        r20 = r0;
        r17 = 0;
        r14 = r13;
        r16 = r15;
    L_0x0044:
        r0 = r17;
        r1 = r20;
        if (r0 >= r1) goto L_0x0022;
    L_0x004a:
        r9 = r10[r17];
        if (r9 == 0) goto L_0x0058;
    L_0x004e:
        r21 = r9.getAbsolutePath();	 Catch:{ Exception -> 0x0145, all -> 0x0122 }
        r21 = android.text.TextUtils.isEmpty(r21);	 Catch:{ Exception -> 0x0145, all -> 0x0122 }
        if (r21 == 0) goto L_0x0079;
    L_0x0058:
        if (r12 == 0) goto L_0x0063;
    L_0x005a:
        r21 = r12.isValid();
        if (r21 == 0) goto L_0x0063;
    L_0x0060:
        r12.release();	 Catch:{ IOException -> 0x0074 }
    L_0x0063:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r16);
        if (r14 == 0) goto L_0x014e;
    L_0x0068:
        r14.delete();
        r13 = r14;
        r15 = r16;
    L_0x006e:
        r17 = r17 + 1;
        r14 = r13;
        r16 = r15;
        goto L_0x0044;
    L_0x0074:
        r8 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r8);
        goto L_0x0063;
    L_0x0079:
        r13 = new java.io.File;	 Catch:{ Exception -> 0x0145, all -> 0x0122 }
        r21 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0145, all -> 0x0122 }
        r21.<init>();	 Catch:{ Exception -> 0x0145, all -> 0x0122 }
        r22 = r9.getAbsolutePath();	 Catch:{ Exception -> 0x0145, all -> 0x0122 }
        r21 = r21.append(r22);	 Catch:{ Exception -> 0x0145, all -> 0x0122 }
        r22 = ".lock";
        r21 = r21.append(r22);	 Catch:{ Exception -> 0x0145, all -> 0x0122 }
        r21 = r21.toString();	 Catch:{ Exception -> 0x0145, all -> 0x0122 }
        r0 = r21;
        r13.<init>(r0);	 Catch:{ Exception -> 0x0145, all -> 0x0122 }
        com.xiaomi.channel.commonutils.file.IOUtils.createFileQuietly(r13);	 Catch:{ Exception -> 0x014a, all -> 0x013f }
        r15 = new java.io.RandomAccessFile;	 Catch:{ Exception -> 0x014a, all -> 0x013f }
        r21 = "rw";
        r0 = r21;
        r15.<init>(r13, r0);	 Catch:{ Exception -> 0x014a, all -> 0x013f }
        r21 = r15.getChannel();	 Catch:{ Exception -> 0x00ff }
        r12 = r21.lock();	 Catch:{ Exception -> 0x00ff }
        r7 = r6.getAbsolutePath();	 Catch:{ Exception -> 0x00ff }
        r21 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00ff }
        r21.<init>();	 Catch:{ Exception -> 0x00ff }
        r0 = r21;
        r21 = r0.append(r7);	 Catch:{ Exception -> 0x00ff }
        r22 = java.io.File.separator;	 Catch:{ Exception -> 0x00ff }
        r21 = r21.append(r22);	 Catch:{ Exception -> 0x00ff }
        r22 = r9.getName();	 Catch:{ Exception -> 0x00ff }
        r21 = r21.append(r22);	 Catch:{ Exception -> 0x00ff }
        r0 = r21;
        r1 = r18;
        r21 = r0.append(r1);	 Catch:{ Exception -> 0x00ff }
        r4 = r21.toString();	 Catch:{ Exception -> 0x00ff }
        r5 = new java.io.File;	 Catch:{ Exception -> 0x00ff }
        r5.<init>(r4);	 Catch:{ Exception -> 0x00ff }
        com.xiaomi.channel.commonutils.file.IOUtils.copyFile(r9, r5);	 Catch:{ IOException -> 0x00f4 }
    L_0x00dc:
        r9.delete();	 Catch:{ Exception -> 0x00ff }
        if (r12 == 0) goto L_0x00ea;
    L_0x00e1:
        r21 = r12.isValid();
        if (r21 == 0) goto L_0x00ea;
    L_0x00e7:
        r12.release();	 Catch:{ IOException -> 0x0118 }
    L_0x00ea:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r15);
        if (r13 == 0) goto L_0x006e;
    L_0x00ef:
        r13.delete();
        goto L_0x006e;
    L_0x00f4:
        r8 = move-exception;
        r8.printStackTrace();	 Catch:{ Exception -> 0x00ff }
        r9.delete();	 Catch:{ Exception -> 0x00ff }
        r5.delete();	 Catch:{ Exception -> 0x00ff }
        goto L_0x00dc;
    L_0x00ff:
        r8 = move-exception;
    L_0x0100:
        com.xiaomi.channel.commonutils.logger.MyLog.e(r8);	 Catch:{ all -> 0x0143 }
        if (r12 == 0) goto L_0x010e;
    L_0x0105:
        r21 = r12.isValid();
        if (r21 == 0) goto L_0x010e;
    L_0x010b:
        r12.release();	 Catch:{ IOException -> 0x011d }
    L_0x010e:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r15);
        if (r13 == 0) goto L_0x006e;
    L_0x0113:
        r13.delete();
        goto L_0x006e;
    L_0x0118:
        r8 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r8);
        goto L_0x00ea;
    L_0x011d:
        r8 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r8);
        goto L_0x010e;
    L_0x0122:
        r17 = move-exception;
        r13 = r14;
        r15 = r16;
    L_0x0126:
        if (r12 == 0) goto L_0x0131;
    L_0x0128:
        r20 = r12.isValid();
        if (r20 == 0) goto L_0x0131;
    L_0x012e:
        r12.release();	 Catch:{ IOException -> 0x013a }
    L_0x0131:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r15);
        if (r13 == 0) goto L_0x0139;
    L_0x0136:
        r13.delete();
    L_0x0139:
        throw r17;
    L_0x013a:
        r8 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r8);
        goto L_0x0131;
    L_0x013f:
        r17 = move-exception;
        r15 = r16;
        goto L_0x0126;
    L_0x0143:
        r17 = move-exception;
        goto L_0x0126;
    L_0x0145:
        r8 = move-exception;
        r13 = r14;
        r15 = r16;
        goto L_0x0100;
    L_0x014a:
        r8 = move-exception;
        r15 = r16;
        goto L_0x0100;
    L_0x014e:
        r13 = r14;
        r15 = r16;
        goto L_0x006e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.clientreport.util.ClientReportUtil.moveFiles(android.content.Context, java.lang.String, java.lang.String):void");
    }

    public static boolean isFileCanBeUse(Context context, String filePath) {
        File file = new File(filePath);
        long fileLength = ClientReportLogicManager.getInstance(context).getConfig().getMaxFileLength();
        if (file.exists()) {
            try {
                if (file.length() > fileLength) {
                    return false;
                }
                return true;
            } catch (Throwable e) {
                MyLog.e(e);
                return false;
            }
        }
        IOUtils.createFileQuietly(file);
        return true;
    }

    public static File[] getReadFileName(Context context, String floder) {
        File folder = context.getExternalFilesDir(floder);
        if (folder != null) {
            return folder.listFiles(new FilenameFilter() {
                public boolean accept(File dir, String filename) {
                    if (TextUtils.isEmpty(filename) || filename.toLowerCase().endsWith(".lock")) {
                        return false;
                    }
                    return true;
                }
            });
        }
        return null;
    }
}
