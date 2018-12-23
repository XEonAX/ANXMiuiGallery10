package com.miui.gallery.editor.photo.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.net.Uri;
import com.miui.gallery.util.Log;
import com.miui.gallery3d.exif.ExifInterface;
import com.nexstreaming.nexeditorsdk.nexClip;
import java.io.FileNotFoundException;
import java.io.InputStream;

public final class Bitmaps {
    public static Bitmap decodeUri(Context context, Uri uri, Options opt) throws FileNotFoundException {
        InputStream in = null;
        try {
            in = IoUtils.openInputStream(context, uri);
            Bitmap decodeStream = BitmapFactory.decodeStream(in, null, opt);
            return decodeStream;
        } finally {
            IoUtils.close(in);
        }
    }

    public static Bitmap decodeStream(InputStream in, Options opt) {
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(in, null, opt);
            return decodeStream;
        } finally {
            IoUtils.close(in);
        }
    }

    public static ExifInterface readExif(InputStream in) {
        if (in == null) {
            return null;
        }
        try {
            ExifInterface exif = new ExifInterface();
            exif.readExif(in);
            return exif;
        } catch (Throwable e) {
            Log.w("Graphics", e);
            return null;
        } catch (Throwable e2) {
            Log.w("Graphics", e2);
            return null;
        } finally {
            IoUtils.close(in);
        }
    }

    public static ExifInterface readExif(Context context, Uri uri) {
        InputStream in = IoUtils.openInputStream("Graphics", context, uri);
        if (in == null) {
            return null;
        }
        try {
            ExifInterface readExif = readExif(in);
            return readExif;
        } finally {
            IoUtils.close("Graphics", in);
        }
    }

    public static Bitmap setConfig(Bitmap src) {
        Bitmap bmp = src;
        if (src == null || src.getConfig() != null) {
            return bmp;
        }
        bmp = src.copy(Config.ARGB_8888, true);
        src.recycle();
        return bmp;
    }

    public static Bitmap joinExif(Bitmap src, ExifInterface exif, Options opt) {
        if (exif == null) {
            return src;
        }
        Integer rawValue = exif.getTagIntValue(ExifInterface.TAG_ORIENTATION);
        if (rawValue == null) {
            return src;
        }
        int degree = ExifInterface.getRotationForOrientationValue(rawValue.shortValue());
        if (degree == 0) {
            return src;
        }
        Bitmap bmp;
        if (src != null) {
            Matrix matrix = new Matrix();
            matrix.preRotate((float) degree);
            bmp = Bitmap.createBitmap(src, 0, 0, src.getWidth(), src.getHeight(), matrix, true);
            src.recycle();
        } else {
            bmp = null;
        }
        if (!(opt == null || degree % nexClip.kClip_Rotate_180 == 0)) {
            int width = opt.outWidth;
            opt.outWidth = opt.outHeight;
            opt.outHeight = width;
        }
        return bmp;
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    public static android.graphics.Bitmap copyBitmap(android.graphics.Bitmap r6) {
        /*
        if (r6 != 0) goto L_0x0004;
    L_0x0002:
        r0 = 0;
    L_0x0003:
        return r0;
    L_0x0004:
        r0 = 0;
        r3 = android.graphics.Bitmap.Config.ARGB_8888;	 Catch:{ OutOfMemoryError -> 0x0012 }
        r4 = 1;
        r0 = r6.copy(r3, r4);	 Catch:{ OutOfMemoryError -> 0x0012 }
        if (r6 == 0) goto L_0x0003;
    L_0x000e:
        r6.recycle();
        goto L_0x0003;
    L_0x0012:
        r1 = move-exception;
        r3 = "Graphics";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0050 }
        r4.<init>();	 Catch:{ all -> 0x0050 }
        r5 = "ensureBitmapSize error:";
        r4 = r4.append(r5);	 Catch:{ all -> 0x0050 }
        r5 = r1.toString();	 Catch:{ all -> 0x0050 }
        r4 = r4.append(r5);	 Catch:{ all -> 0x0050 }
        r4 = r4.toString();	 Catch:{ all -> 0x0050 }
        com.miui.gallery.util.Log.e(r3, r4);	 Catch:{ all -> 0x0050 }
        r2 = new java.util.HashMap;	 Catch:{ all -> 0x0050 }
        r2.<init>();	 Catch:{ all -> 0x0050 }
        r3 = "type";
        r4 = "copy";
        r2.put(r3, r4);	 Catch:{ all -> 0x0050 }
        r3 = "model";
        r4 = android.os.Build.MODEL;	 Catch:{ all -> 0x0050 }
        r2.put(r3, r4);	 Catch:{ all -> 0x0050 }
        r3 = "photo_editor";
        r4 = "memory_error";
        com.miui.gallery.util.GallerySamplingStatHelper.recordCountEvent(r3, r4, r2);	 Catch:{ all -> 0x0050 }
        if (r6 == 0) goto L_0x0003;
    L_0x004c:
        r6.recycle();
        goto L_0x0003;
    L_0x0050:
        r3 = move-exception;
        if (r6 == 0) goto L_0x0056;
    L_0x0053:
        r6.recycle();
    L_0x0056:
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.editor.photo.utils.Bitmaps.copyBitmap(android.graphics.Bitmap):android.graphics.Bitmap");
    }

    public static Bitmap copyBitmapInCaseOfRecycle(Bitmap bitmap) {
        try {
            return bitmap.copy(Config.ARGB_8888, true);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
