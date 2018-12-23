package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemType;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.kminternal.kinemaster.config.EditorGlobal;
import java.util.ArrayList;
import java.util.List;

public final class nexEffectLibrary {
    private static nexEffectLibrary sSingleton = null;
    private final Context mAppContext;

    @Deprecated
    public static abstract class OnInstallPluginEffectPackageAsyncListener {
        public abstract void onComplete(int i, String[] strArr);

        public abstract void onPackageLoaded(int i);
    }

    private nexEffectLibrary(Context context) {
        this.mAppContext = context;
    }

    public static nexEffectLibrary getEffectLibrary(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (!(sSingleton == null || sSingleton.mAppContext.getPackageName().equals(applicationContext.getPackageName()))) {
            sSingleton = null;
        }
        if (sSingleton == null) {
            sSingleton = new nexEffectLibrary(applicationContext);
        }
        return sSingleton;
    }

    @Deprecated
    public ArrayList<nexTheme> getThemesEx() {
        return new ArrayList();
    }

    @Deprecated
    public nexTheme[] getThemes() {
        return new nexTheme[0];
    }

    public ArrayList<nexTransitionEffect> getTransitionEffectsEx() {
        ArrayList<nexTransitionEffect> arrayList = new ArrayList();
        for (f fVar : c.a(this.mAppContext).a(ItemCategory.transition)) {
            if (!fVar.isHidden()) {
                arrayList.add(new nexTransitionEffect(fVar.getId()));
            }
        }
        return arrayList;
    }

    public nexTransitionEffect[] getTransitionEffects() {
        int i = 0;
        List<f> a = c.a(this.mAppContext).a(ItemCategory.transition);
        int i2 = 0;
        for (f isHidden : a) {
            int i3;
            if (isHidden.isHidden()) {
                i3 = i2;
            } else {
                i3 = i2 + 1;
            }
            i2 = i3;
        }
        nexTransitionEffect[] nextransitioneffectArr = new nexTransitionEffect[i2];
        for (f isHidden2 : a) {
            if (!isHidden2.isHidden()) {
                nextransitioneffectArr[i] = new nexTransitionEffect(isHidden2.getId());
                nextransitioneffectArr[i].itemMethodType = nexAssetPackageManager.getMethodType(isHidden2.getType());
                i++;
            }
        }
        return nextransitioneffectArr;
    }

    public nexClipEffect[] getClipEffects() {
        int i = 0;
        List<f> a = c.a(this.mAppContext).a(ItemCategory.effect);
        int i2 = 0;
        for (f isHidden : a) {
            int i3;
            if (isHidden.isHidden()) {
                i3 = i2;
            } else {
                i3 = i2 + 1;
            }
            i2 = i3;
        }
        nexClipEffect[] nexclipeffectArr = new nexClipEffect[i2];
        for (f isHidden2 : a) {
            if (!isHidden2.isHidden()) {
                nexclipeffectArr[i] = new nexClipEffect(isHidden2.getId());
                nexclipeffectArr[i].itemMethodType = nexAssetPackageManager.getMethodType(isHidden2.getType());
                i++;
            }
        }
        return nexclipeffectArr;
    }

    public nexOverlayFilter[] getOverlayFilters() {
        List arrayList = new ArrayList();
        for (f fVar : c.a(this.mAppContext).a(ItemCategory.effect)) {
            if (!fVar.isHidden() && fVar.getType() == ItemType.renderitem) {
                arrayList.add(fVar.getId());
            }
        }
        nexOverlayFilter[] nexoverlayfilterArr = new nexOverlayFilter[arrayList.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= nexoverlayfilterArr.length) {
                return nexoverlayfilterArr;
            }
            nexoverlayfilterArr[i2] = new nexOverlayFilter((String) arrayList.get(i2));
            i = i2 + 1;
        }
    }

    @Deprecated
    public nexTheme findThemeById(String str) {
        return null;
    }

    public nexClipEffect findClipEffectById(String str) {
        f c = c.a(this.mAppContext).c(str);
        if (c == null || c.getCategory() != ItemCategory.effect) {
            return null;
        }
        nexClipEffect nexclipeffect = new nexClipEffect(str);
        nexclipeffect.itemMethodType = nexAssetPackageManager.getMethodType(c.getType());
        return nexclipeffect;
    }

    public nexTransitionEffect findTransitionEffectById(String str) {
        f c = c.a(this.mAppContext).c(str);
        if (c == null || c.getCategory() != ItemCategory.transition) {
            return null;
        }
        nexTransitionEffect nextransitioneffect = new nexTransitionEffect(str);
        nextransitioneffect.itemMethodType = nexAssetPackageManager.getMethodType(c.getType());
        return nextransitioneffect;
    }

    public nexOverlayFilter findOverlayFilterById(String str) {
        f c = c.a(this.mAppContext).c(str);
        if (c != null && c.getType() == ItemType.renderitem) {
            return new nexOverlayFilter(str);
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x009c  */
    public com.nexstreaming.nexeditorsdk.nexEffectOptions getEffectOptions(android.content.Context r13, java.lang.String r14) {
        /*
        r12 = this;
        r0 = com.nexstreaming.kminternal.kinemaster.config.a.a();
        r0 = r0.b();
        r0 = com.nexstreaming.app.common.nexasset.assetpackage.c.a(r0);
        r1 = r0.c(r14);
        if (r1 == 0) goto L_0x01a0;
    L_0x0012:
        r0 = 0;
        r2 = 0;
        r3 = r1.getCategory();
        r4 = com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory.transition;
        if (r3 != r4) goto L_0x0032;
    L_0x001c:
        r0 = 4;
        r1 = r0;
    L_0x001e:
        r0 = new com.nexstreaming.nexeditorsdk.nexEffectOptions;
        r0.<init>(r14, r1);
        r1 = com.nexstreaming.kminternal.kinemaster.config.a.a();	 Catch:{ XmlPullParserException -> 0x0050, IOException -> 0x0056 }
        r1 = r1.b();	 Catch:{ XmlPullParserException -> 0x0050, IOException -> 0x0056 }
        r1 = com.nexstreaming.app.common.nexasset.assetpackage.i.a(r1, r14);	 Catch:{ XmlPullParserException -> 0x0050, IOException -> 0x0056 }
    L_0x002f:
        if (r1 != 0) goto L_0x005c;
    L_0x0031:
        return r0;
    L_0x0032:
        r3 = r1.getCategory();
        r4 = com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory.effect;
        if (r3 != r4) goto L_0x003d;
    L_0x003a:
        r0 = 2;
        r1 = r0;
        goto L_0x001e;
    L_0x003d:
        r3 = r1.getCategory();
        r4 = com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory.filter;
        if (r3 != r4) goto L_0x01ab;
    L_0x0045:
        r1 = r1.getType();
        r3 = com.nexstreaming.app.common.nexasset.assetpackage.ItemType.renderitem;
        if (r1 != r3) goto L_0x01ab;
    L_0x004d:
        r0 = 5;
        r1 = r0;
        goto L_0x001e;
    L_0x0050:
        r1 = move-exception;
        r1.printStackTrace();
        r1 = r2;
        goto L_0x002f;
    L_0x0056:
        r1 = move-exception;
        r1.printStackTrace();
        r1 = r2;
        goto L_0x002f;
    L_0x005c:
        r1 = r1.a();
        r9 = r1.iterator();
    L_0x0064:
        r1 = r9.hasNext();
        if (r1 == 0) goto L_0x0031;
    L_0x006a:
        r1 = r9.next();
        r6 = r1;
        r6 = (com.nexstreaming.app.common.nexasset.assetpackage.g) r6;
        r1 = r6.i();
        r2 = 0;
        if (r1 == 0) goto L_0x01a8;
    L_0x0078:
        r3 = "label";
        r1 = r1.get(r3);
        r1 = (java.util.Map) r1;
        if (r1 == 0) goto L_0x01a8;
    L_0x0082:
        r2 = "en";
        r1 = r1.get(r2);
        r1 = (java.lang.String) r1;
    L_0x008a:
        r2 = r6.a();
        r3 = com.nexstreaming.app.common.nexasset.assetpackage.ItemParameterType.RGBA;
        if (r2 == r3) goto L_0x009a;
    L_0x0092:
        r2 = r6.a();
        r3 = com.nexstreaming.app.common.nexasset.assetpackage.ItemParameterType.RGB;
        if (r2 != r3) goto L_0x00aa;
    L_0x009a:
        if (r1 != 0) goto L_0x009e;
    L_0x009c:
        r1 = "Color";
    L_0x009e:
        r2 = r6.e();
        r3 = r6.b();
        r0.addColorOpt(r2, r1, r3);
        goto L_0x0064;
    L_0x00aa:
        r2 = r6.a();
        r3 = com.nexstreaming.app.common.nexasset.assetpackage.ItemParameterType.TEXT;
        if (r2 != r3) goto L_0x00c7;
    L_0x00b2:
        if (r1 != 0) goto L_0x00b6;
    L_0x00b4:
        r1 = "Text";
    L_0x00b6:
        r3 = r6.e();
        r2 = r6.f();
        if (r2 == 0) goto L_0x00c5;
    L_0x00c0:
        r2 = 2;
    L_0x00c1:
        r0.addTextOpt(r3, r1, r2);
        goto L_0x0064;
    L_0x00c5:
        r2 = 1;
        goto L_0x00c1;
    L_0x00c7:
        r2 = r6.a();
        r3 = com.nexstreaming.app.common.nexasset.assetpackage.ItemParameterType.CHOICE;
        if (r2 != r3) goto L_0x0156;
    L_0x00cf:
        if (r1 != 0) goto L_0x01a5;
    L_0x00d1:
        r2 = "Choice";
    L_0x00d3:
        r10 = r6.j();
        r5 = 0;
        r1 = r10.size();
        r3 = new java.lang.String[r1];
        r1 = r10.size();
        r4 = new java.lang.String[r1];
        r1 = 0;
        r7 = r1;
    L_0x00e6:
        r1 = r10.size();
        if (r7 >= r1) goto L_0x014d;
    L_0x00ec:
        r1 = r10.get(r7);
        r1 = (com.nexstreaming.app.common.nexasset.assetpackage.g.a) r1;
        r1 = r1.a();
        r8 = 0;
        if (r1 == 0) goto L_0x010c;
    L_0x00f9:
        r11 = "label";
        r1 = r1.get(r11);
        r1 = (java.util.Map) r1;
        if (r1 == 0) goto L_0x010c;
    L_0x0103:
        r8 = "en";
        r1 = r1.get(r8);
        r1 = (java.lang.String) r1;
        r8 = r1;
    L_0x010c:
        r1 = r10.get(r7);
        r1 = (com.nexstreaming.app.common.nexasset.assetpackage.g.a) r1;
        r1 = r1.b();
        r11 = r6.b();
        r1 = r1.compareTo(r11);
        if (r1 != 0) goto L_0x0121;
    L_0x0120:
        r5 = r7;
    L_0x0121:
        if (r8 != 0) goto L_0x013b;
    L_0x0123:
        r8 = new java.lang.String;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r11 = "item";
        r1 = r1.append(r11);
        r1 = r1.append(r7);
        r1 = r1.toString();
        r8.<init>(r1);
    L_0x013b:
        r3[r7] = r8;
        r1 = r10.get(r7);
        r1 = (com.nexstreaming.app.common.nexasset.assetpackage.g.a) r1;
        r1 = r1.b();
        r4[r7] = r1;
        r1 = r7 + 1;
        r7 = r1;
        goto L_0x00e6;
    L_0x014d:
        r1 = r6.e();
        r0.addSelectOpt(r1, r2, r3, r4, r5);
        goto L_0x0064;
    L_0x0156:
        r2 = r6.a();
        r3 = com.nexstreaming.app.common.nexasset.assetpackage.ItemParameterType.RANGE;
        if (r2 != r3) goto L_0x017b;
    L_0x015e:
        if (r1 != 0) goto L_0x01a3;
    L_0x0160:
        r2 = "Range";
    L_0x0162:
        r1 = r6.b();
        r3 = java.lang.Integer.parseInt(r1);
        r1 = r6.e();
        r4 = r6.g();
        r5 = r6.h();
        r0.addRangeOpt(r1, r2, r3, r4, r5);
        goto L_0x0064;
    L_0x017b:
        r2 = r6.a();
        r3 = com.nexstreaming.app.common.nexasset.assetpackage.ItemParameterType.SWITCH;
        if (r2 != r3) goto L_0x0064;
    L_0x0183:
        if (r1 != 0) goto L_0x0187;
    L_0x0185:
        r1 = "Switch";
    L_0x0187:
        r2 = 0;
        r3 = r6.d();
        r4 = r6.b();
        r3 = r3.compareTo(r4);
        if (r3 != 0) goto L_0x0197;
    L_0x0196:
        r2 = 1;
    L_0x0197:
        r3 = r6.e();
        r0.addSwitchOpt(r3, r1, r2);
        goto L_0x0064;
    L_0x01a0:
        r0 = 0;
        goto L_0x0031;
    L_0x01a3:
        r2 = r1;
        goto L_0x0162;
    L_0x01a5:
        r2 = r1;
        goto L_0x00d3;
    L_0x01a8:
        r1 = r2;
        goto L_0x008a;
    L_0x01ab:
        r1 = r0;
        goto L_0x001e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.nexeditorsdk.nexEffectLibrary.getEffectOptions(android.content.Context, java.lang.String):com.nexstreaming.nexeditorsdk.nexEffectOptions");
    }

    boolean checkEffectID(String str) {
        boolean a = c.a(this.mAppContext).a(str, ItemCategory.transition);
        if (a) {
            return a;
        }
        return c.a(this.mAppContext).a(str, ItemCategory.effect);
    }

    @Deprecated
    public boolean installPluginEffectPackageAsync(String[] strArr, OnInstallPluginEffectPackageAsyncListener onInstallPluginEffectPackageAsyncListener) {
        return true;
    }

    @Deprecated
    public static String getPluginDirPath() {
        return EditorGlobal.g().getAbsolutePath();
    }
}
