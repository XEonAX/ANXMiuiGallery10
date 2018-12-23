package com.miui.extraphoto.refocus;

import android.content.res.AssetManager;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.miui.extraphoto.refocus.effect.RefocusEffect;
import com.miui.extraphoto.refocus.effect.RefocusEffectBasic;
import com.miui.extraphoto.refocus.effect.RefocusEffectCircle;
import com.miui.extraphoto.refocus.effect.RefocusEffectMotion;
import com.miui.extraphoto.refocus.effect.RefocusEffectMotionRandom;
import com.miui.extraphoto.refocus.effect.RefocusEffectMotionRing;
import com.miui.extraphoto.refocus.effect.RefocusEffectStar;
import com.miui.extraphoto.refocus.effect.RefocusEffectType;
import com.miui.extraphoto.refocus.effect.RelightingEffect;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

class RefocusEffectManager {
    private static final String FILE_NAME_CONFIG = "config.json";
    private static final String PATH_DYNAMIC;
    private static final String PATH_RELIGHTING;
    private static final String PATH_ROOT = "refocus";
    private static final String PATH_STATIC;
    public static final String PATH_STATIC_MASK;
    public static final String RELIGHTING_TYPE_NATURE = "0x3";
    private static final String SEPARATOR = File.separator;
    private final List<RefocusEffectConfig> mEffectConfigs = new ArrayList();
    private final List<RefocusEffectConfig> mRelightingConfigs = new ArrayList();
    private RefocusEffectConfig mStaticConfig;

    interface EffectLoadListener {
        void onEffectLoad(List<RefocusEffectConfig> list, List<RefocusEffectConfig> list2, RefocusEffectConfig refocusEffectConfig);
    }

    private class LoadEffectTask extends AsyncTask<AssetManager, Void, List<RefocusEffectConfig>> {
        private EffectLoadListener mEffectLoadListener;
        private List<RefocusEffectConfig> mRefocusEffectConfigs;
        private List<RefocusEffectConfig> mRelightingEffectConfigs;

        private LoadEffectTask(EffectLoadListener effectLoadListener) {
            this.mEffectLoadListener = effectLoadListener;
        }

        protected List<RefocusEffectConfig> doInBackground(AssetManager... params) {
            int i = 0;
            AssetManager assetManager = params[0];
            this.mRefocusEffectConfigs = new ArrayList();
            this.mRelightingEffectConfigs = new ArrayList();
            try {
                String[] refocusItemPath = assetManager.list(RefocusEffectManager.PATH_DYNAMIC);
                String[] relightingItemPath = assetManager.list(RefocusEffectManager.PATH_RELIGHTING);
                Gson gson = new Gson();
                JsonParser jsonParser = new JsonParser();
                for (String folderName : refocusItemPath) {
                    JsonObject jsonObject = jsonParser.parse(RefocusIOUtils.loadResourceFileString(assetManager, RefocusEffectManager.getConfigPath(folderName))).getAsJsonObject();
                    jsonObject.addProperty("relativePath", RefocusEffectManager.getRelativePath(folderName));
                    this.mRefocusEffectConfigs.add((RefocusEffectConfig) gson.fromJson(jsonObject, RefocusEffectConfig.class));
                }
                while (i < relightingItemPath.length) {
                    String folderName2 = relightingItemPath[i];
                    JsonObject jsonObject2 = jsonParser.parse(RefocusIOUtils.loadResourceFileString(assetManager, RefocusEffectManager.getRelightingConfigPath(folderName2))).getAsJsonObject();
                    jsonObject2.addProperty("relativePath", RefocusEffectManager.getRelightingRelativePath(folderName2));
                    this.mRelightingEffectConfigs.add((RefocusEffectConfig) gson.fromJson(jsonObject2, RefocusEffectConfig.class));
                    i++;
                }
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(RefocusEffectManager.PATH_STATIC);
                stringBuilder.append(RefocusEffectManager.SEPARATOR);
                stringBuilder.append(RefocusEffectManager.FILE_NAME_CONFIG);
                JsonObject jsonObject3 = jsonParser.parse(RefocusIOUtils.loadResourceFileString(assetManager, stringBuilder.toString())).getAsJsonObject();
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(RefocusEffectManager.PATH_STATIC);
                stringBuilder2.append(RefocusEffectManager.SEPARATOR);
                jsonObject3.addProperty("relativePath", stringBuilder2.toString());
                RefocusEffectManager.this.mStaticConfig = (RefocusEffectConfig) gson.fromJson(jsonObject3, RefocusEffectConfig.class);
            } catch (IOException e) {
                e.printStackTrace();
            }
            return null;
        }

        protected void onPostExecute(List<RefocusEffectConfig> list) {
            RefocusEffectManager.this.mEffectConfigs.clear();
            RefocusEffectManager.this.mEffectConfigs.addAll(this.mRefocusEffectConfigs);
            RefocusEffectManager.this.mRelightingConfigs.clear();
            RefocusEffectManager.this.mRelightingConfigs.addAll(this.mRelightingEffectConfigs);
            if (this.mEffectLoadListener != null) {
                this.mEffectLoadListener.onEffectLoad(RefocusEffectManager.this.mEffectConfigs, RefocusEffectManager.this.mRelightingConfigs, RefocusEffectManager.this.mStaticConfig);
            }
        }
    }

    public static class RefocusEffectConfig {
        public final int cameraDefinedType;
        public final int degree;
        public final String icon;
        public final String iconColor;
        public final float interpolatorFactor;
        public final String mask;
        public final float motionScale;
        public final String name;
        public final String relativePath;
        public final String relightingType;
        public final int totalSecond;
        public final RefocusEffectType type;

        public RefocusEffectConfig(String name, String relativePath, String icon, String mask, RefocusEffectType type, int totalSecond, int degree, float motionScale, float interpolatorFactor, String iconColor, String relightingType, int cameraDefinedType) {
            this.name = name;
            this.relativePath = relativePath;
            this.icon = icon;
            this.mask = mask;
            this.type = type;
            this.totalSecond = totalSecond;
            this.degree = degree;
            this.motionScale = motionScale;
            this.interpolatorFactor = interpolatorFactor;
            this.iconColor = iconColor;
            this.relightingType = relightingType;
            this.cameraDefinedType = cameraDefinedType;
        }

        public String getIconPath() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.relativePath);
            stringBuilder.append(this.icon);
            return stringBuilder.toString();
        }

        public RefocusEffect generateEffect() {
            String str = null;
            StringBuilder stringBuilder;
            switch (this.type) {
                case NONE:
                    return null;
                case RANDOM:
                    return new RefocusEffectMotionRandom(this.name, this.type, this.totalSecond);
                case MOTION:
                    return new RefocusEffectMotion(this.name, this.type, this.totalSecond, this.degree);
                case MOTION_RING:
                    return new RefocusEffectMotionRing(this.name, this.type, this.totalSecond, this.motionScale, this.interpolatorFactor);
                case CIRCLE:
                    if (!TextUtils.isEmpty(this.mask)) {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append(this.relativePath);
                        stringBuilder.append(this.mask);
                        str = stringBuilder.toString();
                    }
                    return new RefocusEffectCircle(this.name, this.type, this.totalSecond, str);
                case STAR:
                    if (!TextUtils.isEmpty(this.mask)) {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append(this.relativePath);
                        stringBuilder.append(this.mask);
                        str = stringBuilder.toString();
                    }
                    return new RefocusEffectStar(this.name, this.type, this.totalSecond, str);
                case RELIGHTING:
                    return new RelightingEffect(this.name, this.type, 0, this.relightingType, this.cameraDefinedType);
                default:
                    if (!TextUtils.isEmpty(this.mask)) {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append(this.relativePath);
                        stringBuilder.append(this.mask);
                        str = stringBuilder.toString();
                    }
                    return new RefocusEffectBasic(this.name, this.type, this.totalSecond, str);
            }
        }
    }

    RefocusEffectManager() {
    }

    static {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(PATH_ROOT);
        stringBuilder.append(SEPARATOR);
        stringBuilder.append("dynamic");
        PATH_DYNAMIC = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append(PATH_ROOT);
        stringBuilder.append(SEPARATOR);
        stringBuilder.append("relighting");
        PATH_RELIGHTING = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append(PATH_ROOT);
        stringBuilder.append(SEPARATOR);
        stringBuilder.append("static");
        PATH_STATIC = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append(PATH_STATIC);
        stringBuilder.append(SEPARATOR);
        stringBuilder.append("mask.png");
        PATH_STATIC_MASK = stringBuilder.toString();
    }

    void loadEffectsAsync(AssetManager assetManager, EffectLoadListener effectLoadListener) {
        new LoadEffectTask(effectLoadListener).execute(new AssetManager[]{assetManager});
    }

    private static String getRelightingConfigPath(String folderName) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(PATH_RELIGHTING);
        stringBuilder.append(SEPARATOR);
        stringBuilder.append(folderName);
        stringBuilder.append(SEPARATOR);
        stringBuilder.append(FILE_NAME_CONFIG);
        return stringBuilder.toString();
    }

    private static String getRelightingRelativePath(String folderName) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(PATH_RELIGHTING);
        stringBuilder.append(SEPARATOR);
        stringBuilder.append(folderName);
        stringBuilder.append(SEPARATOR);
        return stringBuilder.toString();
    }

    private static String getConfigPath(String folderName) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(PATH_DYNAMIC);
        stringBuilder.append(SEPARATOR);
        stringBuilder.append(folderName);
        stringBuilder.append(SEPARATOR);
        stringBuilder.append(FILE_NAME_CONFIG);
        return stringBuilder.toString();
    }

    private static String getRelativePath(String folderName) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(PATH_DYNAMIC);
        stringBuilder.append(SEPARATOR);
        stringBuilder.append(folderName);
        stringBuilder.append(SEPARATOR);
        return stringBuilder.toString();
    }
}
