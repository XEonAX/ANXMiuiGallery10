package com.xiaomi.mistatistic.sdk.controller;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.IBinder;
import android.text.TextUtils;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import com.xiaomi.mistatistic.sdk.data.StatEventPojo;
import java.util.ArrayList;
import java.util.List;

/* compiled from: EventDAO */
public class h {
    public static boolean a = false;
    private static String b = "";
    private static volatile k c;
    private boolean d = false;
    private com.xiaomi.mistatistic.sdk.a e = null;
    private boolean f = false;
    private ServiceConnection g = new ServiceConnection() {
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            h.this.f = true;
            h.this.e = com.xiaomi.mistatistic.sdk.a.a.a(iBinder);
        }

        public void onServiceDisconnected(ComponentName componentName) {
            h.this.f = false;
            h.this.e = null;
        }
    };

    /* compiled from: EventDAO */
    private static class a {
        private static final k a = new k(d.a());
    }

    public static void a() {
        c = g();
    }

    public static boolean b() {
        return a;
    }

    public void a(Boolean bool) {
        this.d = bool.booleanValue();
    }

    private void f() {
        if (!this.f) {
            try {
                Context a = d.a();
                Intent intent = new Intent(a, Class.forName(b));
                a.startService(intent);
                if (this.e != null) {
                    j.b("DAO", "unbind service before bind it again!");
                    a.unbindService(this.g);
                }
                a.bindService(intent, this.g, 1);
            } catch (Throwable e) {
                j.a("DAO", "ensureServiceBinded exception", e);
            }
        }
    }

    public StatEventPojo a(String str, String str2) {
        if (!a) {
            return b(str, str2);
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.f && this.e != null) {
                    StatEventPojo a = this.e.a(str, str2);
                    j.b("DAO", "process query, result is: " + a);
                    return a;
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return null;
        } catch (Throwable e) {
            j.a("DAO", "queryCustomEvent exception", e);
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x005b A:{SYNTHETIC, Splitter: B:32:0x005b} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0062  */
    public com.xiaomi.mistatistic.sdk.data.StatEventPojo b(java.lang.String r11, java.lang.String r12) {
        /*
        r10 = this;
        r8 = 0;
        r9 = g();
        monitor-enter(r9);
        r0 = c;	 Catch:{ Exception -> 0x003d, all -> 0x0058 }
        r0 = r0.getReadableDatabase();	 Catch:{ Exception -> 0x003d, all -> 0x0058 }
        r1 = "mistat_event";
        r2 = 0;
        r3 = "category=? AND key=?";
        r4 = 2;
        r4 = new java.lang.String[r4];	 Catch:{ Exception -> 0x003d, all -> 0x0058 }
        r5 = 0;
        r4[r5] = r11;	 Catch:{ Exception -> 0x003d, all -> 0x0058 }
        r5 = 1;
        r4[r5] = r12;	 Catch:{ Exception -> 0x003d, all -> 0x0058 }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Exception -> 0x003d, all -> 0x0058 }
        if (r1 == 0) goto L_0x002d;
    L_0x0023:
        r0 = r1.moveToFirst();	 Catch:{ Exception -> 0x006b }
        if (r0 == 0) goto L_0x002d;
    L_0x0029:
        r8 = a(r1);	 Catch:{ Exception -> 0x006b }
    L_0x002d:
        if (r1 == 0) goto L_0x0032;
    L_0x002f:
        r1.close();	 Catch:{ all -> 0x0055 }
    L_0x0032:
        r0 = c;	 Catch:{ all -> 0x0055 }
        if (r0 == 0) goto L_0x003b;
    L_0x0036:
        r0 = c;	 Catch:{ all -> 0x0055 }
        r0.close();	 Catch:{ all -> 0x0055 }
    L_0x003b:
        monitor-exit(r9);	 Catch:{ all -> 0x0055 }
        return r8;
    L_0x003d:
        r0 = move-exception;
        r1 = r8;
    L_0x003f:
        r2 = "DAO";
        r3 = "queryCustomEvent exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r0);	 Catch:{ all -> 0x0068 }
        if (r1 == 0) goto L_0x004b;
    L_0x0048:
        r1.close();	 Catch:{ all -> 0x0055 }
    L_0x004b:
        r0 = c;	 Catch:{ all -> 0x0055 }
        if (r0 == 0) goto L_0x003b;
    L_0x004f:
        r0 = c;	 Catch:{ all -> 0x0055 }
        r0.close();	 Catch:{ all -> 0x0055 }
        goto L_0x003b;
    L_0x0055:
        r0 = move-exception;
        monitor-exit(r9);	 Catch:{ all -> 0x0055 }
        throw r0;
    L_0x0058:
        r0 = move-exception;
    L_0x0059:
        if (r8 == 0) goto L_0x005e;
    L_0x005b:
        r8.close();	 Catch:{ all -> 0x0055 }
    L_0x005e:
        r1 = c;	 Catch:{ all -> 0x0055 }
        if (r1 == 0) goto L_0x0067;
    L_0x0062:
        r1 = c;	 Catch:{ all -> 0x0055 }
        r1.close();	 Catch:{ all -> 0x0055 }
    L_0x0067:
        throw r0;	 Catch:{ all -> 0x0055 }
    L_0x0068:
        r0 = move-exception;
        r8 = r1;
        goto L_0x0059;
    L_0x006b:
        r0 = move-exception;
        goto L_0x003f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.h.b(java.lang.String, java.lang.String):com.xiaomi.mistatistic.sdk.data.StatEventPojo");
    }

    public void a(StatEventPojo statEventPojo) {
        if (a) {
            try {
                Intent intent = new Intent(d.a(), Class.forName(b));
                intent.putExtra(nexExportFormat.TAG_FORMAT_TYPE, 1);
                intent.putExtra("StatEventPojo", statEventPojo);
                d.a().startService(intent);
                return;
            } catch (Throwable e) {
                j.a("DAO", "insertNewEvent exception", e);
                return;
            }
        }
        b(statEventPojo);
    }

    public void b(StatEventPojo statEventPojo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("category", statEventPojo.mCategory);
        contentValues.put("key", TextUtils.isEmpty(statEventPojo.mKey) ? "" : statEventPojo.mKey);
        contentValues.put("ts", Long.valueOf(statEventPojo.mTimeStamp));
        contentValues.put(nexExportFormat.TAG_FORMAT_TYPE, TextUtils.isEmpty(statEventPojo.mType) ? "" : statEventPojo.mType);
        contentValues.put("value", TextUtils.isEmpty(statEventPojo.mValue) ? "" : statEventPojo.mValue);
        contentValues.put("extra", TextUtils.isEmpty(statEventPojo.mExtra) ? "" : statEventPojo.mExtra);
        contentValues.put("anonymous", Integer.valueOf(statEventPojo.mAnonymous));
        synchronized (g()) {
            try {
                c.getWritableDatabase().insert("mistat_event", "", contentValues);
                if (c != null) {
                    c.close();
                }
            } catch (Throwable e) {
                j.a("DAO", String.format("Error to insert data into DB, key= %s", new Object[]{statEventPojo.mKey}), e);
                if (c != null) {
                    c.close();
                }
            } catch (Throwable th) {
                if (c != null) {
                    c.close();
                }
            }
        }
    }

    public void a(String str, String str2, String str3) {
        if (a) {
            try {
                Intent intent = new Intent(d.a(), Class.forName(b));
                intent.putExtra(nexExportFormat.TAG_FORMAT_TYPE, 2);
                intent.putExtra("key", str);
                intent.putExtra("category", str2);
                intent.putExtra("newValue", str3);
                d.a().startService(intent);
                return;
            } catch (Throwable e) {
                j.a("DAO", "updateEventByKeyAndCategory exception", e);
                return;
            }
        }
        b(str, str2, str3);
    }

    public void b(String str, String str2, String str3) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", str3);
        synchronized (g()) {
            try {
                c.getWritableDatabase().update("mistat_event", contentValues, "category=? AND key=?", new String[]{str2, str});
                if (c != null) {
                    c.close();
                }
            } catch (Throwable e) {
                j.a("DAO", "Error to update data from DB, key=" + str, e);
                if (c != null) {
                    c.close();
                }
            } catch (Throwable th) {
                if (c != null) {
                    c.close();
                }
            }
        }
    }

    public List<StatEventPojo> a(long j) {
        int i = 0;
        if (!a) {
            return b(j);
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.f && this.e != null) {
                    List<StatEventPojo> a = this.e.a(j);
                    String str = "DAO";
                    String str2 = "process getAll, result size is : %d";
                    Object[] objArr = new Object[1];
                    if (a != null) {
                        i = a.size();
                    }
                    objArr[0] = Integer.valueOf(i);
                    j.b(str, String.format(str2, objArr));
                    return a;
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return new ArrayList();
        } catch (Throwable e) {
            j.a("DAO", "getAllEventOrderByTimestampDescend exception", e);
            return new ArrayList();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0089 A:{SYNTHETIC, Splitter: B:25:0x0089} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x009e A:{SYNTHETIC, Splitter: B:31:0x009e} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00a5  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00d3 A:{SYNTHETIC, Splitter: B:57:0x00d3} */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00da  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00d3 A:{SYNTHETIC, Splitter: B:57:0x00d3} */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00da  */
    /* JADX WARNING: Missing block: B:71:?, code:
            return r9;
     */
    public java.util.List<com.xiaomi.mistatistic.sdk.data.StatEventPojo> b(long r14) {
        /*
        r13 = this;
        r10 = 0;
        r9 = new java.util.ArrayList;
        r9.<init>();
        r1 = 0;
        r11 = g();
        monitor-enter(r11);
        r0 = c;	 Catch:{ Exception -> 0x00b4, all -> 0x00cf }
        r0 = r0.getReadableDatabase();	 Catch:{ Exception -> 0x00b4, all -> 0x00cf }
        if (r0 != 0) goto L_0x0025;
    L_0x0014:
        if (r10 == 0) goto L_0x0019;
    L_0x0016:
        r1.close();	 Catch:{ all -> 0x00cc }
    L_0x0019:
        r0 = c;	 Catch:{ all -> 0x00cc }
        if (r0 == 0) goto L_0x0022;
    L_0x001d:
        r0 = c;	 Catch:{ all -> 0x00cc }
        r0.close();	 Catch:{ all -> 0x00cc }
    L_0x0022:
        monitor-exit(r11);	 Catch:{ all -> 0x00cc }
        r0 = r9;
    L_0x0024:
        return r0;
    L_0x0025:
        r1 = "mistat_event";
        r2 = 0;
        r3 = "ts < ? ";
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ Exception -> 0x00b4, all -> 0x00cf }
        r5 = 0;
        r6 = java.lang.String.valueOf(r14);	 Catch:{ Exception -> 0x00b4, all -> 0x00cf }
        r4[r5] = r6;	 Catch:{ Exception -> 0x00b4, all -> 0x00cf }
        r5 = 0;
        r6 = 0;
        r7 = "ts DESC";
        r8 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        r8 = java.lang.String.valueOf(r8);	 Catch:{ Exception -> 0x00b4, all -> 0x00cf }
        r8 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x00b4, all -> 0x00cf }
        if (r8 == 0) goto L_0x00ea;
    L_0x0046:
        r1 = r8.moveToLast();	 Catch:{ Exception -> 0x00e5, all -> 0x00e0 }
        if (r1 == 0) goto L_0x00ea;
    L_0x004c:
        r1 = "ts";
        r1 = r8.getColumnIndex(r1);	 Catch:{ Exception -> 0x00e5, all -> 0x00e0 }
        r6 = r8.getLong(r1);	 Catch:{ Exception -> 0x00e5, all -> 0x00e0 }
        r8.close();	 Catch:{ Exception -> 0x00e5, all -> 0x00e0 }
        r3 = "ts<? AND ts>=? AND anonymous=?";
        r1 = 3;
        r4 = new java.lang.String[r1];	 Catch:{ Exception -> 0x00e5, all -> 0x00e0 }
        r1 = 0;
        r2 = java.lang.String.valueOf(r14);	 Catch:{ Exception -> 0x00e5, all -> 0x00e0 }
        r4[r1] = r2;	 Catch:{ Exception -> 0x00e5, all -> 0x00e0 }
        r1 = 1;
        r2 = java.lang.String.valueOf(r6);	 Catch:{ Exception -> 0x00e5, all -> 0x00e0 }
        r4[r1] = r2;	 Catch:{ Exception -> 0x00e5, all -> 0x00e0 }
        r2 = 2;
        r1 = r13.d;	 Catch:{ Exception -> 0x00e5, all -> 0x00e0 }
        if (r1 == 0) goto L_0x00ae;
    L_0x0073:
        r1 = 1;
        r1 = java.lang.String.valueOf(r1);	 Catch:{ Exception -> 0x00e5, all -> 0x00e0 }
    L_0x0078:
        r4[r2] = r1;	 Catch:{ Exception -> 0x00e5, all -> 0x00e0 }
        r1 = "mistat_event";
        r2 = 0;
        r5 = 0;
        r6 = 0;
        r7 = "ts DESC";
        r8 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Exception -> 0x00e5, all -> 0x00e0 }
        r1 = r8;
    L_0x0087:
        if (r1 == 0) goto L_0x009c;
    L_0x0089:
        r0 = r1.moveToFirst();	 Catch:{ Exception -> 0x00e8 }
        if (r0 == 0) goto L_0x009c;
    L_0x008f:
        r0 = a(r1);	 Catch:{ Exception -> 0x00e8 }
        r9.add(r0);	 Catch:{ Exception -> 0x00e8 }
        r0 = r1.moveToNext();	 Catch:{ Exception -> 0x00e8 }
        if (r0 != 0) goto L_0x008f;
    L_0x009c:
        if (r1 == 0) goto L_0x00a1;
    L_0x009e:
        r1.close();	 Catch:{ all -> 0x00cc }
    L_0x00a1:
        r0 = c;	 Catch:{ all -> 0x00cc }
        if (r0 == 0) goto L_0x00aa;
    L_0x00a5:
        r0 = c;	 Catch:{ all -> 0x00cc }
        r0.close();	 Catch:{ all -> 0x00cc }
    L_0x00aa:
        monitor-exit(r11);	 Catch:{ all -> 0x00cc }
        r0 = r9;
        goto L_0x0024;
    L_0x00ae:
        r1 = 0;
        r1 = java.lang.String.valueOf(r1);	 Catch:{ Exception -> 0x00e5, all -> 0x00e0 }
        goto L_0x0078;
    L_0x00b4:
        r0 = move-exception;
        r1 = r10;
    L_0x00b6:
        r2 = "DAO";
        r3 = "Error while reading data from DB";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r0);	 Catch:{ all -> 0x00e2 }
        if (r1 == 0) goto L_0x00c2;
    L_0x00bf:
        r1.close();	 Catch:{ all -> 0x00cc }
    L_0x00c2:
        r0 = c;	 Catch:{ all -> 0x00cc }
        if (r0 == 0) goto L_0x00aa;
    L_0x00c6:
        r0 = c;	 Catch:{ all -> 0x00cc }
        r0.close();	 Catch:{ all -> 0x00cc }
        goto L_0x00aa;
    L_0x00cc:
        r0 = move-exception;
        monitor-exit(r11);	 Catch:{ all -> 0x00cc }
        throw r0;
    L_0x00cf:
        r0 = move-exception;
        r8 = r10;
    L_0x00d1:
        if (r8 == 0) goto L_0x00d6;
    L_0x00d3:
        r8.close();	 Catch:{ all -> 0x00cc }
    L_0x00d6:
        r1 = c;	 Catch:{ all -> 0x00cc }
        if (r1 == 0) goto L_0x00df;
    L_0x00da:
        r1 = c;	 Catch:{ all -> 0x00cc }
        r1.close();	 Catch:{ all -> 0x00cc }
    L_0x00df:
        throw r0;	 Catch:{ all -> 0x00cc }
    L_0x00e0:
        r0 = move-exception;
        goto L_0x00d1;
    L_0x00e2:
        r0 = move-exception;
        r8 = r1;
        goto L_0x00d1;
    L_0x00e5:
        r0 = move-exception;
        r1 = r8;
        goto L_0x00b6;
    L_0x00e8:
        r0 = move-exception;
        goto L_0x00b6;
    L_0x00ea:
        r1 = r8;
        goto L_0x0087;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.h.b(long):java.util.List<com.xiaomi.mistatistic.sdk.data.StatEventPojo>");
    }

    public List<StatEventPojo> c(long j) {
        int i = 0;
        if (!a) {
            return d(j);
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.f && this.e != null) {
                    List<StatEventPojo> c = this.e.c(j);
                    String str = "DAO";
                    String str2 = "process getBasicEventsOrderByTsDescend, result size is : %d";
                    Object[] objArr = new Object[1];
                    if (c != null) {
                        i = c.size();
                    }
                    objArr[0] = Integer.valueOf(i);
                    j.b(str, String.format(str2, objArr));
                    return c;
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return new ArrayList();
        } catch (Throwable e) {
            j.a("DAO", "getBasicEventsOrderByTsDescend exception", e);
            return new ArrayList();
        }
    }

    public List<StatEventPojo> d(long j) {
        Throwable e;
        Cursor cursor = null;
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        synchronized (g()) {
            try {
                SQLiteDatabase readableDatabase = c.getReadableDatabase();
                if (readableDatabase == null) {
                    cursor2.close();
                    c.close();
                    return arrayList;
                }
                String valueOf;
                String str = "mistat_event";
                String str2 = "category IN (?, ?, ?, ?, ?, ?, ?) AND anonymous=?";
                String[] strArr = new String[8];
                strArr[0] = String.valueOf("mistat_basic");
                strArr[1] = String.valueOf("mistat_pt");
                strArr[2] = String.valueOf("mistat_pv");
                strArr[3] = String.valueOf("mistat_session");
                strArr[4] = String.valueOf("mistat_pa");
                strArr[5] = String.valueOf("mistat_session_extra");
                strArr[6] = String.valueOf("mistat_monitor");
                if (this.d) {
                    valueOf = String.valueOf(1);
                } else {
                    valueOf = String.valueOf(0);
                }
                strArr[7] = valueOf;
                cursor2 = readableDatabase.query(str, null, str2, strArr, null, null, "ts DESC", String.valueOf(500));
                if (cursor2 != null) {
                    try {
                        if (cursor2.moveToFirst()) {
                            do {
                                arrayList.add(a(cursor2));
                            } while (cursor2.moveToNext());
                        }
                    } catch (Exception e2) {
                        e = e2;
                        try {
                            j.a("DAO", "Error while getBasicEventsOrderByTsDescendImpl", e);
                            cursor2.close();
                            c.close();
                            return arrayList;
                        } catch (Throwable th) {
                            e = th;
                            cursor = cursor2;
                            cursor.close();
                            c.close();
                            throw e;
                        }
                    }
                }
                cursor2.close();
                c.close();
            } catch (Exception e3) {
                e = e3;
                cursor2 = null;
            } catch (Throwable th2) {
                e = th2;
                cursor.close();
                c.close();
                throw e;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x009a A:{SYNTHETIC, Splitter: B:44:0x009a} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00a1  */
    /* JADX WARNING: Missing block: B:54:?, code:
            return r9;
     */
    public java.util.List<com.xiaomi.mistatistic.sdk.data.StatEventPojo> e(long r14) {
        /*
        r13 = this;
        r10 = 0;
        r9 = new java.util.ArrayList;
        r9.<init>();
        r1 = 0;
        r11 = g();
        monitor-enter(r11);
        r0 = c;	 Catch:{ Exception -> 0x007c, all -> 0x0097 }
        r0 = r0.getReadableDatabase();	 Catch:{ Exception -> 0x007c, all -> 0x0097 }
        if (r0 != 0) goto L_0x0025;
    L_0x0014:
        if (r10 == 0) goto L_0x0019;
    L_0x0016:
        r1.close();	 Catch:{ all -> 0x0094 }
    L_0x0019:
        r0 = c;	 Catch:{ all -> 0x0094 }
        if (r0 == 0) goto L_0x0022;
    L_0x001d:
        r0 = c;	 Catch:{ all -> 0x0094 }
        r0.close();	 Catch:{ all -> 0x0094 }
    L_0x0022:
        monitor-exit(r11);	 Catch:{ all -> 0x0094 }
        r0 = r9;
    L_0x0024:
        return r0;
    L_0x0025:
        r1 = "mistat_event";
        r2 = 0;
        r3 = "ts <= ? AND category = ? OR category = ? OR category = ? OR category = ? OR category = ? ";
        r4 = 6;
        r4 = new java.lang.String[r4];	 Catch:{ Exception -> 0x007c, all -> 0x0097 }
        r5 = 0;
        r6 = java.lang.String.valueOf(r14);	 Catch:{ Exception -> 0x007c, all -> 0x0097 }
        r4[r5] = r6;	 Catch:{ Exception -> 0x007c, all -> 0x0097 }
        r5 = 1;
        r6 = "mistat_basic";
        r4[r5] = r6;	 Catch:{ Exception -> 0x007c, all -> 0x0097 }
        r5 = 2;
        r6 = "mistat_pa";
        r4[r5] = r6;	 Catch:{ Exception -> 0x007c, all -> 0x0097 }
        r5 = 3;
        r6 = "mistat_session";
        r4[r5] = r6;	 Catch:{ Exception -> 0x007c, all -> 0x0097 }
        r5 = 4;
        r6 = "mistat_pv";
        r4[r5] = r6;	 Catch:{ Exception -> 0x007c, all -> 0x0097 }
        r5 = 5;
        r6 = "mistat_pt";
        r4[r5] = r6;	 Catch:{ Exception -> 0x007c, all -> 0x0097 }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x007c, all -> 0x0097 }
        if (r1 == 0) goto L_0x006b;
    L_0x0058:
        r0 = r1.moveToFirst();	 Catch:{ Exception -> 0x00aa }
        if (r0 == 0) goto L_0x006b;
    L_0x005e:
        r0 = a(r1);	 Catch:{ Exception -> 0x00aa }
        r9.add(r0);	 Catch:{ Exception -> 0x00aa }
        r0 = r1.moveToNext();	 Catch:{ Exception -> 0x00aa }
        if (r0 != 0) goto L_0x005e;
    L_0x006b:
        if (r1 == 0) goto L_0x0070;
    L_0x006d:
        r1.close();	 Catch:{ all -> 0x0094 }
    L_0x0070:
        r0 = c;	 Catch:{ all -> 0x0094 }
        if (r0 == 0) goto L_0x0079;
    L_0x0074:
        r0 = c;	 Catch:{ all -> 0x0094 }
        r0.close();	 Catch:{ all -> 0x0094 }
    L_0x0079:
        monitor-exit(r11);	 Catch:{ all -> 0x0094 }
        r0 = r9;
        goto L_0x0024;
    L_0x007c:
        r0 = move-exception;
        r1 = r10;
    L_0x007e:
        r2 = "DAO";
        r3 = "getExpiredEvents";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r0);	 Catch:{ all -> 0x00a7 }
        if (r1 == 0) goto L_0x008a;
    L_0x0087:
        r1.close();	 Catch:{ all -> 0x0094 }
    L_0x008a:
        r0 = c;	 Catch:{ all -> 0x0094 }
        if (r0 == 0) goto L_0x0079;
    L_0x008e:
        r0 = c;	 Catch:{ all -> 0x0094 }
        r0.close();	 Catch:{ all -> 0x0094 }
        goto L_0x0079;
    L_0x0094:
        r0 = move-exception;
        monitor-exit(r11);	 Catch:{ all -> 0x0094 }
        throw r0;
    L_0x0097:
        r0 = move-exception;
    L_0x0098:
        if (r10 == 0) goto L_0x009d;
    L_0x009a:
        r10.close();	 Catch:{ all -> 0x0094 }
    L_0x009d:
        r1 = c;	 Catch:{ all -> 0x0094 }
        if (r1 == 0) goto L_0x00a6;
    L_0x00a1:
        r1 = c;	 Catch:{ all -> 0x0094 }
        r1.close();	 Catch:{ all -> 0x0094 }
    L_0x00a6:
        throw r0;	 Catch:{ all -> 0x0094 }
    L_0x00a7:
        r0 = move-exception;
        r10 = r1;
        goto L_0x0098;
    L_0x00aa:
        r0 = move-exception;
        goto L_0x007e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.h.e(long):java.util.List<com.xiaomi.mistatistic.sdk.data.StatEventPojo>");
    }

    public void f(long j) {
        if (a) {
            try {
                Intent intent = new Intent(d.a(), Class.forName(b));
                intent.putExtra(nexExportFormat.TAG_FORMAT_TYPE, 3);
                intent.putExtra("timeStamp", j);
                d.a().startService(intent);
                return;
            } catch (Throwable e) {
                j.a("DAO", "deleteExpiredEvents", e);
                return;
            }
        }
        g(j);
    }

    public void g(long j) {
        synchronized (g()) {
            try {
                int delete = c.getWritableDatabase().delete("mistat_event", "ts <= ? AND category <> ? ", new String[]{String.valueOf(j), "mistat_monitor"});
                if (delete > 0) {
                    MiStatInterface.recordCalculateEvent("quality_monitor", "delete_old_events", (long) delete);
                }
                if (c != null) {
                    c.close();
                }
            } catch (Throwable e) {
                j.a("DAO", "Error while deleting out-of-date data from DB", e);
                if (c != null) {
                    c.close();
                }
            } catch (Throwable th) {
                if (c != null) {
                    c.close();
                }
            }
        }
    }

    public int a(int i) {
        if (!a) {
            return b(i);
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.f && this.e != null) {
                    j.b("DAO", String.format("process getEventCount, result is: %d", new Object[]{Integer.valueOf(this.e.a(i))}));
                    return this.e.a(i);
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return 0;
        } catch (Throwable e) {
            j.a("DAO", "getEventCount", e);
            return 0;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x00c9 A:{SYNTHETIC, Splitter: B:44:0x00c9} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00d0  */
    /* JADX WARNING: Missing block: B:54:?, code:
            return r0;
     */
    public int b(int r13) {
        /*
        r12 = this;
        r2 = 2;
        r1 = 1;
        r9 = 0;
        r10 = 0;
        r11 = g();
        monitor-enter(r11);
        r0 = c;	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r0 = r0.getReadableDatabase();	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        if (r13 != r1) goto L_0x0041;
    L_0x0011:
        r1 = "mistat_event";
        r2 = 1;
        r2 = new java.lang.String[r2];	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r3 = 0;
        r4 = "count(*)";
        r2[r3] = r4;	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
    L_0x0024:
        if (r1 == 0) goto L_0x009a;
    L_0x0026:
        r0 = r1.moveToFirst();	 Catch:{ Exception -> 0x00d9 }
        if (r0 == 0) goto L_0x009a;
    L_0x002c:
        r0 = 0;
        r0 = r1.getInt(r0);	 Catch:{ Exception -> 0x00d9 }
        if (r1 == 0) goto L_0x0036;
    L_0x0033:
        r1.close();	 Catch:{ all -> 0x00c3 }
    L_0x0036:
        r1 = c;	 Catch:{ all -> 0x00c3 }
        if (r1 == 0) goto L_0x003f;
    L_0x003a:
        r1 = c;	 Catch:{ all -> 0x00c3 }
        r1.close();	 Catch:{ all -> 0x00c3 }
    L_0x003f:
        monitor-exit(r11);	 Catch:{ all -> 0x00c3 }
    L_0x0040:
        return r0;
    L_0x0041:
        if (r13 != r2) goto L_0x00db;
    L_0x0043:
        r1 = "mistat_event";
        r2 = 1;
        r2 = new java.lang.String[r2];	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r3 = 0;
        r4 = "count(*)";
        r2[r3] = r4;	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r3 = "category IN (?, ?, ?, ?, ?, ?, ?)";
        r4 = 7;
        r4 = new java.lang.String[r4];	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r5 = 0;
        r6 = "mistat_basic";
        r6 = java.lang.String.valueOf(r6);	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r4[r5] = r6;	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r5 = 1;
        r6 = "mistat_pt";
        r6 = java.lang.String.valueOf(r6);	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r4[r5] = r6;	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r5 = 2;
        r6 = "mistat_pv";
        r6 = java.lang.String.valueOf(r6);	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r4[r5] = r6;	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r5 = 3;
        r6 = "mistat_session";
        r6 = java.lang.String.valueOf(r6);	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r4[r5] = r6;	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r5 = 4;
        r6 = "mistat_pa";
        r6 = java.lang.String.valueOf(r6);	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r4[r5] = r6;	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r5 = 5;
        r6 = "mistat_session_extra";
        r6 = java.lang.String.valueOf(r6);	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r4[r5] = r6;	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r5 = 6;
        r6 = "mistat_monitor";
        r6 = java.lang.String.valueOf(r6);	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r4[r5] = r6;	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r8 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x00ab, all -> 0x00c6 }
        goto L_0x0024;
    L_0x009a:
        if (r1 == 0) goto L_0x009f;
    L_0x009c:
        r1.close();	 Catch:{ all -> 0x00c3 }
    L_0x009f:
        r0 = c;	 Catch:{ all -> 0x00c3 }
        if (r0 == 0) goto L_0x00a8;
    L_0x00a3:
        r0 = c;	 Catch:{ all -> 0x00c3 }
        r0.close();	 Catch:{ all -> 0x00c3 }
    L_0x00a8:
        monitor-exit(r11);	 Catch:{ all -> 0x00c3 }
        r0 = r9;
        goto L_0x0040;
    L_0x00ab:
        r0 = move-exception;
        r1 = r10;
    L_0x00ad:
        r2 = "DAO";
        r3 = "Error while getting count from DB";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r0);	 Catch:{ all -> 0x00d6 }
        if (r1 == 0) goto L_0x00b9;
    L_0x00b6:
        r1.close();	 Catch:{ all -> 0x00c3 }
    L_0x00b9:
        r0 = c;	 Catch:{ all -> 0x00c3 }
        if (r0 == 0) goto L_0x00a8;
    L_0x00bd:
        r0 = c;	 Catch:{ all -> 0x00c3 }
        r0.close();	 Catch:{ all -> 0x00c3 }
        goto L_0x00a8;
    L_0x00c3:
        r0 = move-exception;
        monitor-exit(r11);	 Catch:{ all -> 0x00c3 }
        throw r0;
    L_0x00c6:
        r0 = move-exception;
    L_0x00c7:
        if (r10 == 0) goto L_0x00cc;
    L_0x00c9:
        r10.close();	 Catch:{ all -> 0x00c3 }
    L_0x00cc:
        r1 = c;	 Catch:{ all -> 0x00c3 }
        if (r1 == 0) goto L_0x00d5;
    L_0x00d0:
        r1 = c;	 Catch:{ all -> 0x00c3 }
        r1.close();	 Catch:{ all -> 0x00c3 }
    L_0x00d5:
        throw r0;	 Catch:{ all -> 0x00c3 }
    L_0x00d6:
        r0 = move-exception;
        r10 = r1;
        goto L_0x00c7;
    L_0x00d9:
        r0 = move-exception;
        goto L_0x00ad;
    L_0x00db:
        r1 = r10;
        goto L_0x0024;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.h.b(int):int");
    }

    private static StatEventPojo a(Cursor cursor) {
        StatEventPojo statEventPojo = new StatEventPojo();
        long j = cursor.getLong(2);
        String string = cursor.getString(4);
        String string2 = cursor.getString(5);
        String string3 = cursor.getString(1);
        String string4 = cursor.getString(3);
        String string5 = cursor.getString(6);
        int i = cursor.getInt(7);
        statEventPojo.mCategory = string3;
        statEventPojo.mKey = string4;
        statEventPojo.mValue = string;
        statEventPojo.mTimeStamp = j;
        statEventPojo.mType = string2;
        statEventPojo.mExtra = string5;
        statEventPojo.mAnonymous = i;
        return statEventPojo;
    }

    public void a(long j, long j2, int i) {
        if (a) {
            try {
                Context a = d.a();
                Intent intent = new Intent(a, Class.forName(b));
                intent.putExtra(nexExportFormat.TAG_FORMAT_TYPE, 5);
                intent.putExtra("startTime", j);
                intent.putExtra("endTime", j2);
                intent.putExtra("eventType", i);
                a.startService(intent);
                return;
            } catch (Throwable e) {
                j.a("DAO", "deleteEventsByStartAndEndTS", e);
                return;
            }
        }
        b(j, j2, i);
    }

    public void b(long j, long j2, int i) {
        synchronized (g()) {
            try {
                j.a("DAO", "deleteEventsByStartAndEndTS, start:%d, end:%d", Long.valueOf(j), Long.valueOf(j2));
                SQLiteDatabase writableDatabase = c.getWritableDatabase();
                String str;
                String str2;
                String[] strArr;
                if (i == 1) {
                    str = "mistat_event";
                    str2 = "ts<=? AND ts>=? AND anonymous=?";
                    strArr = new String[3];
                    strArr[0] = String.valueOf(j2);
                    strArr[1] = String.valueOf(j);
                    strArr[2] = this.d ? String.valueOf(1) : String.valueOf(0);
                    writableDatabase.delete(str, str2, strArr);
                } else if (i == 2) {
                    str = "mistat_event";
                    str2 = "ts<=? AND ts>=? AND category IN (?, ?, ?, ?, ?, ?, ?) AND anonymous=?";
                    strArr = new String[10];
                    strArr[0] = String.valueOf(j2);
                    strArr[1] = String.valueOf(j);
                    strArr[2] = String.valueOf("mistat_basic");
                    strArr[3] = String.valueOf("mistat_pt");
                    strArr[4] = String.valueOf("mistat_pv");
                    strArr[5] = String.valueOf("mistat_session");
                    strArr[6] = String.valueOf("mistat_pa");
                    strArr[7] = String.valueOf("mistat_session_extra");
                    strArr[8] = String.valueOf("mistat_monitor");
                    strArr[9] = this.d ? String.valueOf(1) : String.valueOf(0);
                    writableDatabase.delete(str, str2, strArr);
                }
                if (c != null) {
                    c.close();
                }
            } catch (Throwable e) {
                j.a("DAO", "Error while deleting event by ts from DB", e);
                if (c != null) {
                    c.close();
                }
            } catch (Throwable th) {
                if (c != null) {
                    c.close();
                }
            }
        }
    }

    public boolean j(long j) {
        if (!a) {
            return k(j);
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.f && this.e != null) {
                    j.b("DAO", String.format("process queryPaEventByTs , result is: %b", new Object[]{Boolean.valueOf(this.e.b(j))}));
                    return this.e.b(j);
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return false;
        } catch (Throwable e) {
            j.a("DAO", "queryPaEventByTs", e);
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x0072 A:{SYNTHETIC, Splitter: B:38:0x0072} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0079  */
    /* JADX WARNING: Missing block: B:47:?, code:
            return true;
     */
    public boolean k(long r14) {
        /*
        r13 = this;
        r8 = 1;
        r9 = 0;
        r10 = 0;
        r11 = g();
        monitor-enter(r11);
        r0 = c;	 Catch:{ Exception -> 0x0054, all -> 0x006f }
        r0 = r0.getReadableDatabase();	 Catch:{ Exception -> 0x0054, all -> 0x006f }
        r1 = "mistat_event";
        r2 = 0;
        r3 = "ts=? AND category=?";
        r4 = 2;
        r4 = new java.lang.String[r4];	 Catch:{ Exception -> 0x0054, all -> 0x006f }
        r5 = 0;
        r6 = java.lang.String.valueOf(r14);	 Catch:{ Exception -> 0x0054, all -> 0x006f }
        r4[r5] = r6;	 Catch:{ Exception -> 0x0054, all -> 0x006f }
        r5 = 1;
        r6 = "mistat_pa";
        r4[r5] = r6;	 Catch:{ Exception -> 0x0054, all -> 0x006f }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Exception -> 0x0054, all -> 0x006f }
        if (r1 == 0) goto L_0x0043;
    L_0x002c:
        r0 = r1.moveToFirst();	 Catch:{ Exception -> 0x0082 }
        if (r0 == 0) goto L_0x0043;
    L_0x0032:
        if (r1 == 0) goto L_0x0037;
    L_0x0034:
        r1.close();	 Catch:{ all -> 0x006c }
    L_0x0037:
        r0 = c;	 Catch:{ all -> 0x006c }
        if (r0 == 0) goto L_0x0040;
    L_0x003b:
        r0 = c;	 Catch:{ all -> 0x006c }
        r0.close();	 Catch:{ all -> 0x006c }
    L_0x0040:
        monitor-exit(r11);	 Catch:{ all -> 0x006c }
        r0 = r8;
    L_0x0042:
        return r0;
    L_0x0043:
        if (r1 == 0) goto L_0x0048;
    L_0x0045:
        r1.close();	 Catch:{ all -> 0x006c }
    L_0x0048:
        r0 = c;	 Catch:{ all -> 0x006c }
        if (r0 == 0) goto L_0x0051;
    L_0x004c:
        r0 = c;	 Catch:{ all -> 0x006c }
        r0.close();	 Catch:{ all -> 0x006c }
    L_0x0051:
        monitor-exit(r11);	 Catch:{ all -> 0x006c }
        r0 = r9;
        goto L_0x0042;
    L_0x0054:
        r0 = move-exception;
        r1 = r10;
    L_0x0056:
        r2 = "DAO";
        r3 = "queryPaEventByTsImpl exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r0);	 Catch:{ all -> 0x007f }
        if (r1 == 0) goto L_0x0062;
    L_0x005f:
        r1.close();	 Catch:{ all -> 0x006c }
    L_0x0062:
        r0 = c;	 Catch:{ all -> 0x006c }
        if (r0 == 0) goto L_0x0051;
    L_0x0066:
        r0 = c;	 Catch:{ all -> 0x006c }
        r0.close();	 Catch:{ all -> 0x006c }
        goto L_0x0051;
    L_0x006c:
        r0 = move-exception;
        monitor-exit(r11);	 Catch:{ all -> 0x006c }
        throw r0;
    L_0x006f:
        r0 = move-exception;
    L_0x0070:
        if (r10 == 0) goto L_0x0075;
    L_0x0072:
        r10.close();	 Catch:{ all -> 0x006c }
    L_0x0075:
        r1 = c;	 Catch:{ all -> 0x006c }
        if (r1 == 0) goto L_0x007e;
    L_0x0079:
        r1 = c;	 Catch:{ all -> 0x006c }
        r1.close();	 Catch:{ all -> 0x006c }
    L_0x007e:
        throw r0;	 Catch:{ all -> 0x006c }
    L_0x007f:
        r0 = move-exception;
        r10 = r1;
        goto L_0x0070;
    L_0x0082:
        r0 = move-exception;
        goto L_0x0056;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.h.k(long):boolean");
    }

    public boolean c() {
        if (!a) {
            return d();
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.f && this.e != null) {
                    j.b("DAO", String.format("process hasMonitorEvent , result is: %b", new Object[]{Boolean.valueOf(this.e.a())}));
                    return this.e.a();
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return false;
        } catch (Throwable e) {
            j.a("DAO", "hasMonitorEvent", e);
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x006a A:{SYNTHETIC, Splitter: B:38:0x006a} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0071  */
    /* JADX WARNING: Missing block: B:47:?, code:
            return true;
     */
    public boolean d() {
        /*
        r12 = this;
        r8 = 1;
        r9 = 0;
        r10 = 0;
        r11 = g();
        monitor-enter(r11);
        r0 = c;	 Catch:{ Exception -> 0x004c, all -> 0x0067 }
        r0 = r0.getReadableDatabase();	 Catch:{ Exception -> 0x004c, all -> 0x0067 }
        r1 = "mistat_event";
        r2 = 0;
        r3 = "category=?";
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ Exception -> 0x004c, all -> 0x0067 }
        r5 = 0;
        r6 = "mistat_monitor";
        r4[r5] = r6;	 Catch:{ Exception -> 0x004c, all -> 0x0067 }
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Exception -> 0x004c, all -> 0x0067 }
        if (r1 == 0) goto L_0x003b;
    L_0x0024:
        r0 = r1.moveToFirst();	 Catch:{ Exception -> 0x007a }
        if (r0 == 0) goto L_0x003b;
    L_0x002a:
        if (r1 == 0) goto L_0x002f;
    L_0x002c:
        r1.close();	 Catch:{ all -> 0x0064 }
    L_0x002f:
        r0 = c;	 Catch:{ all -> 0x0064 }
        if (r0 == 0) goto L_0x0038;
    L_0x0033:
        r0 = c;	 Catch:{ all -> 0x0064 }
        r0.close();	 Catch:{ all -> 0x0064 }
    L_0x0038:
        monitor-exit(r11);	 Catch:{ all -> 0x0064 }
        r0 = r8;
    L_0x003a:
        return r0;
    L_0x003b:
        if (r1 == 0) goto L_0x0040;
    L_0x003d:
        r1.close();	 Catch:{ all -> 0x0064 }
    L_0x0040:
        r0 = c;	 Catch:{ all -> 0x0064 }
        if (r0 == 0) goto L_0x0049;
    L_0x0044:
        r0 = c;	 Catch:{ all -> 0x0064 }
        r0.close();	 Catch:{ all -> 0x0064 }
    L_0x0049:
        monitor-exit(r11);	 Catch:{ all -> 0x0064 }
        r0 = r9;
        goto L_0x003a;
    L_0x004c:
        r0 = move-exception;
        r1 = r10;
    L_0x004e:
        r2 = "DAO";
        r3 = "hasMonitorEventImpl exception";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r0);	 Catch:{ all -> 0x0077 }
        if (r1 == 0) goto L_0x005a;
    L_0x0057:
        r1.close();	 Catch:{ all -> 0x0064 }
    L_0x005a:
        r0 = c;	 Catch:{ all -> 0x0064 }
        if (r0 == 0) goto L_0x0049;
    L_0x005e:
        r0 = c;	 Catch:{ all -> 0x0064 }
        r0.close();	 Catch:{ all -> 0x0064 }
        goto L_0x0049;
    L_0x0064:
        r0 = move-exception;
        monitor-exit(r11);	 Catch:{ all -> 0x0064 }
        throw r0;
    L_0x0067:
        r0 = move-exception;
    L_0x0068:
        if (r10 == 0) goto L_0x006d;
    L_0x006a:
        r10.close();	 Catch:{ all -> 0x0064 }
    L_0x006d:
        r1 = c;	 Catch:{ all -> 0x0064 }
        if (r1 == 0) goto L_0x0076;
    L_0x0071:
        r1 = c;	 Catch:{ all -> 0x0064 }
        r1.close();	 Catch:{ all -> 0x0064 }
    L_0x0076:
        throw r0;	 Catch:{ all -> 0x0064 }
    L_0x0077:
        r0 = move-exception;
        r10 = r1;
        goto L_0x0068;
    L_0x007a:
        r0 = move-exception;
        goto L_0x004e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.h.d():boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0038 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x003f A:{Catch:{ Exception -> 0x0046, all -> 0x005f }} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0062 A:{Catch:{ Exception -> 0x0046, all -> 0x005f }} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0069 A:{Catch:{ Exception -> 0x0046, all -> 0x005f }} */
    public boolean e() {
        /*
        r13 = this;
        r10 = 0;
        r11 = 1;
        r9 = 0;
        r12 = g();
        monitor-enter(r12);
        r0 = c;	 Catch:{ Exception -> 0x0046, all -> 0x005f }
        r0 = r0.getReadableDatabase();	 Catch:{ Exception -> 0x0046, all -> 0x005f }
        r1 = "mistat_event";
        r2 = 0;
        r3 = "anonymous=?";
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ Exception -> 0x0046, all -> 0x005f }
        r5 = 0;
        r6 = 1;
        r6 = java.lang.String.valueOf(r6);	 Catch:{ Exception -> 0x0046, all -> 0x005f }
        r4[r5] = r6;	 Catch:{ Exception -> 0x0046, all -> 0x005f }
        r5 = 0;
        r6 = 0;
        r7 = "ts DESC";
        r8 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        r8 = java.lang.String.valueOf(r8);	 Catch:{ Exception -> 0x0046, all -> 0x005f }
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ Exception -> 0x0046, all -> 0x005f }
        if (r1 == 0) goto L_0x0079;
    L_0x002f:
        r0 = r1.moveToLast();	 Catch:{ Exception -> 0x0075 }
        if (r0 == 0) goto L_0x0079;
    L_0x0035:
        r0 = r11;
    L_0x0036:
        if (r1 == 0) goto L_0x003b;
    L_0x0038:
        r1.close();	 Catch:{ all -> 0x006f }
    L_0x003b:
        r1 = c;	 Catch:{ all -> 0x006f }
        if (r1 == 0) goto L_0x0044;
    L_0x003f:
        r1 = c;	 Catch:{ all -> 0x006f }
        r1.close();	 Catch:{ all -> 0x006f }
    L_0x0044:
        monitor-exit(r12);	 Catch:{ all -> 0x006f }
        return r0;
    L_0x0046:
        r0 = move-exception;
        r1 = r9;
    L_0x0048:
        r2 = "DAO";
        r3 = "Error while isExistAnonymousData from DB";
        com.xiaomi.mistatistic.sdk.controller.j.a(r2, r3, r0);	 Catch:{ all -> 0x0072 }
        if (r1 == 0) goto L_0x0054;
    L_0x0051:
        r1.close();	 Catch:{ all -> 0x006f }
    L_0x0054:
        r0 = c;	 Catch:{ all -> 0x006f }
        if (r0 == 0) goto L_0x0077;
    L_0x0058:
        r0 = c;	 Catch:{ all -> 0x006f }
        r0.close();	 Catch:{ all -> 0x006f }
        r0 = r10;
        goto L_0x0044;
    L_0x005f:
        r0 = move-exception;
    L_0x0060:
        if (r9 == 0) goto L_0x0065;
    L_0x0062:
        r9.close();	 Catch:{ all -> 0x006f }
    L_0x0065:
        r1 = c;	 Catch:{ all -> 0x006f }
        if (r1 == 0) goto L_0x006e;
    L_0x0069:
        r1 = c;	 Catch:{ all -> 0x006f }
        r1.close();	 Catch:{ all -> 0x006f }
    L_0x006e:
        throw r0;	 Catch:{ all -> 0x006f }
    L_0x006f:
        r0 = move-exception;
        monitor-exit(r12);	 Catch:{ all -> 0x006f }
        throw r0;
    L_0x0072:
        r0 = move-exception;
        r9 = r1;
        goto L_0x0060;
    L_0x0075:
        r0 = move-exception;
        goto L_0x0048;
    L_0x0077:
        r0 = r10;
        goto L_0x0044;
    L_0x0079:
        r0 = r10;
        goto L_0x0036;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.h.e():boolean");
    }

    private static k g() {
        if (c == null) {
            c = a.a;
        }
        return c;
    }
}
