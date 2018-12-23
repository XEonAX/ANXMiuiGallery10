package cn.kuaipan.android.kss.upload;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import cn.kuaipan.android.exception.KscRuntimeException;
import cn.kuaipan.android.kss.IDataFactory;
import cn.kuaipan.android.kss.KssDef;
import cn.kuaipan.android.kss.KssMaster;
import cn.kuaipan.android.utils.OAuthTimeUtils;
import cn.kuaipan.android.utils.SQLUtility;
import cn.kuaipan.android.utils.SyncAccessor;

public class UploadTaskStore implements KssDef {
    private static volatile Looper sLooper;
    private final SyncAccessor mAccessor = new SyncAccessor(getCommonLooper()) {
        public Object handleAccess(int what, Object... objs) {
            Object result = null;
            switch (what) {
                case 0:
                    UploadTaskStore.this.mDBHelper.update(((Number) objs[0]).intValue(), objs[1], objs[2]);
                    return result;
                case 1:
                    UploadTaskStore.this.mDBHelper.delete(((Number) objs[0]).intValue());
                    return result;
                case 2:
                    return UploadTaskStore.this.mDBHelper.queryPos(((Number) objs[0]).intValue());
                case 3:
                    int hash = ((Number) objs[0]).intValue();
                    UploadTaskStore.this.mDBHelper.deleteBefore(OAuthTimeUtils.currentTime() - 85376000);
                    try {
                        return UploadTaskStore.this.mDBHelper.queryKss(hash, UploadTaskStore.this.mDataFactory);
                    } catch (Throwable t) {
                        Log.w("UploadTaskStore", "Meet exception when parser kss from db", t);
                        return result;
                    }
                default:
                    return super.handleAccess(what, objs);
            }
        }
    };
    private final DBHelper mDBHelper;
    private final IDataFactory mDataFactory;

    private static class DBHelper extends SQLiteOpenHelper {
        private static final String[] QUERY_KSS = new String[]{"kss_request", "kss_file_info", "kss_upload_id", "gen_time"};
        private static final String[] QUERY_POS = new String[]{"chunk_pos", "upload_id"};
        private static final String WHERE_DEL = SQLUtility.getSelectionWithTemplete("%s<?", "gen_time");
        private static final String WHERE_QUERY = SQLUtility.getSelection("task_hash");
        private static volatile DBHelper sInstance;

        public static DBHelper getInstance(Context context) {
            Throwable th;
            DBHelper helper = sInstance;
            if (helper == null) {
                synchronized (DBHelper.class) {
                    try {
                        helper = sInstance;
                        if (helper == null) {
                            if (context == null) {
                                throw new NullPointerException("Context should not be null.");
                            }
                            DBHelper helper2 = new DBHelper(context);
                            try {
                                sInstance = helper2;
                                helper = helper2;
                            } catch (Throwable th2) {
                                th = th2;
                                helper = helper2;
                                throw th;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                }
            }
            return helper;
        }

        private DBHelper(Context context) {
            super(context, "ksssdk_infos.db", null, 4);
        }

        public void onCreate(SQLiteDatabase db) {
            StringBuilder sb = new StringBuilder();
            sb.append("_id").append(" INTEGER PRIMARY KEY AUTOINCREMENT, ");
            sb.append("task_hash").append(" INTEGER NOT NULL UNIQUE, ");
            sb.append("kss_request").append(" STRING NOT NULL, ");
            sb.append("kss_file_info").append(" STRING NOT NULL, ");
            sb.append("kss_upload_id").append(" STRING NOT NULL, ");
            sb.append("chunk_pos").append(" LONG NOT NULL DEFAULT 0, ");
            sb.append("upload_id").append(" STRING NOT NULL, ");
            sb.append("gen_time").append(" LONG NOT NULL DEFAULT 0");
            SQLUtility.createTable(db, "upload_chunks", sb.toString());
        }

        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            if (oldVersion != 4) {
                Log.w("DBHelper", "Destroying all old data.");
                db.execSQL("DROP TABLE IF EXISTS upload_chunks");
                onCreate(db);
            }
        }

        public void deleteBefore(long time) {
            getWritableDatabase().delete("upload_chunks", WHERE_DEL, new String[]{String.valueOf(time)});
        }

        public UploadChunkInfoPersist queryPos(int taskHash) {
            Cursor c = getReadableDatabase().query("upload_chunks", QUERY_POS, WHERE_QUERY, new String[]{String.valueOf(taskHash)}, null, null, null);
            try {
                UploadChunkInfoPersist uploadChunkInfoPersist = new UploadChunkInfoPersist();
                if (c != null && c.moveToFirst()) {
                    long pos = (long) c.getInt(c.getColumnIndex("chunk_pos"));
                    String upload_id = c.getString(c.getColumnIndex("upload_id"));
                    if (!TextUtils.isEmpty(upload_id)) {
                        uploadChunkInfoPersist.pos = pos;
                        uploadChunkInfoPersist.upload_id = upload_id;
                    }
                }
                if (c != null) {
                    c.close();
                }
                return uploadChunkInfoPersist;
            } catch (Throwable th) {
                if (c != null) {
                    c.close();
                }
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:22:0x0085  */
        public cn.kuaipan.android.kss.upload.KssUploadInfo queryKss(int r21, cn.kuaipan.android.kss.IDataFactory r22) throws cn.kuaipan.android.exception.KscException {
            /*
            r20 = this;
            r2 = r20.getReadableDatabase();
            r3 = "upload_chunks";
            r4 = QUERY_KSS;
            r5 = WHERE_QUERY;
            r6 = 1;
            r6 = new java.lang.String[r6];
            r7 = 0;
            r8 = java.lang.String.valueOf(r21);
            r6[r7] = r8;
            r7 = 0;
            r8 = 0;
            r9 = 0;
            r10 = r2.query(r3, r4, r5, r6, r7, r8, r9);
            r17 = 0;
            if (r10 == 0) goto L_0x007a;
        L_0x0020:
            r3 = r10.moveToFirst();	 Catch:{ all -> 0x0082 }
            if (r3 == 0) goto L_0x007a;
        L_0x0026:
            r3 = "kss_request";
            r3 = r10.getColumnIndex(r3);	 Catch:{ all -> 0x0082 }
            r16 = r10.getString(r3);	 Catch:{ all -> 0x0082 }
            r3 = "kss_file_info";
            r3 = r10.getColumnIndex(r3);	 Catch:{ all -> 0x0082 }
            r12 = r10.getString(r3);	 Catch:{ all -> 0x0082 }
            r3 = "gen_time";
            r3 = r10.getColumnIndex(r3);	 Catch:{ all -> 0x0082 }
            r14 = r10.getLong(r3);	 Catch:{ all -> 0x0082 }
            r3 = android.text.TextUtils.isEmpty(r16);	 Catch:{ all -> 0x0082 }
            if (r3 != 0) goto L_0x0050;
        L_0x004a:
            r3 = android.text.TextUtils.isEmpty(r12);	 Catch:{ all -> 0x0082 }
            if (r3 == 0) goto L_0x0057;
        L_0x0050:
            r3 = 0;
            if (r10 == 0) goto L_0x0056;
        L_0x0053:
            r10.close();
        L_0x0056:
            return r3;
        L_0x0057:
            r0 = r22;
            r1 = r16;
            r13 = r0.createUploadRequestResult(r1);	 Catch:{ all -> 0x0082 }
            r11 = new cn.kuaipan.android.kss.upload.UploadFileInfo;	 Catch:{ all -> 0x0082 }
            r11.<init>(r12);	 Catch:{ all -> 0x0082 }
            r18 = new cn.kuaipan.android.kss.upload.KssUploadInfo;	 Catch:{ all -> 0x0082 }
            r0 = r18;
            r0.<init>(r11, r13, r14);	 Catch:{ all -> 0x0082 }
            r3 = "kss_upload_id";
            r3 = r10.getColumnIndex(r3);	 Catch:{ all -> 0x0089 }
            r19 = r10.getString(r3);	 Catch:{ all -> 0x0089 }
            r18.setUploadId(r19);	 Catch:{ all -> 0x0089 }
            r17 = r18;
        L_0x007a:
            if (r10 == 0) goto L_0x007f;
        L_0x007c:
            r10.close();
        L_0x007f:
            r3 = r17;
            goto L_0x0056;
        L_0x0082:
            r3 = move-exception;
        L_0x0083:
            if (r10 == 0) goto L_0x0088;
        L_0x0085:
            r10.close();
        L_0x0088:
            throw r3;
        L_0x0089:
            r3 = move-exception;
            r17 = r18;
            goto L_0x0083;
            */
            throw new UnsupportedOperationException("Method not decompiled: cn.kuaipan.android.kss.upload.UploadTaskStore.DBHelper.queryKss(int, cn.kuaipan.android.kss.IDataFactory):cn.kuaipan.android.kss.upload.KssUploadInfo");
        }

        public void update(int taskHash, KssUploadInfo info, UploadChunkInfoPersist uploadChunkInfoPersist) {
            if (info != null) {
                ContentValues values = new ContentValues();
                values.put("task_hash", Integer.valueOf(taskHash));
                values.put("kss_file_info", info.getFileInfo().toString());
                values.put("kss_request", info.getRequestResult().toString());
                if (TextUtils.isEmpty(info.getUploadId())) {
                    values.put("kss_upload_id", "");
                } else {
                    values.put("kss_upload_id", info.getUploadId());
                }
                values.put("chunk_pos", Long.valueOf(uploadChunkInfoPersist.pos));
                if (TextUtils.isEmpty(uploadChunkInfoPersist.upload_id)) {
                    values.put("upload_id", "");
                } else {
                    values.put("upload_id", uploadChunkInfoPersist.upload_id);
                }
                values.put("gen_time", Long.valueOf(info.getGenerateTime()));
                getWritableDatabase().replace("upload_chunks", null, values);
            }
        }

        public void delete(int taskHash) {
            getWritableDatabase().delete("upload_chunks", WHERE_QUERY, new String[]{String.valueOf(taskHash)});
        }
    }

    public UploadTaskStore(Context context, IDataFactory dataFactory) {
        if (context == null || dataFactory == null) {
            throw new KscRuntimeException(500002, "context and dataFactory can't be null");
        }
        this.mDBHelper = DBHelper.getInstance(context);
        this.mDataFactory = dataFactory;
    }

    public void putUploadInfo(int taskHash, KssUploadInfo uploadInfo) throws InterruptedException {
        this.mAccessor.access(0, Integer.valueOf(taskHash), uploadInfo, new UploadChunkInfoPersist());
    }

    public void removeUploadInfo(int taskHash) throws InterruptedException {
        this.mAccessor.access(1, Integer.valueOf(taskHash));
    }

    public KssUploadInfo getUploadInfo(int taskHash) throws InterruptedException {
        return (KssUploadInfo) this.mAccessor.access(3, Integer.valueOf(taskHash));
    }

    public UploadChunkInfoPersist getUploadPos(int taskHash) throws InterruptedException {
        return (UploadChunkInfoPersist) this.mAccessor.access(2, Integer.valueOf(taskHash));
    }

    public void updateUploadInfo(int taskHash, KssUploadInfo uploadInfo, UploadChunkInfoPersist uploadChunkInfoPersist) {
        this.mDBHelper.update(taskHash, uploadInfo, uploadChunkInfoPersist);
    }

    @SuppressLint({"NewApi"})
    private static Looper getCommonLooper() {
        Looper result = sLooper;
        Thread t = result == null ? null : result.getThread();
        if (t == null || !t.isAlive()) {
            result = null;
        }
        if (result == null) {
            synchronized (KssMaster.class) {
                result = sLooper;
                t = result == null ? null : result.getThread();
                if (t == null || !t.isAlive()) {
                    result = null;
                }
                if (result == null) {
                    HandlerThread ht = new HandlerThread("KssMaster - UploadRecorder", 10);
                    ht.start();
                    result = ht.getLooper();
                }
            }
        }
        return result;
    }
}
