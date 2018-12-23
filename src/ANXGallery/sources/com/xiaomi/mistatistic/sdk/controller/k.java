package com.xiaomi.mistatistic.sdk.controller;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* compiled from: MiStatDatabaseHelper */
public class k extends SQLiteOpenHelper {
    public static final Object a = new Object();

    public k(Context context) {
        super(context, "mistat.db", null, 2);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        synchronized (a) {
            sQLiteDatabase.execSQL(String.format("create table %s(_id integer primary key autoincrement, category text, ts integer, key text, value text, type text, extra text, anonymous integer)", new Object[]{"mistat_event"}));
        }
        j.b("MDH", String.format("db onCreate version %d", new Object[]{Integer.valueOf(2)}));
    }

    public void onUpgrade(android.database.sqlite.SQLiteDatabase r9, int r10, int r11) {
        /*
        r8 = this;
        r7 = 2;
        r6 = 1;
        r5 = 0;
        r1 = a;
        monitor-enter(r1);
        switch(r10) {
            case 1: goto L_0x0024;
            default: goto L_0x0009;
        };
    L_0x0009:
        monitor-exit(r1);	 Catch:{ all -> 0x003b }
        r0 = "MDH";
        r1 = "db onUpgrade %d to %d";
        r2 = new java.lang.Object[r7];
        r3 = java.lang.Integer.valueOf(r10);
        r2[r5] = r3;
        r3 = java.lang.Integer.valueOf(r11);
        r2[r6] = r3;
        r1 = java.lang.String.format(r1, r2);
        com.xiaomi.mistatistic.sdk.controller.j.b(r0, r1);
        return;
    L_0x0024:
        r0 = "alter table %s add column %s integer ";
        r2 = 2;
        r2 = new java.lang.Object[r2];	 Catch:{ all -> 0x003b }
        r3 = 0;
        r4 = "mistat_event";
        r2[r3] = r4;	 Catch:{ all -> 0x003b }
        r3 = 1;
        r4 = "anonymous";
        r2[r3] = r4;	 Catch:{ all -> 0x003b }
        r0 = java.lang.String.format(r0, r2);	 Catch:{ all -> 0x003b }
        r9.execSQL(r0);	 Catch:{ all -> 0x003b }
        goto L_0x0009;
    L_0x003b:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x003b }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.k.onUpgrade(android.database.sqlite.SQLiteDatabase, int, int):void");
    }

    protected void finalize() throws Throwable {
        close();
        super.finalize();
    }
}
