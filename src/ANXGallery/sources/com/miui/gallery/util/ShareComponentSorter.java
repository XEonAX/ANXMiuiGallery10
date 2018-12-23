package com.miui.gallery.util;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.os.AsyncTask;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class ShareComponentSorter {
    private static volatile ShareComponentSorter sInstance;
    private Context mApplication;
    private Gauss mGauss = new Gauss(0.0d, 1.0d);
    private boolean mHasPendingSave;
    private boolean mInitialized;
    private List<OnInitializedListener> mOnInitializedListeners = new ArrayList();
    private Map<Tag, ComponentRecord> mRecords;
    private Map<Tag, List<Long>> mTmpRecords;

    public interface OnInitializedListener {
        void onInitialized();
    }

    private static class ComponentComparator implements Comparator<ResolveInfo> {
        private Map<Tag, Integer> mPriority;
        private Tag mTemp = new Tag();

        public ComponentComparator(Map<Tag, Integer> priority) {
            this.mPriority = priority;
        }

        public int compare(ResolveInfo lhs, ResolveInfo rhs) {
            this.mTemp.mPackage = lhs.activityInfo.packageName;
            this.mTemp.mClass = lhs.activityInfo.name;
            int lPrior = Numbers.unbox((Integer) this.mPriority.get(this.mTemp), 0);
            this.mTemp.mPackage = rhs.activityInfo.packageName;
            this.mTemp.mClass = rhs.activityInfo.name;
            int rPrior = Numbers.unbox((Integer) this.mPriority.get(this.mTemp), 0);
            if (lPrior > rPrior) {
                return -1;
            }
            return lPrior == rPrior ? 0 : 1;
        }
    }

    private static class ComponentRecord {
        private static final long ONE_DAY = TimeUnit.DAYS.toMillis(1);
        private String mComponent;
        private int mCountOfToday;
        private TreeMap<Long, Integer> mHistory;
        private String mPackage;
        private long mRecent;
        private long mToday;

        interface Evaluator {
            float evaluate(long j, int i);
        }

        private ComponentRecord(String pkg, String component, long recent, TreeMap<Long, Integer> history) {
            this.mPackage = pkg;
            this.mComponent = component;
            this.mRecent = recent;
            this.mHistory = history;
            this.mToday = this.mRecent / ONE_DAY;
            this.mCountOfToday = Numbers.unbox((Integer) this.mHistory.get(Long.valueOf(this.mToday)), 0);
        }

        ComponentRecord(String packageName, String component) {
            this(packageName, component, 0, new TreeMap());
        }

        float calcPriority(Evaluator evaluator) {
            float priority = 0.0f;
            for (Entry<Long, Integer> entry : this.mHistory.entrySet()) {
                priority += evaluator.evaluate(Numbers.unbox((Long) entry.getKey(), 0), Numbers.unbox((Integer) entry.getValue(), 0));
            }
            return priority;
        }

        void append(long millis) {
            if (Math.abs(millis - this.mRecent) >= 0) {
                this.mRecent = millis;
                long day = millis / ONE_DAY;
                if (day != this.mToday) {
                    Log.d("ShareComponentSorter", "switch day: %d->%d", Long.valueOf(this.mToday), Long.valueOf(day));
                    this.mToday = day;
                    this.mCountOfToday = Numbers.unbox((Integer) this.mHistory.get(Long.valueOf(this.mToday)), 0);
                }
                TreeMap treeMap = this.mHistory;
                Long valueOf = Long.valueOf(this.mToday);
                int i = this.mCountOfToday + 1;
                this.mCountOfToday = i;
                treeMap.put(valueOf, Integer.valueOf(i));
            }
        }

        private static TreeMap<Long, Integer> readHistory(JSONObject json) {
            TreeMap<Long, Integer> history = new TreeMap();
            Iterator<String> it = json.keys();
            while (it.hasNext()) {
                try {
                    String day = (String) it.next();
                    history.put(Long.valueOf(Long.parseLong(day)), Integer.valueOf(json.getInt(day)));
                } catch (Throwable e) {
                    Log.w("ShareComponentSorter", e);
                } catch (Throwable e2) {
                    Log.w("ShareComponentSorter", e2);
                }
            }
            Log.d("ShareComponentSorter", "finish read history[%d] from json[%d]", Integer.valueOf(history.size()), Integer.valueOf(json.length()));
            return history;
        }

        private static JSONObject writeHistory(TreeMap<Long, Integer> history) {
            JSONObject json = new JSONObject();
            if (!history.isEmpty()) {
                long latest = ((Long) history.navigableKeySet().last()).longValue();
                for (Entry<Long, Integer> entry : history.descendingMap().entrySet()) {
                    Object key = (Long) entry.getKey();
                    if (key == null || key.longValue() == 0) {
                        Log.d("ShareComponentSorter", "receive an invalid value[%s], skip", key);
                    } else {
                        try {
                            if (latest - key.longValue() > 30) {
                                Log.d("ShareComponentSorter", "record is out of date(%dd), skip", Long.valueOf(latest - key.longValue()));
                                break;
                            }
                            json.put(String.valueOf(entry.getKey()), entry.getValue());
                        } catch (Throwable e) {
                            Log.w("ShareComponentSorter", e);
                        }
                    }
                }
                Log.d("ShareComponentSorter", "finish write history[%d] to json[%d]", Integer.valueOf(history.size()), Integer.valueOf(json.length()));
            }
            return json;
        }

        static ComponentRecord fromJson(JSONObject object) {
            try {
                return new ComponentRecord(object.getString("package"), object.getString("component"), object.optLong("recent"), readHistory(object.getJSONObject("history")));
            } catch (Throwable e) {
                Log.w("ShareComponentSorter", e);
                return null;
            }
        }

        static JSONObject toJson(ComponentRecord info) {
            JSONObject json = new JSONObject();
            try {
                json.put("package", info.mPackage);
                json.put("component", info.mComponent);
                json.put("recent", info.mRecent);
                json.put("history", writeHistory(info.mHistory));
            } catch (Throwable e) {
                Log.w("ShareComponentSorter", e);
            }
            return json;
        }
    }

    private static class DummyComparator implements Comparator<ResolveInfo> {
        private DummyComparator() {
        }

        public int compare(ResolveInfo lhs, ResolveInfo rhs) {
            return 0;
        }
    }

    private class GaussEvaluator implements Evaluator {
        private double mCoefficient;
        private long mToday;

        private GaussEvaluator() {
            this.mToday = System.currentTimeMillis() / ComponentRecord.ONE_DAY;
            this.mCoefficient = 10.0d;
        }

        public float evaluate(long day, int count) {
            return (float) (ShareComponentSorter.this.mGauss.value(((double) (this.mToday - day)) / this.mCoefficient) * ((double) count));
        }
    }

    private class LoadTask extends AsyncTask<String, Void, Map<Tag, ComponentRecord>> {
        private LoadTask() {
        }

        /* JADX WARNING: Removed duplicated region for block: B:47:0x00bb  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0072  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0072  */
        /* JADX WARNING: Removed duplicated region for block: B:47:0x00bb  */
        /* JADX WARNING: Removed duplicated region for block: B:19:0x0065 A:{SYNTHETIC, Splitter: B:19:0x0065} */
        /* JADX WARNING: Removed duplicated region for block: B:47:0x00bb  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0072  */
        /* JADX WARNING: Removed duplicated region for block: B:36:0x009e A:{SYNTHETIC, Splitter: B:36:0x009e} */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0072  */
        /* JADX WARNING: Removed duplicated region for block: B:47:0x00bb  */
        /* JADX WARNING: Removed duplicated region for block: B:42:0x00ae A:{SYNTHETIC, Splitter: B:42:0x00ae} */
        protected java.util.Map<com.miui.gallery.util.ShareComponentSorter.Tag, com.miui.gallery.util.ShareComponentSorter.ComponentRecord> doInBackground(java.lang.String... r21) {
            /*
            r20 = this;
            r14 = java.lang.System.currentTimeMillis();
            r13 = new java.util.HashMap;
            r13.<init>();
            r6 = new java.io.File;
            r0 = r20;
            r0 = com.miui.gallery.util.ShareComponentSorter.this;
            r16 = r0;
            r16 = r16.mApplication;
            r16 = r16.getFilesDir();
            r17 = 0;
            r17 = r21[r17];
            r0 = r16;
            r1 = r17;
            r6.<init>(r0, r1);
            r16 = r6.exists();
            if (r16 != 0) goto L_0x0032;
        L_0x002a:
            r16 = "ShareComponentSorter";
            r17 = "no file found, create a empty record";
            com.miui.gallery.util.Log.d(r16, r17);
        L_0x0031:
            return r13;
        L_0x0032:
            r16 = "ShareComponentSorter";
            r17 = "read records from file";
            com.miui.gallery.util.Log.d(r16, r17);
            r4 = new java.lang.StringBuilder;
            r4.<init>();
            r10 = 0;
            r11 = new java.io.FileReader;	 Catch:{ FileNotFoundException -> 0x0137, IOException -> 0x0094 }
            r11.<init>(r6);	 Catch:{ FileNotFoundException -> 0x0137, IOException -> 0x0094 }
            r16 = 512; // 0x200 float:7.175E-43 double:2.53E-321;
            r0 = r16;
            r3 = new char[r0];	 Catch:{ FileNotFoundException -> 0x005a, IOException -> 0x0133, all -> 0x012f }
        L_0x004a:
            r16 = r11.read(r3);	 Catch:{ FileNotFoundException -> 0x005a, IOException -> 0x0133, all -> 0x012f }
            r17 = -1;
            r0 = r16;
            r1 = r17;
            if (r0 == r1) goto L_0x007a;
        L_0x0056:
            r4.append(r3);	 Catch:{ FileNotFoundException -> 0x005a, IOException -> 0x0133, all -> 0x012f }
            goto L_0x004a;
        L_0x005a:
            r5 = move-exception;
            r10 = r11;
        L_0x005c:
            r16 = "ShareComponentSorter";
            r0 = r16;
            com.miui.gallery.util.Log.w(r0, r5);	 Catch:{ all -> 0x00ab }
            if (r10 == 0) goto L_0x0068;
        L_0x0065:
            r10.close();	 Catch:{ IOException -> 0x008b }
        L_0x0068:
            r9 = r4.toString();
            r16 = android.text.TextUtils.isEmpty(r9);
            if (r16 == 0) goto L_0x00bb;
        L_0x0072:
            r16 = "ShareComponentSorter";
            r17 = "record file is empty, skip";
            com.miui.gallery.util.Log.d(r16, r17);
            goto L_0x0031;
        L_0x007a:
            if (r11 == 0) goto L_0x013a;
        L_0x007c:
            r11.close();	 Catch:{ IOException -> 0x0081 }
            r10 = r11;
            goto L_0x0068;
        L_0x0081:
            r5 = move-exception;
            r16 = "ShareComponentSorter";
            r0 = r16;
            com.miui.gallery.util.Log.w(r0, r5);
            r10 = r11;
            goto L_0x0068;
        L_0x008b:
            r5 = move-exception;
            r16 = "ShareComponentSorter";
            r0 = r16;
            com.miui.gallery.util.Log.w(r0, r5);
            goto L_0x0068;
        L_0x0094:
            r5 = move-exception;
        L_0x0095:
            r16 = "ShareComponentSorter";
            r0 = r16;
            com.miui.gallery.util.Log.w(r0, r5);	 Catch:{ all -> 0x00ab }
            if (r10 == 0) goto L_0x0068;
        L_0x009e:
            r10.close();	 Catch:{ IOException -> 0x00a2 }
            goto L_0x0068;
        L_0x00a2:
            r5 = move-exception;
            r16 = "ShareComponentSorter";
            r0 = r16;
            com.miui.gallery.util.Log.w(r0, r5);
            goto L_0x0068;
        L_0x00ab:
            r16 = move-exception;
        L_0x00ac:
            if (r10 == 0) goto L_0x00b1;
        L_0x00ae:
            r10.close();	 Catch:{ IOException -> 0x00b2 }
        L_0x00b1:
            throw r16;
        L_0x00b2:
            r5 = move-exception;
            r17 = "ShareComponentSorter";
            r0 = r17;
            com.miui.gallery.util.Log.w(r0, r5);
            goto L_0x00b1;
        L_0x00bb:
            r8 = 0;
            r2 = new org.json.JSONArray;	 Catch:{ JSONException -> 0x00fb }
            r2.<init>(r9);	 Catch:{ JSONException -> 0x00fb }
            r16 = "ShareComponentSorter";
            r17 = "start parsing %d records";
            r18 = r2.length();	 Catch:{ JSONException -> 0x00fb }
            r18 = java.lang.Integer.valueOf(r18);	 Catch:{ JSONException -> 0x00fb }
            com.miui.gallery.util.Log.d(r16, r17, r18);	 Catch:{ JSONException -> 0x00fb }
            r7 = 0;
        L_0x00d2:
            r16 = r2.length();	 Catch:{ JSONException -> 0x00fb }
            r0 = r16;
            if (r7 >= r0) goto L_0x010b;
        L_0x00da:
            r16 = r2.getJSONObject(r7);	 Catch:{ JSONException -> 0x00fb }
            r12 = com.miui.gallery.util.ShareComponentSorter.ComponentRecord.fromJson(r16);	 Catch:{ JSONException -> 0x00fb }
            if (r12 == 0) goto L_0x00f9;
        L_0x00e4:
            r16 = new com.miui.gallery.util.ShareComponentSorter$Tag;	 Catch:{ JSONException -> 0x00fb }
            r17 = r12.mPackage;	 Catch:{ JSONException -> 0x00fb }
            r18 = r12.mComponent;	 Catch:{ JSONException -> 0x00fb }
            r16.<init>(r17, r18);	 Catch:{ JSONException -> 0x00fb }
            r0 = r16;
            r13.put(r0, r12);	 Catch:{ JSONException -> 0x00fb }
        L_0x00f6:
            r7 = r7 + 1;
            goto L_0x00d2;
        L_0x00f9:
            r8 = 1;
            goto L_0x00f6;
        L_0x00fb:
            r5 = move-exception;
            r8 = 1;
            r16 = "ShareComponentSorter";
            r17 = "read history failed, abort:";
            com.miui.gallery.util.Log.w(r16, r17);
            r16 = "ShareComponentSorter";
            r0 = r16;
            com.miui.gallery.util.Log.w(r0, r5);
        L_0x010b:
            if (r8 == 0) goto L_0x011c;
        L_0x010d:
            r16 = "ShareComponentSorter";
            r17 = "file is illegal, delete file: %b";
            r18 = r6.delete();
            r18 = java.lang.Boolean.valueOf(r18);
            com.miui.gallery.util.Log.w(r16, r17, r18);
        L_0x011c:
            r16 = "ShareComponentSorter";
            r17 = "read from file: %dms";
            r18 = java.lang.System.currentTimeMillis();
            r18 = r18 - r14;
            r18 = java.lang.Long.valueOf(r18);
            com.miui.gallery.util.Log.d(r16, r17, r18);
            goto L_0x0031;
        L_0x012f:
            r16 = move-exception;
            r10 = r11;
            goto L_0x00ac;
        L_0x0133:
            r5 = move-exception;
            r10 = r11;
            goto L_0x0095;
        L_0x0137:
            r5 = move-exception;
            goto L_0x005c;
        L_0x013a:
            r10 = r11;
            goto L_0x0068;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.util.ShareComponentSorter.LoadTask.doInBackground(java.lang.String[]):java.util.Map<com.miui.gallery.util.ShareComponentSorter$Tag, com.miui.gallery.util.ShareComponentSorter$ComponentRecord>");
        }

        protected void onPostExecute(Map<Tag, ComponentRecord> records) {
            super.onPostExecute(records);
            Log.d("ShareComponentSorter", "initialized finish.");
            ShareComponentSorter.this.mRecords = records;
            if (!(ShareComponentSorter.this.mTmpRecords == null || ShareComponentSorter.this.mTmpRecords.isEmpty())) {
                Log.d("ShareComponentSorter", "has temp records, do transfer");
                for (Entry<Tag, List<Long>> entry : ShareComponentSorter.this.mTmpRecords.entrySet()) {
                    for (Long time : (List) entry.getValue()) {
                        ShareComponentSorter.this.append(((Tag) entry.getKey()).mPackage, ((Tag) entry.getKey()).mClass, time.longValue());
                    }
                }
            }
            if (ShareComponentSorter.this.mHasPendingSave) {
                Log.d("ShareComponentSorter", "requested save when initializing, do save");
                ShareComponentSorter.this.save();
                ShareComponentSorter.this.mHasPendingSave = false;
            }
            for (OnInitializedListener listener : ShareComponentSorter.this.mOnInitializedListeners) {
                listener.onInitialized();
            }
        }
    }

    private class SaveTask extends AsyncTask<String, Void, Void> {
        private SaveTask() {
        }

        /* JADX WARNING: Removed duplicated region for block: B:30:0x009d A:{SYNTHETIC, Splitter: B:30:0x009d} */
        /* JADX WARNING: Removed duplicated region for block: B:36:0x00ab A:{SYNTHETIC, Splitter: B:36:0x00ab} */
        protected java.lang.Void doInBackground(java.lang.String... r13) {
            /*
            r12 = this;
            r4 = java.lang.System.currentTimeMillis();
            r3 = new java.io.File;
            r8 = com.miui.gallery.util.ShareComponentSorter.this;
            r8 = r8.mApplication;
            r8 = r8.getFilesDir();
            r9 = 0;
            r9 = r13[r9];
            r3.<init>(r8, r9);
            r0 = new org.json.JSONArray;
            r0.<init>();
            r8 = com.miui.gallery.util.ShareComponentSorter.this;
            r9 = r8.mRecords;
            monitor-enter(r9);
            r8 = com.miui.gallery.util.ShareComponentSorter.this;	 Catch:{ all -> 0x004a }
            r8 = r8.mRecords;	 Catch:{ all -> 0x004a }
            r8 = r8.entrySet();	 Catch:{ all -> 0x004a }
            r10 = r8.iterator();	 Catch:{ all -> 0x004a }
        L_0x0030:
            r8 = r10.hasNext();	 Catch:{ all -> 0x004a }
            if (r8 == 0) goto L_0x004d;
        L_0x0036:
            r2 = r10.next();	 Catch:{ all -> 0x004a }
            r2 = (java.util.Map.Entry) r2;	 Catch:{ all -> 0x004a }
            r8 = r2.getValue();	 Catch:{ all -> 0x004a }
            r8 = (com.miui.gallery.util.ShareComponentSorter.ComponentRecord) r8;	 Catch:{ all -> 0x004a }
            r8 = com.miui.gallery.util.ShareComponentSorter.ComponentRecord.toJson(r8);	 Catch:{ all -> 0x004a }
            r0.put(r8);	 Catch:{ all -> 0x004a }
            goto L_0x0030;
        L_0x004a:
            r8 = move-exception;
            monitor-exit(r9);	 Catch:{ all -> 0x004a }
            throw r8;
        L_0x004d:
            r8 = "ShareComponentSorter";
            r10 = "write %d records to file";
            r11 = com.miui.gallery.util.ShareComponentSorter.this;	 Catch:{ all -> 0x004a }
            r11 = r11.mRecords;	 Catch:{ all -> 0x004a }
            r11 = r11.size();	 Catch:{ all -> 0x004a }
            r11 = java.lang.Integer.valueOf(r11);	 Catch:{ all -> 0x004a }
            com.miui.gallery.util.Log.d(r8, r10, r11);	 Catch:{ all -> 0x004a }
            monitor-exit(r9);	 Catch:{ all -> 0x004a }
            r6 = 0;
            r7 = new java.io.FileWriter;	 Catch:{ IOException -> 0x0095 }
            r7.<init>(r3);	 Catch:{ IOException -> 0x0095 }
            r8 = r0.toString();	 Catch:{ IOException -> 0x00b9, all -> 0x00b6 }
            r7.write(r8);	 Catch:{ IOException -> 0x00b9, all -> 0x00b6 }
            r7.flush();	 Catch:{ IOException -> 0x00b9, all -> 0x00b6 }
            if (r7 == 0) goto L_0x00bc;
        L_0x0076:
            r7.close();	 Catch:{ IOException -> 0x008d }
            r6 = r7;
        L_0x007a:
            r8 = "ShareComponentSorter";
            r9 = "write to file: %dms";
            r10 = java.lang.System.currentTimeMillis();
            r10 = r10 - r4;
            r10 = java.lang.Long.valueOf(r10);
            com.miui.gallery.util.Log.d(r8, r9, r10);
            r8 = 0;
            return r8;
        L_0x008d:
            r1 = move-exception;
            r8 = "ShareComponentSorter";
            com.miui.gallery.util.Log.w(r8, r1);
            r6 = r7;
            goto L_0x007a;
        L_0x0095:
            r1 = move-exception;
        L_0x0096:
            r8 = "ShareComponentSorter";
            com.miui.gallery.util.Log.w(r8, r1);	 Catch:{ all -> 0x00a8 }
            if (r6 == 0) goto L_0x007a;
        L_0x009d:
            r6.close();	 Catch:{ IOException -> 0x00a1 }
            goto L_0x007a;
        L_0x00a1:
            r1 = move-exception;
            r8 = "ShareComponentSorter";
            com.miui.gallery.util.Log.w(r8, r1);
            goto L_0x007a;
        L_0x00a8:
            r8 = move-exception;
        L_0x00a9:
            if (r6 == 0) goto L_0x00ae;
        L_0x00ab:
            r6.close();	 Catch:{ IOException -> 0x00af }
        L_0x00ae:
            throw r8;
        L_0x00af:
            r1 = move-exception;
            r9 = "ShareComponentSorter";
            com.miui.gallery.util.Log.w(r9, r1);
            goto L_0x00ae;
        L_0x00b6:
            r8 = move-exception;
            r6 = r7;
            goto L_0x00a9;
        L_0x00b9:
            r1 = move-exception;
            r6 = r7;
            goto L_0x0096;
        L_0x00bc:
            r6 = r7;
            goto L_0x007a;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.util.ShareComponentSorter.SaveTask.doInBackground(java.lang.String[]):java.lang.Void");
        }
    }

    private static class Tag {
        private String mClass;
        private String mPackage;

        public Tag(String pkg, String cls) {
            this.mPackage = pkg;
            this.mClass = cls;
        }

        private Tag() {
        }

        public boolean equals(Object o) {
            if (o == this) {
                return true;
            }
            if (!(o instanceof Tag)) {
                return false;
            }
            Tag tag = (Tag) o;
            if (this.mPackage.equals(tag.mPackage) && this.mClass.equals(tag.mClass)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.mPackage.hashCode() ^ this.mClass.hashCode();
        }
    }

    public static synchronized ShareComponentSorter getInstance() {
        ShareComponentSorter shareComponentSorter;
        synchronized (ShareComponentSorter.class) {
            if (sInstance == null) {
                sInstance = new ShareComponentSorter();
            }
            shareComponentSorter = sInstance;
        }
        return shareComponentSorter;
    }

    public void registerOnInitializedListener(OnInitializedListener onInitializedListener) {
        this.mOnInitializedListeners.add(onInitializedListener);
    }

    public void removeOnInitializedListener(OnInitializedListener onInitializedListener) {
        this.mOnInitializedListeners.remove(onInitializedListener);
    }

    public boolean initialized() {
        return this.mInitialized;
    }

    public void initialize(Context context) {
        if (!this.mInitialized) {
            if (context != context.getApplicationContext()) {
                throw new IllegalArgumentException("please initialize with application");
            }
            this.mApplication = context;
            new LoadTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[]{"components-history.json"});
            this.mInitialized = true;
        }
    }

    public Comparator<ResolveInfo> createComparator() {
        if (this.mRecords != null) {
            Comparator componentComparator;
            synchronized (this.mRecords) {
                long start = System.currentTimeMillis();
                Log.d("ShareComponentSorter", "initialized create a new comparator");
                Map<Tag, Integer> priority = new HashMap();
                GaussEvaluator gauss = new GaussEvaluator();
                for (Entry<Tag, ComponentRecord> entry : this.mRecords.entrySet()) {
                    float value = ((ComponentRecord) entry.getValue()).calcPriority(gauss);
                    Log.d("ShareComponentSorter", "[%s] -> %f", ((Tag) entry.getKey()).mClass, Float.valueOf(value));
                    priority.put(entry.getKey(), Integer.valueOf((int) (1000.0f * value)));
                }
                Log.d("ShareComponentSorter", "create a gauss comparator costs %dms", Long.valueOf(System.currentTimeMillis() - start));
                componentComparator = new ComponentComparator(priority);
            }
            return componentComparator;
        }
        Log.d("ShareComponentSorter", "not initialized, use a dummy comparator");
        return new DummyComparator();
    }

    public void touch(String pkg, String component) {
        append(pkg, component, System.currentTimeMillis());
    }

    private void append(String pkg, String component, long time) {
        Tag tag = new Tag(pkg, component);
        if (this.mRecords == null) {
            Log.d("ShareComponentSorter", "not initialized, use a temp record");
            if (this.mTmpRecords == null) {
                this.mTmpRecords = new HashMap();
            }
            List<Long> records = (List) this.mTmpRecords.get(tag);
            if (records == null) {
                records = new ArrayList();
                this.mTmpRecords.put(tag, records);
            }
            records.add(Long.valueOf(time));
            return;
        }
        synchronized (this.mRecords) {
            Log.d("ShareComponentSorter", "initialized, inserting");
            ComponentRecord record = (ComponentRecord) this.mRecords.get(tag);
            if (record == null) {
                record = new ComponentRecord(pkg, component);
                this.mRecords.put(tag, record);
            }
            record.append(time);
        }
    }

    public void save() {
        if (this.mRecords != null) {
            new SaveTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[]{"components-history.json"});
            return;
        }
        this.mHasPendingSave = true;
    }
}
