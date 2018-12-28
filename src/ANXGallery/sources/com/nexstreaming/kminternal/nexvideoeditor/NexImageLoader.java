package com.nexstreaming.kminternal.nexvideoeditor;

import android.content.ContentUris;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Images.Thumbnails;
import android.util.Log;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

public final class NexImageLoader {
    private static final String LOG_TAG = "NexImageLoader";
    private static final int MAX_USERSTRINGS = 3;
    private static final int NXT_ALIGNMASK = 15;
    private static final int NXT_ALIGN_CENTER = 1;
    private static final int NXT_ALIGN_LEFT = 0;
    private static final int NXT_ALIGN_RIGHT = 2;
    private static final int NXT_BLUR_INNER = 2;
    private static final int NXT_BLUR_NORMAL = 0;
    private static final int NXT_BLUR_OUTER = 3;
    private static final int NXT_BLUR_SOLID = 1;
    private static final int NXT_LONGTEXT_CROP_END = 0;
    private static final int NXT_LONGTEXT_ELLIPSIZE_END = 4;
    private static final int NXT_LONGTEXT_ELLIPSIZE_MIDDLE = 3;
    private static final int NXT_LONGTEXT_ELLIPSIZE_START = 2;
    private static final int NXT_LONGTEXT_WRAP = 1;
    private static final int NXT_TEXTFLAG_AUTOSIZE = 1024;
    private static final int NXT_TEXTFLAG_BOLD = 1;
    private static final int NXT_TEXTFLAG_CUTOUT = 2048;
    private static final int NXT_TEXTFLAG_FILL = 4;
    private static final int NXT_TEXTFLAG_ITALIC = 2;
    private static final int NXT_TEXTFLAG_LINEAR = 512;
    private static final int NXT_TEXTFLAG_SHADOW = 256;
    private static final int NXT_TEXTFLAG_STRIKE = 32;
    private static final int NXT_TEXTFLAG_STROKE = 8;
    private static final int NXT_TEXTFLAG_STROKEBACK = 4096;
    private static final int NXT_TEXTFLAG_SUBPIXEL = 128;
    private static final int NXT_TEXTFLAG_UNDERLINE = 16;
    private static final int NXT_VALIGNMASK = 240;
    private static final int NXT_VALIGN_BOTTOM = 32;
    private static final int NXT_VALIGN_CENTER = 16;
    private static final int NXT_VALIGN_TOP = 0;
    private static final String TAG_Overlay = "[Overlay]";
    private static final String TAG_PreviewThemeImage = "[PvwThImage]";
    private static final String TAG_Text = "[Text]";
    private static final String TAG_ThemeImage = "[ThemeImage]";
    private static final String TYPEFACE_ASSET = "asset:";
    private static final String TYPEFACE_FILE = "file:";
    private static final String TYPEFACE_FONTFILE = "fontfile:";
    private static final String TYPEFACE_FONTID = "fontid:";
    private static final String TYPEFACE_SYSTEM = "android:";
    private static final String TYPEFACE_THEME = "theme:";
    private static Map<a, WeakReference<Bitmap>> sBitmapCache = new HashMap();
    private static final Object sBitmapCacheLock = new Object();
    private static int sCleanCacheCount = 0;
    private static WeakHashMap<Bitmap, c> sLoadedBitmapCache = new WeakHashMap();
    private AssetManager m_assetManager;
    private a m_effectResourceLoader;
    private int m_jpegMaxHeight;
    private int m_jpegMaxSize;
    private int m_jpegMaxWidth;
    private d m_overlayPathResolver;

    public static abstract class d {
        public abstract String a(String str);
    }

    private static class a {
        final String a;
        final int b;
        final int c;
        final int d;
        final Config e;
        final boolean f;

        private a(String str, int i, int i2, int i3, Config config, boolean z) {
            if (str == null) {
                str = "";
            }
            this.a = str;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = config;
            this.f = z;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            a aVar = (a) obj;
            if (this.b == aVar.b && this.c == aVar.c && this.d == aVar.d && this.e == aVar.e && this.a.equals(aVar.a) && this.f == aVar.f) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.e == null ? 0 : this.e.hashCode()) + ((this.d * 199) + ((this.a.hashCode() + (this.b * 191)) + (this.c * 61)));
        }
    }

    public static class b {
        private Bitmap a;
        private int b;
        private int c;
        private int d;

        private b(Bitmap bitmap, int i, int i2, int i3) {
            this.b = i;
            this.c = i2;
            this.a = bitmap;
            this.d = i3;
        }

        private b(Bitmap bitmap, int i, int i2) {
            this.b = i;
            this.c = i2;
            this.a = bitmap;
            this.d = 1;
        }

        public Bitmap a() {
            return this.a;
        }

        public int b() {
            return this.b;
        }

        public int c() {
            return this.c;
        }

        public int d() {
            return this.d;
        }
    }

    public static class c {
        private int a;
        private int b;
        private int c;

        private c(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }

        private c(int i, int i2) {
            this.a = i;
            this.b = i2;
            this.c = 1;
        }

        public int a() {
            return this.a;
        }

        public int b() {
            return this.b;
        }

        public int c() {
            return this.c;
        }
    }

    public NexImageLoader(Resources resources, a aVar, d dVar, int i, int i2, int i3) {
        if (resources == null) {
            this.m_assetManager = null;
        } else {
            this.m_assetManager = resources.getAssets();
        }
        this.m_effectResourceLoader = aVar;
        this.m_overlayPathResolver = dVar;
        this.m_jpegMaxWidth = i;
        this.m_jpegMaxHeight = i2;
        this.m_jpegMaxSize = i3;
    }

    public void setResources(Resources resources) {
        if (resources == null) {
            this.m_assetManager = null;
        } else {
            this.m_assetManager = resources.getAssets();
        }
    }

    private String pdecode(String str) {
        String str2 = "0123456789ABCDEF";
        StringBuilder stringBuilder = new StringBuilder(str);
        int i = -1;
        while (true) {
            i = stringBuilder.indexOf("%", i + 1);
            if (i != -1 && i + 2 < stringBuilder.length()) {
                int indexOf = "0123456789ABCDEF".indexOf(str.charAt(i + 1));
                int indexOf2 = "0123456789ABCDEF".indexOf(str.charAt(i + 2));
                if (!(indexOf == -1 || indexOf2 == -1)) {
                    stringBuilder.setCharAt(i, (char) ((indexOf << 4) | indexOf2));
                    stringBuilder.delete(i + 1, i + 3);
                    str = stringBuilder.toString();
                }
            }
        }
        return stringBuilder.toString();
    }

    public byte[] openThemeFile(String str) {
        String substring;
        int indexOf = str.indexOf(47);
        if (indexOf >= 0) {
            substring = str.substring(0, indexOf);
            str = str.substring(indexOf + 1);
        } else {
            substring = "";
        }
        if (this.m_effectResourceLoader == null) {
            return null;
        }
        try {
            if (this.m_effectResourceLoader.a(substring, str).exists()) {
                int skip;
                InputStream b = this.m_effectResourceLoader.b(substring, str);
                Log.e(LOG_TAG, "get size begin loading bitmap for effect(" + substring + ") : " + str);
                int i = 0;
                while (true) {
                    skip = (int) b.skip(2147483647L);
                    if (skip <= 0) {
                        break;
                    }
                    i += skip;
                }
                b.close();
                InputStream b2 = this.m_effectResourceLoader.b(substring, str);
                Log.e(LOG_TAG, "get size end loading bitmap for effect(" + substring + ") : " + str + " size=" + i);
                byte[] bArr = new byte[i];
                skip = 0;
                int i2 = i;
                do {
                    i2 = b2.read(bArr, skip, i2);
                    if (-1 == i2) {
                        break;
                    }
                    skip += i2;
                    i2 = i - skip;
                } while (i2 > 0);
                return bArr;
            }
        } catch (IOException e) {
            Log.e(LOG_TAG, "Error loading bitmap for effect(" + substring + ") : " + str);
            e.printStackTrace();
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:205:0x087f  */
    /* JADX WARNING: Removed duplicated region for block: B:199:0x086c  */
    /* JADX WARNING: Removed duplicated region for block: B:218:0x08df  */
    /* JADX WARNING: Removed duplicated region for block: B:211:0x08a6  */
    /* JADX WARNING: Missing block: B:233:0x094f, code:
            if (r4 <= r19) goto L_0x0953;
     */
    /* JADX WARNING: Missing block: B:234:0x0951, code:
            r4 = r19;
     */
    /* JADX WARNING: Missing block: B:235:0x0953, code:
            if (r5 <= r14) goto L_0x0db1;
     */
    /* JADX WARNING: Missing block: B:236:0x0955, code:
            r5 = r4;
            r4 = r14;
     */
    public com.nexstreaming.kminternal.nexvideoeditor.NexImage openThemeImage(java.lang.String r46) {
        /*
        r45 = this;
        r4 = 0;
        r6 = 0;
        r5 = 0;
        r2 = ".force_effect/";
        r0 = r46;
        r2 = r0.contains(r2);
        if (r2 == 0) goto L_0x0017;
    L_0x000d:
        r2 = ".force_effect/";
        r3 = "/";
        r0 = r46;
        r46 = r0.replace(r2, r3);
    L_0x0017:
        r2 = "[ThemeImage]/@special:";
        r0 = r46;
        r2 = r0.startsWith(r2);
        if (r2 != 0) goto L_0x002b;
    L_0x0021:
        r2 = "[PvwThImage]/@special:";
        r0 = r46;
        r2 = r0.startsWith(r2);
        if (r2 == 0) goto L_0x002d;
    L_0x002b:
        r2 = 0;
    L_0x002c:
        return r2;
    L_0x002d:
        r2 = "[Text]";
        r0 = r46;
        r2 = r0.startsWith(r2);
        if (r2 == 0) goto L_0x0a7a;
    L_0x0037:
        r2 = "[Text]";
        r2 = r2.length();
        r0 = r46;
        r6 = r0.substring(r2);
        r2 = ";;";
        r7 = r6.indexOf(r2);
        r2 = r7 + 2;
        r3 = r6.substring(r2);
        r2 = 0;
        r4 = 27;
        r5 = r3.indexOf(r4);
        r4 = -1;
        if (r5 <= r4) goto L_0x0dc6;
    L_0x0059:
        r0 = r45;
        r4 = r0.m_effectResourceLoader;
        if (r4 == 0) goto L_0x006c;
    L_0x005f:
        r0 = r45;
        r4 = r0.m_effectResourceLoader;	 Catch:{ TypefaceLoadException -> 0x00ca }
        r8 = 0;
        r8 = r3.substring(r8, r5);	 Catch:{ TypefaceLoadException -> 0x00ca }
        r2 = r4.a(r8);	 Catch:{ TypefaceLoadException -> 0x00ca }
    L_0x006c:
        r4 = r5 + 1;
        r3 = r3.substring(r4);
        r5 = r2;
        r2 = r3;
    L_0x0074:
        r3 = r2.length();
        r4 = 1;
        if (r3 >= r4) goto L_0x007d;
    L_0x007b:
        r2 = "Title Text Goes Here";
    L_0x007d:
        r3 = 1;
        r0 = new java.lang.String[r3];
        r19 = r0;
        r3 = 0;
        r19[r3] = r2;
        r3 = "NexImageLoader";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r8 = "==== User Text: ";
        r4 = r4.append(r8);
        r2 = r4.append(r2);
        r2 = r2.toString();
        android.util.Log.d(r3, r2);
        r2 = 0;
        r2 = r6.substring(r2, r7);
        r3 = ";";
        r3 = r2.split(r3);
        r20 = new java.util.HashMap;
        r20.<init>();
        r2 = 0;
    L_0x00ae:
        r4 = r3.length;
        if (r2 >= r4) goto L_0x00e0;
    L_0x00b1:
        r4 = r3[r2];
        r6 = "=";
        r4 = r4.split(r6);
        r6 = r4.length;
        r7 = 2;
        if (r6 >= r7) goto L_0x00d4;
    L_0x00bd:
        r6 = 0;
        r4 = r4[r6];
        r6 = "";
        r0 = r20;
        r0.put(r4, r6);
    L_0x00c7:
        r2 = r2 + 1;
        goto L_0x00ae;
    L_0x00ca:
        r4 = move-exception;
        r8 = "NexImageLoader";
        r9 = "typeface error";
        android.util.Log.e(r8, r9, r4);
        goto L_0x006c;
    L_0x00d4:
        r6 = 0;
        r6 = r4[r6];
        r7 = 1;
        r4 = r4[r7];
        r0 = r20;
        r0.put(r6, r4);
        goto L_0x00c7;
    L_0x00e0:
        r2 = "flags";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r3 = 16;
        r2 = java.lang.Long.parseLong(r2, r3);
        r13 = (int) r2;
        r2 = "align";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r6 = java.lang.Integer.parseInt(r2);
        r2 = "longtext";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r21 = java.lang.Integer.parseInt(r2);
        r2 = "width";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r18 = java.lang.Integer.parseInt(r2);
        r2 = "height";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r15 = java.lang.Integer.parseInt(r2);
        r2 = "bgcolor";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r3 = 16;
        r2 = java.lang.Long.parseLong(r2, r3);
        r0 = (int) r2;
        r22 = r0;
        r2 = "fillcolor";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r3 = 16;
        r2 = java.lang.Long.parseLong(r2, r3);
        r0 = (int) r2;
        r23 = r0;
        r2 = "strokecolor";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r3 = 16;
        r2 = java.lang.Long.parseLong(r2, r3);
        r0 = (int) r2;
        r24 = r0;
        r2 = "shadowcolor";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r3 = 16;
        r2 = java.lang.Long.parseLong(r2, r3);
        r0 = (int) r2;
        r25 = r0;
        r2 = "maxlines";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r3 = 16;
        r2 = java.lang.Long.parseLong(r2, r3);
        r0 = (int) r2;
        r26 = r0;
        r2 = "skewx";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r27 = java.lang.Float.parseFloat(r2);
        r2 = "scalex";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r28 = java.lang.Float.parseFloat(r2);
        r2 = "size";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r17 = java.lang.Float.parseFloat(r2);
        r2 = "strokewidth";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r29 = java.lang.Float.parseFloat(r2);
        r2 = "spacingmult";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r9 = java.lang.Float.parseFloat(r2);
        r2 = "spacingadd";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r10 = java.lang.Float.parseFloat(r2);
        r2 = "shadowradius";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r30 = java.lang.Float.parseFloat(r2);
        r2 = "textblur";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r31 = java.lang.Float.parseFloat(r2);
        r2 = "blurtype";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r32 = java.lang.Integer.parseInt(r2);
        r2 = "margin";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r33 = java.lang.Integer.parseInt(r2);
        r2 = "shadowoffsx";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r34 = java.lang.Float.parseFloat(r2);
        r2 = "shadowoffsy";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r35 = java.lang.Float.parseFloat(r2);
        r2 = "text";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        r3 = "baseid";
        r0 = r20;
        r3 = r0.get(r3);
        r4 = r3;
        r4 = (java.lang.String) r4;
        r0 = r45;
        r3 = r0.pdecode(r2);
        r0 = r6 & 240;
        r36 = r0;
        r37 = r6 & 15;
        r2 = 0;
        r16 = r2;
    L_0x0261:
        r2 = 3;
        r0 = r16;
        if (r0 >= r2) goto L_0x0560;
    L_0x0266:
        r0 = r19;
        r2 = r0.length;
        r0 = r16;
        if (r0 >= r2) goto L_0x04bc;
    L_0x026d:
        r12 = r19[r16];
        r14 = r12.length();
        r11 = "";
        r2 = 0;
        r6 = 0;
        r8 = r14;
    L_0x0278:
        if (r6 >= r14) goto L_0x0292;
    L_0x027a:
        r7 = r12.charAt(r6);
        r38 = 32;
        r0 = r38;
        if (r7 != r0) goto L_0x0dc3;
    L_0x0284:
        r7 = r14 / 2;
        r7 = r7 - r6;
        r7 = java.lang.Math.abs(r7);
        if (r7 >= r8) goto L_0x0dc3;
    L_0x028d:
        r2 = r6;
    L_0x028e:
        r6 = r6 + 1;
        r8 = r7;
        goto L_0x0278;
    L_0x0292:
        if (r2 <= 0) goto L_0x0dbf;
    L_0x0294:
        r6 = r2 + 1;
        if (r6 >= r14) goto L_0x0dbf;
    L_0x0298:
        r6 = 0;
        r6 = r12.substring(r6, r2);
        r2 = r2 + 1;
        r2 = r12.substring(r2);
    L_0x02a3:
        r7 = new java.lang.StringBuilder;
        r7.<init>();
        r8 = "%";
        r7 = r7.append(r8);
        r8 = r16 + 1;
        r7 = r7.append(r8);
        r7 = r7.toString();
        r3 = r3.replace(r7, r12);
        r7 = new java.lang.StringBuilder;
        r7.<init>();
        r8 = "%f";
        r7 = r7.append(r8);
        r8 = r16 + 1;
        r7 = r7.append(r8);
        r7 = r7.toString();
        r3 = r3.replace(r7, r6);
        r6 = new java.lang.StringBuilder;
        r6.<init>();
        r7 = "%b";
        r6 = r6.append(r7);
        r7 = r16 + 1;
        r6 = r6.append(r7);
        r6 = r6.toString();
        r2 = r3.replace(r6, r2);
        r3 = r12.length();
        r6 = 1;
        if (r3 != r6) goto L_0x0387;
    L_0x02f5:
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%s";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = 0;
        r7 = 1;
        r6 = r12.substring(r6, r7);
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%!s";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = "";
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%e";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = "";
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%!e";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = "";
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%m";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = "";
        r2 = r2.replace(r3, r6);
    L_0x0380:
        r3 = r16 + 1;
        r16 = r3;
        r3 = r2;
        goto L_0x0261;
    L_0x0387:
        r3 = r12.length();
        r6 = 1;
        if (r3 >= r6) goto L_0x0417;
    L_0x038e:
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%s";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = "";
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%!s";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = "";
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%e";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = "";
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%!e";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = "";
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%m";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = "";
        r2 = r2.replace(r3, r6);
        goto L_0x0380;
    L_0x0417:
        r3 = r12.length();
        r6 = 1;
        if (r3 <= r6) goto L_0x0380;
    L_0x041e:
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%s";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = 0;
        r7 = 1;
        r6 = r12.substring(r6, r7);
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%!s";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = 1;
        r6 = r12.substring(r6, r14);
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%e";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = r14 + -1;
        r6 = r12.substring(r6, r14);
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%!e";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = 0;
        r7 = r14 + -1;
        r6 = r12.substring(r6, r7);
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%m";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = 1;
        r7 = r14 + -1;
        r6 = r12.substring(r6, r7);
        r2 = r2.replace(r3, r6);
        goto L_0x0380;
    L_0x04bc:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r6 = "%";
        r2 = r2.append(r6);
        r6 = r16 + 1;
        r2 = r2.append(r6);
        r2 = r2.toString();
        r6 = "";
        r2 = r3.replace(r2, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%s";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = "";
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%!s";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = "";
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%e";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = "";
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%!e";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = "";
        r2 = r2.replace(r3, r6);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "%m";
        r3 = r3.append(r6);
        r6 = r16 + 1;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r6 = "";
        r2 = r2.replace(r3, r6);
        goto L_0x0380;
    L_0x0560:
        r2 = 0;
        r6 = ".*[[\\u0400-\\u052F][\\u2DE0-\\u2DFF][\\uA640-\\uA69F]].*";
        r6 = r3.matches(r6);
        if (r6 == 0) goto L_0x0dbc;
    L_0x0569:
        r2 = 1;
        r7 = r2;
    L_0x056b:
        r6 = new android.text.TextPaint;
        r6.<init>();
        r2 = 1;
        r6.setAntiAlias(r2);
        r2 = "typeface";
        r0 = r20;
        r2 = r0.get(r2);
        r2 = (java.lang.String) r2;
        if (r5 == 0) goto L_0x077f;
    L_0x0581:
        r6.setTypeface(r5);
    L_0x0584:
        r2 = r13 & 16;
        if (r2 == 0) goto L_0x058c;
    L_0x0588:
        r2 = 1;
        r6.setUnderlineText(r2);
    L_0x058c:
        r2 = r13 & 32;
        if (r2 == 0) goto L_0x0594;
    L_0x0590:
        r2 = 1;
        r6.setStrikeThruText(r2);
    L_0x0594:
        r2 = r13 & 128;
        if (r2 == 0) goto L_0x059c;
    L_0x0598:
        r2 = 1;
        r6.setSubpixelText(r2);
    L_0x059c:
        r2 = r13 & 512;
        if (r2 == 0) goto L_0x05a4;
    L_0x05a0:
        r2 = 1;
        r6.setLinearText(r2);
    L_0x05a4:
        r2 = r13 & 256;
        if (r2 == 0) goto L_0x05a8;
    L_0x05a8:
        r0 = r28;
        r4 = (double) r0;
        r38 = 0;
        r2 = (r4 > r38 ? 1 : (r4 == r38 ? 0 : -1));
        if (r2 <= 0) goto L_0x05b6;
    L_0x05b1:
        r0 = r28;
        r6.setTextScaleX(r0);
    L_0x05b6:
        r0 = r27;
        r4 = (double) r0;
        r38 = 0;
        r2 = (r4 > r38 ? 1 : (r4 == r38 ? 0 : -1));
        if (r2 <= 0) goto L_0x05c4;
    L_0x05bf:
        r0 = r27;
        r6.setTextSkewX(r0);
    L_0x05c4:
        r0 = r17;
        r4 = (double) r0;
        r38 = 0;
        r2 = (r4 > r38 ? 1 : (r4 == r38 ? 0 : -1));
        if (r2 <= 0) goto L_0x08f9;
    L_0x05cd:
        r0 = r17;
        r6.setTextSize(r0);
    L_0x05d2:
        r2 = r13 & 12;
        if (r2 != 0) goto L_0x0db8;
    L_0x05d6:
        r2 = r13 | 4;
        r20 = r2;
    L_0x05da:
        if (r18 <= 0) goto L_0x0973;
    L_0x05dc:
        r12 = 0;
        switch(r21) {
            case 0: goto L_0x05e0;
            case 1: goto L_0x05e0;
            case 2: goto L_0x08ff;
            case 3: goto L_0x0903;
            case 4: goto L_0x0907;
            default: goto L_0x05e0;
        };
    L_0x05e0:
        r2 = android.text.Layout.Alignment.ALIGN_NORMAL;
        switch(r37) {
            case 1: goto L_0x090f;
            case 2: goto L_0x090b;
            default: goto L_0x05e5;
        };
    L_0x05e5:
        r8 = android.text.Layout.Alignment.ALIGN_NORMAL;
    L_0x05e7:
        if (r18 <= 0) goto L_0x0913;
    L_0x05e9:
        r19 = r18;
    L_0x05eb:
        if (r15 <= 0) goto L_0x0917;
    L_0x05ed:
        r14 = r15;
    L_0x05ee:
        r16 = r17;
        r13 = r18;
    L_0x05f2:
        r2 = new android.text.StaticLayout;
        r4 = 0;
        r5 = r3.length();
        r7 = r33 * 2;
        r7 = r13 - r7;
        r11 = 1;
        r21 = r33 * 2;
        r13 = r13 - r21;
        r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13);
        r4 = r2.getWidth();
        r5 = r33 * 2;
        r4 = r4 + r5;
        r5 = r2.getHeight();
        r7 = r33 * 2;
        r5 = r5 + r7;
        r0 = r19;
        if (r4 > r0) goto L_0x091c;
    L_0x0617:
        if (r5 > r14) goto L_0x091c;
    L_0x0619:
        r7 = 1;
        r0 = r26;
        if (r0 < r7) goto L_0x0db1;
    L_0x061e:
        r7 = r2.getLineCount();
        r0 = r26;
        if (r7 > r0) goto L_0x091c;
    L_0x0626:
        r44 = r5;
        r5 = r4;
        r4 = r44;
    L_0x062b:
        r3 = 0;
        r0 = r20;
        r7 = r0 & 1024;
        if (r7 != 0) goto L_0x0dac;
    L_0x0632:
        if (r18 <= 0) goto L_0x0dac;
    L_0x0634:
        if (r15 <= 0) goto L_0x0dac;
    L_0x0636:
        r7 = "NexImageLoader";
        r8 = new java.lang.StringBuilder;
        r8.<init>();
        r9 = "VAlign=";
        r8 = r8.append(r9);
        r0 = r36;
        r8 = r8.append(r0);
        r9 = " originalWidth=";
        r8 = r8.append(r9);
        r0 = r18;
        r8 = r8.append(r0);
        r9 = " originalHeight=";
        r8 = r8.append(r9);
        r8 = r8.append(r15);
        r9 = " width=";
        r8 = r8.append(r9);
        r5 = r8.append(r5);
        r8 = " height=";
        r5 = r5.append(r8);
        r5 = r5.append(r4);
        r5 = r5.toString();
        android.util.Log.d(r7, r5);
        switch(r36) {
            case 16: goto L_0x095d;
            case 32: goto L_0x0959;
            default: goto L_0x067d;
        };
    L_0x067d:
        r8 = r3;
        r4 = r18;
        r3 = r15;
    L_0x0681:
        r5 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        if (r4 <= r5) goto L_0x0687;
    L_0x0685:
        r4 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
    L_0x0687:
        r5 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        if (r3 <= r5) goto L_0x068d;
    L_0x068b:
        r3 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
    L_0x068d:
        r5 = 1;
        if (r4 >= r5) goto L_0x0691;
    L_0x0690:
        r4 = 1;
    L_0x0691:
        r5 = 1;
        if (r3 >= r5) goto L_0x0695;
    L_0x0694:
        r3 = 1;
    L_0x0695:
        r5 = android.graphics.Bitmap.Config.ARGB_8888;
        r7 = android.graphics.Bitmap.createBitmap(r4, r3, r5);
        r3 = r7.getWidth();
        r5 = r3 & -2;
        r3 = r7.getHeight();
        r4 = r3 & -2;
        r9 = new android.graphics.Canvas;
        r9.<init>(r7);
        r0 = r22;
        r9.drawColor(r0);
        r9.save();
        r0 = r33;
        r3 = (float) r0;
        r0 = r33;
        r10 = (float) r0;
        r9.translate(r3, r10);
        r3 = 0;
        r8 = (float) r8;
        r9.translate(r3, r8);
        r0 = r20;
        r3 = r0 & 256;
        if (r3 == 0) goto L_0x06f7;
    L_0x06c8:
        r3 = 0;
        r3 = (r30 > r3 ? 1 : (r30 == r3 ? 0 : -1));
        if (r3 <= 0) goto L_0x06f7;
    L_0x06cd:
        r9.save();
        r0 = r34;
        r1 = r35;
        r9.translate(r0, r1);
        r3 = new android.graphics.BlurMaskFilter;
        r8 = android.graphics.BlurMaskFilter.Blur.SOLID;
        r0 = r30;
        r3.<init>(r0, r8);
        r6.setMaskFilter(r3);
        r3 = android.graphics.Paint.Style.FILL;
        r6.setStyle(r3);
        r0 = r25;
        r6.setColor(r0);
        r2.draw(r9);
        r3 = 0;
        r6.setMaskFilter(r3);
        r9.restore();
    L_0x06f7:
        r0 = r20;
        r3 = r0 & 4096;
        if (r3 == 0) goto L_0x070f;
    L_0x06fd:
        r3 = android.graphics.Paint.Style.STROKE;
        r6.setStyle(r3);
        r0 = r24;
        r6.setColor(r0);
        r0 = r29;
        r6.setStrokeWidth(r0);
        r2.draw(r9);
    L_0x070f:
        r0 = r31;
        r10 = (double) r0;
        r12 = 4532020583610935537; // 0x3ee4f8b588e368f1 float:-1.3686737E-33 double:1.0E-5;
        r3 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1));
        if (r3 <= 0) goto L_0x072a;
    L_0x071b:
        r3 = android.graphics.BlurMaskFilter.Blur.NORMAL;
        switch(r32) {
            case 0: goto L_0x0963;
            case 1: goto L_0x096f;
            case 2: goto L_0x0967;
            case 3: goto L_0x096b;
            default: goto L_0x0720;
        };
    L_0x0720:
        r8 = new android.graphics.BlurMaskFilter;
        r0 = r31;
        r8.<init>(r0, r3);
        r6.setMaskFilter(r8);
    L_0x072a:
        r3 = r20 & 4;
        if (r3 == 0) goto L_0x074f;
    L_0x072e:
        r0 = r20;
        r3 = r0 & 2048;
        if (r3 == 0) goto L_0x073e;
    L_0x0734:
        r3 = new android.graphics.PorterDuffXfermode;
        r8 = android.graphics.PorterDuff.Mode.DST_IN;
        r3.<init>(r8);
        r6.setXfermode(r3);
    L_0x073e:
        r3 = android.graphics.Paint.Style.FILL;
        r6.setStyle(r3);
        r0 = r23;
        r6.setColor(r0);
        r2.draw(r9);
        r3 = 0;
        r6.setXfermode(r3);
    L_0x074f:
        r3 = r20 & 8;
        if (r3 == 0) goto L_0x0765;
    L_0x0753:
        r3 = android.graphics.Paint.Style.STROKE;
        r6.setStyle(r3);
        r0 = r24;
        r6.setColor(r0);
        r0 = r29;
        r6.setStrokeWidth(r0);
        r2.draw(r9);
    L_0x0765:
        r2 = 0;
        r6.setMaskFilter(r2);
        r9.restore();
        r2 = r4;
        r3 = r5;
        r4 = r7;
    L_0x076f:
        r5 = r4;
        r4 = r3;
        r3 = r2;
    L_0x0772:
        if (r5 == 0) goto L_0x0d9a;
    L_0x0774:
        if (r4 <= 0) goto L_0x0d9a;
    L_0x0776:
        if (r3 <= 0) goto L_0x0d9a;
    L_0x0778:
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImage;
        r2.<init>(r5, r4, r3);
        goto L_0x002c;
    L_0x077f:
        if (r7 == 0) goto L_0x0796;
    L_0x0781:
        r2 = 0;
        r4 = r13 & 1;
        if (r4 == 0) goto L_0x0787;
    L_0x0786:
        r2 = 1;
    L_0x0787:
        r4 = r13 & 2;
        if (r4 == 0) goto L_0x078d;
    L_0x078b:
        r2 = r2 | 2;
    L_0x078d:
        r2 = android.graphics.Typeface.defaultFromStyle(r2);
        r6.setTypeface(r2);
        goto L_0x0584;
    L_0x0796:
        r5 = "android:";
        r5 = r2.startsWith(r5);
        if (r5 == 0) goto L_0x07bd;
    L_0x079e:
        r4 = "android:";
        r4 = r4.length();
        r4 = r2.substring(r4);
        r2 = 0;
        r5 = r13 & 1;
        if (r5 == 0) goto L_0x07ae;
    L_0x07ad:
        r2 = 1;
    L_0x07ae:
        r5 = r13 & 2;
        if (r5 == 0) goto L_0x07b4;
    L_0x07b2:
        r2 = r2 | 2;
    L_0x07b4:
        r2 = android.graphics.Typeface.create(r4, r2);
        r6.setTypeface(r2);
        goto L_0x0584;
    L_0x07bd:
        r5 = "file:";
        r5 = r2.startsWith(r5);
        if (r5 == 0) goto L_0x07d8;
    L_0x07c5:
        r4 = "file:";
        r4 = r4.length();
        r2 = r2.substring(r4);
        r2 = android.graphics.Typeface.createFromFile(r2);
        r6.setTypeface(r2);
        goto L_0x0584;
    L_0x07d8:
        r5 = "asset:";
        r5 = r2.startsWith(r5);
        if (r5 == 0) goto L_0x07fd;
    L_0x07e0:
        r4 = "asset:";
        r4 = r4.length();
        r2 = r2.substring(r4);
        r0 = r45;
        r4 = r0.m_assetManager;
        if (r4 == 0) goto L_0x0584;
    L_0x07f0:
        r0 = r45;
        r4 = r0.m_assetManager;
        r2 = android.graphics.Typeface.createFromAsset(r4, r2);
        r6.setTypeface(r2);
        goto L_0x0584;
    L_0x07fd:
        r5 = "theme:";
        r5 = r2.startsWith(r5);
        if (r5 == 0) goto L_0x082a;
    L_0x0806:
        r4 = "theme:";
        r4 = r4.length();
        r2 = r2.substring(r4);
        r0 = r45;
        r4 = r0.m_effectResourceLoader;
        if (r4 == 0) goto L_0x0584;
    L_0x0817:
        r0 = r45;
        r4 = r0.m_effectResourceLoader;	 Catch:{ TypefaceLoadException -> 0x0824 }
        r2 = r4.a(r2);	 Catch:{ TypefaceLoadException -> 0x0824 }
        r6.setTypeface(r2);	 Catch:{ TypefaceLoadException -> 0x0824 }
        goto L_0x0584;
    L_0x0824:
        r2 = move-exception;
        r2.printStackTrace();
        goto L_0x0584;
    L_0x082a:
        r5 = "fontid:";
        r5 = r2.startsWith(r5);
        if (r5 == 0) goto L_0x0849;
    L_0x0832:
        r4 = "fontid:";
        r4 = r4.length();
        r2 = r2.substring(r4);
        r4 = com.nexstreaming.kminternal.kinemaster.fonts.c.a();
        r2 = r4.b(r2);
        r6.setTypeface(r2);
        goto L_0x0584;
    L_0x0849:
        r5 = "fontfile:";
        r5 = r2.startsWith(r5);
        if (r5 == 0) goto L_0x0895;
    L_0x0851:
        r5 = 0;
        r7 = "fontfile:";
        r7 = r7.length();
        r7 = r2.substring(r7);
        r0 = r45;
        r2 = r0.m_effectResourceLoader;
        if (r2 == 0) goto L_0x087d;
    L_0x0862:
        r0 = r45;
        r2 = r0.m_effectResourceLoader;	 Catch:{ IOException -> 0x0871, TypefaceLoadException -> 0x0878 }
        r2 = r2.c(r4, r7);	 Catch:{ IOException -> 0x0871, TypefaceLoadException -> 0x0878 }
    L_0x086a:
        if (r2 == 0) goto L_0x087f;
    L_0x086c:
        r6.setTypeface(r2);
        goto L_0x0584;
    L_0x0871:
        r2 = move-exception;
        r5 = 0;
        r2.printStackTrace();
        r2 = r5;
        goto L_0x086a;
    L_0x0878:
        r2 = move-exception;
        r5 = 0;
        r2.printStackTrace();
    L_0x087d:
        r2 = r5;
        goto L_0x086a;
    L_0x087f:
        r2 = "NexImageLoader";
        r5 = "TYPEFACE NOT FOUND : base_id=%s, font=%s";
        r8 = 2;
        r8 = new java.lang.Object[r8];
        r11 = 0;
        r8[r11] = r4;
        r4 = 1;
        r8[r4] = r7;
        r4 = java.lang.String.format(r5, r8);
        android.util.Log.d(r2, r4);
        goto L_0x0584;
    L_0x0895:
        r5 = 0;
        r0 = r45;
        r7 = r0.m_effectResourceLoader;
        if (r7 == 0) goto L_0x08d4;
    L_0x089c:
        r0 = r45;
        r7 = r0.m_effectResourceLoader;	 Catch:{ IOException -> 0x08d0 }
        r2 = r7.a(r4, r2);	 Catch:{ IOException -> 0x08d0 }
    L_0x08a4:
        if (r2 == 0) goto L_0x08df;
    L_0x08a6:
        r5 = r2.exists();
        if (r5 != 0) goto L_0x08d6;
    L_0x08ac:
        r5 = "NexImageLoader";
        r7 = new java.lang.StringBuilder;
        r7.<init>();
        r8 = "TYPEFACE FILE DOES NOT EXIST : base_id=";
        r7 = r7.append(r8);
        r4 = r7.append(r4);
        r7 = "; f=";
        r4 = r4.append(r7);
        r2 = r4.append(r2);
        r2 = r2.toString();
        android.util.Log.i(r5, r2);
        goto L_0x0584;
    L_0x08d0:
        r2 = move-exception;
        r2.printStackTrace();
    L_0x08d4:
        r2 = r5;
        goto L_0x08a4;
    L_0x08d6:
        r2 = android.graphics.Typeface.createFromFile(r2);
        r6.setTypeface(r2);
        goto L_0x0584;
    L_0x08df:
        r2 = "NexImageLoader";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r7 = "TYPEFACE NOT FOUND : base_id=";
        r5 = r5.append(r7);
        r4 = r5.append(r4);
        r4 = r4.toString();
        android.util.Log.i(r2, r4);
        goto L_0x0584;
    L_0x08f9:
        r17 = r6.getTextSize();
        goto L_0x05d2;
    L_0x08ff:
        r12 = android.text.TextUtils.TruncateAt.START;
        goto L_0x05e0;
    L_0x0903:
        r12 = android.text.TextUtils.TruncateAt.MIDDLE;
        goto L_0x05e0;
    L_0x0907:
        r12 = android.text.TextUtils.TruncateAt.END;
        goto L_0x05e0;
    L_0x090b:
        r8 = android.text.Layout.Alignment.ALIGN_OPPOSITE;
        goto L_0x05e7;
    L_0x090f:
        r8 = android.text.Layout.Alignment.ALIGN_CENTER;
        goto L_0x05e7;
    L_0x0913:
        r19 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        goto L_0x05eb;
    L_0x0917:
        r2 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        r14 = r2;
        goto L_0x05ee;
    L_0x091c:
        r0 = r16;
        r0 = (double) r0;
        r38 = r0;
        r0 = r17;
        r0 = (double) r0;
        r40 = r0;
        r42 = 4617315517961601024; // 0x4014000000000000 float:0.0 double:5.0;
        r40 = r40 / r42;
        r7 = (r38 > r40 ? 1 : (r38 == r40 ? 0 : -1));
        if (r7 <= 0) goto L_0x094d;
    L_0x092e:
        r0 = r16;
        r0 = (double) r0;
        r38 = r0;
        r40 = 4618441417868443648; // 0x4018000000000000 float:0.0 double:6.0;
        r7 = (r38 > r40 ? 1 : (r38 == r40 ? 0 : -1));
        if (r7 <= 0) goto L_0x094d;
    L_0x0939:
        r2 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r5 = 1094713344; // 0x41400000 float:12.0 double:5.408602553E-315;
        r5 = r17 / r5;
        r2 = java.lang.Math.max(r2, r5);
        r2 = r16 - r2;
        r6.setTextSize(r2);
        r16 = r2;
        r13 = r4;
        goto L_0x05f2;
    L_0x094d:
        r0 = r19;
        if (r4 <= r0) goto L_0x0953;
    L_0x0951:
        r4 = r19;
    L_0x0953:
        if (r5 <= r14) goto L_0x0db1;
    L_0x0955:
        r5 = r4;
        r4 = r14;
        goto L_0x062b;
    L_0x0959:
        r3 = r15 - r4;
        goto L_0x067d;
    L_0x095d:
        r3 = r15 - r4;
        r3 = r3 / 2;
        goto L_0x067d;
    L_0x0963:
        r3 = android.graphics.BlurMaskFilter.Blur.NORMAL;
        goto L_0x0720;
    L_0x0967:
        r3 = android.graphics.BlurMaskFilter.Blur.INNER;
        goto L_0x0720;
    L_0x096b:
        r3 = android.graphics.BlurMaskFilter.Blur.OUTER;
        goto L_0x0720;
    L_0x096f:
        r3 = android.graphics.BlurMaskFilter.Blur.SOLID;
        goto L_0x0720;
    L_0x0973:
        r2 = new android.graphics.Rect;
        r2.<init>();
        r4 = 0;
        r5 = r3.length();
        r6.getTextBounds(r3, r4, r5, r2);
        r4 = r2.right;
        r4 = r4 + 20;
        r2.right = r4;
        r0 = r30;
        r4 = (double) r0;
        r4 = java.lang.Math.ceil(r4);
        r7 = (int) r4;
        r8 = r6.getFontMetrics();
        r4 = r8.bottom;
        r5 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r4 = r4 * r5;
        r5 = r8.top;
        r4 = r4 - r5;
        r5 = r2.height();
        r5 = (float) r5;
        r4 = java.lang.Math.max(r4, r5);
        r5 = (int) r4;
        r4 = 1;
        r0 = r18;
        if (r0 < r4) goto L_0x09ac;
    L_0x09a9:
        r4 = 1;
        if (r15 >= r4) goto L_0x0da7;
    L_0x09ac:
        r4 = r2.width();
        r2 = r2.right;
        r2 = java.lang.Math.max(r4, r2);
        r4 = r7 * 2;
        r2 = r2 + r4;
        r4 = java.lang.Math.abs(r34);
        r4 = (int) r4;
        r4 = r4 + r2;
        r2 = r7 * 2;
        r2 = r2 + r5;
        r5 = java.lang.Math.abs(r35);
        r5 = (int) r5;
        r2 = r2 + r5;
        r5 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        if (r4 <= r5) goto L_0x09ce;
    L_0x09cc:
        r4 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
    L_0x09ce:
        r5 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        if (r2 <= r5) goto L_0x09d4;
    L_0x09d2:
        r2 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
    L_0x09d4:
        r5 = 1;
        if (r4 >= r5) goto L_0x0a62;
    L_0x09d7:
        r4 = 1;
        r5 = r4;
    L_0x09d9:
        r4 = 1;
        if (r2 >= r4) goto L_0x0a65;
    L_0x09dc:
        r2 = 1;
        r4 = r2;
    L_0x09de:
        switch(r37) {
            case 1: goto L_0x0a70;
            case 2: goto L_0x0a68;
            default: goto L_0x09e1;
        };
    L_0x09e1:
        r2 = android.graphics.Paint.Align.LEFT;
        r6.setTextAlign(r2);
        r2 = 1101004800; // 0x41a00000 float:20.0 double:5.439686476E-315;
    L_0x09e8:
        r9 = (float) r4;
        r8 = r8.ascent;
        r8 = r9 - r8;
        r9 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r11 = r8 / r9;
        r7 = (float) r7;
        r8 = 0;
        r0 = r34;
        r8 = java.lang.Math.min(r8, r0);
        r7 = r7 - r8;
        r10 = r2 + r7;
        r2 = android.graphics.Bitmap.Config.ARGB_8888;
        r5 = android.graphics.Bitmap.createBitmap(r5, r4, r2);
        r2 = r5.getWidth();
        r4 = r2 & -2;
        r2 = r5.getHeight();
        r2 = r2 & -2;
        r13 = new android.graphics.Canvas;
        r13.<init>(r5);
        r0 = r22;
        r13.drawColor(r0);
        r7 = r20 & 4;
        if (r7 == 0) goto L_0x0a29;
    L_0x0a1c:
        r7 = android.graphics.Paint.Style.FILL;
        r6.setStyle(r7);
        r0 = r23;
        r6.setColor(r0);
        r13.drawText(r3, r10, r11, r6);
    L_0x0a29:
        r7 = r20 & 8;
        if (r7 == 0) goto L_0x0a5e;
    L_0x0a2d:
        r7 = r20 & 4;
        if (r7 == 0) goto L_0x0a3e;
    L_0x0a31:
        r0 = r20;
        r7 = r0 & 256;
        if (r7 == 0) goto L_0x0a3e;
    L_0x0a37:
        r7 = 0;
        r8 = 0;
        r9 = 0;
        r12 = 0;
        r6.setShadowLayer(r7, r8, r9, r12);
    L_0x0a3e:
        r7 = android.graphics.Paint.Style.STROKE;
        r6.setStyle(r7);
        r0 = r24;
        r6.setColor(r0);
        r0 = r29;
        r6.setStrokeWidth(r0);
        r12 = new android.graphics.Path;
        r12.<init>();
        r8 = 0;
        r9 = r3.length();
        r7 = r3;
        r6.getTextPath(r7, r8, r9, r10, r11, r12);
        r13.drawPath(r12, r6);
    L_0x0a5e:
        r3 = r4;
        r4 = r5;
        goto L_0x076f;
    L_0x0a62:
        r5 = r4;
        goto L_0x09d9;
    L_0x0a65:
        r4 = r2;
        goto L_0x09de;
    L_0x0a68:
        r2 = android.graphics.Paint.Align.RIGHT;
        r6.setTextAlign(r2);
        r2 = (float) r5;
        goto L_0x09e8;
    L_0x0a70:
        r2 = android.graphics.Paint.Align.CENTER;
        r6.setTextAlign(r2);
        r2 = r5 / 2;
        r2 = (float) r2;
        goto L_0x09e8;
    L_0x0a7a:
        r2 = "[ThemeImage]";
        r0 = r46;
        r2 = r0.startsWith(r2);
        if (r2 == 0) goto L_0x0b57;
    L_0x0a84:
        r2 = "[ThemeImage]";
        r2 = r2.length();
        r0 = r46;
        r2 = r0.substring(r2);
        r3 = 47;
        r4 = r2.indexOf(r3);
        if (r4 < 0) goto L_0x0adb;
    L_0x0a98:
        r3 = 0;
        r3 = r2.substring(r3, r4);
        r4 = r4 + 1;
        r2 = r2.substring(r4);
    L_0x0aa3:
        r4 = 0;
        r0 = r45;
        r7 = r0.m_effectResourceLoader;
        if (r7 == 0) goto L_0x0ab6;
    L_0x0aaa:
        r0 = r45;
        r4 = r0.m_effectResourceLoader;	 Catch:{ IOException -> 0x0ade }
        r4 = r4.b(r3, r2);	 Catch:{ IOException -> 0x0ade }
        r4 = android.graphics.BitmapFactory.decodeStream(r4);	 Catch:{ IOException -> 0x0ade }
    L_0x0ab6:
        if (r4 != 0) goto L_0x0aca;
    L_0x0ab8:
        r0 = r45;
        r7 = r0.m_assetManager;
        if (r7 == 0) goto L_0x0aca;
    L_0x0abe:
        r0 = r45;
        r4 = r0.m_assetManager;	 Catch:{ IOException -> 0x0b07 }
        r4 = r4.open(r2);	 Catch:{ IOException -> 0x0b07 }
        r4 = android.graphics.BitmapFactory.decodeStream(r4);	 Catch:{ IOException -> 0x0b07 }
    L_0x0aca:
        if (r4 == 0) goto L_0x0b30;
    L_0x0acc:
        r3 = r4.getWidth();
        r5 = r4.getHeight();
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImage;
        r2.<init>(r4, r3, r5);
        goto L_0x002c;
    L_0x0adb:
        r3 = "";
        goto L_0x0aa3;
    L_0x0ade:
        r4 = move-exception;
        r7 = 0;
        r8 = "NexImageLoader";
        r9 = new java.lang.StringBuilder;
        r9.<init>();
        r10 = "Error loading bitmap for effect(";
        r9 = r9.append(r10);
        r9 = r9.append(r3);
        r10 = ") : ";
        r9 = r9.append(r10);
        r9 = r9.append(r2);
        r9 = r9.toString();
        android.util.Log.e(r8, r9);
        r4.printStackTrace();
        r4 = r7;
        goto L_0x0ab6;
    L_0x0b07:
        r4 = move-exception;
        r7 = 0;
        r8 = "NexImageLoader";
        r9 = new java.lang.StringBuilder;
        r9.<init>();
        r10 = "Error loading bitmap (general asset mode) for effect(";
        r9 = r9.append(r10);
        r9 = r9.append(r3);
        r10 = ") : ";
        r9 = r9.append(r10);
        r9 = r9.append(r2);
        r9 = r9.toString();
        android.util.Log.e(r8, r9);
        r4.printStackTrace();
        r4 = r7;
        goto L_0x0aca;
    L_0x0b30:
        r7 = "NexImageLoader";
        r8 = new java.lang.StringBuilder;
        r8.<init>();
        r9 = "Bitmap failed to load for effect(";
        r8 = r8.append(r9);
        r3 = r8.append(r3);
        r8 = ") : ";
        r3 = r3.append(r8);
        r2 = r3.append(r2);
        r2 = r2.toString();
        android.util.Log.e(r7, r2);
        r3 = r5;
        r5 = r4;
        r4 = r6;
        goto L_0x0772;
    L_0x0b57:
        r2 = "[Overlay]";
        r0 = r46;
        r2 = r0.startsWith(r2);
        if (r2 == 0) goto L_0x0bda;
    L_0x0b61:
        r0 = r45;
        r2 = r0.m_overlayPathResolver;
        if (r2 != 0) goto L_0x0b80;
    L_0x0b67:
        r2 = 8;
        r3 = 8;
        r4 = android.graphics.Bitmap.Config.ARGB_8888;
        r3 = android.graphics.Bitmap.createBitmap(r2, r3, r4);
        r4 = r3.getWidth();
        r5 = r3.getHeight();
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImage;
        r2.<init>(r3, r4, r5);
        goto L_0x002c;
    L_0x0b80:
        r2 = "[Overlay]";
        r2 = r2.length();
        r0 = r46;
        r2 = r0.substring(r2);
        r0 = r45;
        r3 = r0.m_overlayPathResolver;
        r2 = r3.a(r2);
        if (r2 != 0) goto L_0x0baf;
    L_0x0b96:
        r2 = 8;
        r3 = 8;
        r4 = android.graphics.Bitmap.Config.ARGB_8888;
        r3 = android.graphics.Bitmap.createBitmap(r2, r3, r4);
        r4 = r3.getWidth();
        r5 = r3.getHeight();
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImage;
        r2.<init>(r3, r4, r5);
        goto L_0x002c;
    L_0x0baf:
        r3 = new android.graphics.BitmapFactory$Options;
        r3.<init>();
        r4 = 1;
        r3.inJustDecodeBounds = r4;
        android.graphics.BitmapFactory.decodeFile(r2, r3);
        r4 = 0;
        r3.inJustDecodeBounds = r4;
        r4 = 1;
        r3.inSampleSize = r4;
        r4 = android.graphics.BitmapFactory.decodeFile(r2, r3);
        if (r4 == 0) goto L_0x0bd5;
    L_0x0bc6:
        r3 = r4.getWidth();
        r5 = r4.getHeight();
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImage;
        r2.<init>(r4, r3, r5);
        goto L_0x002c;
    L_0x0bd5:
        r3 = r5;
        r5 = r4;
        r4 = r6;
        goto L_0x0772;
    L_0x0bda:
        r2 = "[PvwThImage]";
        r0 = r46;
        r2 = r0.startsWith(r2);
        if (r2 == 0) goto L_0x0cbe;
    L_0x0be4:
        r2 = "[ThemeImage]";
        r2 = r2.length();
        r0 = r46;
        r2 = r0.substring(r2);
        r3 = 47;
        r4 = r2.indexOf(r3);
        if (r4 < 0) goto L_0x0c42;
    L_0x0bf8:
        r3 = 0;
        r3 = r2.substring(r3, r4);
        r4 = r4 + 1;
        r2 = r2.substring(r4);
    L_0x0c03:
        r4 = 0;
        r8 = new android.graphics.BitmapFactory$Options;
        r8.<init>();
        r0 = r45;
        r7 = r0.m_effectResourceLoader;
        if (r7 == 0) goto L_0x0c1c;
    L_0x0c0f:
        r0 = r45;
        r4 = r0.m_effectResourceLoader;	 Catch:{ IOException -> 0x0c45 }
        r4 = r4.b(r3, r2);	 Catch:{ IOException -> 0x0c45 }
        r7 = 0;
        r4 = android.graphics.BitmapFactory.decodeStream(r4, r7, r8);	 Catch:{ IOException -> 0x0c45 }
    L_0x0c1c:
        if (r4 != 0) goto L_0x0c31;
    L_0x0c1e:
        r0 = r45;
        r7 = r0.m_assetManager;
        if (r7 == 0) goto L_0x0c31;
    L_0x0c24:
        r0 = r45;
        r4 = r0.m_assetManager;	 Catch:{ IOException -> 0x0c6e }
        r4 = r4.open(r2);	 Catch:{ IOException -> 0x0c6e }
        r7 = 0;
        r4 = android.graphics.BitmapFactory.decodeStream(r4, r7, r8);	 Catch:{ IOException -> 0x0c6e }
    L_0x0c31:
        if (r4 == 0) goto L_0x0c97;
    L_0x0c33:
        r3 = r4.getWidth();
        r5 = r4.getHeight();
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImage;
        r2.<init>(r4, r3, r5);
        goto L_0x002c;
    L_0x0c42:
        r3 = "";
        goto L_0x0c03;
    L_0x0c45:
        r4 = move-exception;
        r7 = 0;
        r9 = "NexImageLoader";
        r10 = new java.lang.StringBuilder;
        r10.<init>();
        r11 = "Error loading bitmap for effect(";
        r10 = r10.append(r11);
        r10 = r10.append(r3);
        r11 = ") : ";
        r10 = r10.append(r11);
        r10 = r10.append(r2);
        r10 = r10.toString();
        android.util.Log.e(r9, r10);
        r4.printStackTrace();
        r4 = r7;
        goto L_0x0c1c;
    L_0x0c6e:
        r4 = move-exception;
        r7 = 0;
        r8 = "NexImageLoader";
        r9 = new java.lang.StringBuilder;
        r9.<init>();
        r10 = "Error loading bitmap (general asset mode) for effect(";
        r9 = r9.append(r10);
        r9 = r9.append(r3);
        r10 = ") : ";
        r9 = r9.append(r10);
        r9 = r9.append(r2);
        r9 = r9.toString();
        android.util.Log.e(r8, r9);
        r4.printStackTrace();
        r4 = r7;
        goto L_0x0c31;
    L_0x0c97:
        r7 = "NexImageLoader";
        r8 = new java.lang.StringBuilder;
        r8.<init>();
        r9 = "Bitmap failed to load for effect(";
        r8 = r8.append(r9);
        r3 = r8.append(r3);
        r8 = ") : ";
        r3 = r3.append(r8);
        r2 = r3.append(r2);
        r2 = r2.toString();
        android.util.Log.e(r7, r2);
        r3 = r5;
        r5 = r4;
        r4 = r6;
        goto L_0x0772;
    L_0x0cbe:
        r2 = "[Overlay]";
        r0 = r46;
        r2 = r0.startsWith(r2);
        if (r2 == 0) goto L_0x0d41;
    L_0x0cc8:
        r0 = r45;
        r2 = r0.m_overlayPathResolver;
        if (r2 != 0) goto L_0x0ce7;
    L_0x0cce:
        r2 = 8;
        r3 = 8;
        r4 = android.graphics.Bitmap.Config.ARGB_8888;
        r3 = android.graphics.Bitmap.createBitmap(r2, r3, r4);
        r4 = r3.getWidth();
        r5 = r3.getHeight();
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImage;
        r2.<init>(r3, r4, r5);
        goto L_0x002c;
    L_0x0ce7:
        r2 = "[Overlay]";
        r2 = r2.length();
        r0 = r46;
        r2 = r0.substring(r2);
        r0 = r45;
        r3 = r0.m_overlayPathResolver;
        r2 = r3.a(r2);
        if (r2 != 0) goto L_0x0d16;
    L_0x0cfd:
        r2 = 8;
        r3 = 8;
        r4 = android.graphics.Bitmap.Config.ARGB_8888;
        r3 = android.graphics.Bitmap.createBitmap(r2, r3, r4);
        r4 = r3.getWidth();
        r5 = r3.getHeight();
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImage;
        r2.<init>(r3, r4, r5);
        goto L_0x002c;
    L_0x0d16:
        r3 = new android.graphics.BitmapFactory$Options;
        r3.<init>();
        r4 = 1;
        r3.inJustDecodeBounds = r4;
        android.graphics.BitmapFactory.decodeFile(r2, r3);
        r4 = 0;
        r3.inJustDecodeBounds = r4;
        r4 = 1;
        r3.inSampleSize = r4;
        r4 = android.graphics.BitmapFactory.decodeFile(r2, r3);
        if (r4 == 0) goto L_0x0d3c;
    L_0x0d2d:
        r3 = r4.getWidth();
        r5 = r4.getHeight();
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImage;
        r2.<init>(r4, r3, r5);
        goto L_0x002c;
    L_0x0d3c:
        r3 = r5;
        r5 = r4;
        r4 = r6;
        goto L_0x0772;
    L_0x0d41:
        r2 = "[";
        r0 = r46;
        r2 = r0.startsWith(r2);
        if (r2 != 0) goto L_0x0da2;
    L_0x0d4b:
        r4 = 0;
        r0 = r45;
        r2 = r0.m_assetManager;
        if (r2 == 0) goto L_0x0d75;
    L_0x0d52:
        r2 = "placeholder1.jpg";
        r0 = r46;
        r2 = r0.compareTo(r2);	 Catch:{ IOException -> 0x0d95 }
        if (r2 == 0) goto L_0x0d66;
    L_0x0d5c:
        r2 = "placeholder2.jpg";
        r0 = r46;
        r2 = r0.compareTo(r2);	 Catch:{ IOException -> 0x0d95 }
        if (r2 != 0) goto L_0x0d86;
    L_0x0d66:
        r0 = r45;
        r2 = r0.m_assetManager;	 Catch:{ IOException -> 0x0d95 }
        r0 = r46;
        r2 = r2.open(r0);	 Catch:{ IOException -> 0x0d95 }
        r2 = android.graphics.BitmapFactory.decodeStream(r2);	 Catch:{ IOException -> 0x0d95 }
    L_0x0d74:
        r4 = r2;
    L_0x0d75:
        if (r4 == 0) goto L_0x0d9d;
    L_0x0d77:
        r3 = r4.getWidth();
        r5 = r4.getHeight();
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImage;
        r2.<init>(r4, r3, r5);
        goto L_0x002c;
    L_0x0d86:
        r0 = r45;
        r2 = r0.m_assetManager;	 Catch:{ IOException -> 0x0d95 }
        r0 = r46;
        r2 = r2.open(r0);	 Catch:{ IOException -> 0x0d95 }
        r2 = android.graphics.BitmapFactory.decodeStream(r2);	 Catch:{ IOException -> 0x0d95 }
        goto L_0x0d74;
    L_0x0d95:
        r2 = move-exception;
        r2.printStackTrace();
        goto L_0x0d75;
    L_0x0d9a:
        r2 = 0;
        goto L_0x002c;
    L_0x0d9d:
        r3 = r5;
        r5 = r4;
        r4 = r6;
        goto L_0x0772;
    L_0x0da2:
        r3 = r5;
        r5 = r4;
        r4 = r6;
        goto L_0x0772;
    L_0x0da7:
        r2 = r15;
        r4 = r18;
        goto L_0x09d4;
    L_0x0dac:
        r8 = r3;
        r3 = r4;
        r4 = r5;
        goto L_0x0681;
    L_0x0db1:
        r44 = r5;
        r5 = r4;
        r4 = r44;
        goto L_0x062b;
    L_0x0db8:
        r20 = r13;
        goto L_0x05da;
    L_0x0dbc:
        r7 = r2;
        goto L_0x056b;
    L_0x0dbf:
        r2 = r11;
        r6 = r12;
        goto L_0x02a3;
    L_0x0dc3:
        r7 = r8;
        goto L_0x028e;
    L_0x0dc6:
        r5 = r2;
        r2 = r3;
        goto L_0x0074;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.openThemeImage(java.lang.String):com.nexstreaming.kminternal.nexvideoeditor.NexImage");
    }

    public static b loadBitmap(String str, int i, int i2) {
        return loadBitmap(str, i, i2, Integer.MAX_VALUE, 0);
    }

    public static b loadBitmap(InputStream inputStream, int i, int i2, int i3) {
        int i4 = 1;
        InputStream bufferedInputStream = new BufferedInputStream(inputStream);
        Options options = new Options();
        options.inJustDecodeBounds = true;
        try {
            bufferedInputStream.mark(inputStream.available());
        } catch (IOException e) {
            e.printStackTrace();
        }
        BitmapFactory.decodeStream(bufferedInputStream, null, options);
        try {
            bufferedInputStream.reset();
            options.inJustDecodeBounds = false;
            int i5 = options.outWidth;
            int i6 = options.outHeight;
            while (i4 < 8) {
                if (options.outWidth / i4 <= i || options.outHeight / i4 <= i2) {
                    if (((options.outWidth / i4) * options.outHeight) / i4 <= (i3 > 0 ? i3 : 1500000)) {
                        break;
                    }
                }
                i4 *= 2;
            }
            options.inSampleSize = i4;
            Log.d(LOG_TAG, "loadBitmap from stream width=" + options.outWidth + " height=" + options.outHeight + " sampleSize=" + i4);
            Bitmap decodeStream = BitmapFactory.decodeStream(bufferedInputStream, null, options);
            try {
                bufferedInputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            if (decodeStream == null) {
                return new b(null, 0, 0, null);
            }
            return new b(decodeStream, i5, i6, null);
        } catch (Throwable e3) {
            throw new RuntimeException("Failed to reset stream", e3);
        }
    }

    public static b loadBitmap(String str, int i, int i2, int i3, int i4) {
        return loadBitmap(str, i, i2, i3, null, i4);
    }

    /* JADX WARNING: Missing block: B:38:0x00b7, code:
            r3 = r11.toLowerCase(java.util.Locale.US);
            r2 = 0;
     */
    /* JADX WARNING: Missing block: B:39:0x00c4, code:
            if (r3.endsWith(".jpeg") != false) goto L_0x00ce;
     */
    /* JADX WARNING: Missing block: B:41:0x00cc, code:
            if (r3.endsWith(".jpg") == false) goto L_0x00da;
     */
    /* JADX WARNING: Missing block: B:43:?, code:
            r2 = new android.media.ExifInterface(r11).getAttributeInt("Orientation", 0);
     */
    /* JADX WARNING: Missing block: B:57:0x0110, code:
            r2 = 0;
     */
    public static com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.b loadBitmap(java.lang.String r11, int r12, int r13, int r14, android.graphics.Bitmap.Config r15, int r16) {
        /*
        r1 = 1;
        r0 = r16;
        if (r0 != r1) goto L_0x000a;
    L_0x0005:
        r2 = loadBitmapThumb(r11, r12, r13, r14, r15);
    L_0x0009:
        return r2;
    L_0x000a:
        r1 = "NexImageLoader";
        r2 = "loadBitmap";
        android.util.Log.d(r1, r2);
        r1 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$a;
        r7 = 0;
        r8 = 0;
        r2 = r11;
        r3 = r12;
        r4 = r13;
        r5 = r14;
        r6 = r15;
        r1.<init>(r2, r3, r4, r5, r6, r7);
        r8 = sBitmapCacheLock;
        monitor-enter(r8);
        r5 = 0;
        r2 = sBitmapCache;	 Catch:{ all -> 0x00ad }
        r2 = r2.get(r1);	 Catch:{ all -> 0x00ad }
        r2 = (java.lang.ref.WeakReference) r2;	 Catch:{ all -> 0x00ad }
        if (r2 == 0) goto L_0x0052;
    L_0x002b:
        r3 = r2.get();	 Catch:{ all -> 0x00ad }
        r3 = (android.graphics.Bitmap) r3;	 Catch:{ all -> 0x00ad }
        if (r3 == 0) goto L_0x0052;
    L_0x0033:
        r2 = sLoadedBitmapCache;	 Catch:{ all -> 0x00ad }
        r2 = r2.get(r3);	 Catch:{ all -> 0x00ad }
        r0 = r2;
        r0 = (com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.c) r0;	 Catch:{ all -> 0x00ad }
        r6 = r0;
        if (r6 == 0) goto L_0x0052;
    L_0x003f:
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$b;	 Catch:{ all -> 0x00ad }
        r4 = r6.a();	 Catch:{ all -> 0x00ad }
        r5 = r6.b();	 Catch:{ all -> 0x00ad }
        r6 = r6.c();	 Catch:{ all -> 0x00ad }
        r7 = 0;
        r2.<init>(r3, r4, r5, r6);	 Catch:{ all -> 0x00ad }
        r5 = r2;
    L_0x0052:
        r2 = sCleanCacheCount;	 Catch:{ all -> 0x00ad }
        r2 = r2 + 1;
        sCleanCacheCount = r2;	 Catch:{ all -> 0x00ad }
        r2 = sCleanCacheCount;	 Catch:{ all -> 0x00ad }
        r3 = 30;
        if (r2 <= r3) goto L_0x00b0;
    L_0x005e:
        r2 = 0;
        sCleanCacheCount = r2;	 Catch:{ all -> 0x00ad }
        r4 = 0;
        r2 = sBitmapCache;	 Catch:{ all -> 0x00ad }
        r2 = r2.entrySet();	 Catch:{ all -> 0x00ad }
        r6 = r2.iterator();	 Catch:{ all -> 0x00ad }
    L_0x006c:
        r2 = r6.hasNext();	 Catch:{ all -> 0x00ad }
        if (r2 == 0) goto L_0x0095;
    L_0x0072:
        r2 = r6.next();	 Catch:{ all -> 0x00ad }
        r2 = (java.util.Map.Entry) r2;	 Catch:{ all -> 0x00ad }
        r3 = r2.getValue();	 Catch:{ all -> 0x00ad }
        r3 = (java.lang.ref.WeakReference) r3;	 Catch:{ all -> 0x00ad }
        r3 = r3.get();	 Catch:{ all -> 0x00ad }
        if (r3 != 0) goto L_0x02b5;
    L_0x0084:
        if (r4 != 0) goto L_0x02b2;
    L_0x0086:
        r3 = new java.util.ArrayList;	 Catch:{ all -> 0x00ad }
        r3.<init>();	 Catch:{ all -> 0x00ad }
    L_0x008b:
        r2 = r2.getKey();	 Catch:{ all -> 0x00ad }
        r3.add(r2);	 Catch:{ all -> 0x00ad }
        r2 = r3;
    L_0x0093:
        r4 = r2;
        goto L_0x006c;
    L_0x0095:
        if (r4 == 0) goto L_0x00b0;
    L_0x0097:
        r3 = r4.iterator();	 Catch:{ all -> 0x00ad }
    L_0x009b:
        r2 = r3.hasNext();	 Catch:{ all -> 0x00ad }
        if (r2 == 0) goto L_0x00b0;
    L_0x00a1:
        r2 = r3.next();	 Catch:{ all -> 0x00ad }
        r2 = (com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.a) r2;	 Catch:{ all -> 0x00ad }
        r4 = sBitmapCache;	 Catch:{ all -> 0x00ad }
        r4.remove(r2);	 Catch:{ all -> 0x00ad }
        goto L_0x009b;
    L_0x00ad:
        r1 = move-exception;
        monitor-exit(r8);	 Catch:{ all -> 0x00ad }
        throw r1;
    L_0x00b0:
        if (r5 == 0) goto L_0x00b6;
    L_0x00b2:
        monitor-exit(r8);	 Catch:{ all -> 0x00ad }
        r2 = r5;
        goto L_0x0009;
    L_0x00b6:
        monitor-exit(r8);	 Catch:{ all -> 0x00ad }
        r2 = java.util.Locale.US;
        r3 = r11.toLowerCase(r2);
        r2 = 0;
        r4 = ".jpeg";
        r4 = r3.endsWith(r4);
        if (r4 != 0) goto L_0x00ce;
    L_0x00c6:
        r4 = ".jpg";
        r3 = r3.endsWith(r4);
        if (r3 == 0) goto L_0x00da;
    L_0x00ce:
        r2 = new android.media.ExifInterface;	 Catch:{ IOException -> 0x010f }
        r2.<init>(r11);	 Catch:{ IOException -> 0x010f }
        r3 = "Orientation";
        r4 = 0;
        r2 = r2.getAttributeInt(r3, r4);	 Catch:{ IOException -> 0x010f }
    L_0x00da:
        r5 = new android.graphics.BitmapFactory$Options;
        r5.<init>();
        r3 = 1;
        r5.inJustDecodeBounds = r3;
        android.graphics.BitmapFactory.decodeFile(r11, r5);
        r3 = 0;
        r5.inJustDecodeBounds = r3;
        r5.inPreferredConfig = r15;
        r6 = r5.outWidth;
        r7 = r5.outHeight;
        r3 = 1;
        r4 = r3;
    L_0x00f0:
        r3 = 8;
        if (r4 >= r3) goto L_0x0116;
    L_0x00f4:
        r3 = r5.outWidth;
        r3 = r3 / r4;
        if (r3 <= r12) goto L_0x00fe;
    L_0x00f9:
        r3 = r5.outHeight;
        r3 = r3 / r4;
        if (r3 > r13) goto L_0x010b;
    L_0x00fe:
        r3 = r5.outWidth;
        r3 = r3 / r4;
        r8 = r5.outHeight;
        r3 = r3 * r8;
        r8 = r3 / r4;
        if (r14 <= 0) goto L_0x0112;
    L_0x0108:
        r3 = r14;
    L_0x0109:
        if (r8 <= r3) goto L_0x0116;
    L_0x010b:
        r3 = r4 * 2;
        r4 = r3;
        goto L_0x00f0;
    L_0x010f:
        r2 = move-exception;
        r2 = 0;
        goto L_0x00da;
    L_0x0112:
        r3 = 1500000; // 0x16e360 float:2.101948E-39 double:7.410985E-318;
        goto L_0x0109;
    L_0x0116:
        r5.inSampleSize = r4;
        r3 = "NexImageLoader";
        r8 = new java.lang.StringBuilder;
        r8.<init>();
        r9 = "loadBitmap width=";
        r8 = r8.append(r9);
        r9 = r5.outWidth;
        r8 = r8.append(r9);
        r9 = " height=";
        r8 = r8.append(r9);
        r9 = r5.outHeight;
        r8 = r8.append(r9);
        r9 = " sampleSize=";
        r8 = r8.append(r9);
        r4 = r8.append(r4);
        r8 = " name='";
        r4 = r4.append(r8);
        r4 = r4.append(r11);
        r8 = "'";
        r4 = r4.append(r8);
        r4 = r4.toString();
        android.util.Log.d(r3, r4);
        r3 = android.graphics.BitmapFactory.decodeFile(r11, r5);
        if (r3 != 0) goto L_0x0169;
    L_0x015e:
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$b;
        r1 = 0;
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r2.<init>(r1, r3, r4, r5);
        goto L_0x0009;
    L_0x0169:
        switch(r2) {
            case 0: goto L_0x02a4;
            case 1: goto L_0x0211;
            case 2: goto L_0x01b7;
            case 3: goto L_0x0214;
            case 4: goto L_0x01e3;
            case 5: goto L_0x029e;
            case 6: goto L_0x0246;
            case 7: goto L_0x02a1;
            case 8: goto L_0x0272;
            default: goto L_0x016c;
        };
    L_0x016c:
        r4 = r3;
    L_0x016d:
        if (r15 == 0) goto L_0x02af;
    L_0x016f:
        r3 = r4.getConfig();
        if (r3 == r15) goto L_0x02af;
    L_0x0175:
        r3 = r4.getWidth();
        r5 = r4.getHeight();
        r3 = android.graphics.Bitmap.createBitmap(r3, r5, r15);
        r5 = new android.graphics.Canvas;
        r5.<init>(r3);
        r8 = 0;
        r9 = 0;
        r10 = 0;
        r5.drawBitmap(r4, r8, r9, r10);
        r4.recycle();
    L_0x018f:
        switch(r2) {
            case 5: goto L_0x02a7;
            case 6: goto L_0x02a7;
            case 7: goto L_0x02a7;
            case 8: goto L_0x02a7;
            default: goto L_0x0192;
        };
    L_0x0192:
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$b;
        r4 = 0;
        r2.<init>(r3, r6, r7, r4);
    L_0x0198:
        r4 = sBitmapCache;
        r5 = new java.lang.ref.WeakReference;
        r5.<init>(r3);
        r4.put(r1, r5);
        r1 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$c;
        r4 = r2.b();
        r5 = r2.c();
        r6 = 0;
        r1.<init>(r4, r5, r6);
        r4 = sLoadedBitmapCache;
        r4.put(r3, r1);
        goto L_0x0009;
    L_0x01b7:
        r4 = r3.getWidth();
        r5 = r3.getHeight();
        r8 = android.graphics.Bitmap.Config.ARGB_8888;
        r4 = android.graphics.Bitmap.createBitmap(r4, r5, r8);
        r5 = new android.graphics.Canvas;
        r5.<init>(r4);
        r4 = new android.graphics.Matrix;
        r4.<init>();
        r8 = -1082130432; // 0xffffffffbf800000 float:-1.0 double:NaN;
        r9 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r4.setScale(r8, r9);
        r8 = r3.getWidth();
        r8 = (float) r8;
        r9 = 0;
        r4.postTranslate(r8, r9);
        r8 = 0;
        r5.drawBitmap(r3, r4, r8);
    L_0x01e3:
        r4 = r3.getWidth();
        r5 = r3.getHeight();
        r8 = android.graphics.Bitmap.Config.ARGB_8888;
        r4 = android.graphics.Bitmap.createBitmap(r4, r5, r8);
        r5 = new android.graphics.Canvas;
        r5.<init>(r4);
        r8 = new android.graphics.Matrix;
        r8.<init>();
        r9 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r10 = -1082130432; // 0xffffffffbf800000 float:-1.0 double:NaN;
        r8.setScale(r9, r10);
        r9 = 0;
        r10 = r3.getHeight();
        r10 = (float) r10;
        r8.postTranslate(r9, r10);
        r9 = 0;
        r5.drawBitmap(r3, r8, r9);
        goto L_0x016d;
    L_0x0211:
        r4 = r3;
        goto L_0x016d;
    L_0x0214:
        r4 = r3.getWidth();
        r5 = r3.getHeight();
        r8 = android.graphics.Bitmap.Config.ARGB_8888;
        r4 = android.graphics.Bitmap.createBitmap(r4, r5, r8);
        r5 = new android.graphics.Canvas;
        r5.<init>(r4);
        r8 = new android.graphics.Matrix;
        r8.<init>();
        r9 = -1082130432; // 0xffffffffbf800000 float:-1.0 double:NaN;
        r10 = -1082130432; // 0xffffffffbf800000 float:-1.0 double:NaN;
        r8.setScale(r9, r10);
        r9 = r3.getWidth();
        r9 = (float) r9;
        r10 = r3.getHeight();
        r10 = (float) r10;
        r8.postTranslate(r9, r10);
        r9 = 0;
        r5.drawBitmap(r3, r8, r9);
        goto L_0x016d;
    L_0x0246:
        r4 = r3.getHeight();
        r5 = r3.getWidth();
        r8 = android.graphics.Bitmap.Config.ARGB_8888;
        r4 = android.graphics.Bitmap.createBitmap(r4, r5, r8);
        r5 = new android.graphics.Canvas;
        r5.<init>(r4);
        r8 = new android.graphics.Matrix;
        r8.<init>();
        r9 = 1119092736; // 0x42b40000 float:90.0 double:5.529052754E-315;
        r8.setRotate(r9);
        r9 = r3.getHeight();
        r9 = (float) r9;
        r10 = 0;
        r8.postTranslate(r9, r10);
        r9 = 0;
        r5.drawBitmap(r3, r8, r9);
        goto L_0x016d;
    L_0x0272:
        r4 = r3.getHeight();
        r5 = r3.getWidth();
        r8 = android.graphics.Bitmap.Config.ARGB_8888;
        r4 = android.graphics.Bitmap.createBitmap(r4, r5, r8);
        r5 = new android.graphics.Canvas;
        r5.<init>(r4);
        r8 = new android.graphics.Matrix;
        r8.<init>();
        r9 = 1132920832; // 0x43870000 float:270.0 double:5.597372625E-315;
        r8.setRotate(r9);
        r9 = 0;
        r10 = r3.getWidth();
        r10 = (float) r10;
        r8.postTranslate(r9, r10);
        r9 = 0;
        r5.drawBitmap(r3, r8, r9);
        goto L_0x016d;
    L_0x029e:
        r4 = r3;
        goto L_0x016d;
    L_0x02a1:
        r4 = r3;
        goto L_0x016d;
    L_0x02a4:
        r4 = r3;
        goto L_0x016d;
    L_0x02a7:
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$b;
        r4 = 0;
        r2.<init>(r3, r7, r6, r4);
        goto L_0x0198;
    L_0x02af:
        r3 = r4;
        goto L_0x018f;
    L_0x02b2:
        r3 = r4;
        goto L_0x008b;
    L_0x02b5:
        r2 = r4;
        goto L_0x0093;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.loadBitmap(java.lang.String, int, int, int, android.graphics.Bitmap$Config, int):com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$b");
    }

    /* JADX WARNING: Missing block: B:35:0x00ac, code:
            r8 = getThumbnail(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), r9);
     */
    /* JADX WARNING: Missing block: B:36:0x00b8, code:
            if (r8 != null) goto L_0x00c5;
     */
    /* JADX WARNING: Missing block: B:39:0x00d1, code:
            switch(getThumbnailOrientation(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), r9)) {
                case 90: goto L_0x0103;
                case com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_180 :int: goto L_0x0115;
                case com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_270 :int: goto L_0x0127;
                default: goto L_0x00d4;
            };
     */
    /* JADX WARNING: Missing block: B:40:0x00d4, code:
            r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.b(r8, 1280, 720, 2, null);
     */
    /* JADX WARNING: Missing block: B:41:0x00e0, code:
            sBitmapCache.put(r1, new java.lang.ref.WeakReference(r8));
            sLoadedBitmapCache.put(r8, new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.c(r2.b(), r2.c(), r2.d(), null));
     */
    /* JADX WARNING: Missing block: B:42:0x0103, code:
            r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.b(rotateImage(r8, 90), 720, 1280, 2, null);
     */
    /* JADX WARNING: Missing block: B:43:0x0115, code:
            r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.b(rotateImage(r8, com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_180), 1280, 720, 2, null);
     */
    /* JADX WARNING: Missing block: B:44:0x0127, code:
            r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.b(rotateImage(r8, com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_270), 720, 1280, 2, null);
     */
    /* JADX WARNING: Missing block: B:52:?, code:
            return new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.b(null, 0, 0, 0, null);
     */
    /* JADX WARNING: Missing block: B:53:?, code:
            return r2;
     */
    public static com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.b loadBitmapThumb(java.lang.String r9, int r10, int r11, int r12, android.graphics.Bitmap.Config r13) {
        /*
        r1 = "NexImageLoader";
        r2 = "loadBitmapThumb";
        android.util.Log.d(r1, r2);
        r1 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$a;
        r7 = 1;
        r8 = 0;
        r2 = r9;
        r3 = r10;
        r4 = r11;
        r5 = r12;
        r6 = r13;
        r1.<init>(r2, r3, r4, r5, r6, r7);
        r8 = sBitmapCacheLock;
        monitor-enter(r8);
        r5 = 0;
        r2 = sBitmapCache;	 Catch:{ all -> 0x00a3 }
        r2 = r2.get(r1);	 Catch:{ all -> 0x00a3 }
        r2 = (java.lang.ref.WeakReference) r2;	 Catch:{ all -> 0x00a3 }
        if (r2 == 0) goto L_0x0048;
    L_0x0021:
        r3 = r2.get();	 Catch:{ all -> 0x00a3 }
        r3 = (android.graphics.Bitmap) r3;	 Catch:{ all -> 0x00a3 }
        if (r3 == 0) goto L_0x0048;
    L_0x0029:
        r2 = sLoadedBitmapCache;	 Catch:{ all -> 0x00a3 }
        r2 = r2.get(r3);	 Catch:{ all -> 0x00a3 }
        r0 = r2;
        r0 = (com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.c) r0;	 Catch:{ all -> 0x00a3 }
        r6 = r0;
        if (r6 == 0) goto L_0x0048;
    L_0x0035:
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$b;	 Catch:{ all -> 0x00a3 }
        r4 = r6.a();	 Catch:{ all -> 0x00a3 }
        r5 = r6.b();	 Catch:{ all -> 0x00a3 }
        r6 = r6.c();	 Catch:{ all -> 0x00a3 }
        r7 = 0;
        r2.<init>(r3, r4, r5, r6);	 Catch:{ all -> 0x00a3 }
        r5 = r2;
    L_0x0048:
        r2 = sCleanCacheCount;	 Catch:{ all -> 0x00a3 }
        r2 = r2 + 1;
        sCleanCacheCount = r2;	 Catch:{ all -> 0x00a3 }
        r2 = sCleanCacheCount;	 Catch:{ all -> 0x00a3 }
        r3 = 30;
        if (r2 <= r3) goto L_0x00a6;
    L_0x0054:
        r2 = 0;
        sCleanCacheCount = r2;	 Catch:{ all -> 0x00a3 }
        r4 = 0;
        r2 = sBitmapCache;	 Catch:{ all -> 0x00a3 }
        r2 = r2.entrySet();	 Catch:{ all -> 0x00a3 }
        r6 = r2.iterator();	 Catch:{ all -> 0x00a3 }
    L_0x0062:
        r2 = r6.hasNext();	 Catch:{ all -> 0x00a3 }
        if (r2 == 0) goto L_0x008b;
    L_0x0068:
        r2 = r6.next();	 Catch:{ all -> 0x00a3 }
        r2 = (java.util.Map.Entry) r2;	 Catch:{ all -> 0x00a3 }
        r3 = r2.getValue();	 Catch:{ all -> 0x00a3 }
        r3 = (java.lang.ref.WeakReference) r3;	 Catch:{ all -> 0x00a3 }
        r3 = r3.get();	 Catch:{ all -> 0x00a3 }
        if (r3 != 0) goto L_0x013c;
    L_0x007a:
        if (r4 != 0) goto L_0x0139;
    L_0x007c:
        r3 = new java.util.ArrayList;	 Catch:{ all -> 0x00a3 }
        r3.<init>();	 Catch:{ all -> 0x00a3 }
    L_0x0081:
        r2 = r2.getKey();	 Catch:{ all -> 0x00a3 }
        r3.add(r2);	 Catch:{ all -> 0x00a3 }
        r2 = r3;
    L_0x0089:
        r4 = r2;
        goto L_0x0062;
    L_0x008b:
        if (r4 == 0) goto L_0x00a6;
    L_0x008d:
        r3 = r4.iterator();	 Catch:{ all -> 0x00a3 }
    L_0x0091:
        r2 = r3.hasNext();	 Catch:{ all -> 0x00a3 }
        if (r2 == 0) goto L_0x00a6;
    L_0x0097:
        r2 = r3.next();	 Catch:{ all -> 0x00a3 }
        r2 = (com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.a) r2;	 Catch:{ all -> 0x00a3 }
        r4 = sBitmapCache;	 Catch:{ all -> 0x00a3 }
        r4.remove(r2);	 Catch:{ all -> 0x00a3 }
        goto L_0x0091;
    L_0x00a3:
        r1 = move-exception;
        monitor-exit(r8);	 Catch:{ all -> 0x00a3 }
        throw r1;
    L_0x00a6:
        if (r5 == 0) goto L_0x00ab;
    L_0x00a8:
        monitor-exit(r8);	 Catch:{ all -> 0x00a3 }
        r1 = r5;
    L_0x00aa:
        return r1;
    L_0x00ab:
        monitor-exit(r8);	 Catch:{ all -> 0x00a3 }
        r2 = com.nexstreaming.kminternal.kinemaster.config.a.a();
        r2 = r2.b();
        r8 = getThumbnail(r2, r9);
        if (r8 != 0) goto L_0x00c5;
    L_0x00ba:
        r1 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$b;
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r1.<init>(r2, r3, r4, r5);
        goto L_0x00aa;
    L_0x00c5:
        r2 = com.nexstreaming.kminternal.kinemaster.config.a.a();
        r2 = r2.b();
        r2 = getThumbnailOrientation(r2, r9);
        switch(r2) {
            case 90: goto L_0x0103;
            case 180: goto L_0x0115;
            case 270: goto L_0x0127;
            default: goto L_0x00d4;
        };
    L_0x00d4:
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$b;
        r4 = 1280; // 0x500 float:1.794E-42 double:6.324E-321;
        r5 = 720; // 0x2d0 float:1.009E-42 double:3.557E-321;
        r6 = 2;
        r7 = 0;
        r3 = r8;
        r2.<init>(r3, r4, r5, r6);
    L_0x00e0:
        r3 = sBitmapCache;
        r4 = new java.lang.ref.WeakReference;
        r4.<init>(r8);
        r3.put(r1, r4);
        r1 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$c;
        r3 = r2.b();
        r4 = r2.c();
        r5 = r2.d();
        r6 = 0;
        r1.<init>(r3, r4, r5);
        r3 = sLoadedBitmapCache;
        r3.put(r8, r1);
        r1 = r2;
        goto L_0x00aa;
    L_0x0103:
        r2 = 90;
        r3 = rotateImage(r8, r2);
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$b;
        r4 = 720; // 0x2d0 float:1.009E-42 double:3.557E-321;
        r5 = 1280; // 0x500 float:1.794E-42 double:6.324E-321;
        r6 = 2;
        r7 = 0;
        r2.<init>(r3, r4, r5, r6);
        goto L_0x00e0;
    L_0x0115:
        r2 = 180; // 0xb4 float:2.52E-43 double:8.9E-322;
        r3 = rotateImage(r8, r2);
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$b;
        r4 = 1280; // 0x500 float:1.794E-42 double:6.324E-321;
        r5 = 720; // 0x2d0 float:1.009E-42 double:3.557E-321;
        r6 = 2;
        r7 = 0;
        r2.<init>(r3, r4, r5, r6);
        goto L_0x00e0;
    L_0x0127:
        r2 = 270; // 0x10e float:3.78E-43 double:1.334E-321;
        r3 = rotateImage(r8, r2);
        r2 = new com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$b;
        r4 = 720; // 0x2d0 float:1.009E-42 double:3.557E-321;
        r5 = 1280; // 0x500 float:1.794E-42 double:6.324E-321;
        r6 = 2;
        r7 = 0;
        r2.<init>(r3, r4, r5, r6);
        goto L_0x00e0;
    L_0x0139:
        r3 = r4;
        goto L_0x0081;
    L_0x013c:
        r2 = r4;
        goto L_0x0089;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.loadBitmapThumb(java.lang.String, int, int, int, android.graphics.Bitmap$Config):com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader$b");
    }

    public static Bitmap rotateImage(Bitmap bitmap, int i) {
        if (i == 0 || bitmap == null) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate((float) i, ((float) bitmap.getWidth()) / 2.0f, ((float) bitmap.getHeight()) / 2.0f);
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (bitmap != createBitmap) {
                return createBitmap;
            }
            return bitmap;
        } catch (OutOfMemoryError e) {
            Log.e(LOG_TAG, "rotateImage Error : " + e);
            return bitmap;
        }
    }

    public static Bitmap rotateAndFlipImage(Bitmap bitmap, int i, boolean z, boolean z2) {
        float f = -1.0f;
        if ((i == 0 && !z && !z2) || bitmap == null) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.preRotate((float) i, ((float) bitmap.getWidth()) / 2.0f, ((float) bitmap.getHeight()) / 2.0f);
        float f2 = z ? -1.0f : 1.0f;
        if (!z2) {
            f = 1.0f;
        }
        matrix.preScale(f2, f, ((float) bitmap.getWidth()) / 2.0f, ((float) bitmap.getHeight()) / 2.0f);
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (bitmap != createBitmap) {
                return createBitmap;
            }
            return bitmap;
        } catch (OutOfMemoryError e) {
            Log.e(LOG_TAG, "rotateImage Error : " + e);
            return bitmap;
        }
    }

    public static void calcSampleSize(Options options) {
        int i = 1;
        while (i < 8 && ((options.outWidth / i > 1440 && options.outHeight / i > 810) || ((options.outWidth / i) * options.outHeight) / i > 1500000)) {
            i *= 2;
        }
        options.inSampleSize = i;
    }

    public static void calcSampleSize(Options options, int i, int i2, int i3) {
        int i4;
        int i5 = 1;
        while (true) {
            i4 = i5;
            if (i4 >= 8) {
                break;
            }
            if (options.outWidth / i4 <= i || options.outHeight / i4 <= i2) {
                if (((options.outWidth / i4) * options.outHeight) / i4 <= (i3 > 0 ? i3 : 1500000)) {
                    break;
                }
            }
            i5 = i4 * 2;
        }
        options.inSampleSize = i4;
    }

    public NexImage openFile(String str, int i) {
        Bitmap a;
        if (str.startsWith("@solid:") && str.endsWith(".jpg")) {
            int parseLong = (int) Long.parseLong(str.substring(7, 15), 16);
            int[] iArr = new int[576];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr[i2] = parseLong;
            }
            return new NexImage(Bitmap.createBitmap(iArr, 32, 18, Config.ARGB_8888), 32, 18);
        } else if (str.startsWith("@assetItem:")) {
            String substring = str.substring(11);
            if (this.m_effectResourceLoader != null) {
                try {
                    a = loadBitmap(this.m_effectResourceLoader.b(substring, null), this.m_jpegMaxWidth, this.m_jpegMaxHeight, this.m_jpegMaxSize).a();
                    if (a == null) {
                        return null;
                    }
                    Log.d(LOG_TAG, "@assetItem bitmap width=" + a.getWidth() + " height=" + a.getHeight());
                    return new NexImage(a, a.getWidth() & -2, a.getHeight() & -2);
                } catch (IOException e) {
                }
            }
            return null;
        } else {
            try {
                b loadBitmap = loadBitmap(str, this.m_jpegMaxWidth, this.m_jpegMaxHeight, this.m_jpegMaxSize, i);
                a = loadBitmap.a();
                int d = loadBitmap.d();
                if (a == null) {
                    return null;
                }
                Log.d(LOG_TAG, "Actual bitmap width=" + a.getWidth() + " height=" + a.getHeight() + ", loadedtype=" + d);
                return new NexImage(a, a.getWidth() & -2, a.getHeight() & -2, d);
            } catch (Exception e2) {
                return null;
            }
        }
    }

    public byte[] callbackReadAssetItemFile(String str, String str2) {
        f c = com.nexstreaming.app.common.nexasset.assetpackage.c.a().c(str);
        if (c == null) {
            Log.d(LOG_TAG, "Error get assetItem id=" + str);
            return null;
        }
        try {
            String filePath;
            AssetPackageReader a = AssetPackageReader.a(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), c.getPackageURI(), c.getAssetPackage().getAssetId());
            if (str2 == null || str2.length() < 1) {
                filePath = c.getFilePath();
            } else {
                filePath = relativePath(c.getFilePath(), str2);
            }
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            InputStream a2;
            try {
                a2 = a.a(filePath);
                copy(a2, byteArrayOutputStream);
                a2.close();
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable e) {
                Log.d(LOG_TAG, "Error reading file", e);
                return null;
            } catch (Throwable th) {
                a2.close();
            }
        } catch (Throwable e2) {
            Log.d(LOG_TAG, "Error making reader", e2);
            return null;
        }
    }

    private static String relativePath(String str, String str2) {
        if (str2.startsWith("..") || str2.contains("/..")) {
            throw new SecurityException("Parent Path References Not Allowed");
        } else if (str.endsWith("/")) {
            return str + str2;
        } else {
            int lastIndexOf = str.lastIndexOf(47);
            return lastIndexOf >= 0 ? str.substring(0, lastIndexOf + 1) + str2 : str2;
        }
    }

    private static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 != read) {
                outputStream.write(bArr, 0, read);
                j += (long) read;
            } else {
                return;
            }
        }
    }

    private static Bitmap getThumbnail(Context context, String str) {
        Cursor query = context.getContentResolver().query(Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=?", new String[]{str}, null);
        if (query == null || !query.moveToFirst()) {
            query.close();
            return null;
        }
        int i = query.getInt(query.getColumnIndex("_id"));
        query.close();
        return Thumbnails.getThumbnail(context.getContentResolver(), (long) i, 1, null);
    }

    private static int getThumbnailOrientation(Context context, String str) {
        Uri uri;
        Cursor query = context.getContentResolver().query(Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=?", new String[]{str}, null);
        if (query == null || !query.moveToFirst()) {
            uri = null;
        } else {
            uri = ContentUris.withAppendedId(Media.EXTERNAL_CONTENT_URI, (long) query.getInt(query.getColumnIndex("_id")));
            query.close();
        }
        if (uri != null) {
            String[] strArr = new String[]{"orientation"};
            query = context.getContentResolver().query(uri, strArr, null, null, null);
            if (query != null && query.moveToFirst()) {
                return query.getInt(query.getColumnIndex(strArr[0]));
            }
        }
        return -1;
    }
}
