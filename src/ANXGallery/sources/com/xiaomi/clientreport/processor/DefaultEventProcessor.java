package com.xiaomi.clientreport.processor;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.channel.commonutils.android.DataCryptUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ByteUtils;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.clientreport.data.BaseClientReport;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.clientreport.manager.ClientReportLogicManager;
import com.xiaomi.clientreport.util.ClientReportUtil;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DefaultEventProcessor implements IEventProcessor {
    protected Context mContext;
    private HashMap<String, ArrayList<BaseClientReport>> mEventMap;

    public DefaultEventProcessor(Context context) {
        setContext(context);
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public static String getFirstEventFileName(BaseClientReport clientReport) {
        return String.valueOf(clientReport.production);
    }

    public void send(List<String> data) {
        ClientReportUtil.sendFile(this.mContext, data);
    }

    /* JADX WARNING: Removed duplicated region for block: B:76:0x0039 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00aa  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00aa  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0039 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00c6  */
    public void readAndSend() {
        /*
        r14 = this;
        r10 = r14.mContext;
        r11 = "event";
        r12 = "eventUploading";
        com.xiaomi.clientreport.util.ClientReportUtil.moveFiles(r10, r11, r12);
        r10 = r14.mContext;
        r11 = "eventUploading";
        r3 = com.xiaomi.clientreport.util.ClientReportUtil.getReadFileName(r10, r11);
        if (r3 == 0) goto L_0x0016;
    L_0x0013:
        r10 = r3.length;
        if (r10 > 0) goto L_0x0017;
    L_0x0016:
        return;
    L_0x0017:
        r7 = 0;
        r4 = 0;
        r5 = 0;
        r11 = r3.length;
        r10 = 0;
        r6 = r5;
        r8 = r7;
    L_0x001e:
        if (r10 >= r11) goto L_0x0016;
    L_0x0020:
        r2 = r3[r10];
        if (r2 != 0) goto L_0x0043;
    L_0x0024:
        if (r4 == 0) goto L_0x002f;
    L_0x0026:
        r12 = r4.isValid();
        if (r12 == 0) goto L_0x002f;
    L_0x002c:
        r4.release();	 Catch:{ IOException -> 0x003e }
    L_0x002f:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r8);
        if (r6 == 0) goto L_0x00d9;
    L_0x0034:
        r6.delete();
        r5 = r6;
        r7 = r8;
    L_0x0039:
        r10 = r10 + 1;
        r6 = r5;
        r8 = r7;
        goto L_0x001e;
    L_0x003e:
        r1 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r1);
        goto L_0x002f;
    L_0x0043:
        r9 = r2.getAbsolutePath();	 Catch:{ Exception -> 0x0094, all -> 0x00b3 }
        r5 = new java.io.File;	 Catch:{ Exception -> 0x0094, all -> 0x00b3 }
        r12 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0094, all -> 0x00b3 }
        r12.<init>();	 Catch:{ Exception -> 0x0094, all -> 0x00b3 }
        r12 = r12.append(r9);	 Catch:{ Exception -> 0x0094, all -> 0x00b3 }
        r13 = ".lock";
        r12 = r12.append(r13);	 Catch:{ Exception -> 0x0094, all -> 0x00b3 }
        r12 = r12.toString();	 Catch:{ Exception -> 0x0094, all -> 0x00b3 }
        r5.<init>(r12);	 Catch:{ Exception -> 0x0094, all -> 0x00b3 }
        com.xiaomi.channel.commonutils.file.IOUtils.createFileQuietly(r5);	 Catch:{ Exception -> 0x00d4, all -> 0x00cf }
        r7 = new java.io.RandomAccessFile;	 Catch:{ Exception -> 0x00d4, all -> 0x00cf }
        r12 = "rw";
        r7.<init>(r5, r12);	 Catch:{ Exception -> 0x00d4, all -> 0x00cf }
        r12 = r7.getChannel();	 Catch:{ Exception -> 0x00d7 }
        r4 = r12.lock();	 Catch:{ Exception -> 0x00d7 }
        r0 = r14.readFile(r9);	 Catch:{ Exception -> 0x00d7 }
        r14.send(r0);	 Catch:{ Exception -> 0x00d7 }
        r2.delete();	 Catch:{ Exception -> 0x00d7 }
        if (r4 == 0) goto L_0x0086;
    L_0x007d:
        r12 = r4.isValid();
        if (r12 == 0) goto L_0x0086;
    L_0x0083:
        r4.release();	 Catch:{ IOException -> 0x008f }
    L_0x0086:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r7);
        if (r5 == 0) goto L_0x0039;
    L_0x008b:
        r5.delete();
        goto L_0x0039;
    L_0x008f:
        r1 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r1);
        goto L_0x0086;
    L_0x0094:
        r1 = move-exception;
        r5 = r6;
        r7 = r8;
    L_0x0097:
        com.xiaomi.channel.commonutils.logger.MyLog.e(r1);	 Catch:{ all -> 0x00d2 }
        if (r4 == 0) goto L_0x00a5;
    L_0x009c:
        r12 = r4.isValid();
        if (r12 == 0) goto L_0x00a5;
    L_0x00a2:
        r4.release();	 Catch:{ IOException -> 0x00ae }
    L_0x00a5:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r7);
        if (r5 == 0) goto L_0x0039;
    L_0x00aa:
        r5.delete();
        goto L_0x0039;
    L_0x00ae:
        r1 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r1);
        goto L_0x00a5;
    L_0x00b3:
        r10 = move-exception;
        r5 = r6;
        r7 = r8;
    L_0x00b6:
        if (r4 == 0) goto L_0x00c1;
    L_0x00b8:
        r11 = r4.isValid();
        if (r11 == 0) goto L_0x00c1;
    L_0x00be:
        r4.release();	 Catch:{ IOException -> 0x00ca }
    L_0x00c1:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r7);
        if (r5 == 0) goto L_0x00c9;
    L_0x00c6:
        r5.delete();
    L_0x00c9:
        throw r10;
    L_0x00ca:
        r1 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r1);
        goto L_0x00c1;
    L_0x00cf:
        r10 = move-exception;
        r7 = r8;
        goto L_0x00b6;
    L_0x00d2:
        r10 = move-exception;
        goto L_0x00b6;
    L_0x00d4:
        r1 = move-exception;
        r7 = r8;
        goto L_0x0097;
    L_0x00d7:
        r1 = move-exception;
        goto L_0x0097;
    L_0x00d9:
        r5 = r6;
        r7 = r8;
        goto L_0x0039;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.clientreport.processor.DefaultEventProcessor.readAndSend():void");
    }

    /* JADX WARNING: Missing block: B:12:?, code:
            com.xiaomi.channel.commonutils.logger.MyLog.e("eventData read from cache file failed because magicNumber error");
     */
    private java.util.List<java.lang.String> readFile(java.lang.String r14) {
        /*
        r13 = this;
        r10 = new java.util.ArrayList;
        r10.<init>();
        r12 = 4;
        r8 = new byte[r12];
        r12 = 4;
        r5 = new byte[r12];
        r2 = 0;
        r3 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x0082 }
        r12 = new java.io.File;	 Catch:{ Exception -> 0x0082 }
        r12.<init>(r14);	 Catch:{ Exception -> 0x0082 }
        r3.<init>(r12);	 Catch:{ Exception -> 0x0082 }
    L_0x0016:
        r9 = r3.read(r8);	 Catch:{ Exception -> 0x002b, all -> 0x0043 }
        r12 = -1;
        if (r9 != r12) goto L_0x0022;
    L_0x001d:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r3);
        r2 = r3;
    L_0x0021:
        return r10;
    L_0x0022:
        r12 = 4;
        if (r9 == r12) goto L_0x0034;
    L_0x0025:
        r12 = "eventData read from cache file failed because magicNumber error";
        com.xiaomi.channel.commonutils.logger.MyLog.e(r12);	 Catch:{ Exception -> 0x002b, all -> 0x0043 }
        goto L_0x001d;
    L_0x002b:
        r1 = move-exception;
        r2 = r3;
    L_0x002d:
        com.xiaomi.channel.commonutils.logger.MyLog.e(r1);	 Catch:{ all -> 0x0080 }
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r2);
        goto L_0x0021;
    L_0x0034:
        r7 = com.xiaomi.channel.commonutils.misc.ByteUtils.toInt(r8);	 Catch:{ Exception -> 0x002b, all -> 0x0043 }
        r12 = -573785174; // 0xffffffffddccbbaa float:-1.84407149E18 double:NaN;
        if (r7 == r12) goto L_0x0049;
    L_0x003d:
        r12 = "eventData read from cache file failed because magicNumber error";
        com.xiaomi.channel.commonutils.logger.MyLog.e(r12);	 Catch:{ Exception -> 0x002b, all -> 0x0043 }
        goto L_0x001d;
    L_0x0043:
        r12 = move-exception;
        r2 = r3;
    L_0x0045:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r2);
        throw r12;
    L_0x0049:
        r11 = r3.read(r5);	 Catch:{ Exception -> 0x002b, all -> 0x0043 }
        r12 = -1;
        if (r11 == r12) goto L_0x001d;
    L_0x0050:
        r12 = 4;
        if (r11 == r12) goto L_0x0059;
    L_0x0053:
        r12 = "eventData read from cache file failed cause lengthBuffer error";
        com.xiaomi.channel.commonutils.logger.MyLog.e(r12);	 Catch:{ Exception -> 0x002b, all -> 0x0043 }
        goto L_0x001d;
    L_0x0059:
        r4 = com.xiaomi.channel.commonutils.misc.ByteUtils.toInt(r5);	 Catch:{ Exception -> 0x002b, all -> 0x0043 }
        r12 = 1;
        if (r4 < r12) goto L_0x0064;
    L_0x0060:
        r12 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        if (r4 <= r12) goto L_0x006a;
    L_0x0064:
        r12 = "eventData read from cache file failed cause lengthBuffer < 1 || lengthBuffer > 4K";
        com.xiaomi.channel.commonutils.logger.MyLog.e(r12);	 Catch:{ Exception -> 0x002b, all -> 0x0043 }
        goto L_0x001d;
    L_0x006a:
        r0 = new byte[r4];	 Catch:{ Exception -> 0x002b, all -> 0x0043 }
        r11 = r3.read(r0);	 Catch:{ Exception -> 0x002b, all -> 0x0043 }
        if (r11 == r4) goto L_0x0078;
    L_0x0072:
        r12 = "eventData read from cache file failed cause buffer size not equal length";
        com.xiaomi.channel.commonutils.logger.MyLog.e(r12);	 Catch:{ Exception -> 0x002b, all -> 0x0043 }
        goto L_0x001d;
    L_0x0078:
        r6 = r13.bytesToString(r0);	 Catch:{ Exception -> 0x002b, all -> 0x0043 }
        r10.add(r6);	 Catch:{ Exception -> 0x002b, all -> 0x0043 }
        goto L_0x0016;
    L_0x0080:
        r12 = move-exception;
        goto L_0x0045;
    L_0x0082:
        r1 = move-exception;
        goto L_0x002d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.clientreport.processor.DefaultEventProcessor.readFile(java.lang.String):java.util.List<java.lang.String>");
    }

    public String bytesToString(byte[] buffer) {
        String str = null;
        if (buffer == null || buffer.length < 1) {
            return str;
        }
        if (!ClientReportLogicManager.getInstance(this.mContext).getConfig().isEventEncrypted()) {
            return XMStringUtils.bytesToString(buffer);
        }
        String key = ClientReportUtil.getEventKeyWithDefault(this.mContext);
        if (TextUtils.isEmpty(key)) {
            return str;
        }
        byte[] keyBytes = ClientReportUtil.parseKey(key);
        if (keyBytes == null || keyBytes.length <= 0) {
            return str;
        }
        try {
            return XMStringUtils.bytesToString(Base64.decode(DataCryptUtils.mipushDecrypt(keyBytes, buffer), 2));
        } catch (Throwable e) {
            MyLog.e(e);
            return str;
        } catch (Throwable e2) {
            MyLog.e(e2);
            return str;
        } catch (Throwable e22) {
            MyLog.e(e22);
            return str;
        } catch (Throwable e222) {
            MyLog.e(e222);
            return str;
        } catch (Throwable e2222) {
            MyLog.e(e2222);
            return str;
        } catch (Throwable e22222) {
            MyLog.e(e22222);
            return str;
        }
    }

    public byte[] stringToBytes(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!ClientReportLogicManager.getInstance(this.mContext).getConfig().isEventEncrypted()) {
            return XMStringUtils.getBytes(str);
        }
        String key = ClientReportUtil.getEventKeyWithDefault(this.mContext);
        byte[] src = XMStringUtils.getBytes(str);
        if (TextUtils.isEmpty(key) || src == null || src.length <= 1) {
            return null;
        }
        byte[] keyBytes = ClientReportUtil.parseKey(key);
        if (keyBytes == null) {
            return null;
        }
        try {
            if (keyBytes.length > 1) {
                return DataCryptUtils.mipushEncrypt(keyBytes, Base64.encode(src, 2));
            }
            return null;
        } catch (Throwable e) {
            MyLog.e(e);
            return null;
        }
    }

    public void setEventMap(HashMap<String, ArrayList<BaseClientReport>> map) {
        this.mEventMap = map;
    }

    private void write2File(BaseClientReport[] items, String path) {
        Exception e;
        Throwable th;
        if (items != null && items.length > 0 && !TextUtils.isEmpty(path)) {
            BufferedOutputStream bos = null;
            try {
                BufferedOutputStream bos2 = new BufferedOutputStream(new FileOutputStream(new File(path), true));
                try {
                    for (BaseClientReport item : items) {
                        if (item != null) {
                            byte[] itemBytes = stringToBytes(item.toJsonString());
                            if (itemBytes == null || itemBytes.length < 1 || itemBytes.length > 4096) {
                                MyLog.e("event data throw a invalid item ");
                            } else {
                                bos2.write(ByteUtils.parseInt(-573785174));
                                bos2.write(ByteUtils.parseInt(itemBytes.length));
                                bos2.write(itemBytes);
                                bos2.flush();
                            }
                        }
                    }
                    IOUtils.closeQuietly(bos2);
                    bos = bos2;
                } catch (Exception e2) {
                    e = e2;
                    bos = bos2;
                } catch (Throwable th2) {
                    th = th2;
                    bos = bos2;
                }
            } catch (Exception e3) {
                e = e3;
                try {
                    MyLog.e("event data write to cache file failed cause exception", e);
                    IOUtils.closeQuietly(bos);
                } catch (Throwable th3) {
                    th = th3;
                    IOUtils.closeQuietly(bos);
                    throw th;
                }
            }
        }
    }

    public void write(BaseClientReport[] clientReports) {
        Throwable e;
        Throwable th;
        int i = 0;
        if (clientReports != null && clientReports.length > 0 && clientReports[0] != null) {
            String path = getWriteFileName(clientReports[0]);
            if (!TextUtils.isEmpty(path)) {
                RandomAccessFile lockRandomFile = null;
                FileLock lock = null;
                try {
                    File lockFile = new File(path + ".lock");
                    IOUtils.createFileQuietly(lockFile);
                    RandomAccessFile lockRandomFile2 = new RandomAccessFile(lockFile, "rw");
                    try {
                        lock = lockRandomFile2.getChannel().lock();
                        int length = clientReports.length;
                        while (i < length) {
                            if (clientReports[i] != null) {
                                write2File(clientReports, path);
                            }
                            i++;
                        }
                        if (lock != null && lock.isValid()) {
                            try {
                                lock.release();
                            } catch (Throwable e2) {
                                MyLog.e(e2);
                            }
                        }
                        IOUtils.closeQuietly(lockRandomFile2);
                        lockRandomFile = lockRandomFile2;
                    } catch (Exception e3) {
                        e2 = e3;
                        lockRandomFile = lockRandomFile2;
                        try {
                            MyLog.e(e2);
                            if (lock != null && lock.isValid()) {
                                try {
                                    lock.release();
                                } catch (Throwable e22) {
                                    MyLog.e(e22);
                                }
                            }
                            IOUtils.closeQuietly(lockRandomFile);
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                lock.release();
                            } catch (Throwable e222) {
                                MyLog.e(e222);
                            }
                            IOUtils.closeQuietly(lockRandomFile);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        lockRandomFile = lockRandomFile2;
                        if (lock != null && lock.isValid()) {
                            lock.release();
                        }
                        IOUtils.closeQuietly(lockRandomFile);
                        throw th;
                    }
                } catch (Exception e4) {
                    e222 = e4;
                    MyLog.e(e222);
                    lock.release();
                    IOUtils.closeQuietly(lockRandomFile);
                }
            }
        }
    }

    public void process() {
        if (this.mEventMap != null) {
            if (this.mEventMap.size() > 0) {
                for (String key : this.mEventMap.keySet()) {
                    ArrayList<BaseClientReport> list = (ArrayList) this.mEventMap.get(key);
                    if (list != null && list.size() > 0) {
                        BaseClientReport[] dataArray = new BaseClientReport[list.size()];
                        MyLog.v("begin write eventJob " + list.size());
                        list.toArray(dataArray);
                        write(dataArray);
                    }
                }
            }
            this.mEventMap.clear();
        }
    }

    public void preProcess(BaseClientReport clientReport) {
        if ((clientReport instanceof EventClientReport) && this.mEventMap != null) {
            EventClientReport eventClientReport = (EventClientReport) clientReport;
            String fileKey = getFirstEventFileName(eventClientReport);
            ArrayList<BaseClientReport> list = (ArrayList) this.mEventMap.get(fileKey);
            if (list == null) {
                list = new ArrayList();
            }
            list.add(eventClientReport);
            this.mEventMap.put(fileKey, list);
            MyLog.v("pre event out " + this.mEventMap.size() + " list " + list.size());
        }
    }

    private String getWriteFileName(BaseClientReport clientReport) {
        File folder = this.mContext.getExternalFilesDir("event");
        String production = getFirstEventFileName(clientReport);
        if (folder == null) {
            return null;
        }
        String beginFilePath = folder.getAbsolutePath() + File.separator + production;
        for (int i = 0; i < 100; i++) {
            String path = beginFilePath + i;
            if (ClientReportUtil.isFileCanBeUse(this.mContext, path)) {
                return path;
            }
        }
        return null;
    }
}
