package com.xiaomi.clientreport.processor;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.file.IOUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.clientreport.data.BaseClientReport;
import com.xiaomi.clientreport.data.PerfClientReport;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.HashMap;

public class PerfKVFileHelper {
    public static void put(String fileName, BaseClientReport[] baseClientReports) {
        Throwable th;
        if (baseClientReports != null && baseClientReports.length > 0 && !TextUtils.isEmpty(fileName)) {
            RandomAccessFile lockRandomFile = null;
            FileLock lock = null;
            try {
                File lockFile = new File(fileName + ".lock");
                IOUtils.createFileQuietly(lockFile);
                RandomAccessFile lockRandomFile2 = new RandomAccessFile(lockFile, "rw");
                try {
                    lock = lockRandomFile2.getChannel().lock();
                    HashMap<String, String> fileLines = readFromFile(fileName);
                    int length = baseClientReports.length;
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= length) {
                            break;
                        }
                        BaseClientReport baseClientReport = baseClientReports[i2];
                        if (baseClientReport != null) {
                            String key = generateKey((PerfClientReport) baseClientReport);
                            long perfCounts = ((PerfClientReport) baseClientReport).perfCounts;
                            long perfLatencies = ((PerfClientReport) baseClientReport).perfLatencies;
                            if (!TextUtils.isEmpty(key) && perfCounts > 0 && perfLatencies >= 0) {
                                putInMemeory(fileLines, key, perfCounts, perfLatencies);
                            }
                        }
                        i = i2 + 1;
                    }
                    writeToFile(fileName, fileLines);
                    if (lock != null && lock.isValid()) {
                        try {
                            lock.release();
                        } catch (Throwable e) {
                            MyLog.e(e);
                        }
                    }
                    IOUtils.closeQuietly(lockRandomFile2);
                    lockRandomFile = lockRandomFile2;
                } catch (Throwable th2) {
                    th = th2;
                    lockRandomFile = lockRandomFile2;
                    lock.release();
                    IOUtils.closeQuietly(lockRandomFile);
                    throw th;
                }
            } catch (Throwable th3) {
                MyLog.v("failed to write perf to file ");
                lock.release();
                IOUtils.closeQuietly(lockRandomFile);
            }
        }
    }

    private static void putInMemeory(HashMap<String, String> fileLines, String key, long count, long latency) {
        String oldValue = (String) fileLines.get(key);
        if (TextUtils.isEmpty(oldValue)) {
            fileLines.put(key, count + "#" + latency);
            return;
        }
        String newValue;
        long[] oldValues = parseValueStr(oldValue);
        if (oldValues == null || oldValues[0] <= 0 || oldValues[1] < 0) {
            newValue = count + "#" + latency;
        } else {
            long newLatence = latency + oldValues[1];
            newValue = (count + oldValues[0]) + "#" + newLatence;
        }
        fileLines.put(key, newValue);
    }

    protected static long[] parseValueStr(String value) {
        long[] values = new long[2];
        try {
            String[] strs = value.split("#");
            if (strs.length < 2) {
                return values;
            }
            values[0] = Long.parseLong(strs[0].trim());
            values[1] = Long.parseLong(strs[1].trim());
            return values;
        } catch (Throwable e) {
            MyLog.e(e);
            return null;
        }
    }

    private static void writeToFile(String fileName, HashMap<String, String> fileLines) {
        Throwable e;
        Throwable th;
        BufferedWriter writer = null;
        if (!TextUtils.isEmpty(fileName) && fileLines != null && fileLines.size() != 0) {
            File file = new File(fileName);
            if (file.exists()) {
                file.delete();
            }
            try {
                BufferedWriter writer2 = new BufferedWriter(new FileWriter(file));
                try {
                    for (String key : fileLines.keySet()) {
                        writer2.write(key + "%%%" + ((String) fileLines.get(key)));
                        writer2.newLine();
                    }
                    IOUtils.closeQuietly(writer2);
                    writer = writer2;
                } catch (Exception e2) {
                    e = e2;
                    writer = writer2;
                    try {
                        MyLog.e(e);
                        IOUtils.closeQuietly(writer);
                    } catch (Throwable th2) {
                        th = th2;
                        IOUtils.closeQuietly(writer);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    writer = writer2;
                    IOUtils.closeQuietly(writer);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                MyLog.e(e);
                IOUtils.closeQuietly(writer);
            }
        }
    }

    private static HashMap<String, String> readFromFile(String file) {
        Throwable e;
        Throwable th;
        BufferedReader bufferedReader = null;
        HashMap<String, String> result = new HashMap();
        if (!TextUtils.isEmpty(file) && new File(file).exists()) {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        String[] strs = line.split("%%%");
                        if (!(strs.length < 2 || TextUtils.isEmpty(strs[0]) || TextUtils.isEmpty(strs[1]))) {
                            result.put(strs[0], strs[1]);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        bufferedReader = bufferedReader2;
                        try {
                            MyLog.e(e);
                            IOUtils.closeQuietly(bufferedReader);
                            return result;
                        } catch (Throwable th2) {
                            th = th2;
                            IOUtils.closeQuietly(bufferedReader);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader = bufferedReader2;
                        IOUtils.closeQuietly(bufferedReader);
                        throw th;
                    }
                }
                IOUtils.closeQuietly(bufferedReader2);
                bufferedReader = bufferedReader2;
            } catch (Exception e3) {
                e = e3;
                MyLog.e(e);
                IOUtils.closeQuietly(bufferedReader);
                return result;
            }
        }
        return result;
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00e2  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00e2  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00e2  */
    public static java.util.List<java.lang.String> extractToDatas(android.content.Context r14, java.lang.String r15) {
        /*
        r0 = 0;
        r10 = new java.util.ArrayList;
        r10.<init>();
        r12 = android.text.TextUtils.isEmpty(r15);
        if (r12 != 0) goto L_0x0017;
    L_0x000c:
        r12 = new java.io.File;
        r12.<init>(r15);
        r12 = r12.exists();
        if (r12 != 0) goto L_0x0018;
    L_0x0017:
        return r10;
    L_0x0018:
        r7 = 0;
        r4 = 0;
        r5 = 0;
        r6 = new java.io.File;	 Catch:{ Exception -> 0x00f7 }
        r12 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00f7 }
        r12.<init>();	 Catch:{ Exception -> 0x00f7 }
        r12 = r12.append(r15);	 Catch:{ Exception -> 0x00f7 }
        r13 = ".lock";
        r12 = r12.append(r13);	 Catch:{ Exception -> 0x00f7 }
        r12 = r12.toString();	 Catch:{ Exception -> 0x00f7 }
        r6.<init>(r12);	 Catch:{ Exception -> 0x00f7 }
        com.xiaomi.channel.commonutils.file.IOUtils.createFileQuietly(r6);	 Catch:{ Exception -> 0x00f9, all -> 0x00eb }
        r8 = new java.io.RandomAccessFile;	 Catch:{ Exception -> 0x00f9, all -> 0x00eb }
        r12 = "rw";
        r8.<init>(r6, r12);	 Catch:{ Exception -> 0x00f9, all -> 0x00eb }
        r12 = r8.getChannel();	 Catch:{ Exception -> 0x00fc, all -> 0x00ee }
        r4 = r12.lock();	 Catch:{ Exception -> 0x00fc, all -> 0x00ee }
        r1 = new java.io.BufferedReader;	 Catch:{ Exception -> 0x00fc, all -> 0x00ee }
        r12 = new java.io.FileReader;	 Catch:{ Exception -> 0x00fc, all -> 0x00ee }
        r12.<init>(r15);	 Catch:{ Exception -> 0x00fc, all -> 0x00ee }
        r1.<init>(r12);	 Catch:{ Exception -> 0x00fc, all -> 0x00ee }
        r3 = 0;
    L_0x0050:
        r3 = r1.readLine();	 Catch:{ Exception -> 0x008a, all -> 0x00f2 }
        if (r3 == 0) goto L_0x00a9;
    L_0x0056:
        r12 = "%%%";
        r11 = r3.split(r12);	 Catch:{ Exception -> 0x008a, all -> 0x00f2 }
        r12 = r11.length;	 Catch:{ Exception -> 0x008a, all -> 0x00f2 }
        r13 = 2;
        if (r12 < r13) goto L_0x0050;
    L_0x0060:
        r12 = 0;
        r12 = r11[r12];	 Catch:{ Exception -> 0x008a, all -> 0x00f2 }
        r12 = android.text.TextUtils.isEmpty(r12);	 Catch:{ Exception -> 0x008a, all -> 0x00f2 }
        if (r12 != 0) goto L_0x0050;
    L_0x0069:
        r12 = 1;
        r12 = r11[r12];	 Catch:{ Exception -> 0x008a, all -> 0x00f2 }
        r12 = android.text.TextUtils.isEmpty(r12);	 Catch:{ Exception -> 0x008a, all -> 0x00f2 }
        if (r12 != 0) goto L_0x0050;
    L_0x0072:
        r12 = 0;
        r12 = r11[r12];	 Catch:{ Exception -> 0x008a, all -> 0x00f2 }
        r9 = spiltKeyForModel(r12);	 Catch:{ Exception -> 0x008a, all -> 0x00f2 }
        r12 = 1;
        r12 = r11[r12];	 Catch:{ Exception -> 0x008a, all -> 0x00f2 }
        r9 = buildPerfClientReport(r9, r12);	 Catch:{ Exception -> 0x008a, all -> 0x00f2 }
        if (r9 == 0) goto L_0x0050;
    L_0x0082:
        r12 = r9.toJsonString();	 Catch:{ Exception -> 0x008a, all -> 0x00f2 }
        r10.add(r12);	 Catch:{ Exception -> 0x008a, all -> 0x00f2 }
        goto L_0x0050;
    L_0x008a:
        r2 = move-exception;
        r5 = r6;
        r7 = r8;
        r0 = r1;
    L_0x008e:
        com.xiaomi.channel.commonutils.logger.MyLog.e(r2);	 Catch:{ all -> 0x00ce }
        if (r4 == 0) goto L_0x009c;
    L_0x0093:
        r12 = r4.isValid();
        if (r12 == 0) goto L_0x009c;
    L_0x0099:
        r4.release();	 Catch:{ IOException -> 0x00c9 }
    L_0x009c:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r7);
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r0);
        if (r5 == 0) goto L_0x0017;
    L_0x00a4:
        r5.delete();
        goto L_0x0017;
    L_0x00a9:
        if (r4 == 0) goto L_0x00b4;
    L_0x00ab:
        r12 = r4.isValid();
        if (r12 == 0) goto L_0x00b4;
    L_0x00b1:
        r4.release();	 Catch:{ IOException -> 0x00c4 }
    L_0x00b4:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r8);
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r1);
        if (r6 == 0) goto L_0x0100;
    L_0x00bc:
        r6.delete();
        r5 = r6;
        r7 = r8;
        r0 = r1;
        goto L_0x0017;
    L_0x00c4:
        r2 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r2);
        goto L_0x00b4;
    L_0x00c9:
        r2 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r2);
        goto L_0x009c;
    L_0x00ce:
        r12 = move-exception;
    L_0x00cf:
        if (r4 == 0) goto L_0x00da;
    L_0x00d1:
        r13 = r4.isValid();
        if (r13 == 0) goto L_0x00da;
    L_0x00d7:
        r4.release();	 Catch:{ IOException -> 0x00e6 }
    L_0x00da:
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r7);
        com.xiaomi.channel.commonutils.file.IOUtils.closeQuietly(r0);
        if (r5 == 0) goto L_0x00e5;
    L_0x00e2:
        r5.delete();
    L_0x00e5:
        throw r12;
    L_0x00e6:
        r2 = move-exception;
        com.xiaomi.channel.commonutils.logger.MyLog.e(r2);
        goto L_0x00da;
    L_0x00eb:
        r12 = move-exception;
        r5 = r6;
        goto L_0x00cf;
    L_0x00ee:
        r12 = move-exception;
        r5 = r6;
        r7 = r8;
        goto L_0x00cf;
    L_0x00f2:
        r12 = move-exception;
        r5 = r6;
        r7 = r8;
        r0 = r1;
        goto L_0x00cf;
    L_0x00f7:
        r2 = move-exception;
        goto L_0x008e;
    L_0x00f9:
        r2 = move-exception;
        r5 = r6;
        goto L_0x008e;
    L_0x00fc:
        r2 = move-exception;
        r5 = r6;
        r7 = r8;
        goto L_0x008e;
    L_0x0100:
        r5 = r6;
        r7 = r8;
        r0 = r1;
        goto L_0x0017;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.clientreport.processor.PerfKVFileHelper.extractToDatas(android.content.Context, java.lang.String):java.util.List<java.lang.String>");
    }

    private static String[] spiltKey(String key) {
        if (TextUtils.isEmpty(key)) {
            return null;
        }
        return key.split("#");
    }

    private static PerfClientReport spiltKeyForModel(String key) {
        try {
            String[] strs = spiltKey(key);
            if (strs == null || strs.length < 4 || TextUtils.isEmpty(strs[0]) || TextUtils.isEmpty(strs[1]) || TextUtils.isEmpty(strs[2]) || TextUtils.isEmpty(strs[3])) {
                return null;
            }
            PerfClientReport perfClientReport = PerfClientReport.getBlankInstance();
            perfClientReport.production = Integer.parseInt(strs[0]);
            perfClientReport.clientInterfaceId = strs[1];
            perfClientReport.reportType = Integer.parseInt(strs[2]);
            perfClientReport.code = Integer.parseInt(strs[3]);
            return perfClientReport;
        } catch (Exception e) {
            MyLog.v("parse per key error");
            return null;
        }
    }

    private static PerfClientReport buildPerfClientReport(PerfClientReport perfClientReport, String oldValue) {
        if (perfClientReport == null) {
            return null;
        }
        long[] values = parseValueStr(oldValue);
        if (values == null) {
            return null;
        }
        perfClientReport.perfCounts = values[0];
        perfClientReport.perfLatencies = values[1];
        return perfClientReport;
    }

    public static String generateKey(PerfClientReport clientReport) {
        StringBuilder sb = new StringBuilder();
        sb.append(clientReport.production);
        sb.append("#");
        sb.append(clientReport.clientInterfaceId);
        sb.append("#");
        sb.append(clientReport.reportType);
        sb.append("#");
        sb.append(clientReport.code);
        return sb.toString();
    }
}
