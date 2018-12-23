package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import com.nexstreaming.kminternal.kinemaster.config.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: nexTemplateDrawInfo */
final class d {
    private static String r = "nexTemplateDrawInfo";
    int a = 0;
    String b = "";
    String c = "";
    float d;
    float e;
    nexColorEffect f = null;
    Map<String, String> g = new HashMap();
    String h = "default";
    String i = "";
    String j = "";
    float k;
    float l;
    int m = 0;
    int n = 0;
    int o = 0;
    String p = "none";
    float q;

    d() {
    }

    static String a(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getString(str);
        } catch (JSONException e) {
            if (str.equals("source_type")) {
                return "ALL";
            }
            if (str.equals("source_path")) {
                return "default";
            }
            if (str.equals("start")) {
                return "0";
            }
            if (str.equals("end")) {
                return "1";
            }
            if (str.equals("crop_mode") || str.equals("video_crop_mode")) {
                return "default";
            }
            if (str.equals("image_crop_speed")) {
                return "default";
            }
            if (str.equals("lut")) {
                return "null";
            }
            if (str.equals("draw_width") || str.equals("draw_height")) {
                return "0";
            }
            if (str.equals("volume")) {
                return "0";
            }
            if (str.equals("system_source_width") || str.equals("system_source_height")) {
                return "0";
            }
            if (str.equals("audio_res")) {
                return "none";
            }
            if (str.equals("audio_res_pos")) {
                return "0";
            }
            return "default";
        }
    }

    public static d a(JSONObject jSONObject, int i) {
        d dVar = new d();
        dVar.a = i;
        dVar.b = a(jSONObject, "source_type");
        if (!dVar.b.equals("user")) {
            dVar.c = a(jSONObject, "source_path");
            if (jSONObject.has("system_source_width")) {
                dVar.m = Integer.parseInt(a(jSONObject, "system_source_width"));
            }
            if (jSONObject.has("system_source_height")) {
                dVar.n = Integer.parseInt(a(jSONObject, "system_source_height"));
            }
        }
        dVar.d = Float.parseFloat(a(jSONObject, "start"));
        dVar.e = Float.parseFloat(a(jSONObject, "end"));
        String a = a(jSONObject, "lut");
        if (!(a == null || a.compareTo("null") == 0 || a.compareTo("none") == 0)) {
            dVar.f = nexColorEffect.getLutColorEffect(a);
        }
        if (jSONObject.has("alternative_lut")) {
            try {
                dVar.g.clear();
                JSONObject jSONObject2 = jSONObject.getJSONObject("alternative_lut");
                Iterator keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    a = (String) keys.next();
                    dVar.g.put(a, jSONObject2.getString(a));
                }
            } catch (JSONException e) {
                e.printStackTrace();
                dVar.g.clear();
            }
        }
        dVar.h = a(jSONObject, "crop_mode");
        dVar.i = a(jSONObject, "video_crop_mode");
        dVar.j = a(jSONObject, "image_crop_speed");
        dVar.k = Float.parseFloat(a(jSONObject, "draw_width"));
        dVar.l = Float.parseFloat(a(jSONObject, "draw_height"));
        dVar.o = Integer.parseInt(a(jSONObject, "volume"));
        if (jSONObject.has("audio_res")) {
            a = a(jSONObject, "audio_res");
            if (!a.equals("none")) {
                String a2 = a(jSONObject, "audio_res_pos");
                dVar.p = a;
                dVar.q = Float.parseFloat(a2);
            }
        }
        return dVar;
    }

    public boolean a(nexProject nexproject, Context context, e eVar, int i, float f) {
        if ((this.b.compareTo("system") != 0 && this.b.compareTo("system_mt") != 0) || this.c == null || this.c.length() <= 0) {
            return false;
        }
        nexClip supportedClip;
        String assetPackageMediaPath = nexAssetPackageManager.getAssetPackageMediaPath(context, this.c);
        if (assetPackageMediaPath != null) {
            supportedClip = nexClip.getSupportedClip(assetPackageMediaPath);
        } else {
            supportedClip = null;
        }
        if (supportedClip != null) {
            supportedClip.setAssetResource(true);
            if (this.b.compareTo("system_mt") == 0) {
                supportedClip.setMotionTrackedVideo(true);
            }
            nexproject.add(supportedClip);
            supportedClip.clearDrawInfos();
            supportedClip.mStartTime = i;
            supportedClip.mEndTime = supportedClip.getTotalTime() + i;
            a(supportedClip, eVar.a, eVar.i(), i, f, null, false);
        }
        return true;
    }

    public void a(nexClip nexclip, int i, int i2, int i3, float f, String str, boolean z) {
        if (nexclip != null) {
            nexDrawInfo nexdrawinfo = new nexDrawInfo();
            nexdrawinfo.setTopEffectID(i);
            nexdrawinfo.setID(this.a);
            nexdrawinfo.setSubEffectID(this.a);
            int i4 = i3 + ((int) (((float) i2) * this.d));
            int i5 = i3 + ((int) (((float) i2) * this.e));
            Log.d(r, String.format("Template setDrawInfo2Clip(dur:%d start:%d %d %d)", new Object[]{Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)}));
            if (nexclip.getClipType() == 1) {
                nexclip.mStartTime = i4 < nexclip.mStartTime ? i4 : nexclip.mStartTime;
                nexclip.mEndTime = i5 > nexclip.mEndTime ? i5 : nexclip.mEndTime;
                nexclip.setImageClipDuration(nexclip.mEndTime - nexclip.mStartTime);
            } else {
                nexclip.mStartTime = i4 < nexclip.mStartTime ? i4 : nexclip.mStartTime;
                nexclip.mEndTime = i5 > nexclip.mEndTime ? i5 : nexclip.mEndTime;
                if (z) {
                    int i6 = (int) (((float) i2) * (this.e - this.d));
                    if (i6 >= nexclip.getVideoDuration()) {
                        i6 = nexclip.getVideoDuration();
                    }
                    nexclip.getVideoClipEdit().setTrim(0, i6);
                }
                nexclip.setClipVolume(this.o);
            }
            nexdrawinfo.setStartTime(i4);
            nexdrawinfo.setEndTime(i5);
            if (str == null || !this.g.containsKey(str)) {
                nexdrawinfo.setLUT(this.f == null ? 0 : this.f.getLUTId());
            } else {
                nexColorEffect lutColorEffect = nexColorEffect.getLutColorEffect((String) this.g.get(str));
                nexdrawinfo.setLUT(lutColorEffect == null ? 0 : lutColorEffect.getLUTId());
            }
            if (!(this.k == 0.0f || this.l == 0.0f)) {
                f = this.k / this.l;
            }
            nexdrawinfo.setRatio(f);
            a(nexclip, f);
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            nexclip.getCrop().getStartPositionRaw(rect);
            nexclip.getCrop().getEndPositionRaw(rect2);
            nexdrawinfo.setRotateState(nexclip.getRotateDegree());
            nexdrawinfo.setStartRect(rect);
            nexdrawinfo.setEndRect(rect2);
            nexclip.addDrawInfo(nexdrawinfo);
        }
    }

    java.lang.String a(com.nexstreaming.nexeditorsdk.nexClip r13, float r14) {
        /*
        r12 = this;
        r7 = 3;
        r6 = 2;
        r9 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r3 = 1;
        r5 = 0;
        r0 = r12.h;
        r1 = r13.getClipType();
        r2 = 4;
        if (r1 != r2) goto L_0x0019;
    L_0x000f:
        r1 = r12.i;
        r1 = r1.length();
        if (r1 <= 0) goto L_0x0019;
    L_0x0017:
        r0 = r12.i;
    L_0x0019:
        r1 = -1;
        r2 = r0.hashCode();
        switch(r2) {
            case 101393: goto L_0x00b0;
            case 3143043: goto L_0x0090;
            case 1054849215: goto L_0x00a5;
            case 1055207047: goto L_0x009a;
            default: goto L_0x0021;
        };
    L_0x0021:
        r0 = r1;
    L_0x0022:
        switch(r0) {
            case 0: goto L_0x00bb;
            case 1: goto L_0x00c5;
            case 2: goto L_0x00cf;
            case 3: goto L_0x00d9;
            default: goto L_0x0025;
        };
    L_0x0025:
        r0 = 0;
        r0 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1));
        if (r0 == 0) goto L_0x0134;
    L_0x002a:
        r0 = r13.getWidth();
        r0 = (float) r0;
        r1 = r13.getHeight();
        r1 = (float) r1;
        r1 = r1 * r9;
        r1 = r0 / r1;
        r0 = r13.getRotateDegree();
        r2 = r13.getClipType();
        r4 = 4;
        if (r2 != r4) goto L_0x00e3;
    L_0x0042:
        r2 = 90;
        if (r0 == r2) goto L_0x004a;
    L_0x0046:
        r2 = 270; // 0x10e float:3.78E-43 double:1.334E-321;
        if (r0 != r2) goto L_0x0056;
    L_0x004a:
        r1 = r13.getHeight();
        r1 = (float) r1;
        r2 = r13.getWidth();
        r2 = (float) r2;
        r2 = r2 * r9;
        r1 = r1 / r2;
    L_0x0056:
        r2 = r14 - r1;
        r2 = java.lang.Math.abs(r2);
        r8 = (double) r2;
        r10 = 4587366580439587226; // 0x3fa999999999999a float:-1.5881868E-23 double:0.05;
        r2 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1));
        if (r2 <= 0) goto L_0x0129;
    L_0x0066:
        r2 = r13.getCrop();
        r4 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.PAN_RAND;
        r2.randomizeStartEndPosition(r5, r4, r14);
    L_0x006f:
        r2 = r;
        r4 = "Apply default crop mode(%f %f) (%d)";
        r7 = new java.lang.Object[r7];
        r8 = java.lang.Float.valueOf(r14);
        r7[r5] = r8;
        r1 = java.lang.Float.valueOf(r1);
        r7[r3] = r1;
        r0 = java.lang.Integer.valueOf(r0);
        r7[r6] = r0;
        r0 = java.lang.String.format(r4, r7);
        android.util.Log.d(r2, r0);
    L_0x008e:
        r0 = 0;
        return r0;
    L_0x0090:
        r2 = "fill";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0021;
    L_0x0098:
        r0 = r5;
        goto L_0x0022;
    L_0x009a:
        r2 = "pan_rand";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0021;
    L_0x00a2:
        r0 = r3;
        goto L_0x0022;
    L_0x00a5:
        r2 = "pan_face";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0021;
    L_0x00ad:
        r0 = r6;
        goto L_0x0022;
    L_0x00b0:
        r2 = "fit";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x0021;
    L_0x00b8:
        r0 = r7;
        goto L_0x0022;
    L_0x00bb:
        r0 = r13.getCrop();
        r1 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.FILL;
        r0.randomizeStartEndPosition(r5, r1, r14);
        goto L_0x008e;
    L_0x00c5:
        r0 = r13.getCrop();
        r1 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.PAN_RAND;
        r0.randomizeStartEndPosition(r5, r1, r14);
        goto L_0x008e;
    L_0x00cf:
        r0 = r13.getCrop();
        r1 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.PAN_FACE;
        r0.randomizeStartEndPosition(r5, r1, r14);
        goto L_0x008e;
    L_0x00d9:
        r0 = r13.getCrop();
        r1 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.FIT;
        r0.randomizeStartEndPosition(r5, r1, r14);
        goto L_0x008e;
    L_0x00e3:
        r2 = r13.getClipType();
        if (r2 != r3) goto L_0x0056;
    L_0x00e9:
        r4 = 0;
        r2 = new android.media.ExifInterface;	 Catch:{ IOException -> 0x0121 }
        r8 = r13.getRealPath();	 Catch:{ IOException -> 0x0121 }
        r2.<init>(r8);	 Catch:{ IOException -> 0x0121 }
    L_0x00f3:
        if (r2 == 0) goto L_0x0056;
    L_0x00f5:
        r4 = "Orientation";
        r2 = r2.getAttribute(r4);
        if (r2 == 0) goto L_0x0127;
    L_0x00fd:
        r2 = java.lang.Integer.parseInt(r2);
    L_0x0101:
        r4 = 6;
        if (r2 == r4) goto L_0x0108;
    L_0x0104:
        r4 = 8;
        if (r2 != r4) goto L_0x0056;
    L_0x0108:
        r1 = 6;
        if (r2 != r1) goto L_0x010d;
    L_0x010b:
        r0 = 90;
    L_0x010d:
        r1 = 8;
        if (r2 != r1) goto L_0x0113;
    L_0x0111:
        r0 = 270; // 0x10e float:3.78E-43 double:1.334E-321;
    L_0x0113:
        r1 = r13.getHeight();
        r1 = (float) r1;
        r2 = r13.getWidth();
        r2 = (float) r2;
        r2 = r2 * r9;
        r1 = r1 / r2;
        goto L_0x0056;
    L_0x0121:
        r2 = move-exception;
        r2.printStackTrace();
        r2 = r4;
        goto L_0x00f3;
    L_0x0127:
        r2 = r3;
        goto L_0x0101;
    L_0x0129:
        r2 = r13.getCrop();
        r4 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.FIT;
        r2.randomizeStartEndPosition(r5, r4, r14);
        goto L_0x006f;
    L_0x0134:
        r0 = r13.getCrop();
        r1 = com.nexstreaming.nexeditorsdk.nexCrop.CropMode.FIT;
        r0.randomizeStartEndPosition(r5, r1, r14);
        goto L_0x008e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.nexeditorsdk.d.a(com.nexstreaming.nexeditorsdk.nexClip, float):java.lang.String");
    }

    protected String a(nexProject nexproject, int i, int i2) {
        if (!(this.p == null || this.p.length() <= 0 || this.p.equals("none"))) {
            nexproject.updateProject();
            nexClip supportedClip = nexClip.getSupportedClip(nexAssetPackageManager.getAssetPackageMediaPath(a.a().b(), this.p));
            if (supportedClip != null) {
                int totalTime = supportedClip.getTotalTime();
                int i3 = (int) (((float) i2) * this.q);
                supportedClip.setAssetResource(true);
                nexproject.addAudio(supportedClip, i + i3, totalTime + (i3 + i));
            }
        }
        return null;
    }

    void a() {
        Log.d(r, String.format("subId : %d", new Object[]{Integer.valueOf(this.a)}));
        Log.d(r, String.format("start : %f", new Object[]{Float.valueOf(this.d)}));
        Log.d(r, String.format("end : %f", new Object[]{Float.valueOf(this.e)}));
        String str = r;
        String str2 = "lut : %d";
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(this.f == null ? 0 : this.f.getLUTId());
        Log.d(str, String.format(str2, objArr));
        Log.d(r, String.format("cropMode : %s", new Object[]{this.h}));
        Log.d(r, String.format("videoCropMode : %s", new Object[]{this.i}));
        Log.d(r, String.format("draw size : %f %f", new Object[]{Float.valueOf(this.k), Float.valueOf(this.l)}));
        Log.d(r, String.format("volume : %d", new Object[]{Integer.valueOf(this.o)}));
        Log.d(r, "---------------------------------------------------");
    }
}
