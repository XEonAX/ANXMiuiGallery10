package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.util.Log;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.nexasset.store.AssetLocalInstallDB;
import com.nexstreaming.app.common.util.n;
import com.nexstreaming.kminternal.kinemaster.config.a;
import com.nexstreaming.kminternal.kinemaster.fonts.Font;
import com.nexstreaming.kminternal.kinemaster.fonts.b;
import com.nexstreaming.kminternal.kinemaster.fonts.c;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public final class nexFont {
    private static final String LOG_TAG = "nexFont";
    private static List<nexFont> list = new ArrayList();
    private static boolean s_update;
    private boolean builtin;
    private Font font;
    private String sample;
    private boolean system;

    private nexFont(boolean z, Font font, String str, boolean z2) {
        this.builtin = z;
        this.font = font;
        this.sample = str;
        this.system = z2;
    }

    public String getId() {
        return this.font.a();
    }

    public String getSampleText() {
        return this.sample;
    }

    public boolean isBuiltinFont() {
        return this.builtin;
    }

    public boolean isSystemFont() {
        return this.system;
    }

    public Bitmap getSampleImage(Context context) {
        return this.font.c(context);
    }

    public Typeface getTypeFace() {
        return c.a().b(getId());
    }

    public static List<nexFont> getPresetList() {
        if (list.size() == 0) {
            for (b a : c.a().b()) {
                for (Font font : a.a()) {
                    list.add(new nexFont(true, font, font.a(null), font.a().startsWith("system")));
                }
            }
            for (f fVar : com.nexstreaming.app.common.nexasset.assetpackage.c.a().a(ItemCategory.font)) {
                if (!fVar.isHidden()) {
                    boolean z;
                    String valueOf = String.valueOf((int) fVar.getAssetPackage().getAssetSubCategory().getSubCategoryId());
                    if (valueOf == null) {
                        valueOf = "asset";
                    }
                    String sampleText = fVar.getSampleText();
                    if (sampleText == null || sampleText.trim().length() < 1) {
                        sampleText = n.a(a.a().b(), fVar.getLabel());
                    }
                    if (sampleText == null) {
                        sampleText = fVar.getId();
                    }
                    Log.d(LOG_TAG, "asset font id=" + fVar.getId() + ", loacalPath=" + getLocalPath(fVar));
                    Font font2 = new Font(fVar.getId(), valueOf, new File(getLocalPath(fVar)), sampleText);
                    if (fVar.getPackageURI().contains(AssetLocalInstallDB.getInstalledAssetPath())) {
                        z = false;
                    } else {
                        z = true;
                    }
                    list.add(new nexFont(z, font2, sampleText, false));
                }
            }
        }
        return list;
    }

    public static nexFont getFont(String str) {
        checkUpdate();
        for (nexFont nexfont : list) {
            if (nexfont.getId().compareTo(str) == 0) {
                return nexfont;
            }
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0053 A:{SYNTHETIC, Splitter: B:23:0x0053} */
    private static java.lang.String getLocalPath(com.nexstreaming.app.common.nexasset.assetpackage.f r5) {
        /*
        r0 = 0;
        r1 = com.nexstreaming.kminternal.kinemaster.config.a.a();	 Catch:{ Exception -> 0x0032, all -> 0x004e }
        r1 = r1.b();	 Catch:{ Exception -> 0x0032, all -> 0x004e }
        r2 = r5.getPackageURI();	 Catch:{ Exception -> 0x0032, all -> 0x004e }
        r3 = r5.getId();	 Catch:{ Exception -> 0x0032, all -> 0x004e }
        r2 = com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader.a(r1, r2, r3);	 Catch:{ Exception -> 0x0032, all -> 0x004e }
        r1 = r5.getFilePath();	 Catch:{ Exception -> 0x0064 }
        r1 = r2.c(r1);	 Catch:{ Exception -> 0x0064 }
        r0 = r1.getAbsolutePath();	 Catch:{ Exception -> 0x0064 }
        if (r2 == 0) goto L_0x0026;
    L_0x0023:
        r2.close();	 Catch:{ IOException -> 0x0027 }
    L_0x0026:
        return r0;
    L_0x0027:
        r1 = move-exception;
        r2 = "nexFont";
        r3 = r1.getMessage();
        android.util.Log.e(r2, r3, r1);
        goto L_0x0026;
    L_0x0032:
        r1 = move-exception;
        r2 = r0;
    L_0x0034:
        r3 = "nexFont";
        r4 = r1.getMessage();	 Catch:{ all -> 0x0062 }
        android.util.Log.e(r3, r4, r1);	 Catch:{ all -> 0x0062 }
        if (r2 == 0) goto L_0x0026;
    L_0x003f:
        r2.close();	 Catch:{ IOException -> 0x0043 }
        goto L_0x0026;
    L_0x0043:
        r1 = move-exception;
        r2 = "nexFont";
        r3 = r1.getMessage();
        android.util.Log.e(r2, r3, r1);
        goto L_0x0026;
    L_0x004e:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
    L_0x0051:
        if (r2 == 0) goto L_0x0056;
    L_0x0053:
        r2.close();	 Catch:{ IOException -> 0x0057 }
    L_0x0056:
        throw r0;
    L_0x0057:
        r1 = move-exception;
        r2 = "nexFont";
        r3 = r1.getMessage();
        android.util.Log.e(r2, r3, r1);
        goto L_0x0056;
    L_0x0062:
        r0 = move-exception;
        goto L_0x0051;
    L_0x0064:
        r1 = move-exception;
        goto L_0x0034;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.nexeditorsdk.nexFont.getLocalPath(com.nexstreaming.app.common.nexasset.assetpackage.f):java.lang.String");
    }

    public static String[] getFontIds() {
        checkUpdate();
        String[] strArr = new String[list.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= strArr.length) {
                return strArr;
            }
            strArr[i2] = ((nexFont) list.get(i2)).getId();
            i = i2 + 1;
        }
    }

    public static Typeface getTypeface(Context context, String str) {
        return c.a().b(str);
    }

    public static void reload() {
        list.clear();
        getPresetList();
    }

    static boolean isLoadedFont(String str) {
        if (c.a().a(str)) {
            return true;
        }
        f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(str);
        if (c == null) {
            return false;
        }
        if (c.getCategory() != ItemCategory.font) {
            return false;
        }
        return true;
    }

    public static void clearBuiltinFontsCache() {
        c.a().c();
    }

    static void needUpdate() {
        s_update = true;
    }

    static void checkUpdate() {
        if (s_update) {
            s_update = false;
            reload();
        }
    }
}
