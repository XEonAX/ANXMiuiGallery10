package com.miui.gallery.collage;

import android.content.res.AssetManager;
import android.os.AsyncTask;
import android.util.SparseArray;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StorageUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CollageResourcesManager {
    public static final String PATH_LAYOUT = ("collage" + SEPARATOR + "layout");
    private static final String PATH_POSTER = ("collage" + SEPARATOR + "poster");
    public static final String PATH_POSTER_LAYOUT = (PATH_POSTER + SEPARATOR + "layout");
    public static final String PATH_POSTER_MODE = (PATH_POSTER + SEPARATOR + "mode");
    private static final String SEPARATOR = File.separator;
    private SparseArray<List<LayoutModel>> mLayoutSparseArray = new SparseArray();
    private SparseArray<List<LayoutModel>> mPosterLayoutSparseArray = new SparseArray();
    private SparseArray<List<PosterModel>> mPosterSparseArray = new SparseArray();
    private ResourcesUpdateListener mResourcesUpdateListener;

    interface ResourcesUpdateListener {
        void onResourcesUpdate();
    }

    private class LoadLocalResTask extends AsyncTask<AssetManager, Void, Void> {
        private LoadLocalResTask() {
        }

        protected Void doInBackground(AssetManager... params) {
            Gson gson = CollageUtils.generateCustomGson();
            AssetManager assetManager = params[0];
            try {
                JsonParser jsonParser = new JsonParser();
                for (String name : assetManager.list(CollageResourcesManager.PATH_LAYOUT)) {
                    CollageResourcesManager.this.addLayoutModel(CollageResourcesManager.this.mLayoutSparseArray, CollageResourcesManager.generateLayoutModelByName(assetManager, gson, jsonParser, name));
                }
                for (String name2 : assetManager.list(CollageResourcesManager.PATH_POSTER_LAYOUT)) {
                    CollageResourcesManager.this.addLayoutModel(CollageResourcesManager.this.mPosterLayoutSparseArray, CollageResourcesManager.generatePosterLayoutModelByName(assetManager, gson, jsonParser, name2));
                }
                for (String name22 : assetManager.list(CollageResourcesManager.PATH_POSTER_MODE)) {
                    long a = System.currentTimeMillis();
                    CollageResourcesManager.this.addPosterModel(CollageResourcesManager.this.mPosterSparseArray, CollageResourcesManager.generatePosterModelByName(assetManager, gson, jsonParser, name22));
                    Log.d("CollageResourcesManager", "gson parse posterModel %s coast %d", name22, Long.valueOf(System.currentTimeMillis() - a));
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            return null;
        }

        protected void onPostExecute(Void v) {
            if (CollageResourcesManager.this.mResourcesUpdateListener != null) {
                CollageResourcesManager.this.mResourcesUpdateListener.onResourcesUpdate();
            }
        }
    }

    void loadLocalResAsync(AssetManager assetManager) {
        new LoadLocalResTask().execute(new AssetManager[]{assetManager});
    }

    public static LayoutModel generateLayoutModelByName(AssetManager assetManager, Gson gson, JsonParser jsonParser, String name) {
        JsonElement jsonObject = jsonParser.parse(CollageUtils.loadResourceFileString(assetManager, PATH_LAYOUT + SEPARATOR + name)).getAsJsonObject();
        jsonObject.addProperty("name", name);
        return (LayoutModel) gson.fromJson(jsonObject, LayoutModel.class);
    }

    public static LayoutModel generatePosterLayoutModelByName(AssetManager assetManager, Gson gson, JsonParser jsonParser, String name) {
        JsonElement jsonObject = jsonParser.parse(CollageUtils.loadResourceFileString(assetManager, PATH_POSTER_LAYOUT + SEPARATOR + name)).getAsJsonObject();
        jsonObject.addProperty("name", name);
        return (LayoutModel) gson.fromJson(jsonObject, LayoutModel.class);
    }

    public static PosterModel generatePosterModelByName(AssetManager assetManager, Gson gson, JsonParser jsonParser, String name) {
        String relativePath = PATH_POSTER_MODE + SEPARATOR + name;
        JsonElement jsonObject = jsonParser.parse(CollageUtils.loadResourceFileString(assetManager, relativePath + SEPARATOR + "main.json")).getAsJsonObject();
        jsonObject.addProperty("relativePath", relativePath);
        jsonObject.addProperty("name", name);
        JsonElement imageElement = jsonObject.get("imageElementModels");
        if (imageElement != null) {
            Iterator it = imageElement.getAsJsonArray().iterator();
            while (it.hasNext()) {
                ((JsonElement) it.next()).getAsJsonObject().addProperty("relativePath", relativePath);
            }
        }
        return (PosterModel) gson.fromJson(jsonObject, PosterModel.class);
    }

    private void addLayoutModel(SparseArray<List<LayoutModel>> sparseArray, LayoutModel layoutModel) {
        int size = layoutModel.size;
        List<LayoutModel> layoutModelList = (List) sparseArray.get(size);
        if (layoutModelList == null) {
            layoutModelList = new ArrayList();
            sparseArray.put(size, layoutModelList);
        }
        layoutModelList.add(layoutModel);
    }

    private void addPosterModel(SparseArray<List<PosterModel>> sparseArray, PosterModel posterModel) {
        for (int size : posterModel.collageModels) {
            int size2 = size2 / 10;
            List<PosterModel> posterModelList = (List) sparseArray.get(size2);
            if (posterModelList == null) {
                posterModelList = new ArrayList();
                sparseArray.put(size2, posterModelList);
            }
            posterModelList.add(posterModel);
        }
    }

    List<LayoutModel> getLayoutListBySize(int size) {
        return (List) this.mLayoutSparseArray.get(size);
    }

    List<PosterModel> getPosterListBySize(int size) {
        return (List) this.mPosterSparseArray.get(size);
    }

    LayoutModel getPosterCollageLayout(PosterModel posterModel, int size) {
        int layoutIndex = getPosterLayoutIndex(posterModel, size);
        if (layoutIndex != -1) {
            return (LayoutModel) ((List) this.mPosterLayoutSparseArray.get(size)).get(layoutIndex);
        }
        return null;
    }

    public static int getPosterLayoutIndex(PosterModel posterModel, int size) {
        for (int index : posterModel.collageModels) {
            if (index / 10 == size) {
                return index % 10;
            }
        }
        return -1;
    }

    public static String getCreativePath() {
        return StorageUtils.getCreativeDirectory();
    }

    void setResourcesUpdateListener(ResourcesUpdateListener resourcesUpdateListener) {
        this.mResourcesUpdateListener = resourcesUpdateListener;
    }
}
