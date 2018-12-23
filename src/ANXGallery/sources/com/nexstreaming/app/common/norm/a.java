package com.nexstreaming.app.common.norm;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteOpenHelper;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.google.gson_nex.Gson;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* compiled from: NormDb */
public abstract class a extends SQLiteOpenHelper {
    private static final String LOG_TAG = "NormDb";
    private final Gson gson = new Gson();

    protected abstract Class<? extends b>[] getTableClasses();

    public a(Context context, String str, int i) {
        super(context, str, null, i);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        for (Class a : getTableClasses()) {
            for (String str : c.a(a).a()) {
                Log.d(LOG_TAG, "CreateTable:" + str);
                sQLiteDatabase.execSQL(str);
                Log.d(LOG_TAG, "Created");
            }
        }
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.d(LOG_TAG, "onUpgrade oldVersion=" + i + ", newVersion=" + i2);
        if (i < 11) {
            for (Class a : getTableClasses()) {
                for (String str : c.a(a).b()) {
                    Log.d(LOG_TAG, "DropTable:" + str);
                    sQLiteDatabase.execSQL(str);
                    Log.d(LOG_TAG, "Dropped");
                }
            }
            onCreate(sQLiteDatabase);
        } else if (i < i2) {
            for (Class a2 : getTableClasses()) {
                for (String str2 : c.a(a2).a(i, i2)) {
                    Log.d(LOG_TAG, "onUpgrade:" + str2);
                    sQLiteDatabase.execSQL(str2);
                    Log.d(LOG_TAG, "onUpgrade end");
                }
            }
        }
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        for (Class a : getTableClasses()) {
            for (String str : c.a(a).b()) {
                Log.d(LOG_TAG, "onDowngrade:" + str);
                sQLiteDatabase.execSQL(str);
                Log.d(LOG_TAG, "onDowngrade");
            }
        }
        onCreate(sQLiteDatabase);
    }

    public static String camelCaseToLCUnderscore(String str) {
        String toLowerCase = str.replaceAll("(?<=[A-Z])(?=[A-Z][a-z])|(?<=[^A-Z])(?=[A-Z])|(?<=[A-Za-z])(?=[^A-Za-z])", "_").toLowerCase(Locale.ENGLISH);
        if (toLowerCase.length() < 1) {
            return "_";
        }
        char charAt = toLowerCase.charAt(0);
        if (charAt == '_') {
            return toLowerCase;
        }
        if (charAt < 'a' || charAt > 'z') {
            return "_" + toLowerCase;
        }
        return toLowerCase;
    }

    private <T extends b> ContentValues getContentValuesForRecord(T t) {
        ContentValues contentValues = new ContentValues();
        try {
            for (NormColumnInfo normColumnInfo : t.getTableInfo().e()) {
                if (!(normColumnInfo == null || normColumnInfo.g)) {
                    Object obj;
                    Bitmap bitmap;
                    OutputStream byteArrayOutputStream;
                    byte[] toByteArray;
                    switch (normColumnInfo.c) {
                        case TEXT:
                            obj = normColumnInfo.b.get(t);
                            if (obj != null) {
                                contentValues.put(normColumnInfo.a, String.valueOf(obj));
                                break;
                            }
                            contentValues.putNull(normColumnInfo.a);
                            break;
                        case INT:
                            contentValues.put(normColumnInfo.a, Integer.valueOf(normColumnInfo.b.getInt(t)));
                            break;
                        case LONG:
                            if (!normColumnInfo.f) {
                                contentValues.put(normColumnInfo.a, Long.valueOf(normColumnInfo.b.getLong(t)));
                                break;
                            }
                            obj = normColumnInfo.b.get(t);
                            if (!(obj instanceof b)) {
                                break;
                            }
                            contentValues.put(normColumnInfo.a, Long.valueOf(((b) obj).getDbRowID()));
                            break;
                        case DOUBLE:
                            contentValues.put(normColumnInfo.a, Double.valueOf(normColumnInfo.b.getDouble(t)));
                            break;
                        case FLOAT:
                            contentValues.put(normColumnInfo.a, Float.valueOf(normColumnInfo.b.getFloat(t)));
                            break;
                        case ENUM:
                            Enum enumR = (Enum) normColumnInfo.b.get(t);
                            contentValues.put(normColumnInfo.a, enumR == null ? null : enumR.name());
                            break;
                        case BOOL:
                            contentValues.put(normColumnInfo.a, Integer.valueOf(normColumnInfo.b.getBoolean(t) ? 1 : 0));
                            break;
                        case BLOB:
                            contentValues.put(normColumnInfo.a, (byte[]) normColumnInfo.b.get(t));
                            break;
                        case PNG:
                            bitmap = (Bitmap) normColumnInfo.b.get(t);
                            if (bitmap != null) {
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                bitmap.compress(CompressFormat.PNG, 100, byteArrayOutputStream);
                                toByteArray = byteArrayOutputStream.toByteArray();
                            } else {
                                toByteArray = null;
                            }
                            contentValues.put(normColumnInfo.a, toByteArray);
                            break;
                        case JPEG:
                            bitmap = (Bitmap) normColumnInfo.b.get(t);
                            if (bitmap != null) {
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                bitmap.compress(CompressFormat.JPEG, 85, byteArrayOutputStream);
                                toByteArray = byteArrayOutputStream.toByteArray();
                            } else {
                                toByteArray = null;
                            }
                            contentValues.put(normColumnInfo.a, toByteArray);
                            break;
                        case JSON:
                            contentValues.put(normColumnInfo.a, this.gson.toJson(normColumnInfo.b.get(t)));
                            break;
                        default:
                            break;
                    }
                }
            }
            return contentValues;
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    private <T extends b> void updateRecIndex(T t, long j) {
        try {
            t.getTableInfo().f().b.setLong(t, j);
            t.addedOrUpdatedToDb = true;
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    public <T extends b> void addOrUpdate(T t) {
        updateRecIndex(t, getWritableDatabase().insertWithOnConflict(t.getTableInfo().c(), null, getContentValuesForRecord(t), 5));
    }

    public <T extends b> void add(T t) {
        updateRecIndex(t, getWritableDatabase().insert(t.getTableInfo().c(), null, getContentValuesForRecord(t)));
    }

    public <T extends b> void update(T t) {
        try {
            long update = (long) getWritableDatabase().update(t.getTableInfo().c(), getContentValuesForRecord(t), "_id = ?", new String[]{String.valueOf(t.getTableInfo().f().b.getLong(t))});
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
    }

    public <T extends b> T findById(Class<T> cls, long j) {
        List query = query(cls, c.a((Class) cls).f().a + " = ? LIMIT 1", Long.valueOf(j));
        if (query == null || query.isEmpty()) {
            return null;
        }
        return (b) query.get(0);
    }

    public <T extends b> T findFirst(Class<T> cls, String str, Object... objArr) {
        List query = query(cls, str + " LIMIT 1", objArr);
        if (query == null || query.isEmpty()) {
            return null;
        }
        return (b) query.get(0);
    }

    public <T extends b> long findFirstRowId(Class<T> cls, String str, Object... objArr) {
        List query = query(cls, str + " LIMIT 1", objArr);
        if (query == null || query.isEmpty()) {
            return 0;
        }
        return ((b) query.get(0)).getDbRowID();
    }

    public <T extends b> List<T> query(Class<T> cls) {
        return query_internal(cls, null, null, true);
    }

    public <T extends b> void delete(Class<T> cls, String str, Object... objArr) {
        String[] strArr = new String[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            strArr[i] = String.valueOf(objArr[i]);
        }
        getWritableDatabase().delete(c.a((Class) cls).c(), str, strArr);
    }

    public <T extends b> void delete(T t) {
        getWritableDatabase().delete(t.getTableInfo().c(), t.getTableInfo().f() + " = ?", new String[]{String.valueOf(t.getDbRowID())});
    }

    public <T extends b> List<T> query(Class<T> cls, String str, Object... objArr) {
        return query_internal(cls, str, objArr, true);
    }

    public <T extends b> int count(Class<T> cls) {
        return count_internal(cls, null, null, false);
    }

    public <T extends b> int count(Class<T> cls, String str, Object... objArr) {
        return count_internal(cls, str, objArr, false);
    }

    private <T extends b> int count_internal(Class<T> cls, String str, Object[] objArr, boolean z) {
        String[] strArr;
        if (objArr != null) {
            strArr = new String[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                strArr[i] = String.valueOf(objArr[i]);
            }
        } else {
            strArr = null;
        }
        String[] strArr2 = new String[]{c.a((Class) cls).f().a};
        Cursor query = getReadableDatabase().query(c.a((Class) cls).c(), strArr2, str, strArr, null, null, null);
        int count = query.getCount();
        query.close();
        return count;
    }

    private <T extends b> List<T> query_internal(Class<T> cls, String str, Object[] objArr, boolean z) {
        String[] strArr = null;
        if (objArr != null) {
            strArr = new String[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                strArr[i] = String.valueOf(objArr[i]);
            }
        }
        c a = c.a((Class) cls);
        NormColumnInfo[] e = a.e();
        Cursor query = getReadableDatabase().query(a.c(), a.d(), str, strArr, null, null, null);
        List<T> arrayList = new ArrayList();
        Map hashMap = new HashMap();
        try {
            query.moveToPosition(-1);
            while (query.moveToNext()) {
                b bVar = (b) cls.newInstance();
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 < e.length) {
                        switch (e[i3].c) {
                            case TEXT:
                                e[i3].b.set(bVar, query.getString(i3));
                                break;
                            case INT:
                                e[i3].b.setInt(bVar, query.getInt(i3));
                                break;
                            case LONG:
                                if (e[i3].f) {
                                    if (!z) {
                                        break;
                                    }
                                    if (!hashMap.containsKey(e[i3].j)) {
                                        hashMap.put(e[i3].j, new HashMap());
                                    }
                                    long j = query.getLong(query.getColumnIndex(e[i3].a));
                                    Object obj = ((Map) hashMap.get(e[i3].j)).get(Long.valueOf(j));
                                    if (obj == null) {
                                        b findById = findById(e[i3].j, j);
                                        ((Map) hashMap.get(e[i3].j)).put(Long.valueOf(j), findById);
                                        obj = findById;
                                    }
                                    e[i3].b.set(bVar, obj);
                                    break;
                                }
                                e[i3].b.setLong(bVar, query.getLong(i3));
                                break;
                            case DOUBLE:
                                e[i3].b.setDouble(bVar, query.getDouble(i3));
                                break;
                            case FLOAT:
                                e[i3].b.setFloat(bVar, query.getFloat(i3));
                                break;
                            case ENUM:
                                Class type = e[i3].b.getType();
                                String string = query.getString(i3);
                                if (string == null) {
                                    break;
                                }
                                try {
                                    e[i3].b.set(bVar, Enum.valueOf(type, string));
                                    break;
                                } catch (IllegalArgumentException e2) {
                                    e[i3].b.set(bVar, null);
                                    break;
                                }
                            case BOOL:
                                e[i3].b.setBoolean(bVar, query.getInt(i3) != 0);
                                break;
                            case BLOB:
                                e[i3].b.set(bVar, query.getBlob(i3));
                                break;
                            case PNG:
                            case JPEG:
                                byte[] blob = query.getBlob(i3);
                                e[i3].b.set(bVar, BitmapFactory.decodeByteArray(blob, 0, blob.length));
                                break;
                            case JSON:
                                e[i3].b.set(bVar, this.gson.fromJson(query.getString(i3), e[i3].b.getGenericType()));
                                break;
                            default:
                                break;
                        }
                        i2 = i3 + 1;
                    } else {
                        arrayList.add(bVar);
                    }
                }
            }
            query.close();
            return arrayList;
        } catch (Throwable e3) {
            throw new IllegalStateException(e3);
        } catch (Throwable e32) {
            throw new IllegalStateException(e32);
        } catch (Throwable th) {
            query.close();
        }
    }

    public <T extends com.nexstreaming.app.common.norm.b, RESULT_TYPE> java.util.List<RESULT_TYPE> queryIndividualField(java.lang.Class<T> r12, java.lang.String r13, java.lang.String r14, java.lang.Object... r15) {
        /*
        r11 = this;
        r9 = 1;
        r5 = 0;
        r8 = 0;
        if (r15 == 0) goto L_0x0017;
    L_0x0005:
        r0 = r15.length;
        r4 = new java.lang.String[r0];
        r0 = r8;
    L_0x0009:
        r1 = r15.length;
        if (r0 >= r1) goto L_0x0018;
    L_0x000c:
        r1 = r15[r0];
        r1 = java.lang.String.valueOf(r1);
        r4[r0] = r1;
        r0 = r0 + 1;
        goto L_0x0009;
    L_0x0017:
        r4 = r5;
    L_0x0018:
        r1 = com.nexstreaming.app.common.norm.c.a(r12);
        r10 = r1.a(r13);
        r2 = new java.lang.String[r9];
        r2[r8] = r13;
        r0 = r11.getReadableDatabase();
        r1 = r1.c();
        r3 = r14;
        r6 = r5;
        r7 = r5;
        r2 = r0.query(r1, r2, r3, r4, r5, r6, r7);
        r3 = new java.util.ArrayList;
        r3.<init>();
        r4 = new java.util.HashMap;
        r4.<init>();
        r0 = -1;
        r2.moveToPosition(r0);	 Catch:{ all -> 0x0059 }
    L_0x0041:
        r0 = r2.moveToNext();	 Catch:{ all -> 0x0059 }
        if (r0 == 0) goto L_0x0121;
    L_0x0047:
        r0 = com.nexstreaming.app.common.norm.a.AnonymousClass1.a;	 Catch:{ all -> 0x0059 }
        r1 = r10.c;	 Catch:{ all -> 0x0059 }
        r1 = r1.ordinal();	 Catch:{ all -> 0x0059 }
        r0 = r0[r1];	 Catch:{ all -> 0x0059 }
        switch(r0) {
            case 1: goto L_0x00da;
            case 2: goto L_0x005e;
            case 3: goto L_0x0068;
            case 4: goto L_0x00b6;
            case 5: goto L_0x00c0;
            case 6: goto L_0x0108;
            case 7: goto L_0x00ca;
            case 8: goto L_0x00e1;
            case 9: goto L_0x00e8;
            case 10: goto L_0x00e8;
            case 11: goto L_0x00f5;
            default: goto L_0x0054;
        };	 Catch:{ all -> 0x0059 }
    L_0x0054:
        r0 = r5;
    L_0x0055:
        r3.add(r0);	 Catch:{ all -> 0x0059 }
        goto L_0x0041;
    L_0x0059:
        r0 = move-exception;
        r2.close();
        throw r0;
    L_0x005e:
        r0 = 0;
        r0 = r2.getInt(r0);	 Catch:{ all -> 0x0059 }
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ all -> 0x0059 }
        goto L_0x0055;
    L_0x0068:
        r0 = r10.f;	 Catch:{ all -> 0x0059 }
        if (r0 == 0) goto L_0x00ac;
    L_0x006c:
        r0 = r10.j;	 Catch:{ all -> 0x0059 }
        r0 = r4.containsKey(r0);	 Catch:{ all -> 0x0059 }
        if (r0 != 0) goto L_0x007e;
    L_0x0074:
        r0 = r10.j;	 Catch:{ all -> 0x0059 }
        r1 = new java.util.HashMap;	 Catch:{ all -> 0x0059 }
        r1.<init>();	 Catch:{ all -> 0x0059 }
        r4.put(r0, r1);	 Catch:{ all -> 0x0059 }
    L_0x007e:
        r0 = 0;
        r6 = r2.getLong(r0);	 Catch:{ all -> 0x0059 }
        r0 = r10.j;	 Catch:{ all -> 0x0059 }
        r0 = r4.get(r0);	 Catch:{ all -> 0x0059 }
        r0 = (java.util.Map) r0;	 Catch:{ all -> 0x0059 }
        r1 = java.lang.Long.valueOf(r6);	 Catch:{ all -> 0x0059 }
        r0 = r0.get(r1);	 Catch:{ all -> 0x0059 }
        if (r0 != 0) goto L_0x0055;
    L_0x0095:
        r0 = r10.j;	 Catch:{ all -> 0x0059 }
        r1 = r11.findById(r0, r6);	 Catch:{ all -> 0x0059 }
        r0 = r10.j;	 Catch:{ all -> 0x0059 }
        r0 = r4.get(r0);	 Catch:{ all -> 0x0059 }
        r0 = (java.util.Map) r0;	 Catch:{ all -> 0x0059 }
        r6 = java.lang.Long.valueOf(r6);	 Catch:{ all -> 0x0059 }
        r0.put(r6, r1);	 Catch:{ all -> 0x0059 }
        r0 = r1;
        goto L_0x0055;
    L_0x00ac:
        r0 = 0;
        r0 = r2.getLong(r0);	 Catch:{ all -> 0x0059 }
        r0 = java.lang.Long.valueOf(r0);	 Catch:{ all -> 0x0059 }
        goto L_0x0055;
    L_0x00b6:
        r0 = 0;
        r0 = r2.getDouble(r0);	 Catch:{ all -> 0x0059 }
        r0 = java.lang.Double.valueOf(r0);	 Catch:{ all -> 0x0059 }
        goto L_0x0055;
    L_0x00c0:
        r0 = 0;
        r0 = r2.getFloat(r0);	 Catch:{ all -> 0x0059 }
        r0 = java.lang.Float.valueOf(r0);	 Catch:{ all -> 0x0059 }
        goto L_0x0055;
    L_0x00ca:
        r0 = 0;
        r0 = r2.getInt(r0);	 Catch:{ all -> 0x0059 }
        if (r0 == 0) goto L_0x00d8;
    L_0x00d1:
        r0 = r9;
    L_0x00d2:
        r0 = java.lang.Boolean.valueOf(r0);	 Catch:{ all -> 0x0059 }
        goto L_0x0055;
    L_0x00d8:
        r0 = r8;
        goto L_0x00d2;
    L_0x00da:
        r0 = 0;
        r0 = r2.getString(r0);	 Catch:{ all -> 0x0059 }
        goto L_0x0055;
    L_0x00e1:
        r0 = 0;
        r0 = r2.getBlob(r0);	 Catch:{ all -> 0x0059 }
        goto L_0x0055;
    L_0x00e8:
        r0 = 0;
        r0 = r2.getBlob(r0);	 Catch:{ all -> 0x0059 }
        r1 = 0;
        r6 = r0.length;	 Catch:{ all -> 0x0059 }
        r0 = android.graphics.BitmapFactory.decodeByteArray(r0, r1, r6);	 Catch:{ all -> 0x0059 }
        goto L_0x0055;
    L_0x00f5:
        r0 = 0;
        r0 = r2.getString(r0);	 Catch:{ all -> 0x0059 }
        r1 = r11.gson;	 Catch:{ all -> 0x0059 }
        r6 = r10.b;	 Catch:{ all -> 0x0059 }
        r6 = r6.getGenericType();	 Catch:{ all -> 0x0059 }
        r0 = r1.fromJson(r0, r6);	 Catch:{ all -> 0x0059 }
        goto L_0x0055;
    L_0x0108:
        r0 = r10.b;	 Catch:{ all -> 0x0059 }
        r0 = r0.getType();	 Catch:{ all -> 0x0059 }
        r0 = (java.lang.Class) r0;	 Catch:{ all -> 0x0059 }
        r1 = 0;
        r1 = r2.getString(r1);	 Catch:{ all -> 0x0059 }
        if (r1 == 0) goto L_0x0054;
    L_0x0117:
        r0 = java.lang.Enum.valueOf(r0, r1);	 Catch:{ IllegalArgumentException -> 0x011d }
        goto L_0x0055;
    L_0x011d:
        r0 = move-exception;
        r0 = r5;
        goto L_0x0055;
    L_0x0121:
        r2.close();
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.app.common.norm.a.queryIndividualField(java.lang.Class, java.lang.String, java.lang.String, java.lang.Object[]):java.util.List<RESULT_TYPE>");
    }

    public void beginTransaction() {
        getWritableDatabase().beginTransaction();
    }

    public void setTransactionSuccessful() {
        getWritableDatabase().setTransactionSuccessful();
    }

    public void endTransaction() throws SQLiteFullException {
        try {
            getWritableDatabase().endTransaction();
        } catch (SQLiteFullException e) {
            throw new SQLiteFullException();
        }
    }
}
