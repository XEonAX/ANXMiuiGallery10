package com.miui.gallery.editor.photo.core.imports.sticker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.LongSparseArray;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.editor.photo.core.SdkManager;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.common.model.StickerCategory;
import com.miui.gallery.editor.photo.core.common.model.StickerData;
import com.miui.gallery.editor.photo.core.common.provider.AbstractStickerProvider;
import com.miui.gallery.editor.photo.core.imports.obsoletes.ZipUtils;
import com.miui.gallery.editor.photo.utils.IoUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.settings.Settings;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Deque;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class StickerProvider extends AbstractStickerProvider {
    static final StickerProvider INSTANCE = new StickerProvider();
    private Map<StickerItem, WeakReference<Bitmap>> mCache = new ArrayMap();
    private LongSparseArray<CategoryData> mCategories = new LongSparseArray();
    private Deque<StickerItem> mHistory = new LinkedList();
    private File mIndexFile;
    private File mRecentFile;

    private static class InitializeException extends Exception {
        InitializeException(String detailMessage) {
            super(detailMessage);
        }

        InitializeException(String detailMessage, Throwable throwable) {
            super(detailMessage, throwable);
        }
    }

    private class InstallTask extends AsyncTask<Void, Void, Boolean> {
        private InstallTask() {
        }

        protected Boolean doInBackground(Void... params) {
            return Boolean.valueOf(StickerProvider.this.doInstall());
        }

        protected void onPostExecute(Boolean aBoolean) {
            super.onPostExecute(aBoolean);
            Log.d("StickerProvider", "stickers installed: %d categories", Integer.valueOf(StickerProvider.this.mCategories.size()));
            StickerProvider.this.notifyInitializeFinish();
        }
    }

    static {
        SdkManager.INSTANCE.register(INSTANCE);
    }

    protected StickerProvider() {
        super(Effect.STICKER);
    }

    protected void onActivityCreate() {
        super.onActivityCreate();
        Log.d("StickerProvider", "perform application creating, install stickers");
        this.mIndexFile = new File(getApplicationContext().getFilesDir(), "photo_editor/stickers/package.json");
        this.mRecentFile = new File(getApplicationContext().getFilesDir(), "photo_editor/stickers/recent.json");
        install();
    }

    public void install() {
        new InstallTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    private boolean doInstall() {
        Throwable e;
        Throwable th;
        File zipFile = null;
        try {
            JSONObject pkgObject;
            boolean needUnzipData;
            JSONObject jSONObject;
            if (this.mIndexFile.exists()) {
                pkgObject = new JSONObject(loadPackageInfo());
                try {
                    needUnzipData = !checkResourceVersion(pkgObject);
                } catch (InitializeException e2) {
                    e = e2;
                    jSONObject = pkgObject;
                    try {
                        Log.w("StickerProvider", e);
                        deleteIndexFile();
                        if (!(zipFile == null || !zipFile.exists() || zipFile.delete())) {
                            Log.w("StickerProvider", "delete zip file failed");
                        }
                        return false;
                    } catch (Throwable th2) {
                        th = th2;
                        Log.w("StickerProvider", "delete zip file failed");
                        throw th;
                    }
                } catch (JSONException e3) {
                    e = e3;
                    jSONObject = pkgObject;
                    Log.w("StickerProvider", e);
                    deleteIndexFile();
                    if (!(zipFile == null || !zipFile.exists() || zipFile.delete())) {
                        Log.w("StickerProvider", "delete zip file failed");
                    }
                    return false;
                } catch (Throwable th3) {
                    th = th3;
                    jSONObject = pkgObject;
                    if (!(zipFile == null || !zipFile.exists() || zipFile.delete())) {
                        Log.w("StickerProvider", "delete zip file failed");
                    }
                    throw th;
                }
            }
            Log.d("StickerProvider", "index file not exist");
            needUnzipData = true;
            pkgObject = null;
            if (needUnzipData) {
                File zipFile2 = new File(getApplicationContext().getCacheDir(), "stickers.zip");
                try {
                    releaseZip(zipFile2);
                    unzipData(zipFile2);
                    if (this.mRecentFile.exists() && !this.mRecentFile.delete()) {
                        Log.d("StickerProvider", "delete recent stickers failed");
                    }
                    jSONObject = new JSONObject(loadPackageInfo());
                    zipFile = zipFile2;
                } catch (InitializeException e4) {
                    e = e4;
                    jSONObject = pkgObject;
                    zipFile = zipFile2;
                    Log.w("StickerProvider", e);
                    deleteIndexFile();
                    Log.w("StickerProvider", "delete zip file failed");
                    return false;
                } catch (JSONException e5) {
                    e = e5;
                    jSONObject = pkgObject;
                    zipFile = zipFile2;
                    Log.w("StickerProvider", e);
                    deleteIndexFile();
                    Log.w("StickerProvider", "delete zip file failed");
                    return false;
                } catch (Throwable th4) {
                    th = th4;
                    jSONObject = pkgObject;
                    zipFile = zipFile2;
                    Log.w("StickerProvider", "delete zip file failed");
                    throw th;
                }
            }
            jSONObject = pkgObject;
            long begin = System.currentTimeMillis();
            loadData(jSONObject);
            readRecentFromFile();
            Log.d("StickerProvider", "load package info costs %dms", Long.valueOf(System.currentTimeMillis() - begin));
            if (zipFile == null || !zipFile.exists() || zipFile.delete()) {
                return true;
            }
            Log.w("StickerProvider", "delete zip file failed");
            return true;
        } catch (InitializeException e6) {
            e = e6;
            Log.w("StickerProvider", e);
            deleteIndexFile();
            Log.w("StickerProvider", "delete zip file failed");
            return false;
        } catch (JSONException e7) {
            e = e7;
            Log.w("StickerProvider", e);
            deleteIndexFile();
            Log.w("StickerProvider", "delete zip file failed");
            return false;
        }
    }

    private boolean checkResourceVersion(JSONObject resourceObject) {
        boolean checkResult = false;
        try {
            checkResult = resourceObject.getInt("version") == 4;
        } catch (Throwable e) {
            Log.w("StickerProvider", e);
        }
        if (!checkResult) {
            if (new File(getApplicationContext().getFilesDir(), "photo_editor/stickers/").exists()) {
                MediaFileUtils.deleteFileType(FileType.NORMAL, new File(getApplicationContext().getFilesDir(), "photo_editor/stickers/"));
            }
        }
        return checkResult;
    }

    private void deleteIndexFile() {
        if (!this.mIndexFile.exists()) {
            Log.d("StickerProvider", "index file not found");
        } else if (!this.mIndexFile.delete()) {
            Log.d("StickerProvider", "delete index file failed");
        }
    }

    private void releaseZip(File dst) throws InitializeException {
        Throwable th;
        InputStream in = null;
        OutputStream out = null;
        try {
            in = getApplicationContext().getAssets().open("stickers.zip");
            OutputStream out2 = new FileOutputStream(dst);
            try {
                byte[] buf = new byte[4096];
                while (true) {
                    int size = in.read(buf);
                    if (size != -1) {
                        out2.write(buf, 0, size);
                    } else {
                        out2.flush();
                        IoUtils.close("StickerProvider", in);
                        IoUtils.close("StickerProvider", out2);
                        return;
                    }
                }
            } catch (IOException e) {
                throw new InitializeException("release failed during release zip file", e);
            } catch (Throwable th2) {
                th = th2;
                out = out2;
                IoUtils.close("StickerProvider", in);
                IoUtils.close("StickerProvider", out);
                throw th;
            }
        } catch (FileNotFoundException e2) {
            throw new InitializeException("release assets's zip file failed", e2);
        } catch (IOException e3) {
            throw new InitializeException("missing assets file", e3);
        } catch (Throwable th3) {
            th = th3;
            IoUtils.close("StickerProvider", in);
            IoUtils.close("StickerProvider", out);
            throw th;
        }
    }

    private void unzipData(File src) throws InitializeException {
        long start = System.currentTimeMillis();
        if (src.exists()) {
            File dst = new File(getApplicationContext().getFilesDir(), "photo_editor/stickers/");
            if (dst.exists()) {
                MediaFileUtils.deleteFileType(FileType.NORMAL, dst);
            }
            if (dst.exists()) {
                Log.w("StickerProvider", "delete folder failed");
            } else if (!dst.mkdirs()) {
                throw new InitializeException("create folder stickers/ failed");
            }
            try {
                ZipUtils.unzip(src, dst);
                Log.d("StickerProvider", "unzip files finish, costs %dms", Long.valueOf(System.currentTimeMillis() - start));
                return;
            } catch (IOException e) {
                throw new InitializeException("copy directory failed", e);
            }
        }
        throw new InitializeException("resource missing");
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0029 A:{SYNTHETIC, Splitter: B:17:0x0029} */
    private java.lang.String loadPackageInfo() throws com.miui.gallery.editor.photo.core.imports.sticker.StickerProvider.InitializeException {
        /*
        r8 = this;
        r4 = 0;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r5 = new java.io.FileReader;	 Catch:{ FileNotFoundException -> 0x005b, IOException -> 0x0045 }
        r6 = r8.mIndexFile;	 Catch:{ FileNotFoundException -> 0x005b, IOException -> 0x0045 }
        r5.<init>(r6);	 Catch:{ FileNotFoundException -> 0x005b, IOException -> 0x0045 }
        r6 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r0 = new char[r6];	 Catch:{ FileNotFoundException -> 0x001c, IOException -> 0x0058, all -> 0x0055 }
    L_0x0011:
        r6 = r5.read(r0);	 Catch:{ FileNotFoundException -> 0x001c, IOException -> 0x0058, all -> 0x0055 }
        r7 = -1;
        if (r6 == r7) goto L_0x002d;
    L_0x0018:
        r1.append(r0);	 Catch:{ FileNotFoundException -> 0x001c, IOException -> 0x0058, all -> 0x0055 }
        goto L_0x0011;
    L_0x001c:
        r2 = move-exception;
        r4 = r5;
    L_0x001e:
        r6 = new com.miui.gallery.editor.photo.core.imports.sticker.StickerProvider$InitializeException;	 Catch:{ all -> 0x0026 }
        r7 = "index file is not found";
        r6.<init>(r7);	 Catch:{ all -> 0x0026 }
        throw r6;	 Catch:{ all -> 0x0026 }
    L_0x0026:
        r6 = move-exception;
    L_0x0027:
        if (r4 == 0) goto L_0x002c;
    L_0x0029:
        r4.close();	 Catch:{ IOException -> 0x004e }
    L_0x002c:
        throw r6;
    L_0x002d:
        r3 = r1.toString();	 Catch:{ FileNotFoundException -> 0x001c, IOException -> 0x0058, all -> 0x0055 }
        r6 = "StickerProvider";
        r7 = "load pkg info finished";
        com.miui.gallery.util.Log.d(r6, r7);	 Catch:{ FileNotFoundException -> 0x001c, IOException -> 0x0058, all -> 0x0055 }
        if (r5 == 0) goto L_0x003d;
    L_0x003a:
        r5.close();	 Catch:{ IOException -> 0x003e }
    L_0x003d:
        return r3;
    L_0x003e:
        r2 = move-exception;
        r6 = "StickerProvider";
        com.miui.gallery.util.Log.w(r6, r2);
        goto L_0x003d;
    L_0x0045:
        r2 = move-exception;
    L_0x0046:
        r6 = new com.miui.gallery.editor.photo.core.imports.sticker.StickerProvider$InitializeException;	 Catch:{ all -> 0x0026 }
        r7 = "read index file failed";
        r6.<init>(r7, r2);	 Catch:{ all -> 0x0026 }
        throw r6;	 Catch:{ all -> 0x0026 }
    L_0x004e:
        r2 = move-exception;
        r7 = "StickerProvider";
        com.miui.gallery.util.Log.w(r7, r2);
        goto L_0x002c;
    L_0x0055:
        r6 = move-exception;
        r4 = r5;
        goto L_0x0027;
    L_0x0058:
        r2 = move-exception;
        r4 = r5;
        goto L_0x0046;
    L_0x005b:
        r2 = move-exception;
        goto L_0x001e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.editor.photo.core.imports.sticker.StickerProvider.loadPackageInfo():java.lang.String");
    }

    private void loadData(JSONObject json) throws InitializeException {
        try {
            JSONArray categories = json.getJSONArray("categories");
            String deviceRegion = Settings.getRegion();
            int stringHeaderLength = "@string/".length();
            Resources resources = getApplicationContext().getResources();
            for (int i = 0; i < categories.length(); i++) {
                JSONObject cateObj = categories.getJSONObject(i);
                String region = cateObj.optString("region");
                if (TextUtils.isEmpty(region) || region.equalsIgnoreCase(deviceRegion)) {
                    String cateName = cateObj.getString("name");
                    if (cateName.startsWith("@string/")) {
                        cateName = cateName.substring(stringHeaderLength);
                        int catId = cateObj.getInt("id");
                        if (resources.getIdentifier(cateName, "string", "com.miui.gallery") == 0) {
                            Log.e("StickerProvider", "not valid category name string resource:" + cateName);
                        } else {
                            JSONArray items = cateObj.getJSONArray("items");
                            List<StickerData> itemList = new ArrayList();
                            for (int j = 0; j < items.length(); j++) {
                                JSONObject stickerObj = items.getJSONObject(j);
                                int stickerId = stickerObj.getInt("id");
                                String main = stickerObj.getString("main");
                                if (Uri.parse(main).isRelative()) {
                                    File file = new File(this.mIndexFile.getParentFile(), main);
                                    if (file.exists()) {
                                        main = file.getPath();
                                    } else {
                                        throw new InitializeException(String.format("main url is not found %s", new Object[]{main}));
                                    }
                                }
                                itemList.add(new StickerItem((short) 0, null, (long) stickerId, main, main, cateName));
                            }
                            this.mCategories.put((long) catId, new CategoryData(catId, (short) -1, cateName, itemList));
                        }
                    } else {
                        Log.e("StickerProvider", "not string type category name: " + cateName);
                    }
                }
            }
        } catch (Throwable e) {
            throw new InitializeException("package info missing", e);
        }
    }

    public List<StickerCategory> list() {
        List<StickerCategory> categories = new ArrayList(this.mCategories.size());
        for (int i = 0; i < this.mCategories.size(); i++) {
            categories.add(this.mCategories.valueAt(i));
        }
        return categories;
    }

    public AbstractEffectFragment onCreateFragment() {
        return new StickerFragment();
    }

    public RenderEngine createEngine(Context context) {
        return new StickerEngine();
    }

    public List<StickerData> list(long categoryId) {
        return ((CategoryData) this.mCategories.get(categoryId)).stickerList;
    }

    public List<StickerData> recent() {
        return new ArrayList(this.mHistory);
    }

    void touch(StickerItem data) {
        if (this.mHistory.contains(data)) {
            this.mHistory.remove(data);
        }
        this.mHistory.push(data);
    }

    void writeRecentToFile() {
        if (!this.mHistory.isEmpty()) {
            long start = System.currentTimeMillis();
            Writer out = IoUtils.openWriter(this.mRecentFile);
            if (out == null) {
                Log.w("StickerProvider", "open recent file failed.");
            }
            JSONArray array = new JSONArray();
            int count = 0;
            for (StickerItem item : this.mHistory) {
                JSONObject json = StickerItem.toJson(item);
                if (json == null) {
                    Log.w("StickerProvider", "jsonfy failed");
                } else {
                    array.put(json);
                    count++;
                }
                if (count >= 10) {
                    break;
                }
            }
            Log.d("StickerProvider", "write %d recent items to file", Integer.valueOf(count));
            try {
                out.write(array.toString());
            } catch (Throwable e) {
                Log.w("StickerProvider", e);
            } finally {
                IoUtils.close("StickerProvider", out);
            }
            Log.d("StickerProvider", "write to file costs %dms", Long.valueOf(System.currentTimeMillis() - start));
        }
    }

    Bitmap fromCache(StickerItem data) {
        Reference<Bitmap> ref = (Reference) this.mCache.get(data);
        return ref == null ? null : (Bitmap) ref.get();
    }

    void putToCache(StickerItem data, Bitmap bitmap) {
        this.mCache.put(data, new WeakReference(bitmap));
    }

    private void readRecentFromFile() {
        Reader in = IoUtils.openReader(this.mRecentFile);
        if (in != null) {
            try {
                char[] buff = new char[128];
                StringBuilder builder = new StringBuilder();
                while (true) {
                    int count = in.read(buff);
                    if (count == -1) {
                        break;
                    }
                    builder.append(buff, 0, count);
                }
                fillRecent(new JSONArray(builder.toString()));
            } catch (Throwable e) {
                Log.w("StickerProvider", e);
            } catch (Throwable e2) {
                Log.w("StickerProvider", e2);
            } finally {
                IoUtils.close("StickerProvider", in);
            }
        }
    }

    private void fillRecent(JSONArray array) {
        for (int i = 0; i < array.length(); i++) {
            try {
                this.mHistory.add(StickerItem.fromJson(array.getJSONObject(i)));
            } catch (Throwable e) {
                Log.w("StickerProvider", e);
            }
        }
        Log.d("StickerProvider", "read %d recent items from file", Integer.valueOf(this.mHistory.size()));
    }
}
