package com.xiaomi.push.log;

import android.content.Context;
import android.util.Log;
import android.util.Pair;
import com.xiaomi.channel.commonutils.file.SDCardUtils;
import com.xiaomi.channel.commonutils.logger.LoggerInterface;
import com.xiaomi.channel.commonutils.misc.SerializedAsyncTaskProcessor;
import com.xiaomi.channel.commonutils.misc.SerializedAsyncTaskProcessor.SerializedAsyncTask;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

public class MIPushLog2File implements LoggerInterface {
    public static String MIPUSH_LOG_PATH = "/MiPushLog";
    private static final SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss aaa");
    private static List<Pair<String, Throwable>> logs = Collections.synchronizedList(new ArrayList());
    private static SerializedAsyncTaskProcessor mAsyncProcessor = new SerializedAsyncTaskProcessor(true);
    private String mSDCardRootPath = "";
    private String mTag;
    private Context sAppContext;

    public MIPushLog2File(Context context) {
        this.sAppContext = context;
        if (context.getApplicationContext() != null) {
            this.sAppContext = context.getApplicationContext();
        }
        this.mTag = this.sAppContext.getPackageName();
    }

    public final void log(String msg) {
        log(msg, null);
    }

    public final void log(String text, Throwable t) {
        logs.add(new Pair(String.format("%1$s %2$s %3$s ", new Object[]{dateFormatter.format(new Date()), this.mTag, text}), t));
        mAsyncProcessor.addNewTask(new SerializedAsyncTask() {
            public void process() {
                if (!MIPushLog2File.logs.isEmpty()) {
                    try {
                        if (SDCardUtils.isSDCardUseful()) {
                            MIPushLog2File.this.writeLog2File();
                        } else {
                            Log.w(MIPushLog2File.this.mTag, "SDCard is unavailable.");
                        }
                    } catch (Exception e) {
                        Log.e(MIPushLog2File.this.mTag, "", e);
                    }
                }
            }
        });
    }

    /* JADX WARNING: Removed duplicated region for block: B:88:0x01cd A:{SYNTHETIC, Splitter: B:88:0x01cd} */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x01dd A:{SYNTHETIC, Splitter: B:96:0x01dd} */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0153 A:{SYNTHETIC, Splitter: B:47:0x0153} */
    /* JADX WARNING: Removed duplicated region for block: B:131:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0163 A:{SYNTHETIC, Splitter: B:55:0x0163} */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0153 A:{SYNTHETIC, Splitter: B:47:0x0153} */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0163 A:{SYNTHETIC, Splitter: B:55:0x0163} */
    /* JADX WARNING: Removed duplicated region for block: B:131:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x01cd A:{SYNTHETIC, Splitter: B:88:0x01cd} */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x01dd A:{SYNTHETIC, Splitter: B:96:0x01dd} */
    private void writeLog2File() {
        /*
        r21 = this;
        r8 = 0;
        r7 = 0;
        r2 = 0;
        r0 = r21;
        r0 = r0.mSDCardRootPath;	 Catch:{ Exception -> 0x02a6 }
        r17 = r0;
        r17 = android.text.TextUtils.isEmpty(r17);	 Catch:{ Exception -> 0x02a6 }
        if (r17 == 0) goto L_0x003a;
    L_0x000f:
        r0 = r21;
        r0 = r0.sAppContext;	 Catch:{ Exception -> 0x02a6 }
        r17 = r0;
        r18 = 0;
        r16 = r17.getExternalFilesDir(r18);	 Catch:{ Exception -> 0x02a6 }
        if (r16 == 0) goto L_0x003a;
    L_0x001d:
        r17 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x02a6 }
        r17.<init>();	 Catch:{ Exception -> 0x02a6 }
        r18 = r16.getAbsolutePath();	 Catch:{ Exception -> 0x02a6 }
        r17 = r17.append(r18);	 Catch:{ Exception -> 0x02a6 }
        r18 = "";
        r17 = r17.append(r18);	 Catch:{ Exception -> 0x02a6 }
        r17 = r17.toString();	 Catch:{ Exception -> 0x02a6 }
        r0 = r17;
        r1 = r21;
        r1.mSDCardRootPath = r0;	 Catch:{ Exception -> 0x02a6 }
    L_0x003a:
        r4 = new java.io.File;	 Catch:{ Exception -> 0x02a6 }
        r17 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x02a6 }
        r17.<init>();	 Catch:{ Exception -> 0x02a6 }
        r0 = r21;
        r0 = r0.mSDCardRootPath;	 Catch:{ Exception -> 0x02a6 }
        r18 = r0;
        r17 = r17.append(r18);	 Catch:{ Exception -> 0x02a6 }
        r18 = MIPUSH_LOG_PATH;	 Catch:{ Exception -> 0x02a6 }
        r17 = r17.append(r18);	 Catch:{ Exception -> 0x02a6 }
        r17 = r17.toString();	 Catch:{ Exception -> 0x02a6 }
        r0 = r17;
        r4.<init>(r0);	 Catch:{ Exception -> 0x02a6 }
        r17 = r4.exists();	 Catch:{ Exception -> 0x02a6 }
        if (r17 == 0) goto L_0x0066;
    L_0x0060:
        r17 = r4.isDirectory();	 Catch:{ Exception -> 0x02a6 }
        if (r17 != 0) goto L_0x008d;
    L_0x0066:
        r17 = r4.mkdirs();	 Catch:{ Exception -> 0x02a6 }
        if (r17 != 0) goto L_0x008d;
    L_0x006c:
        r0 = r21;
        r0 = r0.mTag;	 Catch:{ Exception -> 0x02a6 }
        r17 = r0;
        r18 = "Create mipushlog directory fail.";
        android.util.Log.w(r17, r18);	 Catch:{ Exception -> 0x02a6 }
        if (r2 == 0) goto L_0x007c;
    L_0x0079:
        r2.close();	 Catch:{ IOException -> 0x0238 }
    L_0x007c:
        if (r7 == 0) goto L_0x0087;
    L_0x007e:
        r17 = r7.isValid();
        if (r17 == 0) goto L_0x0087;
    L_0x0084:
        r7.release();	 Catch:{ IOException -> 0x0255 }
    L_0x0087:
        if (r8 == 0) goto L_0x008c;
    L_0x0089:
        r8.close();	 Catch:{ IOException -> 0x024a }
    L_0x008c:
        return;
    L_0x008d:
        r6 = new java.io.File;	 Catch:{ Exception -> 0x02a6 }
        r17 = "log.lock";
        r0 = r17;
        r6.<init>(r4, r0);	 Catch:{ Exception -> 0x02a6 }
        r17 = r6.exists();	 Catch:{ Exception -> 0x02a6 }
        if (r17 == 0) goto L_0x00a2;
    L_0x009c:
        r17 = r6.isDirectory();	 Catch:{ Exception -> 0x02a6 }
        if (r17 == 0) goto L_0x00a5;
    L_0x00a2:
        r6.createNewFile();	 Catch:{ Exception -> 0x02a6 }
    L_0x00a5:
        r9 = new java.io.RandomAccessFile;	 Catch:{ Exception -> 0x02a6 }
        r17 = "rw";
        r0 = r17;
        r9.<init>(r6, r0);	 Catch:{ Exception -> 0x02a6 }
        r17 = r9.getChannel();	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        r7 = r17.lock();	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        r3 = new java.io.BufferedWriter;	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        r17 = new java.io.OutputStreamWriter;	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        r18 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        r19 = new java.io.File;	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        r20 = "log1.txt";
        r0 = r19;
        r1 = r20;
        r0.<init>(r4, r1);	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        r20 = 1;
        r18.<init>(r19, r20);	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        r17.<init>(r18);	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        r0 = r17;
        r3.<init>(r0);	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
    L_0x00d4:
        r17 = logs;	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r17 = r17.isEmpty();	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        if (r17 != 0) goto L_0x017a;
    L_0x00dc:
        r17 = logs;	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r18 = 0;
        r13 = r17.remove(r18);	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r13 = (android.util.Pair) r13;	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r10 = r13.first;	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r10 = (java.lang.String) r10;	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r0 = r13.second;	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r17 = r0;
        if (r17 == 0) goto L_0x0126;
    L_0x00f0:
        r17 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r17.<init>();	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r0 = r17;
        r17 = r0.append(r10);	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r18 = "\n";
        r17 = r17.append(r18);	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r10 = r17.toString();	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r17 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r17.<init>();	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r0 = r17;
        r18 = r0.append(r10);	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r0 = r13.second;	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r17 = r0;
        r17 = (java.lang.Throwable) r17;	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r17 = android.util.Log.getStackTraceString(r17);	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r0 = r18;
        r1 = r17;
        r17 = r0.append(r1);	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r10 = r17.toString();	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
    L_0x0126:
        r17 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r17.<init>();	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r0 = r17;
        r17 = r0.append(r10);	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r18 = "\n";
        r17 = r17.append(r18);	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r10 = r17.toString();	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r3.write(r10);	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        goto L_0x00d4;
    L_0x013f:
        r5 = move-exception;
        r2 = r3;
        r8 = r9;
    L_0x0142:
        r0 = r21;
        r0 = r0.mTag;	 Catch:{ all -> 0x01ca }
        r17 = r0;
        r18 = "";
        r0 = r17;
        r1 = r18;
        android.util.Log.e(r0, r1, r5);	 Catch:{ all -> 0x01ca }
        if (r2 == 0) goto L_0x0156;
    L_0x0153:
        r2.close();	 Catch:{ IOException -> 0x0214 }
    L_0x0156:
        if (r7 == 0) goto L_0x0161;
    L_0x0158:
        r17 = r7.isValid();
        if (r17 == 0) goto L_0x0161;
    L_0x015e:
        r7.release();	 Catch:{ IOException -> 0x0226 }
    L_0x0161:
        if (r8 == 0) goto L_0x008c;
    L_0x0163:
        r8.close();	 Catch:{ IOException -> 0x0168 }
        goto L_0x008c;
    L_0x0168:
        r5 = move-exception;
        r0 = r21;
        r0 = r0.mTag;
        r17 = r0;
        r18 = "";
    L_0x0171:
        r0 = r17;
        r1 = r18;
        android.util.Log.e(r0, r1, r5);
        goto L_0x008c;
    L_0x017a:
        r3.flush();	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        if (r3 == 0) goto L_0x02ad;
    L_0x017f:
        r3.close();	 Catch:{ Exception -> 0x013f, all -> 0x02a1 }
        r2 = 0;
    L_0x0183:
        r11 = new java.io.File;	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        r17 = "log1.txt";
        r0 = r17;
        r11.<init>(r4, r0);	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        r14 = r11.length();	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        r18 = 1048576; // 0x100000 float:1.469368E-39 double:5.180654E-318;
        r17 = (r14 > r18 ? 1 : (r14 == r18 ? 0 : -1));
        if (r17 < 0) goto L_0x01b2;
    L_0x0197:
        r12 = new java.io.File;	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        r17 = "log0.txt";
        r0 = r17;
        r12.<init>(r4, r0);	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        r17 = r12.exists();	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        if (r17 == 0) goto L_0x01af;
    L_0x01a6:
        r17 = r12.isFile();	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
        if (r17 == 0) goto L_0x01af;
    L_0x01ac:
        r12.delete();	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
    L_0x01af:
        r11.renameTo(r12);	 Catch:{ Exception -> 0x02a9, all -> 0x029d }
    L_0x01b2:
        if (r2 == 0) goto L_0x01b7;
    L_0x01b4:
        r2.close();	 Catch:{ IOException -> 0x0267 }
    L_0x01b7:
        if (r7 == 0) goto L_0x01c2;
    L_0x01b9:
        r17 = r7.isValid();
        if (r17 == 0) goto L_0x01c2;
    L_0x01bf:
        r7.release();	 Catch:{ IOException -> 0x028b }
    L_0x01c2:
        if (r9 == 0) goto L_0x01c7;
    L_0x01c4:
        r9.close();	 Catch:{ IOException -> 0x0279 }
    L_0x01c7:
        r8 = r9;
        goto L_0x008c;
    L_0x01ca:
        r17 = move-exception;
    L_0x01cb:
        if (r2 == 0) goto L_0x01d0;
    L_0x01cd:
        r2.close();	 Catch:{ IOException -> 0x01e1 }
    L_0x01d0:
        if (r7 == 0) goto L_0x01db;
    L_0x01d2:
        r18 = r7.isValid();
        if (r18 == 0) goto L_0x01db;
    L_0x01d8:
        r7.release();	 Catch:{ IOException -> 0x0203 }
    L_0x01db:
        if (r8 == 0) goto L_0x01e0;
    L_0x01dd:
        r8.close();	 Catch:{ IOException -> 0x01f2 }
    L_0x01e0:
        throw r17;
    L_0x01e1:
        r5 = move-exception;
        r0 = r21;
        r0 = r0.mTag;
        r18 = r0;
        r19 = "";
        r0 = r18;
        r1 = r19;
        android.util.Log.e(r0, r1, r5);
        goto L_0x01d0;
    L_0x01f2:
        r5 = move-exception;
        r0 = r21;
        r0 = r0.mTag;
        r18 = r0;
        r19 = "";
        r0 = r18;
        r1 = r19;
        android.util.Log.e(r0, r1, r5);
        goto L_0x01e0;
    L_0x0203:
        r5 = move-exception;
        r0 = r21;
        r0 = r0.mTag;
        r18 = r0;
        r19 = "";
        r0 = r18;
        r1 = r19;
        android.util.Log.e(r0, r1, r5);
        goto L_0x01db;
    L_0x0214:
        r5 = move-exception;
        r0 = r21;
        r0 = r0.mTag;
        r17 = r0;
        r18 = "";
        r0 = r17;
        r1 = r18;
        android.util.Log.e(r0, r1, r5);
        goto L_0x0156;
    L_0x0226:
        r5 = move-exception;
        r0 = r21;
        r0 = r0.mTag;
        r17 = r0;
        r18 = "";
        r0 = r17;
        r1 = r18;
        android.util.Log.e(r0, r1, r5);
        goto L_0x0161;
    L_0x0238:
        r5 = move-exception;
        r0 = r21;
        r0 = r0.mTag;
        r17 = r0;
        r18 = "";
        r0 = r17;
        r1 = r18;
        android.util.Log.e(r0, r1, r5);
        goto L_0x007c;
    L_0x024a:
        r5 = move-exception;
        r0 = r21;
        r0 = r0.mTag;
        r17 = r0;
        r18 = "";
        goto L_0x0171;
    L_0x0255:
        r5 = move-exception;
        r0 = r21;
        r0 = r0.mTag;
        r17 = r0;
        r18 = "";
        r0 = r17;
        r1 = r18;
        android.util.Log.e(r0, r1, r5);
        goto L_0x0087;
    L_0x0267:
        r5 = move-exception;
        r0 = r21;
        r0 = r0.mTag;
        r17 = r0;
        r18 = "";
        r0 = r17;
        r1 = r18;
        android.util.Log.e(r0, r1, r5);
        goto L_0x01b7;
    L_0x0279:
        r5 = move-exception;
        r0 = r21;
        r0 = r0.mTag;
        r17 = r0;
        r18 = "";
        r0 = r17;
        r1 = r18;
        android.util.Log.e(r0, r1, r5);
        goto L_0x01c7;
    L_0x028b:
        r5 = move-exception;
        r0 = r21;
        r0 = r0.mTag;
        r17 = r0;
        r18 = "";
        r0 = r17;
        r1 = r18;
        android.util.Log.e(r0, r1, r5);
        goto L_0x01c2;
    L_0x029d:
        r17 = move-exception;
        r8 = r9;
        goto L_0x01cb;
    L_0x02a1:
        r17 = move-exception;
        r2 = r3;
        r8 = r9;
        goto L_0x01cb;
    L_0x02a6:
        r5 = move-exception;
        goto L_0x0142;
    L_0x02a9:
        r5 = move-exception;
        r8 = r9;
        goto L_0x0142;
    L_0x02ad:
        r2 = r3;
        goto L_0x0183;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.log.MIPushLog2File.writeLog2File():void");
    }
}
