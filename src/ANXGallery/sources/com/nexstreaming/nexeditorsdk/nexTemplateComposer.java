package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Environment;
import android.util.Log;
import android.util.SparseArray;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.util.b;
import com.nexstreaming.kminternal.kinemaster.config.EditorGlobal;
import com.nexstreaming.nexeditorsdk.exception.nexSDKException;
import com.nexstreaming.nexeditorsdk.nexCrop.CropMode;
import com.nexstreaming.nexeditorsdk.nexOverlayImage.runTimeMakeBitMap;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class nexTemplateComposer {
    private static final String TAG = "nexTemplateComposer";
    private static final String TAG_BRIGHTNESS = "brightness";
    private static final String TAG_COLOR_FILTER = "color_filter";
    private static final String TAG_CONTRAST = "contrast";
    private static final String TAG_CROP_MODE = "crop_mode";
    private static final String TAG_CROP_SPEED = "image_crop_speed";
    private static final String TAG_DURATION = "duration";
    private static final String TAG_EFFECTS = "effects";
    private static final String TAG_EXTERNAL_IMAGE_PATH = "external_image_path";
    private static final String TAG_EXTERNAL_VIDEO_PATH = "external_video_path";
    private static final String TAG_ID = "id";
    private static final String TAG_IMAGE_CROP_MODE = "image_crop_mode";
    private static final String TAG_LUT = "lut";
    private static final String TAG_SATURATION = "saturation";
    private static final String TAG_SOLID_COLOR = "solid_color";
    private static final String TAG_SOURCE_TYPE = "source_type";
    private static final String TAG_SPEED_CONTROL = "speed_control";
    private static final String TAG_TEMPLATE = "template";
    private static final String TAG_TEMPLATE_BGM = "template_bgm";
    private static final String TAG_TEMPLATE_BGM_VOLUME = "template_bgm_volume";
    private static final String TAG_TEMPLATE_DESCRIPTION = "template_desc";
    private static final String TAG_TEMPLATE_INTRO = "template_intro";
    private static final String TAG_TEMPLATE_LETTERBOX = "template_letterbox";
    private static final String TAG_TEMPLATE_LOOP = "template_loop";
    private static final String TAG_TEMPLATE_NAME = "template_name";
    private static final String TAG_TEMPLATE_OUTRO = "template_outro";
    private static final String TAG_TEMPLATE_VERSION = "template_version";
    private static final String TAG_TYPE = "type";
    private static final String TAG_VIDEO_CROP_MODE = "video_crop_mode";
    private static final String TAG_VIGNETTE = "vignette";
    private static final String TAG_VOLUME = "volume";
    private static final String cancelMassage = "cancel template";
    int introCount = 0;
    int loopCount = 0;
    private Context mAppContext;
    private String mBGMPath = null;
    private boolean mBGMTempFile = false;
    private boolean mCancel = false;
    private InputStream mInputStream;
    private JSONArray mIntroTemplateArray = null;
    private ArrayList<HashMap<String, String>> mIntroTemplateList = new ArrayList();
    private JSONArray mLoopTemplateArray = null;
    private ArrayList<HashMap<String, String>> mLoopTemplateList = new ArrayList();
    private JSONArray mOutroTemplateArray = null;
    private ArrayList<HashMap<String, String>> mOutroTemplateList = new ArrayList();
    private boolean mOverlappedTransition = true;
    private ArrayList<a> mOverlayList = new ArrayList();
    private nexProject mProject;
    private Context mResContext;
    private c mTemplate = null;
    private JSONArray mTemplateArray = null;
    private String mTemplateFilePath;
    private String mTemplateID;
    private ArrayList<HashMap<String, String>> mTemplateList = new ArrayList();
    private SparseArray<Integer> mTemplateTypeCountList = new SparseArray();
    private String mTemplateVersion = null;
    private boolean mUseProjectSpeed;
    int tempClipID = 0;
    ArrayList<HashMap<String, String>> templateList;
    int templateListID = 0;

    private class a {
        private int b;
        private int c;
        private int d;
        private boolean e;
        private int f;
        private int g;
        private int h;
        private int i;

        public a(int i, int i2, int i3, boolean z, int i4, int i5, int i6, int i7) {
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = z;
            this.f = i4;
            this.g = i5;
            this.h = i6;
            this.i = i7;
        }

        public int a() {
            return this.b;
        }

        public int b() {
            return this.c;
        }

        public int c() {
            return this.d;
        }

        public boolean d() {
            return this.e;
        }

        public int e() {
            return this.f;
        }

        public int f() {
            return this.g;
        }

        public int g() {
            return this.h;
        }

        public int h() {
            return this.i;
        }
    }

    public nexProject createProject() {
        return new nexProject();
    }

    public void release() {
        this.introCount = 0;
        this.loopCount = 0;
        this.tempClipID = 0;
        this.mCancel = false;
        if (this.mTemplate != null) {
            this.mTemplate.a();
        }
        if (this.mTemplateList != null) {
            this.mTemplateList.clear();
        }
        if (this.mIntroTemplateList != null) {
            this.mIntroTemplateList.clear();
        }
        if (this.mLoopTemplateList != null) {
            this.mLoopTemplateList.clear();
        }
        if (this.mOutroTemplateList != null) {
            this.mOutroTemplateList.clear();
        }
        if (this.mTemplateTypeCountList != null) {
            this.mTemplateTypeCountList.clear();
        }
        if (this.mOverlayList != null) {
            this.mOverlayList.clear();
        }
        if (this.mBGMPath != null && this.mBGMTempFile) {
            new File(this.mBGMPath).delete();
        }
        this.templateListID = 0;
        this.mTemplateVersion = null;
    }

    public String setTemplateEffects2Project(nexProject nexproject, Context context, Context context2, String str, boolean z) throws nexSDKException {
        initTemplateComposer(nexproject, context, context2, str);
        return setTemplateEffect();
    }

    void initTemplateComposer(nexProject nexproject, Context context, Context context2, String str) throws nexSDKException {
        this.mProject = nexproject;
        this.mAppContext = context;
        this.mResContext = context2;
        this.mCancel = false;
        this.mTemplateID = null;
        this.mTemplateFilePath = null;
        this.mInputStream = null;
        this.mTemplateID = str;
        release();
        this.mTemplateTypeCountList.append(0, Integer.valueOf(0));
        this.mTemplateTypeCountList.append(1, Integer.valueOf(0));
        this.mTemplateTypeCountList.append(2, Integer.valueOf(0));
    }

    void addTemplateOverlay(int i, String str) {
        String[] split = str.split(",");
        String str2 = split[0];
        String str3 = split[1];
        String str4 = split[2];
        String str5 = split[3];
        String str6 = split[4];
        String str7 = split[5];
        String str8 = split[6];
        String str9 = split[7];
        Log.d(TAG, "clipID=" + i + " /type=" + str2 + " /duration=" + str3 + " /variation=" + str4 + " /activeAnimation=" + str5 + " /inAnimationStartTime=" + str6 + " /inAnimationTime=" + str7 + " /outAnimationStartTime=" + str8 + " /outAnimationTime=" + str9);
        if (str2.equals("overlay")) {
            this.mOverlayList.add(new a(i, Integer.parseInt(str3), Integer.parseInt(str4), Boolean.parseBoolean(str5), Integer.parseInt(str6), Integer.parseInt(str7), Integer.parseInt(str8), Integer.parseInt(str9)));
        }
    }

    nexOverlayItem vignetteOverlayViaRatioMode(final String str, final int i, final int i2, int i3, int i4) {
        return new nexOverlayItem(new nexOverlayImage("template_overlay", i, i2, new runTimeMakeBitMap() {
            public boolean isAniMate() {
                return false;
            }

            public int getBitmapID() {
                return 100;
            }

            public Bitmap makeBitmap() {
                Bitmap bitmap = null;
                try {
                    return Bitmap.createScaledBitmap(BitmapFactory.decodeStream(nexTemplateComposer.this.mResContext.getResources().getAssets().open(str), null, null), i, i2, true);
                } catch (IOException e) {
                    e.printStackTrace();
                    return bitmap;
                }
            }
        }), i / 2, i2 / 2, i3, i3 + i4);
    }

    void setOverlay2Project() {
        Iterator it = this.mOverlayList.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            nexOverlayItem vignetteOverlayViaRatioMode = vignetteOverlayViaRatioMode("vignette.png", nexApplicationConfig.getAspectProfile().getWidth(), nexApplicationConfig.getAspectProfile().getHeight(), this.mProject.getClip(aVar.a(), true).mStartTime + aVar.c(), aVar.b());
            this.mProject.addOverlay(vignetteOverlayViaRatioMode);
            if (aVar.d()) {
                vignetteOverlayViaRatioMode.clearAnimate();
                vignetteOverlayViaRatioMode.addAnimate(nexAnimate.getAlpha(aVar.e(), aVar.f(), 0.0f, 1.0f).setInterpolator(new AccelerateDecelerateInterpolator()));
                vignetteOverlayViaRatioMode.addAnimate(nexAnimate.getAlpha(aVar.g(), aVar.h(), 1.0f, 0.0f).setInterpolator(new AccelerateDecelerateInterpolator()));
            }
        }
    }

    String setTemplateEffect() {
        String parsingJSONFile = parsingJSONFile(this.mProject);
        if (parsingJSONFile != null) {
            return parsingJSONFile;
        }
        if (this.mTemplateVersion.equals("template 1.0")) {
            consistProjectViaVer1(this.mProject);
            if (this.mCancel) {
                return cancelMassage;
            }
            parsingJSONFile = setProperty2Clips(this.mProject, this.mTemplateVersion);
        } else if (this.mTemplateVersion.equals("template 1.x")) {
            consistProjectViaVer2(this.mProject);
            if (this.mCancel) {
                return cancelMassage;
            }
            parsingJSONFile = setProperty2Clips(this.mProject, this.mTemplateVersion);
        } else {
            parsingJSONFile = applyTemplateOnProject(this.mProject);
        }
        if (parsingJSONFile != null) {
            return parsingJSONFile;
        }
        setOverlay2Project();
        return null;
    }

    String getValue(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getString(str);
        } catch (JSONException e) {
            if (str.equals(TAG_EFFECTS)) {
                return "none";
            }
            if (str.equals(TAG_ID) || str.equals(TAG_VOLUME)) {
                return "0";
            }
            if (str.equals(TAG_SOURCE_TYPE)) {
                return "ALL";
            }
            if (str.equals(TAG_EXTERNAL_VIDEO_PATH) || str.equals(TAG_EXTERNAL_IMAGE_PATH) || str.equals(TAG_SOLID_COLOR) || str.equals(TAG_LUT)) {
                return null;
            }
            if (str.equals(TAG_VIGNETTE)) {
                return "clip,no";
            }
            if (str.equals(TAG_CROP_MODE)) {
                return "";
            }
            if (str.equals(TAG_CROP_SPEED)) {
                return "0";
            }
            return "default";
        }
    }

    HashMap<String, String> setParameter2List(JSONObject jSONObject) {
        HashMap<String, String> hashMap = new HashMap();
        String value = getValue(jSONObject, "type");
        String value2;
        String value3;
        if (value.equals("scene")) {
            value2 = getValue(jSONObject, TAG_ID);
            value3 = getValue(jSONObject, TAG_SOURCE_TYPE);
            String value4 = getValue(jSONObject, TAG_DURATION);
            String value5 = getValue(jSONObject, TAG_VOLUME);
            String value6 = getValue(jSONObject, TAG_EFFECTS);
            String value7 = getValue(jSONObject, TAG_BRIGHTNESS);
            String value8 = getValue(jSONObject, TAG_CONTRAST);
            String value9 = getValue(jSONObject, TAG_SATURATION);
            String value10 = getValue(jSONObject, TAG_COLOR_FILTER);
            String value11 = getValue(jSONObject, TAG_SPEED_CONTROL);
            String value12 = getValue(jSONObject, TAG_VIGNETTE);
            String value13 = getValue(jSONObject, TAG_LUT);
            String value14 = getValue(jSONObject, TAG_EXTERNAL_VIDEO_PATH);
            String value15 = getValue(jSONObject, TAG_EXTERNAL_IMAGE_PATH);
            String value16 = getValue(jSONObject, TAG_SOLID_COLOR);
            String value17 = getValue(jSONObject, TAG_CROP_MODE);
            String value18 = getValue(jSONObject, TAG_CROP_SPEED);
            String value19 = getValue(jSONObject, TAG_VIDEO_CROP_MODE);
            String value20 = getValue(jSONObject, TAG_IMAGE_CROP_MODE);
            hashMap.put("type", value);
            hashMap.put(TAG_ID, value2);
            hashMap.put(TAG_SOURCE_TYPE, value3);
            hashMap.put(TAG_DURATION, value4);
            hashMap.put(TAG_VOLUME, value5);
            hashMap.put(TAG_EFFECTS, value6);
            hashMap.put(TAG_BRIGHTNESS, value7);
            hashMap.put(TAG_CONTRAST, value8);
            hashMap.put(TAG_SATURATION, value9);
            hashMap.put(TAG_COLOR_FILTER, value10);
            hashMap.put(TAG_SPEED_CONTROL, value11);
            hashMap.put(TAG_LUT, value13);
            hashMap.put(TAG_CROP_MODE, value17);
            hashMap.put(TAG_CROP_SPEED, value18);
            hashMap.put(TAG_VIDEO_CROP_MODE, value19);
            hashMap.put(TAG_IMAGE_CROP_MODE, value20);
            hashMap.put(TAG_EXTERNAL_VIDEO_PATH, value14);
            hashMap.put(TAG_EXTERNAL_IMAGE_PATH, value15);
            hashMap.put(TAG_SOLID_COLOR, value16);
            hashMap.put(TAG_VIGNETTE, value12);
        } else if (value.equals("transition")) {
            value2 = getValue(jSONObject, TAG_EFFECTS);
            value3 = getValue(jSONObject, TAG_DURATION);
            hashMap.put("type", value);
            hashMap.put(TAG_EFFECTS, value2);
            hashMap.put(TAG_DURATION, value3);
        }
        return hashMap;
    }

    static boolean checkEffectId(nexEffectLibrary nexeffectlibrary, String str) {
        if (str == null || str.compareToIgnoreCase("none") == 0 || str.compareToIgnoreCase("null") == 0 || nexeffectlibrary.checkEffectID(str)) {
            return true;
        }
        Log.d(TAG, "missing effect: (" + str + "))");
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:50:0x014a A:{Splitter: B:2:0x000c, ExcHandler: java.lang.Exception (e java.lang.Exception)} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:40:?, code:
            android.util.Log.d(TAG, "Info(name: (" + r5 + "))");
            r1 = "template 1.0";
     */
    static java.lang.String[] checkMissEffects(com.nexstreaming.nexeditorsdk.nexEffectLibrary r9, java.io.InputStream r10) {
        /*
        r0 = 0;
        r1 = readFromFile(r10);
        r3 = new java.util.ArrayList;
        r3.<init>();
        if (r1 == 0) goto L_0x014b;
    L_0x000c:
        r4 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        r4.<init>(r1);	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        r1 = "template_name";
        r5 = r4.getString(r1);	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        r1 = "template_version";
        r1 = r4.getString(r1);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        com.nexstreaming.nexeditorsdk.nexApplicationConfig.getDefaultLetterboxEffect();	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r2 = "template_letterbox";
        r2 = r4.has(r2);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        if (r2 == 0) goto L_0x0031;
    L_0x002b:
        r2 = "template_letterbox";
        r4.getString(r2);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
    L_0x0031:
        r2 = "template_desc";
        r2 = r4.getString(r2);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r6 = "v1.x";
        r6 = r1.equals(r6);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        if (r6 != 0) goto L_0x004a;
    L_0x0041:
        r6 = "v2.0.0";
        r6 = r1.equals(r6);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        if (r6 == 0) goto L_0x00a3;
    L_0x004a:
        r1 = "template 1.x";
    L_0x004d:
        r6 = "nexTemplateComposer";
        r7 = new java.lang.StringBuilder;	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r7.<init>();	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r8 = "Info(name, version, description): (";
        r7 = r7.append(r8);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r7 = r7.append(r5);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r8 = " ,";
        r7 = r7.append(r8);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r7 = r7.append(r1);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r8 = " ,";
        r7 = r7.append(r8);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r2 = r7.append(r2);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r7 = "))";
        r2 = r2.append(r7);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r2 = r2.toString();	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        android.util.Log.d(r6, r2);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r2 = "template_intro";
        r6 = r4.getJSONArray(r2);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r2 = r0;
    L_0x0087:
        r7 = r6.length();	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        if (r2 >= r7) goto L_0x00b3;
    L_0x008d:
        r7 = r6.getJSONObject(r2);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r8 = "effects";
        r7 = r7.getString(r8);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r8 = checkEffectId(r9, r7);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        if (r8 != 0) goto L_0x00a0;
    L_0x009d:
        r3.add(r7);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
    L_0x00a0:
        r2 = r2 + 1;
        goto L_0x0087;
    L_0x00a3:
        r6 = "2.0.0";
        r1 = r1.equals(r6);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        if (r1 == 0) goto L_0x00af;
    L_0x00ab:
        r1 = "template 2.0";
        goto L_0x004d;
    L_0x00af:
        r1 = "template 1.0";
        goto L_0x004d;
    L_0x00b3:
        r2 = "template_loop";
        r6 = r4.getJSONArray(r2);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r2 = r0;
    L_0x00bb:
        r7 = r6.length();	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        if (r2 >= r7) goto L_0x00d7;
    L_0x00c1:
        r7 = r6.getJSONObject(r2);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r8 = "effects";
        r7 = r7.getString(r8);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r8 = checkEffectId(r9, r7);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        if (r8 != 0) goto L_0x00d4;
    L_0x00d1:
        r3.add(r7);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
    L_0x00d4:
        r2 = r2 + 1;
        goto L_0x00bb;
    L_0x00d7:
        r2 = "template_outro";
        r6 = r4.getJSONArray(r2);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r2 = r0;
    L_0x00df:
        r7 = r6.length();	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        if (r2 >= r7) goto L_0x011d;
    L_0x00e5:
        r7 = r6.getJSONObject(r2);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r8 = "effects";
        r7 = r7.getString(r8);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        r8 = checkEffectId(r9, r7);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
        if (r8 != 0) goto L_0x00f8;
    L_0x00f5:
        r3.add(r7);	 Catch:{ JSONException -> 0x00fb, Exception -> 0x014a }
    L_0x00f8:
        r2 = r2 + 1;
        goto L_0x00df;
    L_0x00fb:
        r1 = move-exception;
        r1 = "nexTemplateComposer";
        r2 = new java.lang.StringBuilder;	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        r2.<init>();	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        r6 = "Info(name: (";
        r2 = r2.append(r6);	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        r2 = r2.append(r5);	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        r5 = "))";
        r2 = r2.append(r5);	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        r2 = r2.toString();	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        android.util.Log.d(r1, r2);	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        r1 = "template 1.0";
    L_0x011d:
        r2 = "template 1.0";
        r1 = r1.equals(r2);	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        if (r1 == 0) goto L_0x014b;
    L_0x0126:
        r1 = "template";
        r2 = r4.getJSONArray(r1);	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        r1 = r0;
    L_0x012e:
        r4 = r2.length();	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        if (r1 >= r4) goto L_0x014b;
    L_0x0134:
        r4 = r2.getJSONObject(r1);	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        r5 = "effects";
        r4 = r4.getString(r5);	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        r5 = checkEffectId(r9, r4);	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
        if (r5 != 0) goto L_0x0147;
    L_0x0144:
        r3.add(r4);	 Catch:{ JSONException -> 0x0172, Exception -> 0x014a }
    L_0x0147:
        r1 = r1 + 1;
        goto L_0x012e;
    L_0x014a:
        r1 = move-exception;
    L_0x014b:
        r1 = r3.size();
        if (r1 <= 0) goto L_0x0170;
    L_0x0151:
        r1 = r3.size();
        r2 = new java.lang.String[r1];
        r1 = r0;
    L_0x0158:
        r0 = r3.size();
        if (r1 >= r0) goto L_0x016e;
    L_0x015e:
        r0 = r3.get(r1);
        r0 = (java.lang.String) r0;
        r0 = r0.toString();
        r2[r1] = r0;
        r0 = r1 + 1;
        r1 = r0;
        goto L_0x0158;
    L_0x016e:
        r0 = r2;
    L_0x016f:
        return r0;
    L_0x0170:
        r0 = 0;
        goto L_0x016f;
    L_0x0172:
        r1 = move-exception;
        goto L_0x014b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.nexeditorsdk.nexTemplateComposer.checkMissEffects(com.nexstreaming.nexeditorsdk.nexEffectLibrary, java.io.InputStream):java.lang.String[]");
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x017b A:{Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }} */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x01b1 A:{Splitter: B:4:0x000e, ExcHandler: java.lang.Exception (r0_57 'e' java.lang.Exception)} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:38:?, code:
            android.util.Log.d(TAG, "Info(name: (" + r4 + "))");
            r8.mIntroTemplateList.clear();
            r8.mLoopTemplateList.clear();
            r8.mOutroTemplateList.clear();
            r8.mTemplateVersion = "template 1.0";
     */
    /* JADX WARNING: Missing block: B:49:0x01b1, code:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:59:?, code:
            return r0.getMessage();
     */
    java.lang.String parsingJSONFile(com.nexstreaming.nexeditorsdk.nexProject r9) {
        /*
        r8 = this;
        r1 = 0;
        r2 = 0;
        r0 = r8.mTemplateID;
        if (r0 == 0) goto L_0x00c6;
    L_0x0006:
        r0 = r8.mTemplateID;
        r0 = AssetPackageTemplateJsonToString(r0);
    L_0x000c:
        if (r0 == 0) goto L_0x01b7;
    L_0x000e:
        r3 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r3.<init>(r0);	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r0 = "template_name";
        r4 = r3.getString(r0);	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r0 = "template_version";
        r5 = r3.getString(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = com.nexstreaming.nexeditorsdk.nexApplicationConfig.getDefaultLetterboxEffect();	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6 = "template_letterbox";
        r6 = r3.has(r6);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        if (r6 == 0) goto L_0x0035;
    L_0x002e:
        r0 = "template_letterbox";
        r0 = r3.getString(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
    L_0x0035:
        r9.setLetterboxEffect(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = "template_desc";
        r0 = r3.getString(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6 = "v1.x";
        r6 = r5.equals(r6);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        if (r6 != 0) goto L_0x0051;
    L_0x0048:
        r6 = "v2.0.0";
        r5 = r5.equals(r6);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        if (r5 == 0) goto L_0x0126;
    L_0x0051:
        r5 = "template 1.x";
        r8.mTemplateVersion = r5;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r5 = "nexTemplateComposer";
        r6 = new java.lang.StringBuilder;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6.<init>();	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r7 = "Info(name, version, description): (";
        r6 = r6.append(r7);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6 = r6.append(r4);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r7 = " ,";
        r6 = r6.append(r7);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r7 = r8.mTemplateVersion;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6 = r6.append(r7);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r7 = " ,";
        r6 = r6.append(r7);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = r6.append(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6 = "))";
        r0 = r0.append(r6);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        android.util.Log.d(r5, r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = "template_bgm";
        r0 = r3.getString(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r8.applyBGM2Project(r9, r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = "template_bgm_volume";
        r0 = r3.getString(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = java.lang.Float.parseFloat(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r9.setBGMMasterVolumeScale(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = "template_intro";
        r0 = r3.getJSONArray(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r8.mIntroTemplateArray = r0;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = r2;
    L_0x00ac:
        r5 = r8.mIntroTemplateArray;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r5 = r5.length();	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        if (r0 >= r5) goto L_0x00de;
    L_0x00b4:
        r5 = r8.mIntroTemplateList;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6 = r8.mIntroTemplateArray;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6 = r6.getJSONObject(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6 = r8.setParameter2List(r6);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r5.add(r6);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = r0 + 1;
        goto L_0x00ac;
    L_0x00c6:
        r0 = r8.mTemplateFilePath;
        if (r0 == 0) goto L_0x00d2;
    L_0x00ca:
        r0 = r8.mTemplateFilePath;
        r0 = readFromFile(r0);
        goto L_0x000c;
    L_0x00d2:
        r0 = r8.mInputStream;
        if (r0 == 0) goto L_0x01bb;
    L_0x00d6:
        r0 = r8.mInputStream;
        r0 = readFromFile(r0);
        goto L_0x000c;
    L_0x00de:
        r0 = "template_loop";
        r0 = r3.getJSONArray(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r8.mLoopTemplateArray = r0;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = r2;
    L_0x00e8:
        r5 = r8.mLoopTemplateArray;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r5 = r5.length();	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        if (r0 >= r5) goto L_0x0102;
    L_0x00f0:
        r5 = r8.mLoopTemplateList;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6 = r8.mLoopTemplateArray;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6 = r6.getJSONObject(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6 = r8.setParameter2List(r6);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r5.add(r6);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = r0 + 1;
        goto L_0x00e8;
    L_0x0102:
        r0 = "template_outro";
        r0 = r3.getJSONArray(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r8.mOutroTemplateArray = r0;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = r2;
    L_0x010c:
        r5 = r8.mOutroTemplateArray;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r5 = r5.length();	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        if (r0 >= r5) goto L_0x0170;
    L_0x0114:
        r5 = r8.mOutroTemplateList;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6 = r8.mOutroTemplateArray;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6 = r6.getJSONObject(r0);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r6 = r8.setParameter2List(r6);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r5.add(r6);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = r0 + 1;
        goto L_0x010c;
    L_0x0126:
        r0 = "template 2.0";
        r8.mTemplateVersion = r0;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = new com.nexstreaming.nexeditorsdk.c;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0.<init>();	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r8.mTemplate = r0;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = r8.mTemplate;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r5 = r8.mTemplateFilePath;	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        r0 = r0.a(r5, r3);	 Catch:{ JSONException -> 0x013d, Exception -> 0x01b1 }
        if (r0 == 0) goto L_0x0170;
    L_0x013c:
        return r0;
    L_0x013d:
        r0 = move-exception;
        r0 = "nexTemplateComposer";
        r5 = new java.lang.StringBuilder;	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r5.<init>();	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r6 = "Info(name: (";
        r5 = r5.append(r6);	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r4 = r5.append(r4);	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r5 = "))";
        r4 = r4.append(r5);	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r4 = r4.toString();	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        android.util.Log.d(r0, r4);	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r0 = r8.mIntroTemplateList;	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r0.clear();	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r0 = r8.mLoopTemplateList;	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r0.clear();	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r0 = r8.mOutroTemplateList;	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r0.clear();	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r0 = "template 1.0";
        r8.mTemplateVersion = r0;	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
    L_0x0170:
        r0 = r8.mTemplateVersion;	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r4 = "template 1.0";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        if (r0 == 0) goto L_0x01a9;
    L_0x017b:
        r0 = "template";
        r0 = r3.getJSONArray(r0);	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r8.mTemplateArray = r0;	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r0 = r2;
    L_0x0185:
        r2 = r8.mTemplateArray;	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r2 = r2.length();	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        if (r0 >= r2) goto L_0x019f;
    L_0x018d:
        r2 = r8.mTemplateList;	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r4 = r8.mTemplateArray;	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r4 = r4.getJSONObject(r0);	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r4 = r8.setParameter2List(r4);	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r2.add(r4);	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r0 = r0 + 1;
        goto L_0x0185;
    L_0x019f:
        r0 = "template_bgm";
        r0 = r3.getString(r0);	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
        r8.applyBGM2Project(r9, r0);	 Catch:{ JSONException -> 0x01ab, Exception -> 0x01b1 }
    L_0x01a9:
        r0 = r1;
        goto L_0x013c;
    L_0x01ab:
        r0 = move-exception;
        r0 = r0.getMessage();
        goto L_0x013c;
    L_0x01b1:
        r0 = move-exception;
        r0 = r0.getMessage();
        goto L_0x013c;
    L_0x01b7:
        r0 = "template parsing fail!";
        goto L_0x013c;
    L_0x01bb:
        r0 = r1;
        goto L_0x000c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.nexeditorsdk.nexTemplateComposer.parsingJSONFile(com.nexstreaming.nexeditorsdk.nexProject):java.lang.String");
    }

    void applyBGM2Project(nexProject nexproject, String str) {
        if (str != null) {
            Log.d(TAG, "bgm path1=" + str);
            if (this.mTemplateID != null) {
                if (str.equalsIgnoreCase("null")) {
                    nexproject.setBackgroundMusicPath(null);
                } else {
                    nexproject.setBackgroundMusicPath(nexAssetPackageManager.getAssetPackageMediaPath(this.mAppContext, str));
                }
            } else if (str.equalsIgnoreCase("null")) {
                nexproject.setBackgroundMusicPath(null);
            } else {
                if (str.regionMatches(true, 0, TAG_TEMPLATE, 0, 8)) {
                    try {
                        nexproject.setBackgroundMusicPath(raw2file(this.mAppContext, this.mResContext, str));
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                if (str.contains("/storage/")) {
                    CharSequence absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
                    if (str.contains("/storage/emulated/0")) {
                        str = str.replace("/storage/emulated/0", absolutePath);
                    } else {
                        str = str.replace("/storage", absolutePath);
                    }
                }
                nexproject.setBackgroundMusicPath(str);
            }
        }
    }

    void setUseProjectSpeed(boolean z) {
        this.mUseProjectSpeed = z;
    }

    void setOverlappedTransitionFlag(boolean z) {
        this.mOverlappedTransition = z;
    }

    void consistProjectViaVer1(nexProject nexproject) {
        this.templateList = this.mTemplateList;
        nexProject clone = nexProject.clone(nexproject);
        nexproject.allClear(true);
        this.templateListID = 0;
        int i = 0;
        int i2 = 100;
        while (true) {
            int totalTime;
            int startTrimTime;
            Rect rect;
            if (clone.getClip(i, true).getClipType() == 4) {
                int rotateDegree = clone.getClip(i, true).getRotateDegree();
                if (this.mUseProjectSpeed) {
                    i2 = clone.getClip(i, true).getVideoClipEdit().getSpeedControl();
                }
                startTrimTime = clone.getClip(i, true).getVideoClipEdit().getStartTrimTime();
                totalTime = clone.getClip(i, true).getVideoClipEdit().getEndTrimTime() == 0 ? clone.getClip(i, true).getTotalTime() : clone.getClip(i, true).getVideoClipEdit().getEndTrimTime();
                if (this.mUseProjectSpeed) {
                    totalTime = clone.getClip(i, true).getVideoClipEdit().getDuration();
                } else {
                    totalTime -= startTrimTime;
                }
                nexClip dup = nexClip.dup(clone.getClip(i, true));
                int i3 = totalTime;
                int i4 = startTrimTime;
                boolean z = true;
                while (!this.mCancel) {
                    int i5;
                    totalTime = Integer.parseInt((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION));
                    if (totalTime < 0) {
                        totalTime = 0;
                    }
                    Log.d(TAG, "remainTime2Project=" + i3 + ", defined_duration=" + totalTime + ", templateListID=" + this.templateListID);
                    i3 -= totalTime;
                    if (i3 <= 500) {
                        totalTime += i3;
                        z = false;
                    }
                    Log.d(TAG, "index=" + 0 + ", defined_duration=" + totalTime + ", loop=" + z);
                    if (this.mUseProjectSpeed) {
                        i5 = (int) (((float) totalTime) * (((float) i2) / 100.0f));
                    } else {
                        i5 = totalTime;
                    }
                    nexproject.add(nexClip.dup(dup));
                    if (((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("ALL") || ((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("VIDEO")) {
                        nexproject.getLastPrimaryClip().setRotateDegree(rotateDegree);
                        if (this.mUseProjectSpeed) {
                            nexproject.getLastPrimaryClip().getVideoClipEdit().setSpeedControl(i2);
                        }
                        nexproject.getLastPrimaryClip().getVideoClipEdit().setTrim(i4, i4 + i5);
                    }
                    rect = new Rect();
                    clone.getClip(i, true).getCrop().getStartPositionRaw(rect);
                    nexproject.getLastPrimaryClip().getCrop().setStartPositionRaw(rect);
                    clone.getClip(i, true).getCrop().getEndPositionRaw(rect);
                    nexproject.getLastPrimaryClip().getCrop().setEndPositionRaw(rect);
                    totalTime = i4 + i5;
                    this.templateListID += 2;
                    Log.d(TAG, "templateListID=" + this.templateListID + ", templateList.size()=" + this.templateList.size());
                    if (this.templateListID >= this.templateList.size()) {
                        this.templateListID = 0;
                    }
                    if (z) {
                        i4 = totalTime;
                    }
                }
                return;
            } else if (clone.getClip(i, true).getClipType() == 1) {
                totalTime = Integer.parseInt((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION));
                startTrimTime = clone.getClip(i, true).getRotateDegree();
                nexClip dup2 = nexClip.dup(clone.getClip(i, true));
                nexproject.add(dup2);
                dup2.setRotateDegree(startTrimTime);
                dup2.setImageClipDuration(totalTime);
                rect = new Rect();
                clone.getClip(i, true).getCrop().getStartPositionRaw(rect);
                dup2.getCrop().setStartPositionRaw(rect);
                clone.getClip(i, true).getCrop().getEndPositionRaw(rect);
                dup2.getCrop().setEndPositionRaw(rect);
                this.templateListID += 2;
                if (this.templateListID >= this.templateList.size()) {
                    this.templateListID = 0;
                }
            } else {
                Log.d(TAG, "not support_type in template:" + clone.getClip(i, true).getClipType());
            }
            totalTime = i + 1;
            if (totalTime >= clone.getTotalClipCount(true)) {
                nexproject.updateProject();
                return;
            }
            i = totalTime;
        }
    }

    boolean addSpecialClip2Project(nexProject nexproject) {
        if (!((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("EXTERNAL_VIDEO") && !((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("EXTERNAL_IMAGE") && !((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("SOLID")) {
            return false;
        }
        nexClip supportedClip;
        if (((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("EXTERNAL_VIDEO")) {
            supportedClip = nexClip.getSupportedClip((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_EXTERNAL_VIDEO_PATH));
            if (supportedClip != null) {
                nexproject.add(supportedClip);
                if (this.templateList == this.mIntroTemplateList) {
                    this.introCount++;
                } else if (this.templateList == this.mLoopTemplateList) {
                    this.loopCount++;
                }
                this.tempClipID++;
            }
        } else {
            int parseInt = Integer.parseInt((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION));
            if (((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOURCE_TYPE)).equals("EXTERNAL_IMAGE")) {
                supportedClip = nexClip.getSupportedClip((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_EXTERNAL_IMAGE_PATH));
                if (supportedClip != null) {
                    supportedClip.setImageClipDuration(parseInt);
                    nexproject.add(supportedClip);
                    if (this.templateList == this.mIntroTemplateList) {
                        this.introCount++;
                    } else if (this.templateList == this.mLoopTemplateList) {
                        this.loopCount++;
                    }
                    this.tempClipID++;
                }
            } else {
                supportedClip = nexClip.getSolidClip(Color.parseColor((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SOLID_COLOR)));
                if (supportedClip != null) {
                    supportedClip.setImageClipDuration(parseInt);
                    nexproject.add(supportedClip);
                    if (this.templateList == this.mIntroTemplateList) {
                        this.introCount++;
                    } else if (this.templateList == this.mLoopTemplateList) {
                        this.loopCount++;
                    }
                    this.tempClipID++;
                }
            }
        }
        manageTemplateList(true);
        return true;
    }

    void manageTemplateList(boolean z) {
        if (this.templateList == this.mIntroTemplateList) {
            this.mTemplateTypeCountList.append(0, Integer.valueOf(this.introCount));
        } else if (this.templateList == this.mLoopTemplateList) {
            this.mTemplateTypeCountList.append(1, Integer.valueOf(this.loopCount));
        }
        this.templateListID += 2;
        Log.d(TAG, "templateListID/templateList.size:" + this.templateListID + "/" + this.templateList.size());
        if (z) {
            if (this.templateListID < this.templateList.size()) {
                return;
            }
            if (this.templateList == this.mIntroTemplateList) {
                this.templateListID = 0;
                this.templateList = this.mLoopTemplateList;
                Log.d(TAG, "intro -> loop");
            } else if (this.templateList == this.mLoopTemplateList) {
                this.templateListID = 0;
                Log.d(TAG, "loop -> loop");
            }
        } else if (this.templateList == this.mIntroTemplateList) {
            this.templateListID = 0;
            this.templateList = this.mOutroTemplateList;
            this.mTemplateTypeCountList.append(2, Integer.valueOf(1));
            Log.d(TAG, "intro -> outro");
        } else if (this.templateList == this.mLoopTemplateList) {
            this.templateListID = 0;
            this.templateList = this.mOutroTemplateList;
            this.mTemplateTypeCountList.append(2, Integer.valueOf(1));
            Log.d(TAG, "loop -> outro");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x014b  */
    void consistProjectViaVer2(com.nexstreaming.nexeditorsdk.nexProject r22) {
        /*
        r21 = this;
        r7 = 0;
        r2 = 0;
        r4 = 0;
        r6 = 0;
        r5 = 0;
        r1 = 0;
        r3 = r2;
        r2 = r1;
    L_0x0008:
        r0 = r21;
        r1 = r0.mIntroTemplateList;
        r1 = r1.size();
        if (r2 >= r1) goto L_0x002d;
    L_0x0012:
        r0 = r21;
        r1 = r0.mIntroTemplateList;
        r1 = r1.get(r2);
        r1 = (java.util.HashMap) r1;
        r8 = "duration";
        r1 = r1.get(r8);
        r1 = (java.lang.String) r1;
        r1 = java.lang.Integer.parseInt(r1);
        r3 = r3 + r1;
        r1 = r2 + 2;
        r2 = r1;
        goto L_0x0008;
    L_0x002d:
        r1 = 0;
        r2 = r1;
    L_0x002f:
        r0 = r21;
        r1 = r0.mOutroTemplateList;
        r1 = r1.size();
        if (r2 >= r1) goto L_0x0054;
    L_0x0039:
        r0 = r21;
        r1 = r0.mOutroTemplateList;
        r1 = r1.get(r2);
        r1 = (java.util.HashMap) r1;
        r8 = "duration";
        r1 = r1.get(r8);
        r1 = (java.lang.String) r1;
        r1 = java.lang.Integer.parseInt(r1);
        r4 = r4 + r1;
        r1 = r2 + 2;
        r2 = r1;
        goto L_0x002f;
    L_0x0054:
        r0 = r21;
        r1 = r0.mIntroTemplateList;
        r0 = r21;
        r0.templateList = r1;
        r13 = com.nexstreaming.nexeditorsdk.nexProject.clone(r22);
        r1 = 1;
        r0 = r22;
        r0.allClear(r1);
        r2 = r5;
        r5 = r6;
        r6 = r7;
    L_0x0069:
        r1 = 1;
        r1 = r13.getClip(r6, r1);
        r1 = r1.getClipType();
        r7 = 4;
        if (r1 != r7) goto L_0x05cd;
    L_0x0075:
        r1 = 1;
        r1 = r13.getClip(r6, r1);
        r14 = r1.getRotateDegree();
        r1 = 1;
        r1 = r13.getClip(r6, r1);
        r1 = r1.getVideoClipEdit();
        r15 = r1.getSpeedControl();
        r1 = 1;
        r1 = r13.getClip(r6, r1);
        r1 = r1.getVideoClipEdit();
        r8 = r1.getStartTrimTime();
        r1 = 1;
        r1 = r13.getClip(r6, r1);
        r1 = r1.getVideoClipEdit();
        r1 = r1.getEndTrimTime();
        if (r1 != 0) goto L_0x010b;
    L_0x00a7:
        r1 = 1;
        r1 = r13.getClip(r6, r1);
        r1 = r1.getTotalTime();
        r7 = r1;
    L_0x00b1:
        r1 = 1;
        r1 = r13.getClip(r6, r1);
        r16 = com.nexstreaming.nexeditorsdk.nexClip.dup(r1);
        r1 = 1;
        r0 = r22;
        r1 = r0.getTotalClipCount(r1);
        r0 = r21;
        r0.tempClipID = r1;
        r0 = r21;
        r1 = r0.tempClipID;
        if (r1 >= 0) goto L_0x00d0;
    L_0x00cb:
        r1 = 0;
        r0 = r21;
        r0.tempClipID = r1;
    L_0x00d0:
        r9 = r7 - r8;
        r1 = r3 + r4;
        if (r1 < r9) goto L_0x011a;
    L_0x00d6:
        r1 = "nexTemplateComposer";
        r10 = new java.lang.StringBuilder;
        r10.<init>();
        r11 = "OVER durationOfSourceClip/ introDuration:";
        r10 = r10.append(r11);
        r10 = r10.append(r3);
        r11 = " outroDuration:";
        r10 = r10.append(r11);
        r10 = r10.append(r4);
        r11 = " sourceDuration:";
        r10 = r10.append(r11);
        r10 = r10.append(r9);
        r10 = r10.toString();
        android.util.Log.d(r1, r10);
        r10 = r8;
        r8 = r9;
    L_0x0104:
        r0 = r21;
        r1 = r0.mCancel;
        if (r1 == 0) goto L_0x014b;
    L_0x010a:
        return;
    L_0x010b:
        r1 = 1;
        r1 = r13.getClip(r6, r1);
        r1 = r1.getVideoClipEdit();
        r1 = r1.getEndTrimTime();
        r7 = r1;
        goto L_0x00b1;
    L_0x011a:
        r1 = r9 - r4;
        r10 = "nexTemplateComposer";
        r11 = new java.lang.StringBuilder;
        r11.<init>();
        r12 = "UNDER durationOfSourceClip/ introDuration:";
        r11 = r11.append(r12);
        r11 = r11.append(r3);
        r12 = " outroDuration:";
        r11 = r11.append(r12);
        r11 = r11.append(r4);
        r12 = " remainTime2Project:";
        r11 = r11.append(r12);
        r11 = r11.append(r1);
        r11 = r11.toString();
        android.util.Log.d(r10, r11);
    L_0x0148:
        r10 = r8;
        r8 = r1;
        goto L_0x0104;
    L_0x014b:
        r21.addSpecialClip2Project(r22);
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r11 = r0.templateListID;
        r1 = r1.get(r11);
        r1 = (java.util.HashMap) r1;
        r11 = "duration";
        r1 = r1.get(r11);
        r1 = (java.lang.String) r1;
        r1 = java.lang.Integer.parseInt(r1);
        if (r1 >= 0) goto L_0x01de;
    L_0x016a:
        r1 = 0;
        r11 = r1;
    L_0x016c:
        r17 = r8 - r11;
        r0 = r21;
        r1 = r0.templateListID;
    L_0x0172:
        r12 = r1 + 2;
        r0 = r21;
        r1 = r0.templateList;
        r1 = r1.size();
        if (r12 < r1) goto L_0x017f;
    L_0x017e:
        r12 = 0;
    L_0x017f:
        r0 = r21;
        r1 = r0.templateList;
        r1 = r1.get(r12);
        r1 = (java.util.HashMap) r1;
        r18 = "source_type";
        r0 = r18;
        r1 = r1.get(r0);
        r1 = (java.lang.String) r1;
        r18 = "EXTERNAL_VIDEO";
        r0 = r18;
        r1 = r1.equals(r0);
        if (r1 != 0) goto L_0x06bc;
    L_0x019e:
        r0 = r21;
        r1 = r0.templateList;
        r1 = r1.get(r12);
        r1 = (java.util.HashMap) r1;
        r18 = "source_type";
        r0 = r18;
        r1 = r1.get(r0);
        r1 = (java.lang.String) r1;
        r18 = "EXTERNAL_IMAGE";
        r0 = r18;
        r1 = r1.equals(r0);
        if (r1 != 0) goto L_0x06bc;
    L_0x01bd:
        r0 = r21;
        r1 = r0.templateList;
        r1 = r1.get(r12);
        r1 = (java.util.HashMap) r1;
        r18 = "source_type";
        r0 = r18;
        r1 = r1.get(r0);
        r1 = (java.lang.String) r1;
        r18 = "SOLID";
        r0 = r18;
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x01fb;
    L_0x01dc:
        r1 = r12;
        goto L_0x0172;
    L_0x01de:
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r11 = r0.templateListID;
        r1 = r1.get(r11);
        r1 = (java.util.HashMap) r1;
        r11 = "duration";
        r1 = r1.get(r11);
        r1 = (java.lang.String) r1;
        r1 = java.lang.Integer.parseInt(r1);
        r11 = r1;
        goto L_0x016c;
    L_0x01fb:
        r0 = r21;
        r1 = r0.templateList;
        r1 = r1.get(r12);
        r1 = (java.util.HashMap) r1;
        r12 = "duration";
        r1 = r1.get(r12);
        r1 = (java.lang.String) r1;
        r12 = java.lang.Integer.parseInt(r1);
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r0 = r0.mOutroTemplateList;
        r18 = r0;
        r0 = r18;
        if (r1 == r0) goto L_0x0221;
    L_0x021f:
        if (r5 == 0) goto L_0x0319;
    L_0x0221:
        r1 = com.nexstreaming.nexeditorsdk.nexClip.dup(r16);
        r0 = r22;
        r0.add(r1);
        r0 = r21;
        r1 = r0.tempClipID;
        r11 = 1;
        r0 = r22;
        r11 = r0.getClip(r1, r11);
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r12 = r0.templateListID;
        r1 = r1.get(r12);
        r1 = (java.util.HashMap) r1;
        r12 = "source_type";
        r1 = r1.get(r12);
        r1 = (java.lang.String) r1;
        r12 = "ALL";
        r1 = r1.equals(r12);
        if (r1 != 0) goto L_0x0273;
    L_0x0254:
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r12 = r0.templateListID;
        r1 = r1.get(r12);
        r1 = (java.util.HashMap) r1;
        r12 = "source_type";
        r1 = r1.get(r12);
        r1 = (java.lang.String) r1;
        r12 = "VIDEO";
        r1 = r1.equals(r12);
        if (r1 == 0) goto L_0x028b;
    L_0x0273:
        r1 = r11.getClipType();
        r12 = 4;
        if (r1 != r12) goto L_0x028b;
    L_0x027a:
        r11.setRotateDegree(r14);
        r1 = r11.getVideoClipEdit();
        r1.setSpeedControl(r15);
        r1 = r11.getVideoClipEdit();
        r1.setTrim(r10, r7);
    L_0x028b:
        r10 = r10 + r7;
        if (r5 == 0) goto L_0x02a9;
    L_0x028e:
        r5 = 0;
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r11 = r0.mIntroTemplateList;
        if (r1 != r11) goto L_0x0304;
    L_0x0299:
        r0 = r21;
        r1 = r0.introCount;
        r1 = r1 + 1;
        r0 = r21;
        r0.introCount = r1;
    L_0x02a3:
        r1 = 1;
        r0 = r21;
        r0.manageTemplateList(r1);
    L_0x02a9:
        r1 = r8;
        r8 = r10;
    L_0x02ab:
        if (r8 < r7) goto L_0x0148;
    L_0x02ad:
        r1 = r2;
        r2 = r5;
    L_0x02af:
        r5 = r6 + 1;
        r6 = 1;
        r6 = r13.getTotalClipCount(r6);
        if (r5 < r6) goto L_0x06b7;
    L_0x02b8:
        r1 = "nexTemplateComposer";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "intro:";
        r2 = r2.append(r3);
        r0 = r21;
        r3 = r0.mTemplateTypeCountList;
        r4 = 0;
        r3 = r3.get(r4);
        r2 = r2.append(r3);
        r3 = " loop:";
        r2 = r2.append(r3);
        r0 = r21;
        r3 = r0.mTemplateTypeCountList;
        r4 = 1;
        r3 = r3.get(r4);
        r2 = r2.append(r3);
        r3 = " out-ro:";
        r2 = r2.append(r3);
        r0 = r21;
        r3 = r0.mTemplateTypeCountList;
        r4 = 2;
        r3 = r3.get(r4);
        r2 = r2.append(r3);
        r2 = r2.toString();
        android.util.Log.d(r1, r2);
        r22.updateProject();
        goto L_0x010a;
    L_0x0304:
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r11 = r0.mLoopTemplateList;
        if (r1 != r11) goto L_0x02a3;
    L_0x030e:
        r0 = r21;
        r1 = r0.loopCount;
        r1 = r1 + 1;
        r0 = r21;
        r0.loopCount = r1;
        goto L_0x02a3;
    L_0x0319:
        r18 = "nexTemplateComposer";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r19 = "id:";
        r0 = r19;
        r19 = r1.append(r0);
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r0 = r0.templateListID;
        r20 = r0;
        r0 = r20;
        r1 = r1.get(r0);
        r1 = (java.util.HashMap) r1;
        r20 = "id";
        r0 = r20;
        r1 = r1.get(r0);
        r1 = (java.lang.String) r1;
        r1 = java.lang.Integer.parseInt(r1);
        r0 = r19;
        r1 = r0.append(r1);
        r19 = "/ current defined duration:";
        r0 = r19;
        r1 = r1.append(r0);
        r1 = r1.append(r11);
        r19 = "/ next defined duration:";
        r0 = r19;
        r1 = r1.append(r0);
        r1 = r1.append(r12);
        r19 = "/ remain duration(based on source_duration - outro_duration)):";
        r0 = r19;
        r1 = r1.append(r0);
        r0 = r17;
        r1 = r1.append(r0);
        r1 = r1.toString();
        r0 = r18;
        android.util.Log.d(r0, r1);
        r1 = r3 + r4;
        if (r1 < r9) goto L_0x0443;
    L_0x0381:
        r1 = com.nexstreaming.nexeditorsdk.nexClip.dup(r16);
        r0 = r22;
        r0.add(r1);
        r0 = r21;
        r1 = r0.tempClipID;
        r11 = r1 + 1;
        r0 = r21;
        r0.tempClipID = r11;
        r11 = 1;
        r0 = r22;
        r11 = r0.getClip(r1, r11);
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r12 = r0.templateListID;
        r1 = r1.get(r12);
        r1 = (java.util.HashMap) r1;
        r12 = "source_type";
        r1 = r1.get(r12);
        r1 = (java.lang.String) r1;
        r12 = "ALL";
        r1 = r1.equals(r12);
        if (r1 != 0) goto L_0x03d9;
    L_0x03ba:
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r12 = r0.templateListID;
        r1 = r1.get(r12);
        r1 = (java.util.HashMap) r1;
        r12 = "source_type";
        r1 = r1.get(r12);
        r1 = (java.lang.String) r1;
        r12 = "VIDEO";
        r1 = r1.equals(r12);
        if (r1 == 0) goto L_0x03f4;
    L_0x03d9:
        r1 = r11.getClipType();
        r12 = 4;
        if (r1 != r12) goto L_0x03f4;
    L_0x03e0:
        r11.setRotateDegree(r14);
        r1 = r11.getVideoClipEdit();
        r1.setSpeedControl(r15);
        r1 = r11.getVideoClipEdit();
        r11 = r8 / 2;
        r11 = r11 + r10;
        r1.setTrim(r10, r11);
    L_0x03f4:
        r1 = r8 / 2;
        r10 = r10 + r1;
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r11 = r0.mIntroTemplateList;
        if (r1 != r11) goto L_0x0427;
    L_0x0401:
        r0 = r21;
        r1 = r0.introCount;
        r1 = r1 + 1;
        r0 = r21;
        r0.introCount = r1;
    L_0x040b:
        r2 = r2 + 1;
        r1 = 1;
        r1 = r13.getTotalClipCount(r1);
        if (r2 >= r1) goto L_0x0432;
    L_0x0414:
        r1 = "nexTemplateComposer";
        r5 = "video,case 1] some clips exist in the source project.";
        android.util.Log.d(r1, r5);
        r5 = 1;
        r1 = 1;
        r0 = r21;
        r0.manageTemplateList(r1);
    L_0x0423:
        r1 = r8;
        r8 = r10;
        goto L_0x02ab;
    L_0x0427:
        r0 = r21;
        r1 = r0.loopCount;
        r1 = r1 + 1;
        r0 = r21;
        r0.loopCount = r1;
        goto L_0x040b;
    L_0x0432:
        r0 = r21;
        r1 = r0.introCount;
        r1 = r1 + 1;
        r0 = r21;
        r0.introCount = r1;
        r1 = 0;
        r0 = r21;
        r0.manageTemplateList(r1);
        goto L_0x0423;
    L_0x0443:
        r0 = r17;
        if (r0 <= r12) goto L_0x04fd;
    L_0x0447:
        if (r17 >= 0) goto L_0x044d;
    L_0x0449:
        r1 = r8;
        r8 = r10;
        goto L_0x02ab;
    L_0x044d:
        r8 = r8 - r11;
        r1 = com.nexstreaming.nexeditorsdk.nexClip.dup(r16);
        r0 = r22;
        r0.add(r1);
        r0 = r21;
        r1 = r0.tempClipID;
        r12 = r1 + 1;
        r0 = r21;
        r0.tempClipID = r12;
        r12 = 1;
        r0 = r22;
        r12 = r0.getClip(r1, r12);
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r0 = r0.templateListID;
        r17 = r0;
        r0 = r17;
        r1 = r1.get(r0);
        r1 = (java.util.HashMap) r1;
        r17 = "source_type";
        r0 = r17;
        r1 = r1.get(r0);
        r1 = (java.lang.String) r1;
        r17 = "ALL";
        r0 = r17;
        r1 = r1.equals(r0);
        if (r1 != 0) goto L_0x04b6;
    L_0x048f:
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r0 = r0.templateListID;
        r17 = r0;
        r0 = r17;
        r1 = r1.get(r0);
        r1 = (java.util.HashMap) r1;
        r17 = "source_type";
        r0 = r17;
        r1 = r1.get(r0);
        r1 = (java.lang.String) r1;
        r17 = "VIDEO";
        r0 = r17;
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x04d3;
    L_0x04b6:
        r1 = r12.getClipType();
        r17 = 4;
        r0 = r17;
        if (r1 != r0) goto L_0x04d3;
    L_0x04c0:
        r12.setRotateDegree(r14);
        r1 = r12.getVideoClipEdit();
        r1.setSpeedControl(r15);
        r1 = r12.getVideoClipEdit();
        r12 = r10 + r11;
        r1.setTrim(r10, r12);
    L_0x04d3:
        r10 = r10 + r11;
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r11 = r0.mIntroTemplateList;
        if (r1 != r11) goto L_0x04f2;
    L_0x04de:
        r0 = r21;
        r1 = r0.introCount;
        r1 = r1 + 1;
        r0 = r21;
        r0.introCount = r1;
    L_0x04e8:
        r1 = 1;
        r0 = r21;
        r0.manageTemplateList(r1);
        r1 = r8;
        r8 = r10;
        goto L_0x02ab;
    L_0x04f2:
        r0 = r21;
        r1 = r0.loopCount;
        r1 = r1 + 1;
        r0 = r21;
        r0.loopCount = r1;
        goto L_0x04e8;
    L_0x04fd:
        r1 = com.nexstreaming.nexeditorsdk.nexClip.dup(r16);
        r0 = r22;
        r0.add(r1);
        r0 = r21;
        r1 = r0.tempClipID;
        r12 = r1 + 1;
        r0 = r21;
        r0.tempClipID = r12;
        r12 = 1;
        r0 = r22;
        r12 = r0.getClip(r1, r12);
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r0 = r0.templateListID;
        r18 = r0;
        r0 = r18;
        r1 = r1.get(r0);
        r1 = (java.util.HashMap) r1;
        r18 = "source_type";
        r0 = r18;
        r1 = r1.get(r0);
        r1 = (java.lang.String) r1;
        r18 = "ALL";
        r0 = r18;
        r1 = r1.equals(r0);
        if (r1 != 0) goto L_0x0565;
    L_0x053e:
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r0 = r0.templateListID;
        r18 = r0;
        r0 = r18;
        r1 = r1.get(r0);
        r1 = (java.util.HashMap) r1;
        r18 = "source_type";
        r0 = r18;
        r1 = r1.get(r0);
        r1 = (java.lang.String) r1;
        r18 = "VIDEO";
        r0 = r18;
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x0584;
    L_0x0565:
        r1 = r12.getClipType();
        r18 = 4;
        r0 = r18;
        if (r1 != r0) goto L_0x0584;
    L_0x056f:
        r12.setRotateDegree(r14);
        r1 = r12.getVideoClipEdit();
        r1.setSpeedControl(r15);
        r1 = r12.getVideoClipEdit();
        r12 = r17 / 2;
        r12 = r12 + r11;
        r12 = r12 + r10;
        r1.setTrim(r10, r12);
    L_0x0584:
        r1 = r17 / 2;
        r1 = r1 + r11;
        r10 = r10 + r1;
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r11 = r0.mIntroTemplateList;
        if (r1 != r11) goto L_0x05b8;
    L_0x0592:
        r0 = r21;
        r1 = r0.introCount;
        r1 = r1 + 1;
        r0 = r21;
        r0.introCount = r1;
    L_0x059c:
        r2 = r2 + 1;
        r1 = 1;
        r1 = r13.getTotalClipCount(r1);
        if (r2 >= r1) goto L_0x05c3;
    L_0x05a5:
        r1 = "nexTemplateComposer";
        r5 = "video,case 3] the certain clip exist in the source project.";
        android.util.Log.d(r1, r5);
        r5 = 1;
        r1 = 1;
        r0 = r21;
        r0.manageTemplateList(r1);
        r1 = r8;
        r8 = r10;
        goto L_0x02ab;
    L_0x05b8:
        r0 = r21;
        r1 = r0.loopCount;
        r1 = r1 + 1;
        r0 = r21;
        r0.loopCount = r1;
        goto L_0x059c;
    L_0x05c3:
        r1 = 0;
        r0 = r21;
        r0.manageTemplateList(r1);
        r1 = r8;
        r8 = r10;
        goto L_0x02ab;
    L_0x05cd:
        r1 = 1;
        r1 = r13.getClip(r6, r1);
        r1 = r1.getClipType();
        r7 = 1;
        if (r1 != r7) goto L_0x0692;
    L_0x05d9:
        r21.addSpecialClip2Project(r22);
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r7 = r0.templateListID;
        r1 = r1.get(r7);
        r1 = (java.util.HashMap) r1;
        r7 = "duration";
        r1 = r1.get(r7);
        r1 = (java.lang.String) r1;
        r1 = java.lang.Integer.parseInt(r1);
        r7 = 1;
        r7 = r13.getClip(r6, r7);
        r7 = r7.getRotateDegree();
        r8 = 1;
        r8 = r13.getClip(r6, r8);
        r8 = com.nexstreaming.nexeditorsdk.nexClip.dup(r8);
        r8.setRotateDegree(r7);
        r8.setImageClipDuration(r1);
        r0 = r22;
        r0.add(r8);
        r2 = r2 + 1;
        r1 = 1;
        r1 = r13.getTotalClipCount(r1);
        if (r2 >= r1) goto L_0x067d;
    L_0x061c:
        r0 = r21;
        r1 = r0.templateList;
        r0 = r21;
        r7 = r0.mIntroTemplateList;
        if (r1 != r7) goto L_0x0656;
    L_0x0626:
        r0 = r21;
        r1 = r0.introCount;
        r1 = r1 + 1;
        r0 = r21;
        r0.introCount = r1;
    L_0x0630:
        r1 = 1;
        r1 = r13.getTotalClipCount(r1);
        r1 = r1 + -1;
        if (r2 != r1) goto L_0x066f;
    L_0x0639:
        r1 = 1;
        r1 = r13.getClip(r2, r1);
        r1 = r1.getClipType();
        r7 = 4;
        if (r1 != r7) goto L_0x0661;
    L_0x0645:
        r1 = "nexTemplateComposer";
        r7 = "image] the clipType of last clip is video, and go continually";
        android.util.Log.d(r1, r7);
        r1 = 1;
        r0 = r21;
        r0.manageTemplateList(r1);
    L_0x0652:
        r1 = r2;
        r2 = r5;
        goto L_0x02af;
    L_0x0656:
        r0 = r21;
        r1 = r0.loopCount;
        r1 = r1 + 1;
        r0 = r21;
        r0.loopCount = r1;
        goto L_0x0630;
    L_0x0661:
        r1 = "nexTemplateComposer";
        r7 = "image] the clipType of last clip is image, and goto OutTroTemplate";
        android.util.Log.d(r1, r7);
        r1 = 0;
        r0 = r21;
        r0.manageTemplateList(r1);
        goto L_0x0652;
    L_0x066f:
        r1 = "nexTemplateComposer";
        r7 = "image] some clips exist in the source project.";
        android.util.Log.d(r1, r7);
        r1 = 1;
        r0 = r21;
        r0.manageTemplateList(r1);
        goto L_0x0652;
    L_0x067d:
        r1 = "nexTemplateComposer";
        r7 = "image] No more any clip after this image clip.";
        android.util.Log.d(r1, r7);
        r0 = r21;
        r1 = r0.mTemplateTypeCountList;
        r7 = 2;
        r8 = 1;
        r8 = java.lang.Integer.valueOf(r8);
        r1.append(r7, r8);
        goto L_0x0652;
    L_0x0692:
        r1 = "nexTemplateComposer";
        r7 = new java.lang.StringBuilder;
        r7.<init>();
        r8 = "not support_type in template:";
        r7 = r7.append(r8);
        r8 = 1;
        r8 = r13.getClip(r6, r8);
        r8 = r8.getClipType();
        r7 = r7.append(r8);
        r7 = r7.toString();
        android.util.Log.d(r1, r7);
        r1 = r2;
        r2 = r5;
        goto L_0x02af;
    L_0x06b7:
        r6 = r5;
        r5 = r2;
        r2 = r1;
        goto L_0x0069;
    L_0x06bc:
        r1 = r12;
        goto L_0x0172;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.nexeditorsdk.nexTemplateComposer.consistProjectViaVer2(com.nexstreaming.nexeditorsdk.nexProject):void");
    }

    String setProperty2VideoClip(nexProject nexproject, nexClip nexclip, int i) {
        String str;
        String str2;
        int parseInt = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_VOLUME)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_VOLUME));
        int parseInt2 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_CONTRAST)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_CONTRAST));
        int parseInt3 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_BRIGHTNESS)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_BRIGHTNESS));
        int parseInt4 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SATURATION)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SATURATION));
        int parseInt5 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_COLOR_FILTER)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_COLOR_FILTER));
        if (((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SPEED_CONTROL)).equals("default")) {
            str = "-1";
        } else {
            str = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SPEED_CONTROL);
        }
        int parseInt6 = Integer.parseInt(str);
        str = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_EFFECTS);
        String str3 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_LUT);
        String str4 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_VIGNETTE);
        String str5 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_CROP_MODE);
        if (str5.equals("")) {
            str2 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_VIDEO_CROP_MODE);
        } else {
            str2 = str5;
        }
        try {
            int i2;
            if (str.equals("none")) {
                nexclip.getClipEffect(true).setEffectNone();
                i2 = parseInt6;
            } else {
                int i3;
                nexclip.getClipEffect(true).setEffect(str);
                if (!this.mUseProjectSpeed || nexclip.getVideoClipEdit().getSpeedControl() == 100) {
                    i3 = parseInt6;
                } else {
                    i3 = nexclip.getVideoClipEdit().getSpeedControl();
                }
                nexclip.getClipEffect(true).setEffectShowTime(0, 0);
                str = str.substring(str.lastIndexOf("."));
                if (str.equals(".opening") || str.equals(".middle") || str.equals(".ending")) {
                    nexclip.getClipEffect(true).setTitle(0, " ");
                    nexclip.getClipEffect(true).setTitle(1, " ");
                }
                i2 = i3;
            }
            if (parseInt != -1) {
                nexclip.setClipVolume(parseInt);
            }
            if (parseInt3 != -1) {
                nexclip.setBrightness(parseInt3);
            }
            if (parseInt2 != -1) {
                nexclip.setContrast(parseInt2);
            }
            if (parseInt4 != -1) {
                nexclip.setSaturation(parseInt4);
            }
            if (parseInt5 != -1) {
                nexclip.setColorEffect(getColorEffect(parseInt5 - 1));
            }
            if (i2 != -1) {
                nexclip.getVideoClipEdit().setSpeedControl(i2);
            }
            Object obj = -1;
            switch (str2.hashCode()) {
                case 101393:
                    if (str2.equals("fit")) {
                        obj = 3;
                        break;
                    }
                    break;
                case 3143043:
                    if (str2.equals("fill")) {
                        obj = null;
                        break;
                    }
                    break;
                case 1054849215:
                    if (str2.equals("pan_face")) {
                        obj = 2;
                        break;
                    }
                    break;
                case 1055207047:
                    if (str2.equals("pan_rand")) {
                        obj = 1;
                        break;
                    }
                    break;
            }
            switch (obj) {
                case null:
                    nexclip.getCrop().randomizeStartEndPosition(false, CropMode.FILL);
                    break;
                case 1:
                    nexclip.getCrop().randomizeStartEndPosition(false, CropMode.PAN_RAND);
                    break;
                case 2:
                    nexclip.getCrop().randomizeStartEndPosition(false, CropMode.PAN_FACE);
                    break;
                case 3:
                    nexclip.getCrop().randomizeStartEndPosition(false, CropMode.FIT);
                    break;
            }
            if (!(str3 == null || str3.equals("null"))) {
                nexColorEffect lutColorEffect;
                if (this.mTemplateID != null) {
                    lutColorEffect = nexColorEffect.getLutColorEffect(str3);
                    if (lutColorEffect != null) {
                        Log.d(TAG, "lut color effect set =" + lutColorEffect.getPresetName());
                        nexclip.setColorEffect(lutColorEffect);
                    }
                } else {
                    for (nexColorEffect lutColorEffect2 : nexColorEffect.getPresetList()) {
                        if (lutColorEffect2.getPresetName().equals(str3)) {
                            nexclip.setColorEffect(lutColorEffect2);
                        }
                    }
                }
            }
            String[] split = str4.split(",");
            if (split[0].equals("clip")) {
                if (split[1].equals("yes")) {
                    nexclip.setVignetteEffect(true);
                } else {
                    nexclip.setVignetteEffect(false);
                }
            } else if (split[0].equals("overlay")) {
                addTemplateOverlay(i, str4);
            }
            this.templateListID++;
            if (((String) ((HashMap) this.templateList.get(this.templateListID)).get("type")).equals("transition")) {
                str = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_EFFECTS);
                int parseInt7 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION));
                if (this.mOverlappedTransition) {
                    int[] transitionDurationTimeGuideLine = nexproject.getTransitionDurationTimeGuideLine(i, parseInt7);
                    if (transitionDurationTimeGuideLine[0] == 0 && transitionDurationTimeGuideLine[1] == 0) {
                        nexclip.getTransitionEffect(true).setEffectNone();
                        nexclip.getTransitionEffect(true).setDuration(0);
                    } else if (str.equals("none")) {
                        nexclip.getTransitionEffect(true).setEffectNone();
                        nexclip.getTransitionEffect(true).setDuration(0);
                    } else {
                        nexclip.getTransitionEffect(true).setTransitionEffect(str);
                        if (parseInt7 != -1) {
                            nexclip.getTransitionEffect(true).setDuration(parseInt7);
                        }
                    }
                } else {
                    nexclip.getTransitionEffect(true).setEffectNone();
                    nexclip.getTransitionEffect(true).setDuration(0);
                }
            }
            return null;
        } catch (nexSDKException e) {
            return e.getMessage();
        }
    }

    String setProperty2ImageClip(nexClip nexclip, int i) {
        if (((String) ((HashMap) this.templateList.get(this.templateListID)).get("type")).equals("scene")) {
            String str;
            int parseInt = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_CONTRAST)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_CONTRAST));
            int parseInt2 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_BRIGHTNESS)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_BRIGHTNESS));
            int parseInt3 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SATURATION)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_SATURATION));
            if (((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_COLOR_FILTER)).equals("default")) {
                str = "-1";
            } else {
                str = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_COLOR_FILTER);
            }
            int parseInt4 = Integer.parseInt(str);
            str = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_EFFECTS);
            String str2 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_LUT);
            String str3 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_VIGNETTE);
            String str4 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_CROP_MODE);
            if (str4.equals("")) {
                str4 = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_IMAGE_CROP_MODE);
            }
            try {
                nexclip.setClipVolume(0);
                if (str.equals("none")) {
                    nexclip.getClipEffect(true).setEffectNone();
                } else {
                    nexclip.getClipEffect(true).setEffect(str);
                    nexclip.getClipEffect(true).setEffectShowTime(0, nexclip.getProjectEndTime() - nexclip.getProjectStartTime());
                }
                if (parseInt2 != -1) {
                    nexclip.setBrightness(parseInt2);
                }
                if (parseInt != -1) {
                    nexclip.setContrast(parseInt);
                }
                if (parseInt3 != -1) {
                    nexclip.setSaturation(parseInt3);
                }
                if (parseInt4 != -1) {
                    nexclip.setColorEffect(getColorEffect(parseInt4 - 1));
                }
                Object obj = -1;
                switch (str4.hashCode()) {
                    case 101393:
                        if (str4.equals("fit")) {
                            obj = 3;
                            break;
                        }
                        break;
                    case 3143043:
                        if (str4.equals("fill")) {
                            obj = null;
                            break;
                        }
                        break;
                    case 1054849215:
                        if (str4.equals("pan_face")) {
                            obj = 2;
                            break;
                        }
                        break;
                    case 1055207047:
                        if (str4.equals("pan_rand")) {
                            obj = 1;
                            break;
                        }
                        break;
                }
                switch (obj) {
                    case null:
                        nexclip.getCrop().randomizeStartEndPosition(false, CropMode.FILL);
                        break;
                    case 1:
                        nexclip.getCrop().randomizeStartEndPosition(false, CropMode.PAN_RAND);
                        break;
                    case 2:
                        nexclip.getCrop().randomizeStartEndPosition(false, CropMode.PAN_FACE);
                        break;
                    case 3:
                        nexclip.getCrop().randomizeStartEndPosition(false, CropMode.FIT);
                        break;
                }
                if (!(str2 == null || str2.equals("null"))) {
                    for (nexColorEffect nexcoloreffect : nexColorEffect.getPresetList()) {
                        if (nexcoloreffect.getPresetName().equals(str2)) {
                            nexclip.setColorEffect(nexcoloreffect);
                        }
                    }
                }
                String[] split = str3.split(",");
                if (split[0].equals("clip")) {
                    if (split[1].equals("yes")) {
                        nexclip.setVignetteEffect(true);
                    } else {
                        nexclip.setVignetteEffect(false);
                    }
                } else if (split[0].equals("overlay")) {
                    addTemplateOverlay(i, str3);
                }
                this.templateListID++;
                if (((String) ((HashMap) this.templateList.get(this.templateListID)).get("type")).equals("transition")) {
                    str = (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_EFFECTS);
                    int parseInt5 = Integer.parseInt(((String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION)).equals("default") ? "-1" : (String) ((HashMap) this.templateList.get(this.templateListID)).get(TAG_DURATION));
                    if (!this.mOverlappedTransition) {
                        nexclip.getTransitionEffect(true).setEffectNone();
                        nexclip.getTransitionEffect(true).setDuration(0);
                    } else if (str.equals("none")) {
                        nexclip.getTransitionEffect(true).setEffectNone();
                        nexclip.getTransitionEffect(true).setDuration(0);
                    } else {
                        nexclip.getTransitionEffect(true).setTransitionEffect(str);
                        if (parseInt5 != -1) {
                            nexclip.getTransitionEffect(true).setDuration(parseInt5);
                        }
                    }
                }
            } catch (nexSDKException e) {
                return e.getMessage();
            }
        }
        return null;
    }

    String setProperty2Clips(nexProject nexproject, String str) {
        if (nexproject.getTotalClipCount(true) == 0) {
            return "no clip in the project";
        }
        if (str.equals("template 1.0")) {
            this.templateList = this.mTemplateList;
        } else {
            this.templateList = this.mIntroTemplateList;
        }
        this.templateListID = 0;
        int i = 0;
        while (!this.mCancel) {
            nexClip clip = nexproject.getClip(i, true);
            String property2VideoClip;
            if (clip.getClipType() == 4) {
                property2VideoClip = setProperty2VideoClip(nexproject, clip, i);
                if (property2VideoClip != null) {
                    return property2VideoClip;
                }
            } else if (clip.getClipType() == 1) {
                property2VideoClip = setProperty2ImageClip(clip, i);
                if (property2VideoClip != null) {
                    return property2VideoClip;
                }
            }
            this.templateListID++;
            if (this.templateListID == this.templateList.size()) {
                this.templateListID = 0;
            }
            int i2 = i + 1;
            if (!str.equals("template 1.0")) {
                if (i2 == ((Integer) this.mTemplateTypeCountList.get(0)).intValue()) {
                    if (((Integer) this.mTemplateTypeCountList.get(1)).intValue() == 0) {
                        this.templateList = this.mOutroTemplateList;
                    } else {
                        this.templateList = this.mLoopTemplateList;
                    }
                    this.templateListID = 0;
                }
                if (this.templateList == this.mLoopTemplateList) {
                    if (i2 == ((Integer) this.mTemplateTypeCountList.get(1)).intValue() + ((Integer) this.mTemplateTypeCountList.get(0)).intValue()) {
                        this.templateList = this.mOutroTemplateList;
                        this.templateListID = 0;
                    }
                }
            }
            if (i2 == nexproject.getTotalClipCount(true)) {
                clip.getTransitionEffect(true).setEffectNone();
                clip.getTransitionEffect(true).setDuration(0);
            }
            if (i2 >= nexproject.getTotalClipCount(true)) {
                nexproject.updateProject();
                return null;
            }
            i = i2;
        }
        this.mCancel = false;
        return cancelMassage;
    }

    String applyTemplateOnProject(nexProject nexproject) {
        if (this.mTemplate == null) {
            return "Template did not exist while apply template 2.0";
        }
        int g = this.mTemplate.g();
        for (int i = 0; i < nexproject.getTotalClipCount(true); i++) {
            nexClip clip = nexproject.getClip(i, true);
            if (clip.getClipType() == 1) {
                clip.setImageClipDuration(g);
            }
        }
        nexproject.updateProject();
        nexproject.setTemplageOverlappedTransitionMode(this.mOverlappedTransition);
        String a = this.mTemplate.a(nexproject, this.mAppContext, this.mResContext, this.mUseProjectSpeed, this.mOverlappedTransition);
        return a == null ? null : a;
    }

    nexColorEffect getColorEffect(int i) {
        return (nexColorEffect) nexColorEffect.getPresetList().get(i);
    }

    static String readFromFile(String str) {
        Throwable th;
        try {
            InputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(new File(str)));
            Throwable th2 = null;
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(bufferedInputStream));
                StringBuilder stringBuilder = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    stringBuilder.append(readLine);
                    stringBuilder.append("\n");
                }
                bufferedInputStream.close();
                if (bufferedInputStream != null) {
                    if (th2 != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    } else {
                        bufferedInputStream.close();
                    }
                }
                return stringBuilder.toString();
            } catch (Throwable th22) {
                Throwable th4 = th22;
                th22 = th;
                th = th4;
            }
            if (bufferedInputStream != null) {
                if (th22 != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th32) {
                        th22.addSuppressed(th32);
                    }
                } else {
                    bufferedInputStream.close();
                }
            }
            throw th;
            throw th;
        } catch (FileNotFoundException e) {
            return e.getMessage();
        } catch (IOException e2) {
            return e2.getMessage();
        }
    }

    static String readFromFile(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            StringBuilder stringBuilder = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    stringBuilder.append(readLine);
                    stringBuilder.append("\n");
                } else {
                    inputStream.close();
                    return stringBuilder.toString();
                }
            }
        } catch (IOException e) {
            return e.getMessage();
        }
    }

    String raw2file(Context context, Context context2, String str) throws Exception {
        int lastIndexOf = str.lastIndexOf("/");
        String str2 = EditorGlobal.f().getAbsolutePath() + File.separator + TAG_TEMPLATE + File.separator + str.substring(lastIndexOf + 1, str.length());
        File file = new File(str2);
        AssetManager assets = context2.getAssets();
        if (file.isFile()) {
            try {
                AssetFileDescriptor openFd = assets.openFd(str);
                if (file.length() == openFd.getLength()) {
                    openFd.close();
                    Log.d(TAG, "bgm file found in sdcard.");
                    this.mBGMPath = str2;
                    return this.mBGMPath;
                }
                openFd.close();
            } catch (IOException e) {
                Log.d(TAG, "bgm file found in sdcard.");
                this.mBGMPath = str2;
                return this.mBGMPath;
            }
        }
        InputStream open = assets.open(str);
        if (open != null) {
            try {
                File file2 = new File(EditorGlobal.f().getAbsolutePath() + File.separator + TAG_TEMPLATE);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                in2sdcard(open, file);
                Log.d(TAG, "bgm file copy assete to sdcard.");
                open.close();
                this.mBGMPath = str2;
                return this.mBGMPath;
            } catch (Exception e2) {
                String substring = str.substring(lastIndexOf + 1, str.length());
                try {
                    in2file(context, open, substring);
                    Log.d(TAG, "bgm file copy assete to temp data.");
                    this.mBGMTempFile = true;
                    this.mBGMPath = context.getFilesDir().getAbsolutePath() + File.separator + substring;
                    return this.mBGMPath;
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        }
        return null;
    }

    static void in2sdcard(InputStream inputStream, File file) throws IOException {
        IOException e;
        Throwable th;
        byte[] bArr = new byte[1024];
        FileOutputStream fileOutputStream;
        try {
            fileOutputStream = new FileOutputStream(file);
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read > 0) {
                        fileOutputStream.write(bArr, 0, read);
                    } else if (fileOutputStream != null) {
                        fileOutputStream.close();
                        return;
                    } else {
                        return;
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream = null;
            try {
                throw e;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
            throw th;
        }
    }

    void in2file(Context context, InputStream inputStream, String str) throws Exception {
        byte[] bArr = new byte[1024];
        OutputStream outputStream = null;
        try {
            outputStream = context.openFileOutput(str, 1);
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (outputStream != null) {
                        outputStream.close();
                        return;
                    }
                    return;
                }
                outputStream.write(bArr, 0, read);
            }
        } catch (Exception e) {
            throw e;
        } catch (Throwable th) {
            if (inputStream != null) {
                inputStream.close();
            }
            if (outputStream != null) {
                outputStream.close();
            }
        }
    }

    static String AssetPackageTemplateJsonToString(String str) {
        String str2 = null;
        f c = c.a().c(str);
        if (c == null) {
            Log.e(TAG, "AssetPackageTemplateJsonToString info fail=" + str);
        } else if (c.a().a(c.getAssetPackage())) {
            Log.e(TAG, "AssetPackageTemplateJsonToString expire item id=" + str);
        } else {
            try {
                Closeable a = AssetPackageReader.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), c.getPackageURI(), c.getAssetPackage().getAssetId());
                Log.d(TAG, "Template(" + str + ") Asset(" + c.getAssetPackage().getAssetIdx() + ") version(In DB)=" + c.getAssetPackage().getPackageVersion() + ", version(In reader)=" + a.b());
                try {
                    InputStream a2 = a.a(c.getFilePath());
                    if (a2 != null) {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(a2));
                        StringBuilder stringBuilder = new StringBuilder();
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            stringBuilder.append(readLine);
                            stringBuilder.append("\n");
                        }
                        a2.close();
                        str2 = stringBuilder.toString();
                    } else {
                        b.a(a);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                } finally {
                    b.a(a);
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        return str2;
    }

    void setCancel() {
        this.mCancel = true;
        if (this.mTemplate != null) {
            Log.d(TAG, "setCancel");
            this.mTemplate.h();
            return;
        }
        Log.d(TAG, "setCancel mTemplate is null");
    }
}
