package com.miui.gallery.provider.cache;

import android.content.ContentValues;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import com.miui.gallery.data.LocationManager;
import com.miui.gallery.provider.AlbumManager;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.provider.MediaSortDateHelper;
import com.miui.gallery.provider.MediaSortDateHelper.SortDate;
import com.miui.gallery.provider.cache.MediaItem.Generator;
import com.miui.gallery.provider.cache.MediaItem.QueryFactory;
import com.miui.gallery.util.DebugUtil;
import com.miui.gallery.util.GallerySamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

public class MediaManager extends CacheManager<MediaItem> {
    private AlbumDelegate mAlbumDelegate;
    private FavoritesDelegate mFavoritesDelegate;
    private CountDownLatch mFullLoadDoneSignal;
    private final ArrayList<InitializeListener> mInitializeListeners;
    private volatile boolean mInitialized;
    private volatile boolean mIsFullLoadDone;
    private volatile boolean mIsLoadStarted;
    private volatile boolean mIsMinimumLoadDone;
    private final Object mMinimumLoadLock;

    public interface InitializeListener {
        void onProgressUpdate();
    }

    private class InitializeTask implements Runnable {
        private SQLiteOpenHelper mDBHelper;

        public InitializeTask(SQLiteOpenHelper DBHelper) {
            this.mDBHelper = DBHelper;
        }

        public void run() {
            Log.d(".provider.cache.MediaManager", "acquire initialize lock");
            try {
                Log.d(".provider.cache.MediaManager", "start initialize");
                SQLiteDatabase database = this.mDBHelper.getReadableDatabase();
                if (lockedLoadMinimumPart(database)) {
                    Log.d(".provider.cache.MediaManager", "read second part");
                    Process.setThreadPriority(10);
                    loadFullPart(database);
                }
                MediaManager.this.mInitialized = true;
                MediaManager.this.mIsFullLoadDone = true;
                MediaManager.this.mFullLoadDoneSignal.countDown();
                synchronized (MediaManager.this.mInitializeListeners) {
                    MediaManager.this.mInitializeListeners.clear();
                }
            } catch (Throwable th) {
                MediaManager.this.mIsFullLoadDone = true;
                MediaManager.this.mFullLoadDoneSignal.countDown();
                synchronized (MediaManager.this.mInitializeListeners) {
                    MediaManager.this.mInitializeListeners.clear();
                }
            }
        }

        private boolean lockedLoadMinimumPart(SQLiteDatabase db) {
            boolean loadMinimumPart;
            synchronized (MediaManager.this.mMinimumLoadLock) {
                try {
                    Log.d(".provider.cache.MediaManager", "read albums");
                    MediaManager.this.mAlbumDelegate.load(db);
                    MediaManager.this.mFavoritesDelegate.load(db);
                    loadMinimumPart = loadMinimumPart(db);
                    MediaManager.this.mIsMinimumLoadDone = true;
                    MediaManager.this.mMinimumLoadLock.notifyAll();
                } catch (Throwable th) {
                    MediaManager.this.mIsMinimumLoadDone = true;
                    MediaManager.this.mMinimumLoadLock.notifyAll();
                }
            }
            return loadMinimumPart;
        }

        private boolean loadMinimumPart(SQLiteDatabase db) {
            Log.d(".provider.cache.MediaManager", "read first part");
            long start = System.currentTimeMillis();
            try {
                Cursor cursor = db.query("cloud", MediaManager.this.mGenerator.getProjection(), "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND serverType IN (1,2)", null, null, null, getLoadSortBy() + " DESC", String.valueOf(128));
                if (cursor == null) {
                    Log.e(".provider.cache.MediaManager", "fill provider failed with a null cursor");
                    return false;
                }
                try {
                    List<MediaItem> items = new ArrayList(64);
                    while (cursor.moveToNext()) {
                        items.add(MediaManager.this.mGenerator.from(cursor));
                    }
                    publishResult(items);
                    Log.d(".provider.cache.MediaManager", "load %d item for the first time, costs %dms", Integer.valueOf(cursor.getCount()), Long.valueOf(System.currentTimeMillis() - start));
                    boolean z = cursor.getCount() == 128;
                    cursor.close();
                    return z;
                } catch (Throwable th) {
                    cursor.close();
                }
            } catch (SQLiteException e) {
                Map<String, String> params = GallerySamplingStatHelper.generatorCommonParams();
                params.put("dbversion", String.valueOf(db.getVersion()));
                params.put("exception", e.getMessage() + " : " + e.getCause());
                GallerySamplingStatHelper.recordErrorEvent("db_helper", "db_mediamanager_load", params);
                DebugUtil.exportDB(false);
                GalleryDBHelper.getInstance().deleteDatabase();
                throw e;
            }
        }

        private void loadFullPart(SQLiteDatabase database) {
            Log.d(".provider.cache.MediaManager", "start load second part");
            long begin = System.currentTimeMillis();
            ArrayList<MediaItem> list = new ArrayList();
            String str = getLoadSortBy() + " DESC LIMIT -1 OFFSET " + 128;
            Cursor cursor = database.query("cloud", MediaManager.this.mGenerator.getProjection(), "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND serverType IN (1,2)", null, null, null, str, null);
            if (cursor != null) {
                try {
                    list.ensureCapacity(4096);
                    int count = 0;
                    while (cursor.moveToNext()) {
                        list.add(MediaManager.this.mGenerator.from(cursor));
                        count++;
                        if (count == 4096 || cursor.isLast()) {
                            count = 0;
                            publishResult(list);
                            list.clear();
                        }
                    }
                    Log.d(".provider.cache.MediaManager", "load second part cost: %d. current position = %d", Long.valueOf(System.currentTimeMillis() - begin), Integer.valueOf(cursor.getPosition()));
                } finally {
                    cursor.close();
                }
            }
        }

        private void publishResult(List<MediaItem> list) {
            synchronized (MediaManager.this.mModifyLock) {
                for (MediaItem item : list) {
                    MediaManager.this.mCache.add(item);
                }
                notifyProgressUpdate();
            }
        }

        private void notifyProgressUpdate() {
            synchronized (MediaManager.this.mInitializeListeners) {
                if (MediaManager.this.mInitializeListeners.size() > 0) {
                    Iterator it = MediaManager.this.mInitializeListeners.iterator();
                    while (it.hasNext()) {
                        InitializeListener listener = (InitializeListener) it.next();
                        if (listener != null) {
                            listener.onProgressUpdate();
                        }
                    }
                }
            }
        }

        private String getLoadSortBy() {
            if (!MiscUtil.isValid(MediaSortDateHelper.getSortDateProvider().getAlbumIdsBySortDate(SortDate.MODIFY_TIME))) {
                return "mixedDateTime";
            }
            return String.format(Locale.US, "(case when %s in (%s) then %s else %s end)", new Object[]{"localGroupId", TextUtils.join(",", MediaSortDateHelper.getSortDateProvider().getAlbumIdsBySortDate(SortDate.MODIFY_TIME)), "dateModified", "mixedDateTime"});
        }
    }

    private static class SingletonHolder {
        static final MediaManager INSTANCE = new MediaManager();
    }

    private MediaManager() {
        this.mIsLoadStarted = false;
        this.mIsFullLoadDone = false;
        this.mMinimumLoadLock = new Object();
        this.mIsMinimumLoadDone = false;
        this.mInitialized = false;
        this.mFullLoadDoneSignal = new CountDownLatch(1);
        this.mInitializeListeners = new ArrayList();
        this.mAlbumDelegate = new AlbumDelegate();
        this.mFavoritesDelegate = new FavoritesDelegate();
        this.mCache = new LinkedList();
        this.mGenerator = new Generator(this.mAlbumDelegate, this.mFavoritesDelegate);
        this.mQueryFactory = new QueryFactory();
    }

    public static MediaManager getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public synchronized void load(SQLiteOpenHelper helper) {
        if (!(this.mIsLoadStarted || this.mIsFullLoadDone)) {
            this.mIsLoadStarted = true;
            new Thread(new InitializeTask(helper)).start();
        }
    }

    public int insert(SQLiteDatabase db, String selection, String[] args) {
        SQLiteDatabase sQLiteDatabase = db;
        Cursor cursor = sQLiteDatabase.query("cloud", this.mGenerator.getProjection(), String.format("%s AND (%s)", new Object[]{"(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND serverType IN (1,2)", selection}), args, null, null, null, null);
        int count = 0;
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    MediaItem item = (MediaItem) this.mGenerator.from(cursor);
                    synchronized (this.mModifyLock) {
                        this.mCache.add(item);
                    }
                    count++;
                } catch (Throwable th) {
                    cursor.close();
                }
            }
            cursor.close();
        }
        return count;
    }

    public long insert(long id, ContentValues values) {
        if (isItemDeleted(values)) {
            return 0;
        }
        return super.insert(id, values);
    }

    protected ContentValues filterLogInfo(ContentValues values) {
        if (values == null) {
            return null;
        }
        ContentValues filterValues = new ContentValues(values);
        filterValues.remove("location");
        filterValues.remove("extraGPS");
        filterValues.remove("address");
        filterValues.remove("exifGPSLatitude");
        filterValues.remove("exifGPSLongitude");
        filterValues.remove("exifGPSAltitude");
        return filterValues;
    }

    public int update(String selection, String[] args, ContentValues values) {
        if (isItemDeleted(values)) {
            delete(selection, args);
        }
        return super.update(selection, args, values);
    }

    public boolean isItemDeleted(ContentValues values) {
        Integer localFlag = values.getAsInteger("localFlag");
        if (localFlag == null || !(localFlag.intValue() == 11 || localFlag.intValue() == 2)) {
            if (values.containsKey("serverStatus")) {
                String status = values.getAsString("serverStatus");
                if ("deleted".equals(status) || "purged".equals(status)) {
                    Log.d(".provider.cache.MediaManager", "find a deleted server type");
                    return true;
                }
            }
            return false;
        }
        Log.d(".provider.cache.MediaManager", "find a deleted local flag");
        return true;
    }

    protected Cursor onCreateCursor(String[] projection, List<MediaItem> result, String selection, String orderBy, Bundle options) {
        AbstractCursor cursor = new RawCursor(result, projection, this.mQueryFactory.getMapper());
        if (options != null && options.getBoolean("extra_generate_header")) {
            Log.d(".provider.cache.MediaManager", "caller need a header data, start generate for %d", Integer.valueOf(result.size()));
            int spacePos = orderBy.indexOf(32);
            if (spacePos <= 0) {
                spacePos = orderBy.length();
            }
            String identifier = orderBy.substring(0, spacePos);
            int orderByColumnIndex = this.mQueryFactory.getMapper().getIndex(identifier);
            if (orderByColumnIndex < 0) {
                throw new IllegalArgumentException(identifier + " not found");
            }
            orderByColumnIndex = transformOrderByColumnIndex(orderByColumnIndex);
            long start = System.currentTimeMillis();
            ArrayList<Integer> counts = new ArrayList();
            ArrayList<Integer> startPos = new ArrayList();
            ArrayList<String> locations = new ArrayList();
            List locationTemp = new ArrayList();
            MediaItem last = null;
            Integer count = Integer.valueOf(1);
            int index = 0;
            for (MediaItem item : result) {
                if (last == null) {
                    last = item;
                    startPos.add(Integer.valueOf(index));
                    locationTemp.add(item.getLocation());
                } else if (item.columnEquals(last, orderByColumnIndex)) {
                    count = Integer.valueOf(count.intValue() + 1);
                    locationTemp.add(item.getLocation());
                } else {
                    counts.add(count);
                    count = Integer.valueOf(1);
                    locations.add(LocationManager.getInstance().generateTitleLine(locationTemp));
                    locationTemp.clear();
                    locationTemp.add(item.getLocation());
                    last = item;
                    startPos.add(Integer.valueOf(index));
                }
                index++;
                if (index == result.size()) {
                    counts.add(count);
                    locations.add(LocationManager.getInstance().generateTitleLine(locationTemp));
                }
            }
            Log.d(".provider.cache.MediaManager", "header generated");
            Bundle extras = new Bundle();
            extras.putIntegerArrayList("extra_timeline_item_count_in_group", counts);
            extras.putIntegerArrayList("extra_timeline_group_start_pos", startPos);
            extras.putStringArrayList("extra_timeline_group_start_locations", locations);
            cursor.setExtras(extras);
            Log.d(".provider.cache.MediaManager", "generate cursor cost: %dms", Long.valueOf(System.currentTimeMillis() - start));
        }
        return cursor;
    }

    private int transformOrderByColumnIndex(int orderByColumnIndex) {
        switch (orderByColumnIndex) {
            case 18:
                return 19;
            case 30:
                return 31;
            case 36:
                return 37;
            default:
                return orderByColumnIndex;
        }
    }

    public void updateAttributes(long albumId, long attributeBit, boolean set, boolean manual) {
        Log.d(".provider.cache.MediaManager", "updating attributesBit[%d] for album[%d] to %s", Long.valueOf(attributeBit), Long.valueOf(albumId), Boolean.valueOf(set));
        long attributes = this.mAlbumDelegate.queryAttributes(albumId).longValue();
        this.mAlbumDelegate.update(albumId, ((-1 ^ AlbumManager.packageAttributeBit(attributeBit, true, true)) & attributes) | AlbumManager.packageAttributeBit(attributeBit, set, manual));
    }

    public void updateAttributes(long albumId, long attributes) {
        Log.d(".provider.cache.MediaManager", "update album[%d]'s attributes to %d", Long.valueOf(albumId), Long.valueOf(attributes));
        this.mAlbumDelegate.update(albumId, attributes);
    }

    public void insertAttributes(long albumId, long attributes) {
        Log.d(".provider.cache.MediaManager", "insert attributes[%d] for album[%d]", Long.valueOf(attributes), Long.valueOf(albumId));
        this.mAlbumDelegate.insert(albumId, attributes);
    }

    public void deleteAttributes(long albumId) {
        this.mAlbumDelegate.delete(albumId);
    }

    public void insertToFavorites(String sha1) {
        this.mFavoritesDelegate.insertToFavorites(sha1);
    }

    public void removeFromFavorites(String sha1) {
        this.mFavoritesDelegate.removeFromFavorites(sha1);
    }

    public boolean initialized() {
        if (this.mIsFullLoadDone) {
            return this.mInitialized;
        }
        Log.d(".provider.cache.MediaManager", "not initialized, waiting lock from: %s", TextUtils.join("\n\t", Thread.currentThread().getStackTrace()));
        long start = System.currentTimeMillis();
        try {
            this.mFullLoadDoneSignal.await();
            Log.d(".provider.cache.MediaManager", "wait full load done costs %d ms", Long.valueOf(System.currentTimeMillis() - start));
        } catch (Throwable e) {
            Log.e(".provider.cache.MediaManager", e);
        }
        Log.d(".provider.cache.MediaManager", "initialization finished: %b", Boolean.valueOf(this.mInitialized));
        return this.mInitialized;
    }

    public void ensureMinimumPartDone() {
        if (!this.mIsMinimumLoadDone) {
            long start = System.currentTimeMillis();
            synchronized (this.mMinimumLoadLock) {
                if (!this.mIsMinimumLoadDone) {
                    try {
                        this.mMinimumLoadLock.wait();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            Log.d(".provider.cache.MediaManager", "wait for minimum part loading cost : %dms ", Long.valueOf(System.currentTimeMillis() - start));
        }
    }

    public void addInitializeListener(InitializeListener initializeListener) {
        if (this.mIsFullLoadDone) {
            Log.d(".provider.cache.MediaManager", "no need to add listener after full load done!");
            return;
        }
        synchronized (this.mInitializeListeners) {
            this.mInitializeListeners.add(initializeListener);
        }
    }
}
