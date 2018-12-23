package com.miui.gallery.util;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import com.miui.gallery.util.face.FaceRegionRectF;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.InputStream;

public class DecodeRegionImageUtils {
    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* JADX WARNING: Missing block: B:15:?, code:
            return r1;
     */
    public static android.graphics.Bitmap decodeRegion(android.graphics.RectF r3, java.io.InputStream r4, int r5) {
        /*
        if (r4 != 0) goto L_0x0004;
    L_0x0002:
        r1 = 0;
    L_0x0003:
        return r1;
    L_0x0004:
        r0 = requestCreateBitmapRegionDecoder(r4);
        r1 = decodeRegion(r3, r0, r5);	 Catch:{ all -> 0x0016 }
        r2 = com.miui.gallery.util.BitmapUtils.isValidate(r0);
        if (r2 == 0) goto L_0x0003;
    L_0x0012:
        r0.recycle();
        goto L_0x0003;
    L_0x0016:
        r1 = move-exception;
        r2 = com.miui.gallery.util.BitmapUtils.isValidate(r0);
        if (r2 == 0) goto L_0x0020;
    L_0x001d:
        r0.recycle();
    L_0x0020:
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.util.DecodeRegionImageUtils.decodeRegion(android.graphics.RectF, java.io.InputStream, int):android.graphics.Bitmap");
    }

    private static Bitmap decodeRegion(RectF posRelative, BitmapRegionDecoder decoder, int preferTargetSize) {
        if (decoder == null) {
            return null;
        }
        int width = decoder.getWidth();
        int height = decoder.getHeight();
        Rect regionPos = new Rect((int) (posRelative.left * ((float) width)), (int) (posRelative.top * ((float) height)), (int) (posRelative.right * ((float) width)), (int) (posRelative.bottom * ((float) height)));
        Options options = new Options();
        if (preferTargetSize > 0 && preferTargetSize < Math.min(regionPos.width(), regionPos.height())) {
            options.inPreferredConfig = Config.RGB_565;
            options.inSampleSize = computeSampleSize(((float) preferTargetSize) / ((float) Math.min(regionPos.width(), regionPos.height())));
        }
        return safeDecodeRegion(decoder, regionPos, options);
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* JADX WARNING: Missing block: B:16:?, code:
            return r0;
     */
    public static android.graphics.Bitmap decodeFaceRegion(android.graphics.RectF r6, java.lang.String r7, float r8, int r9, int r10, com.miui.gallery.util.ReusedBitmapCache r11) {
        /*
        r0 = android.text.TextUtils.isEmpty(r7);
        if (r0 == 0) goto L_0x0008;
    L_0x0006:
        r0 = 0;
    L_0x0007:
        return r0;
    L_0x0008:
        r1 = requestCreateBitmapRegionDecoder(r7);
        r0 = r6;
        r2 = r8;
        r3 = r9;
        r4 = r10;
        r5 = r11;
        r0 = decodeFace(r0, r1, r2, r3, r4, r5);	 Catch:{ all -> 0x001f }
        r2 = com.miui.gallery.util.BitmapUtils.isValidate(r1);
        if (r2 == 0) goto L_0x0007;
    L_0x001b:
        r1.recycle();
        goto L_0x0007;
    L_0x001f:
        r0 = move-exception;
        r2 = com.miui.gallery.util.BitmapUtils.isValidate(r1);
        if (r2 == 0) goto L_0x0029;
    L_0x0026:
        r1.recycle();
    L_0x0029:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.util.DecodeRegionImageUtils.decodeFaceRegion(android.graphics.RectF, java.lang.String, float, int, int, com.miui.gallery.util.ReusedBitmapCache):android.graphics.Bitmap");
    }

    public static Bitmap decodeFaceRegion(RectF posRelativeOfRegion, InputStream is, float faceEnlargeFactor, int preferTargetSize, int exifOrientation) {
        Bitmap bitmap = null;
        if (is != null) {
            BitmapRegionDecoder decoder = requestCreateBitmapRegionDecoder(is);
            try {
                bitmap = decodeFace(posRelativeOfRegion, decoder, faceEnlargeFactor, preferTargetSize, exifOrientation, null);
                if (BitmapUtils.isValidate(decoder)) {
                    decoder.recycle();
                }
            } catch (Throwable th) {
                if (BitmapUtils.isValidate(decoder)) {
                    decoder.recycle();
                }
            }
        }
        return bitmap;
    }

    private static Bitmap decodeFace(RectF posRelative, BitmapRegionDecoder decoder, float faceEnlargeFactor, int preferTargetSize, int exifOrientation, ReusedBitmapCache cache) {
        if (decoder == null) {
            return null;
        }
        int width = decoder.getWidth();
        int height = decoder.getHeight();
        if (posRelative instanceof FaceRegionRectF) {
            int regionOrientation = ((FaceRegionRectF) posRelative).orientation;
            if (!(regionOrientation == -1 || regionOrientation == 1 || regionOrientation == 0 || regionOrientation == exifOrientation)) {
                posRelative = ExifUtil.adjustRectOrientation(1, 1, posRelative, regionOrientation, true);
            }
        }
        Rect facePos = new Rect((int) (posRelative.left * ((float) width)), (int) (posRelative.top * ((float) height)), (int) (posRelative.right * ((float) width)), (int) (posRelative.bottom * ((float) height)));
        Options options = new Options();
        if (preferTargetSize > 0 && preferTargetSize < Math.min(facePos.width(), facePos.height())) {
            options.inPreferredConfig = Config.RGB_565;
            options.outHeight = preferTargetSize;
            options.outWidth = preferTargetSize;
            options.inSampleSize = computeSampleSize(((float) preferTargetSize) / ((float) Math.min(facePos.width(), facePos.height())));
            if (cache != null) {
                options.inBitmap = cache.get(options);
            }
        }
        return safeDecodeRegion(decoder, roundToSquareAndScale(facePos, width, height, faceEnlargeFactor), options);
    }

    private static Bitmap safeDecodeRegion(BitmapRegionDecoder regionDecoder, Rect rect, Options options) {
        Bitmap result = null;
        try {
            return regionDecoder.decodeRegion(rect, options);
        } catch (OutOfMemoryError e) {
            Log.e("DecodeRegionImageUtils", "safeDecodeRegion() failed OOM: ", e);
            return result;
        } catch (Throwable e2) {
            Log.e("DecodeRegionImageUtils", "safeDecodeRegion() failed: ", e2);
            return result;
        }
    }

    public static Rect roundToSquareAndScale(Rect facePos, int imageWidth, int imageHeight, float enlargeFactor) {
        int rawWidth = facePos.right - facePos.left;
        int rawHeight = facePos.bottom - facePos.top;
        int prefSize = Math.min((int) (((float) Math.max(rawWidth, rawHeight)) * enlargeFactor), Math.min(Math.min(facePos.centerX(), facePos.centerY()), Math.min(imageWidth - facePos.centerX(), imageHeight - facePos.centerY())) * 2);
        int widthDelta = (prefSize - rawWidth) / 2;
        int heightDelta = (prefSize - rawHeight) / 2;
        facePos.left -= widthDelta;
        facePos.top -= heightDelta;
        facePos.right += widthDelta;
        facePos.bottom += heightDelta;
        return facePos;
    }

    private static BitmapRegionDecoder requestCreateBitmapRegionDecoder(String filePath) {
        Throwable t;
        Throwable th;
        InputStream is = null;
        try {
            InputStream is2 = new FileInputStream(filePath);
            try {
                BitmapRegionDecoder newInstance = BitmapRegionDecoder.newInstance(is2, false);
                closeSilently(is2);
                is = is2;
                return newInstance;
            } catch (Throwable th2) {
                th = th2;
                is = is2;
                closeSilently(is);
                throw th;
            }
        } catch (Throwable th3) {
            t = th3;
            Log.w("DecodeRegionImageUtils", t);
            closeSilently(is);
            return null;
        }
    }

    private static BitmapRegionDecoder requestCreateBitmapRegionDecoder(InputStream is) {
        try {
            return BitmapRegionDecoder.newInstance(is, false);
        } catch (Throwable t) {
            Log.w("DecodeRegionImageUtils", t);
            return null;
        }
    }

    private static void closeSilently(Closeable c) {
        if (c != null) {
            try {
                c.close();
            } catch (Throwable t) {
                Log.w("DecodeRegionImageUtils", "close fail", t);
            }
        }
    }

    private static int computeSampleSize(float scale) {
        int initialSize = Math.max(1, (int) Math.ceil((double) (1.0f / scale)));
        return initialSize <= 8 ? nextPowerOf2(initialSize) : ((initialSize + 7) / 8) * 8;
    }

    private static int nextPowerOf2(int n) {
        if (n <= 0 || n > 1073741824) {
            throw new IllegalArgumentException();
        }
        n--;
        n |= n >> 16;
        n |= n >> 8;
        n |= n >> 4;
        n |= n >> 2;
        return (n | (n >> 1)) + 1;
    }
}
