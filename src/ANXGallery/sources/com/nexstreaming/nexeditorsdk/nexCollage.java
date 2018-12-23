package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import com.nexstreaming.kminternal.kinemaster.utils.facedetect.a;
import com.nexstreaming.nexeditorsdk.nexCollageManager.CollageType;
import com.nexstreaming.nexeditorsdk.nexSaveDataFormat.nexCollageOf;
import com.nexstreaming.nexeditorsdk.nexSaveDataFormat.nexCollageTitleInfoOf;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class nexCollage {
    private static String a = "nexCollage";
    private String b;
    private String c;
    private String d;
    private String e;
    private float f = 1.0f;
    private CollageType g;
    private int h;
    private float i;
    private String j;
    private int k;
    private String l;
    private float m;
    private String n;
    private boolean o;
    private List<a> p = new ArrayList();
    private List<nexCollageTitleInfo> q = new ArrayList();
    private float r;
    private float s;
    private int t = 200;
    private int u = 1000;
    private nexProject v;
    private nexEngine w;
    private Context x;
    private Date y;
    private boolean z = false;

    protected interface CollageInfoChangedListener {
        String CollageTime(String str);

        void DrawInfoChanged(nexDrawInfo nexdrawinfo);

        RectF FaceRect(String str);

        void SourceChanged(nexClip nexclip, nexClip nexclip2);

        void TitleInfoChanged();

        String TitleInfoContentTime(String str, String str2);
    }

    nexCollage() {
    }

    public float a() {
        return this.i;
    }

    public int b() {
        return this.k;
    }

    public int c() {
        return this.h;
    }

    public CollageType d() {
        return this.g;
    }

    public float e() {
        return this.r / this.s;
    }

    public List<a> f() {
        return this.p;
    }

    public List<nexCollageTitleInfo> g() {
        return this.q;
    }

    public static void a(Rect rect, int i, int i2) {
        rect.left = (rect.left * i) / nexCrop.ABSTRACT_DIMENSION;
        rect.top = (rect.top * i2) / nexCrop.ABSTRACT_DIMENSION;
        rect.right = (rect.right * i) / nexCrop.ABSTRACT_DIMENSION;
        rect.bottom = (rect.bottom * i2) / nexCrop.ABSTRACT_DIMENSION;
    }

    public static void b(Rect rect, int i, int i2) {
        rect.left = (rect.left * nexCrop.ABSTRACT_DIMENSION) / i;
        rect.top = (rect.top * nexCrop.ABSTRACT_DIMENSION) / i2;
        rect.right = (rect.right * nexCrop.ABSTRACT_DIMENSION) / i;
        rect.bottom = (rect.bottom * nexCrop.ABSTRACT_DIMENSION) / i2;
    }

    public static void a(Rect rect, float f) {
        float width = ((float) rect.width()) / ((float) rect.height());
        Log.d(a, String.format("shrinkToAspect(%f %f)", new Object[]{Float.valueOf(width), Float.valueOf(f)}));
        int width2;
        if (width < f) {
            width2 = (int) (((float) rect.width()) / f);
            rect.top = rect.centerY() - (width2 / 2);
            rect.bottom = width2 + rect.top;
        } else {
            width2 = (int) (((float) rect.height()) * f);
            rect.left = rect.centerX() - (width2 / 2);
            rect.right = width2 + rect.left;
        }
        Log.d(a, String.format("shrinkToAspect: ", new Object[0]) + rect.toString());
    }

    private String a(int i) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(0);
        stringBuilder.append(',');
        stringBuilder.append(i);
        stringBuilder.append('?');
        stringBuilder.append('?');
        Iterator it = this.q.iterator();
        while (it.hasNext()) {
            stringBuilder.append(((nexCollageTitleInfo) it.next()).b());
            if (it.hasNext()) {
                stringBuilder.append('&');
            }
        }
        return stringBuilder.toString();
    }

    private RectF b(String str) {
        RectF rectF = new RectF();
        a a = a.a(str);
        if (a == null) {
            a = new a(new File(str), true, this.x);
            a.a(str, a);
        }
        a.a(rectF);
        return rectF;
    }

    protected String a(nexProject nexproject, nexEngine nexengine, int i, Context context, boolean z) {
        int i2;
        nexClip clip;
        Log.d(a, String.format("apply2Project sources(%d %d %d)", new Object[]{Integer.valueOf(this.k), Integer.valueOf(nexproject.getTotalClipCount(true)), Integer.valueOf(i)}));
        this.x = context;
        if (i == 0) {
            i = this.h;
        }
        for (i2 = 0; i2 < nexproject.getTotalClipCount(true); i2++) {
            clip = nexproject.getClip(i2, true);
            if (clip.isMotionTrackedVideo() || clip.isAssetResource()) {
                nexproject.remove(clip);
            }
        }
        for (i2 = 0; i2 < nexproject.getTotalClipCount(false); i2++) {
            clip = nexproject.getClip(i2, false);
            if (clip.isAssetResource()) {
                nexproject.remove(clip);
            }
        }
        i2 = 0;
        List arrayList = new ArrayList();
        while (nexproject.getTotalClipCount(true) > 0) {
            clip = nexproject.getClip(0, true);
            if (clip.getClipType() == 4) {
                clip.setAudioOnOff(false);
            }
            arrayList.add(clip);
            if (i2 <= clip.getProjectDuration()) {
                i2 = clip.getProjectDuration();
            }
            nexproject.remove(clip);
        }
        if (i == 0) {
            i = i2;
        }
        nexproject.getTopDrawInfo().clear();
        nexproject.setTemplateApplyMode(3);
        nexDrawInfo nexdrawinfo = new nexDrawInfo();
        nexdrawinfo.setID(1);
        nexdrawinfo.setSubEffectID(65537);
        nexdrawinfo.setEffectID(this.n);
        nexdrawinfo.setStartTime(0);
        nexdrawinfo.setEndTime(i);
        nexproject.getTopDrawInfo().add(nexdrawinfo);
        this.y = new Date();
        int i3 = 1;
        clip = null;
        for (a aVar : this.p) {
            nexClip nexclip;
            if (aVar.a()) {
                clip = nexClip.getSupportedClip(aVar.a(context));
                clip.setAssetResource(true);
                if (aVar.b()) {
                    clip.setMotionTrackedVideo(true);
                }
                nexclip = clip;
            } else {
                if (clip == null && arrayList.size() > 0) {
                    clip = (nexClip) arrayList.get(0);
                    arrayList.remove(clip);
                }
                nexclip = clip;
            }
            if (nexclip == null) {
                clip = nexclip;
            } else {
                nexDrawInfo nexdrawinfo2;
                nexColorEffect lutColorEffect;
                nexproject.add(nexclip);
                if (nexclip.getDrawInfos().size() > 0) {
                    nexdrawinfo2 = (nexDrawInfo) nexclip.getDrawInfos().get(0);
                } else {
                    nexdrawinfo2 = null;
                }
                nexclip.clearDrawInfos();
                if (nexclip.getClipType() == 1) {
                    nexclip.setImageClipDuration(i);
                } else {
                    nexclip.getVideoClipEdit().clearTrim();
                    if (nexclip.getTotalTime() > i) {
                        nexclip.getVideoClipEdit().setTrim(0, i);
                    }
                }
                nexclip.mStartTime = 0;
                nexclip.mEndTime = i;
                nexDrawInfo nexdrawinfo3 = new nexDrawInfo();
                nexdrawinfo3.setTopEffectID(nexdrawinfo.getID());
                nexdrawinfo3.setID(65536 | i3);
                nexdrawinfo3.setSubEffectID(65536 | i3);
                int i4 = i3 + 1;
                int c = (int) (((float) i) * aVar.c());
                int d = (int) (((float) i) * aVar.d());
                Log.d(a, String.format("Collage setDrawInfo2Clip(dur:%d %d %d)", new Object[]{Integer.valueOf(i), Integer.valueOf(c), Integer.valueOf(d)}));
                if (nexclip.getClipType() == 1) {
                    nexclip.mStartTime = c < nexclip.mStartTime ? c : nexclip.mStartTime;
                    nexclip.mEndTime = d > nexclip.mEndTime ? d : nexclip.mEndTime;
                    nexclip.setImageClipDuration(nexclip.mEndTime - nexclip.mStartTime);
                } else {
                    if (c < nexclip.getProjectStartTime()) {
                        c = nexclip.getProjectStartTime();
                    }
                    if (d > nexclip.getProjectEndTime()) {
                        d = nexclip.getProjectEndTime();
                    }
                }
                nexdrawinfo3.setStartTime(c);
                nexdrawinfo3.setEndTime(d);
                if (!(aVar.e() == null || aVar.e().compareTo("none") == 0)) {
                    lutColorEffect = nexColorEffect.getLutColorEffect(aVar.e());
                    if (lutColorEffect != null) {
                        nexdrawinfo3.setLUT(lutColorEffect.getLUTId());
                    }
                }
                c = nexclip.getWidth();
                i3 = nexclip.getHeight();
                if (nexclip.getRotateInMeta() == 90 || nexclip.getRotateInMeta() == nexClip.kClip_Rotate_270) {
                    c = nexclip.getHeight();
                    i3 = nexclip.getWidth();
                    if (nexclip.getClipType() == 4) {
                        nexdrawinfo3.setRotateState(nexclip.getRotateInMeta());
                    }
                }
                Rect rect = new Rect(0, 0, c, i3);
                Rect rect2 = new Rect(0, 0, 1, 1);
                if (nexclip.getClipType() == 1) {
                    RectF b = b(nexclip.getPath());
                    rect.set((int) (b.left * ((float) c)), (int) (b.top * ((float) i3)), (int) (b.right * ((float) c)), (int) (b.bottom * ((float) i3)));
                    if (rect.isEmpty()) {
                        rect = new Rect(0, 0, c, i3);
                    } else {
                        rect2.set((int) (b.left * ((float) c)), (int) (b.top * ((float) i3)), (int) (b.right * ((float) c)), (int) (b.bottom * ((float) i3)));
                        int i5 = (rect.right - rect.left) / 2;
                        rect.left -= i5;
                        rect.right = i5 + rect.right;
                        if (rect.left < 0) {
                            rect.left = 0;
                        }
                        if (rect.right > c) {
                            rect.right = c;
                        }
                        i5 = (rect.bottom - rect.top) / 2;
                        rect.top -= i5;
                        rect.bottom = i5 + rect.bottom;
                        if (rect.top < 0) {
                            rect.top = 0;
                        }
                        if (rect.bottom > i3) {
                            rect.bottom = i3;
                        }
                    }
                }
                Log.d(a, String.format("Collage setDrawInfo2Clip", new Object[0]) + aVar.getRectangle().toString());
                float width = (aVar.getRectangle().width() * this.r) / (aVar.getRectangle().height() * this.s);
                float f = (float) aVar.f();
                float g = (float) aVar.g();
                if (!(f == 0.0f || g == 0.0f)) {
                    width = f / g;
                }
                a(rect, width);
                Log.d(a, String.format("Collage setDrawInfo2Clip sr : ", new Object[0]) + rect.toString());
                b(rect, c, i3);
                b(rect2, c, i3);
                Log.d(a, String.format("Collage setDrawInfo2Clip1 sr : ", new Object[0]) + rect.toString());
                Log.d(a, String.format("Collage setDrawInfo2Clip clip size(%d %d)", new Object[]{Integer.valueOf(c), Integer.valueOf(i3)}));
                nexdrawinfo3.setStartRect(rect);
                nexdrawinfo3.setEndRect(rect);
                nexdrawinfo3.setFaceRect(rect2);
                nexclip.addDrawInfo(nexdrawinfo3);
                aVar.a(nexclip);
                aVar.b(width);
                aVar.a(nexproject, i);
                boolean z2 = false;
                if (nexdrawinfo2 != null) {
                    nexdrawinfo3.setRotateState(nexdrawinfo2.getRotateState());
                    nexdrawinfo3.setUserTranslate(nexdrawinfo2.getUserTranslateX(), nexdrawinfo2.getUserTranslateY());
                    nexdrawinfo3.setUserRotateState(nexdrawinfo2.getUserRotateState());
                    nexdrawinfo3.setRealScale(nexdrawinfo2.getRealScale());
                    nexdrawinfo3.setBrightness(nexdrawinfo2.getBrightness());
                    nexdrawinfo3.setUserLUT(nexdrawinfo2.getUserLUT());
                    if (z) {
                        String userLUT = nexdrawinfo2.getUserLUT();
                        if (!(userLUT == null || userLUT.compareTo("none") == 0 || userLUT.compareTo("null") == 0)) {
                            lutColorEffect = nexColorEffect.getLutColorEffect(userLUT);
                            if (lutColorEffect != null && lutColorEffect.getLUTId() == nexdrawinfo2.getLUT()) {
                                nexdrawinfo3.setLUT(nexdrawinfo2.getLUT());
                            }
                        }
                        nexdrawinfo3.setStartRect(nexdrawinfo2.getStartRect());
                        nexdrawinfo3.setEndRect(nexdrawinfo2.getEndRect());
                        nexdrawinfo3.setFaceRect(nexdrawinfo2.getFaceRect());
                    }
                } else {
                    z2 = true;
                }
                aVar.a(null);
                aVar.a(z2);
                Log.d(a, String.format("Collage apply rect(%s) %f", new Object[]{nexdrawinfo3.getStartRect().toString(), Float.valueOf(nexdrawinfo3.getRealScale())}));
                i3 = i4;
                clip = null;
            }
        }
        nexdrawinfo.setTitle(a(i));
        if (this.e == null || this.e.length() <= 0 || this.e.compareTo("none") == 0) {
            nexproject.setBackgroundMusicPath(null);
            nexproject.setBGMMasterVolumeScale(0.0f);
        } else {
            nexproject.setBackgroundMusicPath(this.e);
            nexproject.setBGMMasterVolumeScale(this.f);
        }
        nexproject.setProjectAudioFadeInTime(this.t);
        nexproject.setProjectAudioFadeOutTime(this.u);
        nexengine.setProperty("PreviewFPS", "30");
        nexengine.setProject(nexproject);
        nexengine.updateProject();
        this.v = nexproject;
        this.w = nexengine;
        return null;
    }

    protected boolean a(String str) {
        if (this.v == null || this.w == null) {
            return false;
        }
        if (str != null) {
            this.v.setBackgroundMusicPath(str);
        } else if (this.e != null) {
            this.v.setBackgroundMusicPath(this.e);
            this.v.setBGMMasterVolumeScale(this.f);
            return true;
        } else {
            this.v.setBackgroundMusicPath(null);
        }
        this.w.updateProject();
        return true;
    }

    protected boolean h() {
        return this.o;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0146  */
    public boolean a(com.nexstreaming.nexeditorsdk.a r22, com.nexstreaming.nexeditorsdk.a r23) {
        /*
        r21 = this;
        if (r22 == 0) goto L_0x0004;
    L_0x0002:
        if (r23 != 0) goto L_0x0006;
    L_0x0004:
        r2 = 0;
    L_0x0005:
        return r2;
    L_0x0006:
        r4 = r22.getBindSource();
        r5 = r23.getBindSource();
        if (r4 == 0) goto L_0x0012;
    L_0x0010:
        if (r5 != 0) goto L_0x0014;
    L_0x0012:
        r2 = 0;
        goto L_0x0005;
    L_0x0014:
        r6 = com.nexstreaming.nexeditorsdk.nexClip.dup(r4);
        r7 = com.nexstreaming.nexeditorsdk.nexClip.dup(r5);
        r2 = r6.getClipType();
        r3 = 4;
        if (r2 != r3) goto L_0x0027;
    L_0x0023:
        r2 = 0;
        r6.setAudioOnOff(r2);
    L_0x0027:
        r2 = r7.getClipType();
        r3 = 4;
        if (r2 != r3) goto L_0x0032;
    L_0x002e:
        r2 = 0;
        r7.setAudioOnOff(r2);
    L_0x0032:
        r2 = r4.getDrawInfos();
        r3 = 0;
        r2 = r2.get(r3);
        r2 = (com.nexstreaming.nexeditorsdk.nexDrawInfo) r2;
        r3 = r5.getDrawInfos();
        r8 = 0;
        r3 = r3.get(r8);
        r3 = (com.nexstreaming.nexeditorsdk.nexDrawInfo) r3;
        r8 = r2.getRotateState();
        r9 = r2.getUserTranslateX();
        r10 = r2.getUserTranslateY();
        r11 = r2.getUserRotateState();
        r12 = r2.getRealScale();
        r13 = r2.getLUT();
        r14 = r2.getCustomLUTA();
        r15 = r2.getCustomLUTB();
        r16 = r2.getCustomLUTPower();
        r17 = r2.getUserLUT();
        r18 = r2.getBrightness();
        r19 = r3.getRotateState();
        r0 = r19;
        r2.setRotateState(r0);
        r19 = r3.getUserTranslateX();
        r20 = r3.getUserTranslateY();
        r0 = r19;
        r1 = r20;
        r2.setUserTranslate(r0, r1);
        r19 = r3.getUserRotateState();
        r0 = r19;
        r2.setUserRotateState(r0);
        r19 = r3.getRealScale();
        r0 = r19;
        r2.setRealScale(r0);
        r19 = 0;
        r0 = r19;
        r2.setLUT(r0);
        r19 = r3.getUserLUT();
        if (r19 == 0) goto L_0x0199;
    L_0x00ab:
        r20 = "none";
        r20 = r19.compareTo(r20);
        if (r20 == 0) goto L_0x0199;
    L_0x00b3:
        r20 = "null";
        r19 = r19.compareTo(r20);
        if (r19 == 0) goto L_0x0199;
    L_0x00bb:
        r19 = r3.getLUT();
        r0 = r19;
        r2.setLUT(r0);
    L_0x00c4:
        r19 = r3.getCustomLUTA();
        r0 = r19;
        r2.setCustomLUTA(r0);
        r19 = r3.getCustomLUTB();
        r0 = r19;
        r2.setCustomLUTB(r0);
        r19 = r3.getCustomLUTPower();
        r0 = r19;
        r2.setCustomLUTPower(r0);
        r19 = r3.getUserLUT();
        r0 = r19;
        r2.setUserLUT(r0);
        r19 = r3.getBrightness();
        r0 = r19;
        r2.setBrightness(r0);
        r0 = r22;
        r0.a(r7, r2);
        r3.setRotateState(r8);
        r3.setUserTranslate(r9, r10);
        r3.setUserRotateState(r11);
        r3.setRealScale(r12);
        r2 = 0;
        r3.setLUT(r2);
        if (r17 == 0) goto L_0x01cc;
    L_0x0108:
        r2 = "none";
        r0 = r17;
        r2 = r0.compareTo(r2);
        if (r2 == 0) goto L_0x01cc;
    L_0x0112:
        r2 = "null";
        r0 = r17;
        r2 = r0.compareTo(r2);
        if (r2 == 0) goto L_0x01cc;
    L_0x011c:
        r3.setLUT(r13);
    L_0x011f:
        r3.setCustomLUTA(r14);
        r3.setCustomLUTB(r15);
        r0 = r16;
        r3.setCustomLUTPower(r0);
        r0 = r17;
        r3.setUserLUT(r0);
        r0 = r18;
        r3.setBrightness(r0);
        r0 = r23;
        r0.a(r6, r3);
        r3 = 1;
        r2 = 0;
    L_0x013b:
        r0 = r21;
        r8 = r0.v;
        r9 = 1;
        r8 = r8.getTotalClipCount(r9);
        if (r2 >= r8) goto L_0x01fd;
    L_0x0146:
        r0 = r21;
        r8 = r0.v;
        r9 = 1;
        r8 = r8.getClip(r2, r9);
        r8 = r8.equals(r4);
        if (r8 == 0) goto L_0x016d;
    L_0x0155:
        r0 = r21;
        r8 = r0.v;
        r9 = r3 + -1;
        r10 = 1;
        r8.add(r9, r10, r7);
        r0 = r21;
        r8 = r0.v;
        r8.remove(r4);
        r0 = r21;
        r8 = r0.w;
        r8.removeClip(r3);
    L_0x016d:
        r0 = r21;
        r8 = r0.v;
        r9 = 1;
        r8 = r8.getClip(r2, r9);
        r8 = r8.equals(r5);
        if (r8 == 0) goto L_0x0194;
    L_0x017c:
        r0 = r21;
        r8 = r0.v;
        r9 = r3 + -1;
        r10 = 1;
        r8.add(r9, r10, r6);
        r0 = r21;
        r8 = r0.v;
        r8.remove(r5);
        r0 = r21;
        r8 = r0.w;
        r8.removeClip(r3);
    L_0x0194:
        r3 = r3 + 1;
        r2 = r2 + 1;
        goto L_0x013b;
    L_0x0199:
        r19 = r22.e();
        if (r19 == 0) goto L_0x00c4;
    L_0x019f:
        r19 = r22.e();
        r20 = "none";
        r19 = r19.compareTo(r20);
        if (r19 == 0) goto L_0x00c4;
    L_0x01ab:
        r19 = r22.e();
        r20 = "null";
        r19 = r19.compareTo(r20);
        if (r19 == 0) goto L_0x00c4;
    L_0x01b7:
        r19 = r22.e();
        r19 = com.nexstreaming.nexeditorsdk.nexColorEffect.getLutColorEffect(r19);
        if (r19 == 0) goto L_0x00c4;
    L_0x01c1:
        r19 = r19.getLUTId();
        r0 = r19;
        r2.setLUT(r0);
        goto L_0x00c4;
    L_0x01cc:
        r2 = r23.e();
        if (r2 == 0) goto L_0x011f;
    L_0x01d2:
        r2 = r23.e();
        r8 = "none";
        r2 = r2.compareTo(r8);
        if (r2 == 0) goto L_0x011f;
    L_0x01de:
        r2 = r23.e();
        r8 = "null";
        r2 = r2.compareTo(r8);
        if (r2 == 0) goto L_0x011f;
    L_0x01ea:
        r2 = r23.e();
        r2 = com.nexstreaming.nexeditorsdk.nexColorEffect.getLutColorEffect(r2);
        if (r2 == 0) goto L_0x011f;
    L_0x01f4:
        r2 = r2.getLUTId();
        r3.setLUT(r2);
        goto L_0x011f;
    L_0x01fd:
        r0 = r21;
        r2 = r0.w;
        r2.updateProject();
        r0 = r21;
        r2 = r0.w;
        r3 = 2;
        r2.setThumbnailRoutine(r3);
        r0 = r21;
        r2 = r0.w;
        r0 = r21;
        r3 = r0.h;
        r3 = (float) r3;
        r0 = r21;
        r4 = r0.i;
        r3 = r3 * r4;
        r3 = (int) r3;
        r2.seek(r3);
        r2 = 1;
        goto L_0x0005;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.nexeditorsdk.nexCollage.a(com.nexstreaming.nexeditorsdk.a, com.nexstreaming.nexeditorsdk.a):boolean");
    }

    protected boolean i() {
        return this.z;
    }

    public String a(JSONObject jSONObject) {
        int i = 0;
        if (jSONObject == null) {
            return "Collage parsing error with invalid handle";
        }
        try {
            this.b = jSONObject.getString("collage_name");
            this.c = jSONObject.getString("collage_version");
            this.d = jSONObject.getString("collage_desc");
            this.e = jSONObject.getString("collage_bgm");
            this.f = Float.parseFloat(jSONObject.getString("collage_bgm_volume"));
            if (jSONObject.getString("collage_type").compareTo("static") == 0) {
                this.g = CollageType.StaticCollage;
            } else if (jSONObject.getString("collage_type").compareTo("dynamic") == 0) {
                this.g = CollageType.DynamicCollage;
            }
            this.h = Integer.parseInt(jSONObject.getString("collage_duration"));
            this.i = Float.parseFloat(jSONObject.getString("collage_edit_time"));
            this.j = jSONObject.getString("collage_ratio");
            String[] split = this.j.toLowerCase().split("v");
            if (split == null) {
                return "Wrong ratio info was included";
            }
            this.r = Float.parseFloat(split[0]);
            this.s = Float.parseFloat(split[1]);
            this.k = Integer.parseInt(jSONObject.getString("collage_source_count"));
            this.l = jSONObject.getString("audio_res");
            this.m = Float.parseFloat(jSONObject.getString("audio_res_pos"));
            if (jSONObject.has("collage_project_vol_fade_in_time")) {
                this.t = Integer.parseInt(jSONObject.getString("collage_project_vol_fade_in_time"));
            }
            if (jSONObject.has("collage_project_vol_fade_out_time")) {
                this.u = Integer.parseInt(jSONObject.getString("collage_project_vol_fade_out_time"));
            }
            this.o = false;
            if (jSONObject.has("frame_collage")) {
                this.o = jSONObject.getString("frame_collage").compareTo("1") == 0;
            }
            this.n = jSONObject.getString("effect");
            if (jSONObject.has("draw_infos")) {
                JSONArray jSONArray = jSONObject.getJSONArray("draw_infos");
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    a aVar = new a();
                    if (aVar.a(jSONArray.getJSONObject(i2)) != null) {
                        this.p.clear();
                        this.q.clear();
                        return "Collage drawinfo parse error";
                    }
                    aVar.a(new CollageInfoChangedListener() {
                        public void SourceChanged(nexClip nexclip, nexClip nexclip2) {
                            if (nexCollage.this.w != null) {
                                int i = 0;
                                int i2 = 1;
                                while (i < nexCollage.this.v.getTotalClipCount(true) && !nexCollage.this.v.getClip(i, true).equals(nexclip)) {
                                    i2++;
                                    i++;
                                }
                                nexCollage.this.v.add(i2 - 1, true, nexclip2);
                                nexCollage.this.v.remove(nexclip);
                                nexCollage.this.w.removeClip(i2);
                                nexCollage.this.w.updateProject();
                            }
                        }

                        public void DrawInfoChanged(nexDrawInfo nexdrawinfo) {
                            if (nexCollage.this.w != null) {
                                nexCollage.this.w.updateDrawInfo(nexdrawinfo);
                            }
                        }

                        public String CollageTime(String str) {
                            return "";
                        }

                        public String TitleInfoContentTime(String str, String str2) {
                            return "";
                        }

                        public void TitleInfoChanged() {
                        }

                        public RectF FaceRect(String str) {
                            return nexCollage.this.b(str);
                        }
                    });
                    this.p.add(aVar);
                }
            }
            if (jSONObject.has("title_infos")) {
                JSONArray jSONArray2 = jSONObject.getJSONArray("title_infos");
                while (i < jSONArray2.length()) {
                    nexCollageTitleInfo nexcollagetitleinfo = new nexCollageTitleInfo();
                    if (nexcollagetitleinfo.a(jSONArray2.getJSONObject(i)) != null) {
                        this.p.clear();
                        this.q.clear();
                        return "Collage title info parse error";
                    }
                    nexcollagetitleinfo.a(new CollageInfoChangedListener() {
                        public void SourceChanged(nexClip nexclip, nexClip nexclip2) {
                        }

                        public void DrawInfoChanged(nexDrawInfo nexdrawinfo) {
                        }

                        public String CollageTime(String str) {
                            if (nexCollage.this.y == null) {
                                nexCollage.this.y = new Date();
                            }
                            return new SimpleDateFormat(str).format(nexCollage.this.y);
                        }

                        public String TitleInfoContentTime(String str, String str2) {
                            for (a aVar : nexCollage.this.p) {
                                if (aVar.getId().compareTo(str) == 0) {
                                    return aVar.a(str2);
                                }
                            }
                            return "";
                        }

                        public void TitleInfoChanged() {
                            if (nexCollage.this.v != null) {
                                ((nexDrawInfo) nexCollage.this.v.getTopDrawInfo().get(0)).setTitle(nexCollage.this.a(nexCollage.this.v.getTotalTime()));
                                if (nexCollage.this.w != null) {
                                    nexCollage.this.w.updateDrawInfo((nexDrawInfo) nexCollage.this.v.getTopDrawInfo().get(0));
                                }
                            }
                        }

                        public RectF FaceRect(String str) {
                            return nexCollage.this.b(str);
                        }
                    });
                    if (nexcollagetitleinfo.c() != null) {
                    }
                    this.q.add(nexcollagetitleinfo);
                    i++;
                }
            }
            this.z = true;
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            Log.d(a, "parse Collage header failed : " + e.getMessage());
            return e.getMessage();
        }
    }

    nexSaveDataFormat j() {
        if (this.v == null) {
            return null;
        }
        nexSaveDataFormat nexsavedataformat = new nexSaveDataFormat();
        nexsavedataformat.project = this.v.getSaveData();
        nexsavedataformat.collage = new nexCollageOf();
        if (this.q.size() == 0) {
            nexsavedataformat.collage.titleInfos = null;
        } else {
            nexsavedataformat.collage.titleInfos = new ArrayList();
            for (nexCollageTitleInfo d : this.q) {
                nexsavedataformat.collage.titleInfos.add(d.d());
            }
        }
        return nexsavedataformat;
    }

    void a(nexCollageOf nexcollageof) {
        if (nexcollageof.titleInfos != null) {
            int i = 0;
            Iterator it = this.q.iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    nexCollageTitleInfo nexcollagetitleinfo = (nexCollageTitleInfo) it.next();
                    if (i2 < nexcollageof.titleInfos.size()) {
                        nexcollagetitleinfo.a((nexCollageTitleInfoOf) nexcollageof.titleInfos.get(i2));
                        i = i2 + 1;
                    } else {
                        return;
                    }
                }
                return;
            }
        }
    }
}
