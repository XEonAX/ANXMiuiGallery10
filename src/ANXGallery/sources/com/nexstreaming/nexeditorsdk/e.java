package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Color;
import android.util.Log;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.nexstreaming.kminternal.kinemaster.config.a;
import com.nexstreaming.nexeditorsdk.exception.nexSDKException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: nexTemplateEffect */
final class e {
    private static String L = "nexTemplateEffect";
    Map<String, String> A = new HashMap();
    Map<String, String> B = new HashMap();
    Map<String, String> C = new HashMap();
    Map<String, String> D = new HashMap();
    boolean E = true;
    String F = "none";
    int G;
    String H = "none";
    int I;
    int J = 1;
    List<d> K = new ArrayList();
    int a;
    String b;
    String c;
    String d;
    String e;
    int f;
    int g;
    int h;
    int i;
    String j;
    int k = -1;
    int l = -1;
    int m = -1;
    int n = -1;
    int o = 100;
    int p = 0;
    String q = "default";
    int r = BaiduSceneResult.SHOOTING;
    String s = "";
    String t = "";
    String u;
    String v;
    String w;
    String x;
    String y;
    Map<String, String> z = new HashMap();

    e() {
    }

    public static e a(JSONObject jSONObject, int i) {
        String a = a(jSONObject, nexExportFormat.TAG_FORMAT_TYPE);
        if (!a.equals("scene")) {
            return null;
        }
        JSONObject jSONObject2;
        Iterator keys;
        e eVar = new e();
        eVar.a = i;
        eVar.b = a;
        eVar.c = a(jSONObject, "identifier");
        if (jSONObject.has("alternative_id")) {
            eVar.c = a(jSONObject, "alternative_id");
        }
        eVar.d = a(jSONObject, "source_type");
        if (!eVar.d.equals("res_default")) {
            eVar.e = a(jSONObject, "res_path");
        }
        eVar.f = Integer.parseInt(a(jSONObject, "duration"));
        eVar.h = Integer.parseInt(a(jSONObject, "duration_max"));
        eVar.g = Integer.parseInt(a(jSONObject, "duration_min"));
        eVar.i = Integer.parseInt(a(jSONObject, "volume"));
        if (jSONObject.has("effect")) {
            eVar.j = a(jSONObject, "effect");
        } else {
            eVar.j = a(jSONObject, "effects");
        }
        if (jSONObject.has("draw_infos")) {
            try {
                Log.d(L, String.format("Effect : %s", new Object[]{eVar.j}));
                JSONArray jSONArray = jSONObject.getJSONArray("draw_infos");
                int i2 = 1;
                for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                    d a2 = d.a(jSONArray.getJSONObject(i3), (i << 16) | i2);
                    if (a2 != null) {
                        eVar.K.add(a2);
                        a2.a();
                    }
                    i2++;
                }
            } catch (JSONException e) {
                e.printStackTrace();
                eVar.K.clear();
            }
            if (a(jSONObject, "apply_effect_on_res").equals("0")) {
                eVar.E = false;
            }
        }
        String a3 = a(jSONObject, "speed_control");
        if (!a3.equals("default")) {
            eVar.o = Integer.parseInt(a3);
        }
        a3 = a(jSONObject, "brightness");
        if (!a3.equals("default")) {
            eVar.k = Integer.parseInt(a3);
        }
        a3 = a(jSONObject, "contrast");
        if (!a3.equals("default")) {
            eVar.l = Integer.parseInt(a3);
        }
        a3 = a(jSONObject, "saturation");
        if (!a3.equals("default")) {
            eVar.m = Integer.parseInt(a3);
        }
        a3 = a(jSONObject, "color_filter");
        if (!a3.equals("default")) {
            eVar.n = Integer.parseInt(a3);
        }
        eVar.y = a(jSONObject, "vignette");
        eVar.u = a(jSONObject, "lut");
        eVar.v = a(jSONObject, "external_video_path");
        eVar.w = a(jSONObject, "external_image_path");
        eVar.x = a(jSONObject, "solid_color");
        if (jSONObject.has("apply_effect_on_res") && a(jSONObject, "apply_effect_on_res").equals("0")) {
            eVar.E = false;
        }
        if (jSONObject.has("audio_res")) {
            a3 = a(jSONObject, "audio_res");
            if (!a3.equals("none")) {
                a = a(jSONObject, "audio_res_pos");
                eVar.F = a3;
                eVar.G = Integer.parseInt(a);
            }
        }
        eVar.q = a(jSONObject, "crop_mode");
        if (jSONObject.has("video_crop_mode")) {
            eVar.s = a(jSONObject, "video_crop_mode");
        }
        if (jSONObject.has("image_crop_mode")) {
            eVar.t = a(jSONObject, "image_crop_mode");
        }
        if (jSONObject.has("image_crop_speed")) {
            eVar.r = Integer.parseInt(a(jSONObject, "image_crop_speed"));
        }
        if (jSONObject.has("freeze_duration")) {
            eVar.p = Integer.parseInt(a(jSONObject, "freeze_duration"));
        }
        eVar.H = a(jSONObject, "transition_name");
        if (eVar.H == null || eVar.H.compareTo("none") == 0) {
            eVar.I = 0;
        } else {
            eVar.I = Integer.parseInt(a(jSONObject, "transition_duration"));
        }
        if (jSONObject.has("use_particle_video")) {
            eVar.J = Integer.parseInt(a(jSONObject, "use_particle_video"));
        }
        if (jSONObject.has("alternative_effect")) {
            try {
                eVar.z.clear();
                jSONObject2 = jSONObject.getJSONObject("alternative_effect");
                keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    a3 = (String) keys.next();
                    eVar.z.put(a3, jSONObject2.getString(a3));
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
                eVar.z.clear();
            }
        }
        if (jSONObject.has("alternative_transition")) {
            try {
                eVar.A.clear();
                jSONObject2 = jSONObject.getJSONObject("alternative_transition");
                keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    a3 = (String) keys.next();
                    eVar.A.put(a3, jSONObject2.getString(a3));
                }
            } catch (JSONException e22) {
                e22.printStackTrace();
                eVar.A.clear();
            }
        }
        if (jSONObject.has("alternative_lut")) {
            try {
                eVar.B.clear();
                jSONObject2 = jSONObject.getJSONObject("alternative_lut");
                keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    a3 = (String) keys.next();
                    eVar.B.put(a3, jSONObject2.getString(a3));
                }
            } catch (JSONException e222) {
                e222.printStackTrace();
                eVar.B.clear();
            }
        }
        if (jSONObject.has("alternative_audio")) {
            try {
                eVar.C.clear();
                jSONObject2 = jSONObject.getJSONObject("alternative_audio");
                keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    a3 = (String) keys.next();
                    eVar.C.put(a3, jSONObject2.getString(a3));
                }
            } catch (JSONException e2222) {
                e2222.printStackTrace();
                eVar.C.clear();
            }
        }
        if (jSONObject.has("alternative_audio_pos")) {
            try {
                eVar.D.clear();
                jSONObject2 = jSONObject.getJSONObject("alternative_audio_pos");
                keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    a3 = (String) keys.next();
                    eVar.D.put(a3, jSONObject2.getString(a3));
                }
            } catch (JSONException e22222) {
                e22222.printStackTrace();
                eVar.D.clear();
            }
        }
        return eVar;
    }

    public String a(String str, nexClip nexclip, boolean z, float f, boolean z2) {
        Log.d(L, String.format("Template applyEffect %s  clip(%d %d) effect(%s) apply_transition(%b) transition(%s, %d)", new Object[]{str, Integer.valueOf(nexclip.getProjectStartTime()), Integer.valueOf(nexclip.getProjectDuration()), this.j, Boolean.valueOf(z), this.H, Integer.valueOf(this.I)}));
        int i = this.a;
        if (z) {
            i |= nexEngine.ExportHEVCMainTierLevel62;
        }
        nexclip.setTemplateEffectID(i);
        try {
            if (nexclip.getClipType() == 4) {
                if (this.i != -1) {
                    if (this.i == 0) {
                        nexclip.setAudioOnOff(false);
                    } else {
                        nexclip.setAudioOnOff(true);
                        nexclip.setClipVolume(this.i);
                    }
                }
                if (!(z2 || this.o == -1)) {
                    nexclip.getVideoClipEdit().setSpeedControl(this.o);
                }
                Log.d(L, String.format("freeze_duration(%d)", new Object[]{Integer.valueOf(this.p)}));
                if (this.p != 0) {
                    nexclip.getVideoClipEdit().setFreezeDuration(this.p);
                }
            }
            if (this.j.equals("none")) {
                nexclip.getClipEffect(true).setEffectNone();
            } else {
                nexclip.getClipEffect(true).setEffect(this.j);
            }
            nexclip.getClipEffect(true).setEffectShowTime(0, 0);
            a(nexclip);
            a(nexclip, f);
            b(nexclip);
            if (!z || this.H.equals("none") || this.I <= 0) {
                nexclip.getTransitionEffect(true).setEffectNone();
                nexclip.getTransitionEffect(true).setDuration(0);
                return null;
            } else if (nexclip.getProjectDuration() <= this.I) {
                Log.d(L, String.format("Template Apply transition was ignored on short clip", new Object[0]));
                nexclip.getTransitionEffect(true).setEffectNone();
                nexclip.getTransitionEffect(true).setDuration(0);
                return null;
            } else {
                nexclip.getTransitionEffect(true).setTransitionEffect(this.H);
                nexclip.getTransitionEffect(true).setDuration(this.I);
                return null;
            }
        } catch (nexSDKException e) {
            return e.getMessage();
        }
    }

    public void a(nexProject nexproject, nexClip nexclip, String str, boolean z) {
        if (z && str != null && str.length() > 0) {
            if (this.z.containsKey(str)) {
                nexclip.getClipEffect(true).setEffect((String) this.z.get(str));
            }
            if (this.A.containsKey(str)) {
                nexclip.getTransitionEffect(true).setTransitionEffect((String) this.A.get(str));
            }
            if (this.B.containsKey(str) && !((String) this.B.get(str)).equals("null")) {
                nexColorEffect lutColorEffect = nexColorEffect.getLutColorEffect((String) this.B.get(str));
                if (lutColorEffect != null) {
                    nexclip.setColorEffect(lutColorEffect);
                }
            }
            if (this.C.containsKey(str)) {
                String str2 = (String) this.C.get(str);
                if (str2 != null && str2.length() > 0 && !str2.equals("none")) {
                    nexClip supportedClip = nexClip.getSupportedClip(nexAssetPackageManager.getAssetPackageMediaPath(a.a().b(), str2));
                    if (supportedClip != null) {
                        int totalTime = supportedClip.getTotalTime();
                        int parseInt = Integer.parseInt((String) this.D.get(str));
                        supportedClip.setTemplateEffectID(this.a);
                        supportedClip.setTemplateAudioPos(parseInt);
                        for (parseInt = 0; parseInt < nexproject.getTotalClipCount(false); parseInt++) {
                            nexClip clip = nexproject.getClip(0, false);
                            if (clip != null && clip.getTemplateEffectID() == this.a) {
                                nexproject.remove(clip);
                            }
                        }
                        nexproject.addAudio(supportedClip, nexclip.getProjectStartTime(), nexclip.getProjectStartTime() + totalTime);
                    }
                }
            }
        }
    }

    public boolean a(nexProject nexproject, Context context, float f) {
        nexClip nexclip = null;
        String assetPackageMediaPath;
        if (this.d.equals("res_video")) {
            assetPackageMediaPath = nexAssetPackageManager.getAssetPackageMediaPath(context, this.e);
            if (assetPackageMediaPath != null) {
                nexclip = nexClip.getSupportedClip(assetPackageMediaPath);
            }
            Log.d(L, String.format("Template applyResource2Project file : ", new Object[0]) + assetPackageMediaPath);
            if (nexclip == null) {
                return true;
            }
            nexproject.add(nexclip);
            nexproject.updateProject();
            nexclip.setAssetResource(true);
            a("res : ", nexclip, true, f, false);
            a(nexproject, nexclip);
            return true;
        } else if (this.d.equals("res_image")) {
            assetPackageMediaPath = nexAssetPackageManager.getAssetPackageMediaPath(context, this.e);
            if (assetPackageMediaPath != null) {
                nexclip = nexClip.getSupportedClip(assetPackageMediaPath);
            }
            if (nexclip == null) {
                return true;
            }
            nexclip.setImageClipDuration(this.f + this.I);
            nexproject.add(nexclip);
            nexproject.updateProject();
            nexclip.setAssetResource(true);
            a("res : ", nexclip, true, f, false);
            a(nexproject, nexclip);
            return true;
        } else if (!this.d.equals("res_solid")) {
            return false;
        } else {
            nexclip = nexClip.getSolidClip(Color.parseColor(this.e));
            if (nexclip == null) {
                return true;
            }
            nexclip.setImageClipDuration(this.f + this.I);
            nexproject.add(nexclip);
            nexproject.updateProject();
            nexclip.setAssetResource(true);
            a("res : ", nexclip, true, f, false);
            a(nexproject, nexclip);
            return true;
        }
    }

    public boolean a() {
        if (this.d.equals("res_video") || this.d.equals("res_image") || this.d.equals("res_solid")) {
            return true;
        }
        return false;
    }

    public String b() {
        return this.d;
    }

    public int c() {
        return this.f;
    }

    public int d() {
        return this.g;
    }

    public int e() {
        return this.h;
    }

    public boolean f() {
        return this.E;
    }

    public boolean g() {
        return this.J == 1;
    }

    public int h() {
        return this.I;
    }

    public int a(boolean z) {
        int i = 0;
        if (this.K == null) {
            return 0;
        }
        Iterator it = this.K.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            d dVar = (d) it.next();
            if (!z) {
                i = i2 + 1;
            } else if (dVar.b.compareTo("res_default") == 0 || dVar.b.compareTo("user") == 0) {
                i = i2 + 1;
            } else {
                i = i2;
            }
        }
    }

    public List<nexDrawInfo> a(int i, int i2, String str) {
        List<nexDrawInfo> arrayList = new ArrayList();
        if (i2 == 0) {
            i2 = this.f;
        }
        nexDrawInfo nexdrawinfo = new nexDrawInfo();
        nexdrawinfo.setID(this.a);
        nexdrawinfo.setSubEffectID((this.a << 16) | 1);
        if (str == null || !this.z.containsKey(str)) {
            nexdrawinfo.setEffectID(this.j);
        } else {
            nexdrawinfo.setEffectID((String) this.z.get(str));
        }
        nexdrawinfo.setStartTime(i);
        nexdrawinfo.setEndTime(i + i2);
        nexdrawinfo.setSubTemplateDrawInfos(this.K);
        arrayList.add(nexdrawinfo);
        if (this.H.compareTo("none") == 0 || this.I <= 0) {
            return arrayList;
        }
        nexDrawInfo nexdrawinfo2 = new nexDrawInfo();
        if (str == null || !this.A.containsKey(str)) {
            nexdrawinfo2.setEffectID(this.H);
        } else {
            nexdrawinfo2.setEffectID((String) this.A.get(str));
        }
        nexdrawinfo2.setIsTransition(1);
        nexdrawinfo2.setStartTime(nexdrawinfo.getEndTime() - this.I);
        nexdrawinfo2.setEndTime(nexdrawinfo.getEndTime());
        arrayList.add(nexdrawinfo2);
        return arrayList;
    }

    public int i() {
        return this.f;
    }

    public List<d> j() {
        return this.K;
    }

    static String a(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getString(str);
        } catch (JSONException e) {
            if (str.equals("effects")) {
                return "none";
            }
            if (str.equals("id") || str.equals("transition_duration") || str.equals("audio_res_pos")) {
                return "0";
            }
            if (str.equals("volume") || str.equals("speed_control")) {
                return "100";
            }
            if (str.equals("duration")) {
                return "3000";
            }
            if (str.equals("duration_max")) {
                return "5000";
            }
            if (str.equals("duration_min")) {
                return "2000";
            }
            if (str.equals("brightness") || str.equals("contrast") || str.equals("saturation") || str.equals("color_filter")) {
                return "-1";
            }
            if (str.equals("source_type")) {
                return "ALL";
            }
            if (str.equals("external_video_path") || str.equals("external_image_path") || str.equals("solid_color") || str.equals("lut")) {
                return null;
            }
            if (str.equals("vignette")) {
                return "clip,no";
            }
            if (str.equals("crop_mode")) {
                return "default";
            }
            if (str.equals("transition_name")) {
                return "none";
            }
            if (str.equals("identifier")) {
                return "";
            }
            if (str.equals("freeze_duration")) {
                return "0";
            }
            if (str.equals("use_particle_video")) {
                return "1";
            }
            return "default";
        }
    }

    nexColorEffect a(int i) {
        return (nexColorEffect) nexColorEffect.getPresetList().get(i);
    }

    String a(nexClip nexclip) {
        if (this.k != -1) {
            nexclip.setBrightness(this.k);
        }
        if (this.l != -1) {
            nexclip.setContrast(this.l);
        }
        if (this.m != -1) {
            nexclip.setSaturation(this.m);
        }
        if (this.n != -1) {
            nexclip.setColorEffect(a(this.n - 1));
        }
        return null;
    }

    String a(nexProject nexproject, nexClip nexclip) {
        if (!(this.F == null || this.F.length() <= 0 || this.F.equals("none"))) {
            nexproject.updateProject();
            nexClip supportedClip = nexClip.getSupportedClip(nexAssetPackageManager.getAssetPackageMediaPath(a.a().b(), this.F));
            if (supportedClip != null) {
                int totalTime = supportedClip.getTotalTime();
                supportedClip.setTemplateEffectID(this.a);
                supportedClip.setTemplateAudioPos(this.G);
                nexproject.addAudio(supportedClip, nexclip.getProjectStartTime(), totalTime + nexclip.getProjectStartTime());
            }
        }
        return null;
    }

    java.lang.String a(com.nexstreaming.nexeditorsdk.nexClip r13, float r14) {
        /*
        r12 = this;
        r6 = 2;
        r4 = 0;
        r8 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r3 = 1;
        r5 = 0;
        r0 = r12.q;
        r1 = r13.getCrop();
        r1 = r1.getEndPosionLock();
        if (r1 == 0) goto L_0x0013;
    L_0x0012:
        return r4;
    L_0x0013:
        r1 = r13.getClipType();
        if (r1 != r3) goto L_0x0023;
    L_0x0019:
        r1 = r12.t;
        r1 = r1.length();
        if (r1 <= 0) goto L_0x0023;
    L_0x0021:
        r0 = r12.t;
    L_0x0023:
        r1 = r13.getClipType();
        r2 = 4;
        if (r1 != r2) goto L_0x0034;
    L_0x002a:
        r1 = r12.s;
        r1 = r1.length();
        if (r1 <= 0) goto L_0x0034;
    L_0x0032:
        r0 = r12.s;
    L_0x0034:
        r1 = -1;
        r2 = r0.hashCode();
        switch(r2) {
            case 101393: goto L_0x00cc;
            case 3143043: goto L_0x00ac;
            case 1054849215: goto L_0x00c1;
            case 1055207047: goto L_0x00b6;
            default: goto L_0x003c;
        };
    L_0x003c:
        r0 = r1;
    L_0x003d:
        switch(r0) {
            case 0: goto L_0x00d7;
            case 1: goto L_0x00e2;
            case 2: goto L_0x00ed;
            case 3: goto L_0x00f8;
            default: goto L_0x0040;
        };
    L_0x0040:
        r0 = 0;
        r0 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1));
        if (r0 == 0) goto L_0x0153;
    L_0x0045:
        r0 = r13.getWidth();
        r0 = (float) r0;
        r1 = r13.getHeight();
        r1 = (float) r1;
        r1 = r1 * r8;
        r1 = r0 / r1;
        r0 = r13.getRotateDegree();
        r2 = r13.getClipType();
        r7 = 4;
        if (r2 != r7) goto L_0x0103;
    L_0x005d:
        r2 = 90;
        if (r0 == r2) goto L_0x0065;
    L_0x0061:
        r2 = 270; // 0x10e float:3.78E-43 double:1.334E-321;
        if (r0 != r2) goto L_0x0071;
    L_0x0065:
        r1 = r13.getHeight();
        r1 = (float) r1;
        r2 = r13.getWidth();
        r2 = (float) r2;
        r2 = r2 * r8;
        r1 = r1 / r2;
    L_0x0071:
        r2 = r14 - r1;
        r2 = java.lang.Math.abs(r2);
        r8 = (double) r2;
        r10 = 4587366580439587226; // 0x3fa999999999999a float:-1.5881868E-23 double:0.05;
        r2 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1));
        if (r2 <= 0) goto L_0x0148;
    L_0x0081:
        r2 = r13.getCrop();
        r7 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.PAN_RAND;
        r2.randomizeStartEndPosition(r5, r7);
    L_0x008a:
        r2 = L;
        r7 = "Apply default crop mode(%f %f) (%d)";
        r8 = 3;
        r8 = new java.lang.Object[r8];
        r9 = java.lang.Float.valueOf(r14);
        r8[r5] = r9;
        r1 = java.lang.Float.valueOf(r1);
        r8[r3] = r1;
        r0 = java.lang.Integer.valueOf(r0);
        r8[r6] = r0;
        r0 = java.lang.String.format(r7, r8);
        android.util.Log.d(r2, r0);
        goto L_0x0012;
    L_0x00ac:
        r2 = "fill";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x003c;
    L_0x00b4:
        r0 = r5;
        goto L_0x003d;
    L_0x00b6:
        r2 = "pan_rand";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x003c;
    L_0x00be:
        r0 = r3;
        goto L_0x003d;
    L_0x00c1:
        r2 = "pan_face";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x003c;
    L_0x00c9:
        r0 = r6;
        goto L_0x003d;
    L_0x00cc:
        r2 = "fit";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x003c;
    L_0x00d4:
        r0 = 3;
        goto L_0x003d;
    L_0x00d7:
        r0 = r13.getCrop();
        r1 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.FILL;
        r0.randomizeStartEndPosition(r5, r1);
        goto L_0x0012;
    L_0x00e2:
        r0 = r13.getCrop();
        r1 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.PAN_RAND;
        r0.randomizeStartEndPosition(r5, r1);
        goto L_0x0012;
    L_0x00ed:
        r0 = r13.getCrop();
        r1 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.PAN_FACE;
        r0.randomizeStartEndPosition(r5, r1);
        goto L_0x0012;
    L_0x00f8:
        r0 = r13.getCrop();
        r1 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.FIT;
        r0.randomizeStartEndPosition(r5, r1);
        goto L_0x0012;
    L_0x0103:
        r2 = r13.getClipType();
        if (r2 != r3) goto L_0x0071;
    L_0x0109:
        r2 = new android.media.ExifInterface;	 Catch:{ IOException -> 0x0140 }
        r7 = r13.getRealPath();	 Catch:{ IOException -> 0x0140 }
        r2.<init>(r7);	 Catch:{ IOException -> 0x0140 }
    L_0x0112:
        if (r2 == 0) goto L_0x0071;
    L_0x0114:
        r7 = "Orientation";
        r2 = r2.getAttribute(r7);
        if (r2 == 0) goto L_0x0146;
    L_0x011c:
        r2 = java.lang.Integer.parseInt(r2);
    L_0x0120:
        r7 = 6;
        if (r2 == r7) goto L_0x0127;
    L_0x0123:
        r7 = 8;
        if (r2 != r7) goto L_0x0071;
    L_0x0127:
        r1 = 6;
        if (r2 != r1) goto L_0x012c;
    L_0x012a:
        r0 = 90;
    L_0x012c:
        r1 = 8;
        if (r2 != r1) goto L_0x0132;
    L_0x0130:
        r0 = 270; // 0x10e float:3.78E-43 double:1.334E-321;
    L_0x0132:
        r1 = r13.getHeight();
        r1 = (float) r1;
        r2 = r13.getWidth();
        r2 = (float) r2;
        r2 = r2 * r8;
        r1 = r1 / r2;
        goto L_0x0071;
    L_0x0140:
        r2 = move-exception;
        r2.printStackTrace();
        r2 = r4;
        goto L_0x0112;
    L_0x0146:
        r2 = r3;
        goto L_0x0120;
    L_0x0148:
        r2 = r13.getCrop();
        r7 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.FIT;
        r2.randomizeStartEndPosition(r5, r7);
        goto L_0x008a;
    L_0x0153:
        r0 = r13.getCrop();
        r1 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.FIT;
        r0.randomizeStartEndPosition(r5, r1);
        goto L_0x0012;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.nexeditorsdk.e.a(com.nexstreaming.nexeditorsdk.nexClip, float):java.lang.String");
    }

    String b(nexClip nexclip) {
        if (!(this.u == null || this.u.equals("null"))) {
            nexColorEffect lutColorEffect = nexColorEffect.getLutColorEffect(this.u);
            if (lutColorEffect != null) {
                Log.d(L, "Template applyLUT2Clip effect set =xte" + lutColorEffect.getPresetName());
                nexclip.setColorEffect(lutColorEffect);
            }
        }
        return null;
    }
}
