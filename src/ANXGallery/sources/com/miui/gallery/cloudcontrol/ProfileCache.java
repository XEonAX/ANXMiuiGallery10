package com.miui.gallery.cloudcontrol;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.miui.gallery.R;
import com.miui.gallery.cloudcontrol.FeatureProfile.Deserializer;
import com.miui.gallery.cloudcontrol.FeatureProfile.Status;
import com.miui.gallery.provider.GalleryContract.CloudControl;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

class ProfileCache {
    private HashMap<String, FeatureProfile> mCloudCache = new HashMap();
    private HashMap<String, Object> mCloudStrategyCache = new HashMap();
    private volatile boolean mIsLoadFinished;
    private HashMap<String, FeatureProfile> mLocalCache = new HashMap();
    private HashMap<String, Object> mLocalStrategyCache = new HashMap();
    private final Object mObserverLock = new Object();
    private Map<String, List<FeatureStatusObserver>> mObserversMap = new HashMap();
    private volatile boolean mPendingNotify;
    private final Object mSyncLock = new Object();

    ProfileCache() {
    }

    void insertToCloudCache(FeatureProfile featureProfile) {
        String str = null;
        String featureName = featureProfile.getName();
        String featureStatus = featureProfile.getStatus();
        String featureStrategy = featureProfile.getStrategy();
        FeatureProfile cache = (FeatureProfile) this.mCloudCache.get(featureName);
        synchronized (this.mSyncLock) {
            if (featureStatus != null) {
                if (Status.REMOVE.getValue().equals(featureStatus)) {
                    if (cache != null) {
                        this.mCloudCache.remove(featureName);
                        this.mCloudStrategyCache.remove(featureName);
                    }
                    if (cache != null) {
                        str = cache.getStatus();
                    }
                    notifyObserversByName(featureName, str, featureStatus);
                }
            }
            if (cache != null) {
                if (cache.getStatus() != null && cache.getStatus().equals(Status.ENABLE.getValue())) {
                    featureStatus = Status.ENABLE.getValue();
                }
                if (!TextUtils.equals(cache.getStrategy(), featureStrategy)) {
                    cache.setStrategy(featureStrategy);
                    this.mCloudStrategyCache.remove(featureName);
                }
                if (!TextUtils.equals(cache.getStatus(), featureStatus)) {
                    cache.setStatus(featureStatus);
                    notifyObserversByName(featureName, cache.getStatus(), featureStatus);
                }
            } else {
                FeatureProfile newItem = new FeatureProfile();
                newItem.setStrategy(featureStrategy);
                newItem.setStatus(featureStatus);
                newItem.setName(featureName);
                this.mCloudCache.put(featureName, newItem);
                notifyObserversByName(featureName, null, featureStatus);
            }
        }
    }

    private void notifyObserversByName(String featureName, String oldStatus, String newStatus) {
        try {
            synchronized (this.mObserverLock) {
                List<FeatureStatusObserver> observers = (List) this.mObserversMap.get(featureName);
                if (MiscUtil.isValid(observers)) {
                    for (final FeatureStatusObserver observer : observers) {
                        final String str = featureName;
                        final String str2 = oldStatus;
                        final String str3 = newStatus;
                        ThreadManager.getMainHandler().post(new Runnable() {
                            public void run() {
                                observer.onStatusChange(str, Status.fromValue(str2), Status.fromValue(str3));
                            }
                        });
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("CloudControl.ProfileCache", "Failed to notify observers.");
        }
    }

    /* JADX WARNING: Missing block: B:52:?, code:
            return r7;
     */
    <T extends com.miui.gallery.cloudcontrol.strategies.BaseStrategy> T queryStrategy(java.lang.String r11, java.lang.Class<T> r12, com.miui.gallery.cloudcontrol.Merger<T> r13) {
        /*
        r10 = this;
        r7 = android.text.TextUtils.isEmpty(r11);
        if (r7 == 0) goto L_0x0008;
    L_0x0006:
        r7 = 0;
    L_0x0007:
        return r7;
    L_0x0008:
        r8 = r10.mSyncLock;
        monitor-enter(r8);
        r1 = 0;
        r4 = 0;
        r7 = r10.mCloudStrategyCache;	 Catch:{ all -> 0x0047 }
        r2 = r7.get(r11);	 Catch:{ all -> 0x0047 }
        if (r2 == 0) goto L_0x004a;
    L_0x0015:
        r7 = r2.getClass();	 Catch:{ all -> 0x0047 }
        r7 = r12.isAssignableFrom(r7);	 Catch:{ all -> 0x0047 }
        if (r7 == 0) goto L_0x004a;
    L_0x001f:
        r0 = r2;
        r0 = (com.miui.gallery.cloudcontrol.strategies.BaseStrategy) r0;	 Catch:{ all -> 0x0047 }
        r1 = r0;
    L_0x0023:
        r7 = r10.mLocalStrategyCache;	 Catch:{ all -> 0x0047 }
        r5 = r7.get(r11);	 Catch:{ all -> 0x0047 }
        if (r5 == 0) goto L_0x0082;
    L_0x002b:
        r7 = r5.getClass();	 Catch:{ all -> 0x0047 }
        r7 = r12.isAssignableFrom(r7);	 Catch:{ all -> 0x0047 }
        if (r7 == 0) goto L_0x0082;
    L_0x0035:
        r0 = r5;
        r0 = (com.miui.gallery.cloudcontrol.strategies.BaseStrategy) r0;	 Catch:{ all -> 0x0047 }
        r4 = r0;
    L_0x0039:
        if (r13 == 0) goto L_0x00ba;
    L_0x003b:
        if (r1 == 0) goto L_0x00ba;
    L_0x003d:
        if (r4 == 0) goto L_0x00ba;
    L_0x003f:
        r7 = r13.merge(r4, r1);	 Catch:{ all -> 0x0047 }
        r7 = (com.miui.gallery.cloudcontrol.strategies.BaseStrategy) r7;	 Catch:{ all -> 0x0047 }
        monitor-exit(r8);	 Catch:{ all -> 0x0047 }
        goto L_0x0007;
    L_0x0047:
        r7 = move-exception;
        monitor-exit(r8);	 Catch:{ all -> 0x0047 }
        throw r7;
    L_0x004a:
        r7 = r10.mCloudCache;	 Catch:{ all -> 0x0047 }
        r7 = r7.get(r11);	 Catch:{ all -> 0x0047 }
        if (r7 == 0) goto L_0x0023;
    L_0x0052:
        r7 = r10.mCloudCache;	 Catch:{ all -> 0x0047 }
        r7 = r7.get(r11);	 Catch:{ all -> 0x0047 }
        r7 = (com.miui.gallery.cloudcontrol.FeatureProfile) r7;	 Catch:{ all -> 0x0047 }
        r6 = r7.getStrategy();	 Catch:{ all -> 0x0047 }
        r7 = new com.google.gson.Gson;	 Catch:{ Exception -> 0x0076 }
        r7.<init>();	 Catch:{ Exception -> 0x0076 }
        r7 = r7.fromJson(r6, r12);	 Catch:{ Exception -> 0x0076 }
        r0 = r7;
        r0 = (com.miui.gallery.cloudcontrol.strategies.BaseStrategy) r0;	 Catch:{ Exception -> 0x0076 }
        r1 = r0;
        if (r1 == 0) goto L_0x0023;
    L_0x006d:
        r1.doAdditionalProcessing();	 Catch:{ Exception -> 0x0076 }
        r7 = r10.mCloudStrategyCache;	 Catch:{ Exception -> 0x0076 }
        r7.put(r11, r1);	 Catch:{ Exception -> 0x0076 }
        goto L_0x0023;
    L_0x0076:
        r3 = move-exception;
        r7 = "CloudControl.ProfileCache";
        r9 = "Failed to deserialize strategy: %s";
        com.miui.gallery.util.Log.e(r7, r9, r6);	 Catch:{ all -> 0x0047 }
        r3.printStackTrace();	 Catch:{ all -> 0x0047 }
        goto L_0x0023;
    L_0x0082:
        r7 = r10.mLocalCache;	 Catch:{ all -> 0x0047 }
        r7 = r7.get(r11);	 Catch:{ all -> 0x0047 }
        if (r7 == 0) goto L_0x0039;
    L_0x008a:
        r7 = r10.mLocalCache;	 Catch:{ all -> 0x0047 }
        r7 = r7.get(r11);	 Catch:{ all -> 0x0047 }
        r7 = (com.miui.gallery.cloudcontrol.FeatureProfile) r7;	 Catch:{ all -> 0x0047 }
        r6 = r7.getStrategy();	 Catch:{ all -> 0x0047 }
        r7 = new com.google.gson.Gson;	 Catch:{ Exception -> 0x00ae }
        r7.<init>();	 Catch:{ Exception -> 0x00ae }
        r7 = r7.fromJson(r6, r12);	 Catch:{ Exception -> 0x00ae }
        r0 = r7;
        r0 = (com.miui.gallery.cloudcontrol.strategies.BaseStrategy) r0;	 Catch:{ Exception -> 0x00ae }
        r4 = r0;
        if (r4 == 0) goto L_0x0039;
    L_0x00a5:
        r4.doAdditionalProcessing();	 Catch:{ Exception -> 0x00ae }
        r7 = r10.mLocalStrategyCache;	 Catch:{ Exception -> 0x00ae }
        r7.put(r11, r4);	 Catch:{ Exception -> 0x00ae }
        goto L_0x0039;
    L_0x00ae:
        r3 = move-exception;
        r7 = "CloudControl.ProfileCache";
        r9 = "Failed to deserialize strategy: %s";
        com.miui.gallery.util.Log.e(r7, r9, r6);	 Catch:{ all -> 0x0047 }
        r3.printStackTrace();	 Catch:{ all -> 0x0047 }
        goto L_0x0039;
    L_0x00ba:
        if (r1 == 0) goto L_0x00c0;
    L_0x00bc:
        r7 = r1;
    L_0x00bd:
        monitor-exit(r8);	 Catch:{ all -> 0x0047 }
        goto L_0x0007;
    L_0x00c0:
        r7 = r4;
        goto L_0x00bd;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.cloudcontrol.ProfileCache.queryStrategy(java.lang.String, java.lang.Class, com.miui.gallery.cloudcontrol.Merger):T");
    }

    Status registerStatusObserver(String feature, FeatureStatusObserver observer) {
        if (TextUtils.isEmpty(feature)) {
            throw new IllegalArgumentException("feature should not be empty or null.");
        }
        if (observer != null) {
            synchronized (this.mObserverLock) {
                List<FeatureStatusObserver> observers = (List) this.mObserversMap.get(feature);
                if (observers == null) {
                    observers = new ArrayList();
                    observers.add(observer);
                    this.mObserversMap.put(feature, observers);
                } else if (observers.contains(observer)) {
                    throw new IllegalArgumentException("Observer " + observer + " is already registered.");
                } else {
                    observers.add(observer);
                }
            }
        }
        return queryStatus(feature);
    }

    void unregisterStatusObserver(String feature, FeatureStatusObserver observer) {
        if (TextUtils.isEmpty(feature) || observer == null) {
            throw new IllegalArgumentException("feature and observer should not be empty or null.");
        }
        List<FeatureStatusObserver> observers = (List) this.mObserversMap.get(feature);
        if (MiscUtil.isValid(observers)) {
            synchronized (this.mObserverLock) {
                int index = observers.indexOf(observer);
                if (index == -1) {
                    throw new IllegalStateException("Observer " + observer + " was not registered.");
                }
                observers.remove(index);
            }
            return;
        }
        throw new IllegalStateException("Observer " + observer + " was not registered.");
    }

    Status queryStatus(String feature) {
        if (TextUtils.isEmpty(feature)) {
            return Status.UNAVAILABLE;
        }
        synchronized (this.mSyncLock) {
            Status status;
            if (this.mIsLoadFinished) {
                String status2 = null;
                if (this.mCloudCache.get(feature) != null) {
                    status2 = ((FeatureProfile) this.mCloudCache.get(feature)).getStatus();
                } else if (this.mLocalCache.get(feature) != null) {
                    status2 = ((FeatureProfile) this.mLocalCache.get(feature)).getStatus();
                }
                if (TextUtils.isEmpty(status2)) {
                    status = Status.UNAVAILABLE;
                    return status;
                }
                try {
                    status = Status.fromValue(status2);
                    return status;
                } catch (Exception e) {
                    return Status.UNAVAILABLE;
                }
            }
            this.mPendingNotify = true;
            status = Status.UNAVAILABLE;
            return status;
        }
    }

    void load(Context context) {
        loadFromDB(context);
        loadFromLocalFile(new InputStreamReader(context.getResources().openRawResource(R.raw.cloud_control)));
        this.mIsLoadFinished = true;
    }

    void notifyAfterLoadFinished() {
        synchronized (this.mSyncLock) {
            if (this.mPendingNotify) {
                Log.d("CloudControl.ProfileCache", "Notify all feature status after cache load finished:");
                for (Entry<String, FeatureProfile> entry : this.mCloudCache.entrySet()) {
                    if (!(TextUtils.isEmpty((CharSequence) entry.getKey()) || entry.getValue() == null)) {
                        Log.d("CloudControl.ProfileCache", "Feature name: %s, feature status: %s", entry.getKey(), String.valueOf(((FeatureProfile) entry.getValue()).getStatus()));
                        notifyObserversByName((String) entry.getKey(), null, ((FeatureProfile) entry.getValue()).getStatus());
                    }
                }
                this.mPendingNotify = false;
            }
        }
    }

    private void loadFromDB(Context context) {
        final long start = System.currentTimeMillis();
        SafeDBUtil.safeQuery(context, CloudControl.URI, FeatureDBItem.PROJECTION, null, null, null, new QueryHandler<Object>() {
            public Object handle(Cursor cursor) {
                if (cursor == null || cursor.isClosed()) {
                    Log.e("CloudControl.ProfileCache", "Fill cache failed with a null cursor.");
                } else {
                    synchronized (ProfileCache.this.mSyncLock) {
                        while (cursor.moveToNext()) {
                            FeatureDBItem featureDbItem = FeatureDBItem.fromCursor(cursor);
                            ProfileCache.this.mCloudCache.put(featureDbItem.getName(), featureDbItem);
                        }
                    }
                    Log.d("CloudControl.ProfileCache", "Load %d items from database, cost %d ms.", Integer.valueOf(cursor.getCount()), Long.valueOf(System.currentTimeMillis() - start));
                }
                return null;
            }
        });
    }

    void clearCloudCache() {
        synchronized (this.mSyncLock) {
            for (Entry<String, FeatureProfile> entry : this.mCloudCache.entrySet()) {
                String key = (String) entry.getKey();
                notifyObserversByName(key, ((FeatureProfile) entry.getValue()).getStatus(), this.mLocalCache.get(key) != null ? ((FeatureProfile) this.mLocalCache.get(key)).getStatus() : Status.UNAVAILABLE.getValue());
            }
            this.mCloudCache.clear();
            this.mCloudStrategyCache.clear();
        }
    }

    private void loadFromLocalFile(Reader reader) {
        try {
            GsonBuilder builder = new GsonBuilder();
            builder.registerTypeAdapter(FeatureProfile.class, new Deserializer());
            ArrayList<FeatureProfile> featureProfiles = (ArrayList) builder.create().fromJson(reader, new TypeToken<ArrayList<FeatureProfile>>() {
            }.getType());
            synchronized (this.mSyncLock) {
                Iterator it = featureProfiles.iterator();
                while (it.hasNext()) {
                    FeatureProfile featureProfile = (FeatureProfile) it.next();
                    this.mLocalCache.put(featureProfile.getName(), featureProfile);
                }
            }
            try {
                reader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            try {
                Log.e("CloudControl.ProfileCache", "Failed to load from local file, errorClause: %s, errorMessage: %s.", e2.getCause(), e2.getMessage());
                e2.printStackTrace();
                Map<String, String> params = GallerySamplingStatHelper.generatorCommonParams();
                params.put("errorMsg", e2.getMessage());
                GallerySamplingStatHelper.recordErrorEvent("cloud_control", "parse_local_file_failed", params);
            } finally {
                try {
                    reader.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
        }
    }
}
