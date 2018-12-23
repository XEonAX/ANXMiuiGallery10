package com.nexstreaming.nexeditorsdk;

import android.animation.TimeInterpolator;
import android.util.Log;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.CycleInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemType;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.nexeditorsdk.nexOverlayManager.nexTitleInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class nexOverlayTitle {
    private static String a = "nexOverlayTitle";
    private String b;
    private String c;
    private String d;
    private String e;
    private Priority f = Priority.NONE;
    private ArrayList<HashMap<String, String>> g = new ArrayList();
    private int h = 0;

    public interface TitleInfoListener {
        void OnTitleInfoListener(int i, String str, int i2, String str2, int i3, String str3, String str4, int i4, int i5);
    }

    private enum Priority {
        NONE,
        START,
        END,
        START_END
    }

    private boolean a(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        try {
            this.b = jSONObject.getString("overlay_name");
            this.c = jSONObject.getString("overlay_version");
            this.d = jSONObject.getString("overlay_desc");
            this.e = jSONObject.getString("overlay_priority");
            return true;
        } catch (JSONException e) {
            e.printStackTrace();
            Log.d(a, "pasrse Overlay info failed : " + e.getMessage());
            return false;
        }
    }

    private String b(JSONObject jSONObject, TitleInfoListener titleInfoListener) {
        int i = 0;
        try {
            HashMap hashMap = new HashMap();
            Log.d(a, "pasrse Overlay : " + jSONObject.toString());
            hashMap.put("id", "" + this.h);
            hashMap.put(nexExportFormat.TAG_FORMAT_TYPE, jSONObject.getString(nexExportFormat.TAG_FORMAT_TYPE));
            if (jSONObject.has("text")) {
                hashMap.put("text", jSONObject.getString("text"));
            }
            if (jSONObject.has("text_desc")) {
                hashMap.put("text_desc", jSONObject.getString("text_desc"));
            }
            if (jSONObject.has("text_max_len")) {
                hashMap.put("text_max_len", jSONObject.getString("text_max_len"));
            }
            if (jSONObject.has("position")) {
                hashMap.put("position", jSONObject.getString("position"));
            }
            if (jSONObject.has("start_time")) {
                hashMap.put("start_time", jSONObject.getString("start_time"));
            }
            if (jSONObject.has("duration")) {
                hashMap.put("duration", jSONObject.getString("duration"));
            }
            if (jSONObject.has("font")) {
                hashMap.put("font", jSONObject.getString("font"));
            }
            if (jSONObject.has("font_size")) {
                hashMap.put("font_size", jSONObject.getString("font_size"));
            }
            if (jSONObject.has("text_color")) {
                hashMap.put("text_color", jSONObject.getString("text_color"));
            }
            if (jSONObject.has("shadow_color")) {
                hashMap.put("shadow_color", jSONObject.getString("shadow_color"));
            }
            if (jSONObject.has("shadow_visible")) {
                hashMap.put("shadow_visible", jSONObject.getString("shadow_visible"));
            }
            if (jSONObject.has("glow_color")) {
                hashMap.put("glow_color", jSONObject.getString("glow_color"));
            }
            if (jSONObject.has("glow_visible")) {
                hashMap.put("glow_visible", jSONObject.getString("glow_visible"));
            }
            if (jSONObject.has("outline_color")) {
                hashMap.put("outline_color", jSONObject.getString("outline_color"));
            }
            if (jSONObject.has("outline_visible")) {
                hashMap.put("outline_visible", jSONObject.getString("outline_visible"));
            }
            if (jSONObject.has("align")) {
                hashMap.put("align", jSONObject.getString("align"));
            }
            if (jSONObject.has("animation")) {
                hashMap.put("animation", jSONObject.getString("animation"));
            }
            if (jSONObject.has("adjust_animation_non_sub")) {
                hashMap.put("adjust_animation_non_sub", jSONObject.getString("adjust_animation_non_sub"));
            }
            if (jSONObject.has("rotate")) {
                hashMap.put("rotate", jSONObject.getString("rotate"));
            }
            if (jSONObject.has("scale")) {
                hashMap.put("scale", jSONObject.getString("scale"));
            }
            if (jSONObject.has("group")) {
                hashMap.put("group", jSONObject.getString("group"));
            }
            if (jSONObject.has("adjust_pos_non_sub")) {
                hashMap.put("adjust_pos_non_sub", jSONObject.getString("adjust_pos_non_sub"));
            }
            if (jSONObject.has("adjust_align_non_sub")) {
                hashMap.put("adjust_align_non_sub", jSONObject.getString("adjust_align_non_sub"));
            }
            if (jSONObject.has("image_res")) {
                hashMap.put("image_res", jSONObject.getString("image_res"));
            }
            if (jSONObject.getString("start_time").equals("0")) {
                if (this.f != Priority.START_END) {
                    if (this.f == Priority.END) {
                        this.f = Priority.START_END;
                    } else {
                        this.f = Priority.START;
                    }
                }
            } else if (jSONObject.getString("start_time").equals("-1") && this.f != Priority.START_END) {
                if (this.f == Priority.START) {
                    this.f = Priority.START_END;
                } else {
                    this.f = Priority.END;
                }
            }
            if (titleInfoListener != null && hashMap.containsKey("text")) {
                int parseInt;
                String string = jSONObject.getString("font");
                String string2 = jSONObject.getString("text");
                String string3 = jSONObject.getString("text_desc");
                String string4 = jSONObject.has("group") ? jSONObject.getString("group") : "";
                int parseInt2 = Integer.parseInt(jSONObject.getString("text_max_len"));
                int parseInt3 = Integer.parseInt(jSONObject.getString("font_size"));
                if (jSONObject.has("position")) {
                    String[] split = ((String) hashMap.get("position")).replace(" ", "").split(",");
                    if (split != null) {
                        int parseInt4 = Integer.parseInt(split[0]);
                        i = Integer.parseInt(split[2]) - parseInt4;
                        parseInt = Integer.parseInt(split[3]) - Integer.parseInt(split[1]);
                        titleInfoListener.OnTitleInfoListener(this.h, string, parseInt3, string2, parseInt2, string3, string4, i, parseInt);
                    }
                }
                parseInt = parseInt3;
                titleInfoListener.OnTitleInfoListener(this.h, string, parseInt3, string2, parseInt2, string3, string4, i, parseInt);
            }
            this.h++;
            this.g.add(hashMap);
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            return e.getMessage();
        }
    }

    public String a(JSONObject jSONObject, TitleInfoListener titleInfoListener) {
        if (!a(jSONObject)) {
            return "parseOverlayAssetInfo parse error";
        }
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("overlay");
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < jSONArray.length()) {
                    String b = b(jSONArray.getJSONObject(i2), titleInfoListener);
                    if (b != null) {
                        this.g.clear();
                        Log.d(a, "Overlay parse error : " + b);
                        return b;
                    }
                    i = i2 + 1;
                } else {
                    Log.d(a, "parseOverlayAsset end");
                    return null;
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
            this.g.clear();
            Log.d(a, "parseOverlayAsset failed" + e.getMessage());
            return e.getMessage();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x012c  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0121  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0117  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0136  */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x038f  */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x0456  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x011b  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x012c  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0121  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0117  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0136  */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x038f  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x011b  */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x0456  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x012c  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0121  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0117  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0136  */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x038f  */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x0456  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x011b  */
    public java.lang.String a(android.content.Context r33, com.nexstreaming.nexeditorsdk.nexProject r34, java.util.List<com.nexstreaming.nexeditorsdk.nexOverlayManager.nexTitleInfo> r35) {
        /*
        r32 = this;
        r0 = r32;
        r1 = r34;
        r0.a(r1);
        r0 = r32;
        r1 = r34;
        r24 = r0.b(r1);
        r6 = 0;
        r5 = 0;
        r4 = 0;
        r3 = 0;
        r0 = r32;
        r7 = r0.g;
        r25 = r7.iterator();
        r7 = r4;
        r8 = r6;
        r6 = r3;
    L_0x001e:
        r3 = r25.hasNext();
        if (r3 == 0) goto L_0x06ec;
    L_0x0024:
        r3 = r25.next();
        r11 = r3;
        r11 = (java.util.HashMap) r11;
        r9 = 0;
        r3 = "type";
        r3 = r11.get(r3);
        r4 = r3;
        r4 = (java.lang.String) r4;
        r3 = "title";
        r3 = r4.equals(r3);
        if (r3 == 0) goto L_0x06fc;
    L_0x003f:
        r3 = "group";
        r3 = r11.containsKey(r3);
        if (r3 == 0) goto L_0x06fc;
    L_0x0047:
        r3 = "group";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
        r10 = "_1";
        r3 = r3.endsWith(r10);
        if (r3 == 0) goto L_0x06fc;
    L_0x0057:
        if (r8 != 0) goto L_0x00bb;
    L_0x0059:
        r3 = "group";
        r3 = r11.get(r3);
        r5 = r3;
        r5 = (java.lang.String) r5;
        r0 = r32;
        r1 = r35;
        r14 = r0.a(r1, r5);
        if (r14 == 0) goto L_0x0702;
    L_0x006c:
        r3 = "adjust_pos_non_sub";
        r3 = r11.containsKey(r3);
        if (r3 == 0) goto L_0x0702;
    L_0x0074:
        r3 = "adjust_pos_non_sub";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
        r6 = " ";
        r7 = "";
        r3 = r3.replace(r6, r7);
        r6 = ",";
        r3 = r3.split(r6);
        r6 = 0;
        r6 = r3[r6];
        r7 = java.lang.Integer.parseInt(r6);
        r6 = 1;
        r3 = r3[r6];
        r6 = java.lang.Integer.parseInt(r3);
        r12 = r6;
        r13 = r7;
        r15 = r5;
    L_0x009b:
        if (r14 == 0) goto L_0x010c;
    L_0x009d:
        r3 = "group";
        r3 = r11.containsKey(r3);
        if (r3 == 0) goto L_0x010c;
    L_0x00a5:
        r3 = "group";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
        r5 = "_2";
        r3 = r3.endsWith(r5);
        if (r3 == 0) goto L_0x010c;
    L_0x00b5:
        r6 = r12;
        r7 = r13;
        r5 = r14;
        r8 = r15;
        goto L_0x001e;
    L_0x00bb:
        r3 = "group";
        r3 = r11.get(r3);
        r3 = r8.equals(r3);
        if (r3 != 0) goto L_0x06fc;
    L_0x00c7:
        r3 = "group";
        r3 = r11.get(r3);
        r5 = r3;
        r5 = (java.lang.String) r5;
        r7 = 0;
        r6 = 0;
        r0 = r32;
        r1 = r35;
        r14 = r0.a(r1, r5);
        if (r14 == 0) goto L_0x0702;
    L_0x00dc:
        r3 = "adjust_pos_non_sub";
        r3 = r11.containsKey(r3);
        if (r3 == 0) goto L_0x0702;
    L_0x00e4:
        r3 = "adjust_pos_non_sub";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
        r6 = " ";
        r7 = "";
        r3 = r3.replace(r6, r7);
        r6 = ",";
        r3 = r3.split(r6);
        r6 = 0;
        r6 = r3[r6];
        r7 = java.lang.Integer.parseInt(r6);
        r6 = 1;
        r3 = r3[r6];
        r6 = java.lang.Integer.parseInt(r3);
        r12 = r6;
        r13 = r7;
        r15 = r5;
        goto L_0x009b;
    L_0x010c:
        r3 = -1;
        r5 = r4.hashCode();
        switch(r5) {
            case 100313435: goto L_0x012c;
            case 110371416: goto L_0x0121;
            default: goto L_0x0114;
        };
    L_0x0114:
        switch(r3) {
            case 0: goto L_0x0136;
            case 1: goto L_0x038f;
            default: goto L_0x0117;
        };
    L_0x0117:
        r16 = r9;
    L_0x0119:
        if (r16 != 0) goto L_0x0456;
    L_0x011b:
        r6 = r12;
        r7 = r13;
        r5 = r14;
        r8 = r15;
        goto L_0x001e;
    L_0x0121:
        r5 = "title";
        r4 = r4.equals(r5);
        if (r4 == 0) goto L_0x0114;
    L_0x012a:
        r3 = 0;
        goto L_0x0114;
    L_0x012c:
        r5 = "image";
        r4 = r4.equals(r5);
        if (r4 == 0) goto L_0x0114;
    L_0x0134:
        r3 = 1;
        goto L_0x0114;
    L_0x0136:
        r3 = "id";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
        r26 = java.lang.Integer.parseInt(r3);
        r3 = "text";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
        r4 = "text_max_len";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
        java.lang.Integer.parseInt(r4);
        r4 = "position";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
        r5 = " ";
        r6 = "";
        r4 = r4.replace(r5, r6);
        r5 = ",";
        r4 = r4.split(r5);
        if (r4 != 0) goto L_0x0172;
    L_0x016f:
        r3 = "Wrong position data of title";
    L_0x0171:
        return r3;
    L_0x0172:
        r5 = 0;
        r5 = r4[r5];
        r5 = java.lang.Integer.parseInt(r5);
        r6 = 1;
        r6 = r4[r6];
        r7 = java.lang.Integer.parseInt(r6);
        r6 = 2;
        r6 = r4[r6];
        r6 = java.lang.Integer.parseInt(r6);
        r8 = 3;
        r4 = r4[r8];
        r4 = java.lang.Integer.parseInt(r4);
        r8 = r5 + r6;
        r22 = r8 / 2;
        r8 = r7 + r4;
        r21 = r8 / 2;
        r6 = r6 - r5;
        r7 = r4 - r7;
        r4 = "start_time";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
        r20 = java.lang.Integer.parseInt(r4);
        r4 = "duration";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
        r9 = java.lang.Integer.parseInt(r4);
        r4 = com.nexstreaming.nexeditorsdk.nexOverlayTitle.Priority.START;
        r0 = r24;
        if (r0 != r4) goto L_0x01ba;
    L_0x01b8:
        if (r20 < 0) goto L_0x01c2;
    L_0x01ba:
        r4 = com.nexstreaming.nexeditorsdk.nexOverlayTitle.Priority.END;
        r0 = r24;
        if (r0 != r4) goto L_0x01e4;
    L_0x01c0:
        if (r20 < 0) goto L_0x01e4;
    L_0x01c2:
        r3 = a;
        r4 = "Apply title skip(%s %d)";
        r5 = 2;
        r5 = new java.lang.Object[r5];
        r6 = 0;
        r7 = r24.name();
        r5[r6] = r7;
        r6 = 1;
        r7 = java.lang.Integer.valueOf(r20);
        r5[r6] = r7;
        r4 = java.lang.String.format(r4, r5);
        android.util.Log.d(r3, r4);
        r6 = r12;
        r7 = r13;
        r5 = r14;
        r8 = r15;
        goto L_0x001e;
    L_0x01e4:
        r4 = "font";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
        r0 = r32;
        r1 = r26;
        r2 = r35;
        r27 = r0.a(r1, r2, r4);
        r4 = "font_size";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
        r4 = java.lang.Integer.parseInt(r4);
        r0 = r32;
        r1 = r26;
        r2 = r35;
        r5 = r0.a(r1, r2, r4);
        r4 = "text_color";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
        r28 = android.graphics.Color.parseColor(r4);
        if (r5 <= r7) goto L_0x021e;
    L_0x021b:
        r4 = r7 + -4;
        r5 = r4;
    L_0x021e:
        r4 = "shadow_visible";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
        r4 = java.lang.Integer.parseInt(r4);
        r8 = 1;
        if (r4 != r8) goto L_0x02d5;
    L_0x022d:
        r4 = 1;
        r16 = r4;
    L_0x0230:
        r4 = "shadow_color";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
        r29 = android.graphics.Color.parseColor(r4);
        r4 = "glow_visible";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
        r4 = java.lang.Integer.parseInt(r4);
        r8 = 1;
        if (r4 != r8) goto L_0x02da;
    L_0x024b:
        r4 = 1;
        r17 = r4;
    L_0x024e:
        r4 = "glow_color";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
        r30 = android.graphics.Color.parseColor(r4);
        r4 = "outline_visible";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
        r4 = java.lang.Integer.parseInt(r4);
        r8 = 1;
        if (r4 != r8) goto L_0x02df;
    L_0x0269:
        r4 = 1;
        r18 = r4;
    L_0x026c:
        r4 = "outline_color";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
        r31 = android.graphics.Color.parseColor(r4);
        r4 = "align";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
        if (r14 == 0) goto L_0x0292;
    L_0x0282:
        r8 = "adjust_align_non_sub";
        r8 = r11.containsKey(r8);
        if (r8 == 0) goto L_0x0292;
    L_0x028a:
        r4 = "adjust_align_non_sub";
        r4 = r11.get(r4);
        r4 = (java.lang.String) r4;
    L_0x0292:
        r8 = android.graphics.Paint.Align.CENTER;
        r10 = "LEFT";
        r10 = r4.contains(r10);
        if (r10 == 0) goto L_0x02e3;
    L_0x029c:
        r8 = android.graphics.Paint.Align.LEFT;
        r19 = r8;
    L_0x02a0:
        r10 = 1;
        r8 = "MIDDLE";
        r8 = r4.contains(r8);
        if (r8 == 0) goto L_0x02f0;
    L_0x02a9:
        r10 = 2;
    L_0x02aa:
        if (r14 == 0) goto L_0x02fa;
    L_0x02ac:
        r0 = r32;
        r1 = r35;
        r3 = r0.a(r15, r1);
        r0 = r32;
        r1 = r35;
        r5 = r0.a(r15, r1, r5);
        r8 = r22 + r13;
        r4 = r21 + r12;
        r21 = r5;
        r22 = r4;
        r23 = r8;
        r5 = r3;
    L_0x02c7:
        if (r5 == 0) goto L_0x06f2;
    L_0x02c9:
        r3 = r5.length();
        if (r3 > 0) goto L_0x030c;
    L_0x02cf:
        r6 = r12;
        r7 = r13;
        r5 = r14;
        r8 = r15;
        goto L_0x001e;
    L_0x02d5:
        r4 = 0;
        r16 = r4;
        goto L_0x0230;
    L_0x02da:
        r4 = 0;
        r17 = r4;
        goto L_0x024e;
    L_0x02df:
        r4 = 0;
        r18 = r4;
        goto L_0x026c;
    L_0x02e3:
        r10 = "RIGHT";
        r10 = r4.contains(r10);
        if (r10 == 0) goto L_0x06f8;
    L_0x02eb:
        r8 = android.graphics.Paint.Align.RIGHT;
        r19 = r8;
        goto L_0x02a0;
    L_0x02f0:
        r8 = "BOTTOM";
        r4 = r4.contains(r8);
        if (r4 == 0) goto L_0x02aa;
    L_0x02f8:
        r10 = 3;
        goto L_0x02aa;
    L_0x02fa:
        r0 = r32;
        r1 = r26;
        r2 = r35;
        r3 = r0.b(r1, r2, r3);
        r23 = r22;
        r22 = r21;
        r21 = r5;
        r5 = r3;
        goto L_0x02c7;
    L_0x030c:
        if (r20 >= 0) goto L_0x031c;
    L_0x030e:
        r3 = r34.getTotalTime();
        if (r3 >= r9) goto L_0x0387;
    L_0x0314:
        r4 = 0;
        r3 = r34.getTotalTime();
        r9 = r3;
        r20 = r4;
    L_0x031c:
        r3 = new com.nexstreaming.app.common.util.q;
        r8 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r4 = r33;
        r3.<init>(r4, r5, r6, r7, r8);
        r4 = new com.nexstreaming.nexeditorsdk.nexOverlayItem;
        r5 = new com.nexstreaming.nexeditorsdk.nexOverlayImage;
        r6 = new java.lang.StringBuilder;
        r6.<init>();
        r7 = "";
        r6 = r6.append(r7);
        r0 = r26;
        r6 = r6.append(r0);
        r6 = r6.toString();
        r5.<init>(r6, r3);
        r9 = r9 + r20;
        r6 = r23;
        r7 = r22;
        r8 = r20;
        r4.<init>(r5, r6, r7, r8, r9);
        r0 = r21;
        r6 = (float) r0;
        r5 = r3;
        r7 = r28;
        r8 = r19;
        r9 = r27;
        r5.a(r6, r7, r8, r9, r10);
        if (r16 == 0) goto L_0x0368;
    L_0x035b:
        r8 = 1084227584; // 0x40a00000 float:5.0 double:5.356796015E-315;
        r9 = 1077936128; // 0x40400000 float:3.0 double:5.325712093E-315;
        r10 = 1077936128; // 0x40400000 float:3.0 double:5.325712093E-315;
        r6 = 1;
        r5 = r3;
        r7 = r29;
        r5.a(r6, r7, r8, r9, r10);
    L_0x0368:
        if (r17 == 0) goto L_0x0372;
    L_0x036a:
        r5 = 1090519040; // 0x41000000 float:8.0 double:5.38787994E-315;
        r6 = 1;
        r0 = r30;
        r3.b(r6, r0, r5);
    L_0x0372:
        if (r18 == 0) goto L_0x037c;
    L_0x0374:
        r5 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r6 = 1;
        r0 = r31;
        r3.a(r6, r0, r5);
    L_0x037c:
        r5 = r4.getId();
        r3.a(r5);
        r16 = r4;
        goto L_0x0119;
    L_0x0387:
        r3 = r34.getTotalTime();
        r3 = r3 - r9;
        r20 = r3;
        goto L_0x031c;
    L_0x038f:
        r3 = "id";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
        java.lang.Integer.parseInt(r3);
        r3 = "position";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
        r4 = " ";
        r5 = "";
        r3 = r3.replace(r4, r5);
        r4 = ",";
        r3 = r3.split(r4);
        if (r3 != 0) goto L_0x03b6;
    L_0x03b2:
        r3 = "Wrong position data of title";
        goto L_0x0171;
    L_0x03b6:
        r4 = 0;
        r4 = r3[r4];
        r4 = java.lang.Integer.parseInt(r4);
        r5 = 1;
        r5 = r3[r5];
        r7 = java.lang.Integer.parseInt(r5);
        r5 = 2;
        r5 = r3[r5];
        r8 = java.lang.Integer.parseInt(r5);
        r5 = 3;
        r3 = r3[r5];
        r3 = java.lang.Integer.parseInt(r3);
        r5 = r4 + r8;
        r5 = r5 / 2;
        r6 = r7 + r3;
        r6 = r6 / 2;
        r4 = r8 - r4;
        r3 = r3 - r7;
        r3 = "start_time";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
        r7 = java.lang.Integer.parseInt(r3);
        r3 = "duration";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
        r3 = java.lang.Integer.parseInt(r3);
        r4 = com.nexstreaming.nexeditorsdk.nexOverlayTitle.Priority.START;
        r0 = r24;
        if (r0 != r4) goto L_0x03fe;
    L_0x03fc:
        if (r7 < 0) goto L_0x0406;
    L_0x03fe:
        r4 = com.nexstreaming.nexeditorsdk.nexOverlayTitle.Priority.END;
        r0 = r24;
        if (r0 != r4) goto L_0x0428;
    L_0x0404:
        if (r7 < 0) goto L_0x0428;
    L_0x0406:
        r3 = a;
        r4 = "Apply image res skip(%s %d)";
        r5 = 2;
        r5 = new java.lang.Object[r5];
        r6 = 0;
        r8 = r24.name();
        r5[r6] = r8;
        r6 = 1;
        r7 = java.lang.Integer.valueOf(r7);
        r5[r6] = r7;
        r4 = java.lang.String.format(r4, r5);
        android.util.Log.d(r3, r4);
        r6 = r12;
        r7 = r13;
        r5 = r14;
        r8 = r15;
        goto L_0x001e;
    L_0x0428:
        if (r7 >= 0) goto L_0x06ef;
    L_0x042a:
        r4 = r34.getTotalTime();
        if (r4 >= r3) goto L_0x044e;
    L_0x0430:
        r7 = 0;
        r3 = r34.getTotalTime();
        r8 = r3;
    L_0x0436:
        r3 = "image_res";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
        r0 = r32;
        r4 = r0.b(r3);
        r3 = new com.nexstreaming.nexeditorsdk.nexOverlayItem;
        r8 = r8 + r7;
        r3.<init>(r4, r5, r6, r7, r8);
        r16 = r3;
        goto L_0x0119;
    L_0x044e:
        r4 = r34.getTotalTime();
        r7 = r4 - r3;
        r8 = r3;
        goto L_0x0436;
    L_0x0456:
        r3 = "rotate";
        r3 = r11.containsKey(r3);
        if (r3 == 0) goto L_0x046f;
    L_0x045e:
        r3 = "rotate";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
        r3 = java.lang.Float.parseFloat(r3);
        r0 = r16;
        r0.setRotate(r3);
    L_0x046f:
        r3 = "scale";
        r3 = r11.containsKey(r3);
        if (r3 == 0) goto L_0x04a9;
    L_0x0477:
        r3 = "scale";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
        r4 = " ";
        r5 = "";
        r3 = r3.replace(r4, r5);
        r4 = ",";
        r3 = r3.split(r4);
        if (r3 == 0) goto L_0x04a9;
    L_0x048f:
        r4 = 0;
        r4 = r3[r4];
        r4 = java.lang.Float.parseFloat(r4);
        r5 = 1;
        r5 = r3[r5];
        r5 = java.lang.Float.parseFloat(r5);
        r6 = 2;
        r3 = r3[r6];
        r3 = java.lang.Float.parseFloat(r3);
        r0 = r16;
        r0.setScale(r4, r5, r3);
    L_0x04a9:
        r16.clearAnimate();
        r3 = "animation";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
        if (r14 == 0) goto L_0x04c6;
    L_0x04b6:
        r4 = "adjust_animation_non_sub";
        r4 = r11.containsKey(r4);
        if (r4 == 0) goto L_0x04c6;
    L_0x04be:
        r3 = "adjust_animation_non_sub";
        r3 = r11.get(r3);
        r3 = (java.lang.String) r3;
    L_0x04c6:
        r11 = new org.json.JSONArray;	 Catch:{ JSONException -> 0x06b3 }
        r11.<init>(r3);	 Catch:{ JSONException -> 0x06b3 }
        r3 = 0;
        r10 = r3;
    L_0x04cd:
        r3 = r11.length();	 Catch:{ JSONException -> 0x06b3 }
        if (r10 >= r3) goto L_0x06d9;
    L_0x04d3:
        r3 = r11.getJSONObject(r10);	 Catch:{ JSONException -> 0x06b3 }
        r4 = "type";
        r4 = r3.getString(r4);	 Catch:{ JSONException -> 0x06b3 }
        r5 = "values";
        r17 = r3.getJSONArray(r5);	 Catch:{ JSONException -> 0x06b3 }
        r3 = -1;
        r5 = r4.hashCode();	 Catch:{ JSONException -> 0x06b3 }
        switch(r5) {
            case -925180581: goto L_0x0512;
            case 3357649: goto L_0x04f4;
            case 92909918: goto L_0x04fe;
            case 109250890: goto L_0x0508;
            default: goto L_0x04ed;
        };	 Catch:{ JSONException -> 0x06b3 }
    L_0x04ed:
        switch(r3) {
            case 0: goto L_0x051c;
            case 1: goto L_0x0595;
            case 2: goto L_0x05e9;
            case 3: goto L_0x0657;
            default: goto L_0x04f0;
        };	 Catch:{ JSONException -> 0x06b3 }
    L_0x04f0:
        r3 = r10 + 1;
        r10 = r3;
        goto L_0x04cd;
    L_0x04f4:
        r5 = "move";
        r4 = r4.equals(r5);	 Catch:{ JSONException -> 0x06b3 }
        if (r4 == 0) goto L_0x04ed;
    L_0x04fc:
        r3 = 0;
        goto L_0x04ed;
    L_0x04fe:
        r5 = "alpha";
        r4 = r4.equals(r5);	 Catch:{ JSONException -> 0x06b3 }
        if (r4 == 0) goto L_0x04ed;
    L_0x0506:
        r3 = 1;
        goto L_0x04ed;
    L_0x0508:
        r5 = "scale";
        r4 = r4.equals(r5);	 Catch:{ JSONException -> 0x06b3 }
        if (r4 == 0) goto L_0x04ed;
    L_0x0510:
        r3 = 2;
        goto L_0x04ed;
    L_0x0512:
        r5 = "rotate";
        r4 = r4.equals(r5);	 Catch:{ JSONException -> 0x06b3 }
        if (r4 == 0) goto L_0x04ed;
    L_0x051a:
        r3 = 3;
        goto L_0x04ed;
    L_0x051c:
        r3 = 0;
        r9 = r3;
    L_0x051e:
        r3 = r17.length();	 Catch:{ JSONException -> 0x06b3 }
        if (r9 >= r3) goto L_0x04f0;
    L_0x0524:
        r0 = r17;
        r3 = r0.getJSONObject(r9);	 Catch:{ JSONException -> 0x06b3 }
        r4 = "motion_type";
        r4 = r3.getString(r4);	 Catch:{ JSONException -> 0x06b3 }
        r0 = r32;
        r18 = r0.a(r4);	 Catch:{ JSONException -> 0x06b3 }
        r4 = "start_time";
        r4 = r3.getString(r4);	 Catch:{ JSONException -> 0x06b3 }
        r19 = java.lang.Integer.parseInt(r4);	 Catch:{ JSONException -> 0x06b3 }
        r4 = "end_time";
        r4 = r3.getString(r4);	 Catch:{ JSONException -> 0x06b3 }
        r4 = java.lang.Integer.parseInt(r4);	 Catch:{ JSONException -> 0x06b3 }
        r5 = "start_x";
        r5 = r3.getString(r5);	 Catch:{ JSONException -> 0x06b3 }
        r5 = java.lang.Float.parseFloat(r5);	 Catch:{ JSONException -> 0x06b3 }
        r6 = "end_x";
        r6 = r3.getString(r6);	 Catch:{ JSONException -> 0x06b3 }
        r6 = java.lang.Float.parseFloat(r6);	 Catch:{ JSONException -> 0x06b3 }
        r7 = "start_y";
        r7 = r3.getString(r7);	 Catch:{ JSONException -> 0x06b3 }
        r7 = java.lang.Float.parseFloat(r7);	 Catch:{ JSONException -> 0x06b3 }
        r8 = "end_y";
        r3 = r3.getString(r8);	 Catch:{ JSONException -> 0x06b3 }
        r8 = java.lang.Float.parseFloat(r3);	 Catch:{ JSONException -> 0x06b3 }
        r20 = r4 - r19;
        r3 = new com.nexstreaming.nexeditorsdk.nexOverlayTitle$1;	 Catch:{ JSONException -> 0x06b3 }
        r4 = r32;
        r3.<init>(r5, r6, r7, r8);	 Catch:{ JSONException -> 0x06b3 }
        r0 = r19;
        r1 = r20;
        r3 = com.nexstreaming.nexeditorsdk.nexAnimate.getMove(r0, r1, r3);	 Catch:{ JSONException -> 0x06b3 }
        r0 = r18;
        r3 = r3.setInterpolator(r0);	 Catch:{ JSONException -> 0x06b3 }
        r0 = r16;
        r0.addAnimate(r3);	 Catch:{ JSONException -> 0x06b3 }
        r3 = r9 + 1;
        r9 = r3;
        goto L_0x051e;
    L_0x0595:
        r3 = 0;
    L_0x0596:
        r4 = r17.length();	 Catch:{ JSONException -> 0x06b3 }
        if (r3 >= r4) goto L_0x04f0;
    L_0x059c:
        r0 = r17;
        r4 = r0.getJSONObject(r3);	 Catch:{ JSONException -> 0x06b3 }
        r5 = "motion_type";
        r5 = r4.getString(r5);	 Catch:{ JSONException -> 0x06b3 }
        r0 = r32;
        r5 = r0.a(r5);	 Catch:{ JSONException -> 0x06b3 }
        r6 = "start_time";
        r6 = r4.getString(r6);	 Catch:{ JSONException -> 0x06b3 }
        r6 = java.lang.Integer.parseInt(r6);	 Catch:{ JSONException -> 0x06b3 }
        r7 = "end_time";
        r7 = r4.getString(r7);	 Catch:{ JSONException -> 0x06b3 }
        r7 = java.lang.Integer.parseInt(r7);	 Catch:{ JSONException -> 0x06b3 }
        r8 = "start";
        r8 = r4.getString(r8);	 Catch:{ JSONException -> 0x06b3 }
        r8 = java.lang.Float.parseFloat(r8);	 Catch:{ JSONException -> 0x06b3 }
        r9 = "end";
        r4 = r4.getString(r9);	 Catch:{ JSONException -> 0x06b3 }
        r4 = java.lang.Float.parseFloat(r4);	 Catch:{ JSONException -> 0x06b3 }
        r7 = r7 - r6;
        r4 = com.nexstreaming.nexeditorsdk.nexAnimate.getAlpha(r6, r7, r8, r4);	 Catch:{ JSONException -> 0x06b3 }
        r4 = r4.setInterpolator(r5);	 Catch:{ JSONException -> 0x06b3 }
        r0 = r16;
        r0.addAnimate(r4);	 Catch:{ JSONException -> 0x06b3 }
        r3 = r3 + 1;
        goto L_0x0596;
    L_0x05e9:
        r3 = 0;
        r9 = r3;
    L_0x05eb:
        r3 = r17.length();	 Catch:{ JSONException -> 0x06b3 }
        if (r9 >= r3) goto L_0x04f0;
    L_0x05f1:
        r0 = r17;
        r4 = r0.getJSONObject(r9);	 Catch:{ JSONException -> 0x06b3 }
        r3 = "motion_type";
        r3 = r4.getString(r3);	 Catch:{ JSONException -> 0x06b3 }
        r0 = r32;
        r18 = r0.a(r3);	 Catch:{ JSONException -> 0x06b3 }
        r3 = "start_time";
        r3 = r4.getString(r3);	 Catch:{ JSONException -> 0x06b3 }
        r3 = java.lang.Integer.parseInt(r3);	 Catch:{ JSONException -> 0x06b3 }
        r5 = "end_time";
        r5 = r4.getString(r5);	 Catch:{ JSONException -> 0x06b3 }
        r19 = java.lang.Integer.parseInt(r5);	 Catch:{ JSONException -> 0x06b3 }
        r5 = "start_x";
        r5 = r4.getString(r5);	 Catch:{ JSONException -> 0x06b3 }
        r5 = java.lang.Float.parseFloat(r5);	 Catch:{ JSONException -> 0x06b3 }
        r6 = "end_x";
        r6 = r4.getString(r6);	 Catch:{ JSONException -> 0x06b3 }
        r7 = java.lang.Float.parseFloat(r6);	 Catch:{ JSONException -> 0x06b3 }
        r6 = "start_y";
        r6 = r4.getString(r6);	 Catch:{ JSONException -> 0x06b3 }
        r6 = java.lang.Float.parseFloat(r6);	 Catch:{ JSONException -> 0x06b3 }
        r8 = "end_y";
        r4 = r4.getString(r8);	 Catch:{ JSONException -> 0x06b3 }
        r8 = java.lang.Float.parseFloat(r4);	 Catch:{ JSONException -> 0x06b3 }
        r4 = r19 - r3;
        r3 = com.nexstreaming.nexeditorsdk.nexAnimate.getScale(r3, r4, r5, r6, r7, r8);	 Catch:{ JSONException -> 0x06b3 }
        r0 = r18;
        r3 = r3.setInterpolator(r0);	 Catch:{ JSONException -> 0x06b3 }
        r0 = r16;
        r0.addAnimate(r3);	 Catch:{ JSONException -> 0x06b3 }
        r3 = r9 + 1;
        r9 = r3;
        goto L_0x05eb;
    L_0x0657:
        r3 = 0;
        r4 = r3;
    L_0x0659:
        r3 = r17.length();	 Catch:{ JSONException -> 0x06b3 }
        if (r4 >= r3) goto L_0x04f0;
    L_0x065f:
        r0 = r17;
        r5 = r0.getJSONObject(r4);	 Catch:{ JSONException -> 0x06b3 }
        r3 = "motion_type";
        r3 = r5.getString(r3);	 Catch:{ JSONException -> 0x06b3 }
        r0 = r32;
        r6 = r0.a(r3);	 Catch:{ JSONException -> 0x06b3 }
        r3 = "start_time";
        r3 = r5.getString(r3);	 Catch:{ JSONException -> 0x06b3 }
        r7 = java.lang.Integer.parseInt(r3);	 Catch:{ JSONException -> 0x06b3 }
        r3 = "end_time";
        r3 = r5.getString(r3);	 Catch:{ JSONException -> 0x06b3 }
        r8 = java.lang.Integer.parseInt(r3);	 Catch:{ JSONException -> 0x06b3 }
        r3 = "clockwise";
        r3 = r5.getString(r3);	 Catch:{ JSONException -> 0x06b3 }
        r3 = java.lang.Integer.parseInt(r3);	 Catch:{ JSONException -> 0x06b3 }
        r9 = 1;
        if (r3 != r9) goto L_0x06b1;
    L_0x0693:
        r3 = 1;
    L_0x0694:
        r9 = "rotatedegree";
        r5 = r5.getString(r9);	 Catch:{ JSONException -> 0x06b3 }
        r5 = java.lang.Float.parseFloat(r5);	 Catch:{ JSONException -> 0x06b3 }
        r8 = r8 - r7;
        r9 = 0;
        r3 = com.nexstreaming.nexeditorsdk.nexAnimate.getRotate(r7, r8, r3, r5, r9);	 Catch:{ JSONException -> 0x06b3 }
        r3 = r3.setInterpolator(r6);	 Catch:{ JSONException -> 0x06b3 }
        r0 = r16;
        r0.addAnimate(r3);	 Catch:{ JSONException -> 0x06b3 }
        r3 = r4 + 1;
        r4 = r3;
        goto L_0x0659;
    L_0x06b1:
        r3 = 0;
        goto L_0x0694;
    L_0x06b3:
        r3 = move-exception;
        r3.printStackTrace();
        r4 = a;
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "applyOverlayAsset failed";
        r5 = r5.append(r6);
        r6 = r3.getMessage();
        r5 = r5.append(r6);
        r5 = r5.toString();
        android.util.Log.d(r4, r5);
        r3 = r3.getMessage();
        goto L_0x0171;
    L_0x06d9:
        r3 = 1;
        r0 = r16;
        r0.setOverlayTitle(r3);
        r0 = r34;
        r1 = r16;
        r0.addOverlay(r1);
        r6 = r12;
        r7 = r13;
        r5 = r14;
        r8 = r15;
        goto L_0x001e;
    L_0x06ec:
        r3 = 0;
        goto L_0x0171;
    L_0x06ef:
        r8 = r3;
        goto L_0x0436;
    L_0x06f2:
        r6 = r12;
        r7 = r13;
        r5 = r14;
        r8 = r15;
        goto L_0x001e;
    L_0x06f8:
        r19 = r8;
        goto L_0x02a0;
    L_0x06fc:
        r12 = r6;
        r13 = r7;
        r14 = r5;
        r15 = r8;
        goto L_0x009b;
    L_0x0702:
        r12 = r6;
        r13 = r7;
        r15 = r5;
        goto L_0x009b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.nexeditorsdk.nexOverlayTitle.a(android.content.Context, com.nexstreaming.nexeditorsdk.nexProject, java.util.List):java.lang.String");
    }

    public String a(nexProject nexproject) {
        if (nexproject == null) {
            return "Null project";
        }
        List<Integer> arrayList = new ArrayList();
        for (nexOverlayItem nexoverlayitem : nexproject.getOverlayItems()) {
            if (nexoverlayitem.getOverlayTitle()) {
                arrayList.add(Integer.valueOf(nexoverlayitem.getId()));
            }
        }
        for (Integer intValue : arrayList) {
            nexproject.removeOverlay(intValue.intValue());
        }
        return null;
    }

    int a(int i, List<nexTitleInfo> list, int i2) {
        for (nexTitleInfo nextitleinfo : list) {
            if (nextitleinfo.getId() == i) {
                int fontSize = nextitleinfo.getFontSize();
                Log.d(a, "getFontSize() id=" + i + ", FontSize=" + fontSize);
                return fontSize <= 0 ? i2 : fontSize;
            }
        }
        Log.d(a, "getFontSize() id=" + i + ", defaultFontSize=" + i2);
        return i2;
    }

    String a(int i, List<nexTitleInfo> list, String str) {
        for (nexTitleInfo nextitleinfo : list) {
            if (nextitleinfo.getId() == i) {
                return nextitleinfo.getFontID();
            }
        }
        return str;
    }

    String b(int i, List<nexTitleInfo> list, String str) {
        for (nexTitleInfo nextitleinfo : list) {
            if (nextitleinfo.getId() == i) {
                return nextitleinfo.getText();
            }
        }
        return str;
    }

    String a(String str, List<nexTitleInfo> list) {
        for (nexTitleInfo nextitleinfo : list) {
            if (nextitleinfo.getGroup().startsWith(str.substring(0, 1)) && nextitleinfo.getText() != null && nextitleinfo.getText().length() > 0) {
                return nextitleinfo.getText();
            }
        }
        return null;
    }

    int a(String str, List<nexTitleInfo> list, int i) {
        for (nexTitleInfo nextitleinfo : list) {
            if (nextitleinfo.getGroup().startsWith(str.substring(0, 1)) && nextitleinfo.getText() != null && nextitleinfo.getText().length() > 0) {
                return nextitleinfo.getFontSize();
            }
        }
        return i;
    }

    boolean a(List<nexTitleInfo> list, String str) {
        boolean z = false;
        for (nexTitleInfo nextitleinfo : list) {
            boolean z2;
            if (!nextitleinfo.getGroup().startsWith(str.substring(0, 1)) || (nextitleinfo.getText() != null && nextitleinfo.getText().length() > 0)) {
                z2 = z;
            } else {
                z2 = true;
            }
            z = z2;
        }
        return z;
    }

    int a(boolean z) {
        Iterator it = this.g.iterator();
        int i = 0;
        while (it.hasNext()) {
            HashMap hashMap = (HashMap) it.next();
            int parseInt = Integer.parseInt((String) hashMap.get("start_time"));
            int parseInt2 = Integer.parseInt((String) hashMap.get("duration"));
            if (z) {
                if (parseInt >= 0) {
                    if (i >= parseInt2) {
                        parseInt2 = i;
                    }
                    i = parseInt2;
                }
            } else if (parseInt < 0) {
                if (i >= parseInt2) {
                    parseInt2 = i;
                }
                i = parseInt2;
            }
        }
        return i;
    }

    Priority b(nexProject nexproject) {
        if (nexproject.getTotalTime() >= a(true) + a(false)) {
            return Priority.START_END;
        }
        if (this.e.equals("start")) {
            return Priority.START;
        }
        return Priority.END;
    }

    TimeInterpolator a(String str) {
        Object obj = -1;
        switch (str.hashCode()) {
            case -1539081405:
                if (str.equals("DecelerateInterpolator")) {
                    obj = 5;
                    break;
                }
                break;
            case -1327597199:
                if (str.equals("AnticipateInterpolator")) {
                    obj = 1;
                    break;
                }
                break;
            case -1275674606:
                if (str.equals("OvershootInterpolator")) {
                    obj = 7;
                    break;
                }
                break;
            case -1163632952:
                if (str.equals("AnticipateOvershootInterpolator")) {
                    obj = 2;
                    break;
                }
                break;
            case -142581660:
                if (str.equals("AccelerateInterpolator")) {
                    obj = null;
                    break;
                }
                break;
            case 593057964:
                if (str.equals("LinearInterpolator")) {
                    obj = 6;
                    break;
                }
                break;
            case 1416217487:
                if (str.equals("BounceInterpolator")) {
                    obj = 3;
                    break;
                }
                break;
            case 1682001069:
                if (str.equals("CycleInterpolator")) {
                    obj = 4;
                    break;
                }
                break;
        }
        switch (obj) {
            case null:
                return new AccelerateInterpolator();
            case 1:
                return new AnticipateInterpolator();
            case 2:
                return new AnticipateOvershootInterpolator();
            case 3:
                return new BounceInterpolator();
            case 4:
                return new CycleInterpolator(1.0f);
            case 5:
                return new DecelerateInterpolator();
            case 6:
                return new LinearInterpolator();
            case 7:
                return new OvershootInterpolator();
            default:
                return new AccelerateDecelerateInterpolator();
        }
    }

    private nexOverlayImage b(String str) {
        f c = c.a().c(str);
        if (c != null && c.getCategory() == ItemCategory.overlay && c.getType() == ItemType.overlay) {
            return new nexOverlayImage(str, true);
        }
        return null;
    }
}
