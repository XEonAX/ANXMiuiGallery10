package com.nostra13.universalimageloader.core.decode;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.text.TextUtils;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.MediaStoreUtils;
import com.miui.gallery3d.exif.ExifInterface;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.utils.ImageSizeUtils;
import com.nostra13.universalimageloader.utils.IoUtils;
import com.nostra13.universalimageloader.utils.L;
import java.io.IOException;
import java.io.InputStream;

public class BaseImageDecoder implements ImageDecoder {
    protected final boolean loggingEnabled;

    protected static class ExifInfo {
        public final int exifOrientation;
        public final boolean flipHorizontal;
        public final int rotation;

        protected ExifInfo() {
            this.rotation = 0;
            this.flipHorizontal = false;
            this.exifOrientation = 0;
        }

        protected ExifInfo(int rotation, boolean flipHorizontal, int exifOrientation) {
            this.rotation = rotation;
            this.flipHorizontal = flipHorizontal;
            this.exifOrientation = exifOrientation;
        }
    }

    protected static class ImageFileInfo {
        public final ExifInfo exif;
        public final ImageSize imageSize;

        protected ImageFileInfo(ImageSize imageSize, ExifInfo exif) {
            this.imageSize = imageSize;
            this.exif = exif;
        }
    }

    public BaseImageDecoder(boolean loggingEnabled) {
        this.loggingEnabled = loggingEnabled;
    }

    /* JADX WARNING: Missing block: B:27:0x007b, code:
            if (r3.isRecycled() != false) goto L_0x007d;
     */
    public android.graphics.Bitmap decode(com.nostra13.universalimageloader.core.decode.ImageDecodingInfo r15) throws java.io.IOException {
        /*
        r14 = this;
        r3 = 0;
        r5 = 0;
        r9 = 0;
        r1 = r15.getImageUri();	 Catch:{ all -> 0x00db }
        r10 = r15.isConsiderFileLength();	 Catch:{ all -> 0x00db }
        if (r10 == 0) goto L_0x00af;
    L_0x000d:
        r6 = r15.getFileLength();	 Catch:{ all -> 0x00db }
    L_0x0011:
        r10 = r15.isLoadFromBigPhotoCache();	 Catch:{ all -> 0x00db }
        if (r10 == 0) goto L_0x002a;
    L_0x0017:
        r4 = r14.convertToFileScheme(r1);	 Catch:{ all -> 0x00db }
        if (r4 == 0) goto L_0x002a;
    L_0x001d:
        r1 = r4;
        r9 = 1;
        r10 = com.nostra13.universalimageloader.core.ImageLoader.getInstance();	 Catch:{ all -> 0x00db }
        r12 = 1;
        r11 = java.util.concurrent.TimeUnit.SECONDS;	 Catch:{ all -> 0x00db }
        r10.waitLockForUri(r1, r12, r11);	 Catch:{ all -> 0x00db }
    L_0x002a:
        r2 = 0;
        r10 = r15.isCacheBigPhoto();	 Catch:{ all -> 0x00db }
        if (r10 != 0) goto L_0x0033;
    L_0x0031:
        if (r9 == 0) goto L_0x003f;
    L_0x0033:
        r10 = com.miui.gallery.util.uil.PhotoBytesCache.getInstance();	 Catch:{ all -> 0x00db }
        r11 = com.nostra13.universalimageloader.utils.MemoryCacheUtils.generateBigPhotoKey(r1, r6);	 Catch:{ all -> 0x00db }
        r2 = r10.getData(r11);	 Catch:{ all -> 0x00db }
    L_0x003f:
        if (r2 == 0) goto L_0x0075;
    L_0x0041:
        r10 = r2.length;	 Catch:{ all -> 0x00db }
        if (r10 <= 0) goto L_0x0075;
    L_0x0044:
        if (r9 == 0) goto L_0x004e;
    L_0x0046:
        r10 = com.nostra13.universalimageloader.core.ImageLoader.TAG;	 Catch:{ all -> 0x00db }
        r11 = "try load from big photo cache successfully";
        android.util.Log.d(r10, r11);	 Catch:{ all -> 0x00db }
    L_0x004e:
        r8 = new java.io.ByteArrayInputStream;	 Catch:{ all -> 0x00db }
        r8.<init>(r2);	 Catch:{ all -> 0x00db }
        r10 = 0;
        r3 = r14.decodeInternal(r15, r8, r10);	 Catch:{ all -> 0x00e0 }
        r10 = com.nostra13.universalimageloader.core.ImageLoader.TAG;	 Catch:{ all -> 0x00e0 }
        r11 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00e0 }
        r11.<init>();	 Catch:{ all -> 0x00e0 }
        r12 = "decode from cache ";
        r11 = r11.append(r12);	 Catch:{ all -> 0x00e0 }
        r12 = r15.getImageUri();	 Catch:{ all -> 0x00e0 }
        r11 = r11.append(r12);	 Catch:{ all -> 0x00e0 }
        r11 = r11.toString();	 Catch:{ all -> 0x00e0 }
        android.util.Log.i(r10, r11);	 Catch:{ all -> 0x00e0 }
        r5 = r8;
    L_0x0075:
        if (r3 == 0) goto L_0x007d;
    L_0x0077:
        r10 = r3.isRecycled();	 Catch:{ all -> 0x00db }
        if (r10 == 0) goto L_0x00d6;
    L_0x007d:
        com.nostra13.universalimageloader.utils.IoUtils.closeSilently(r5);	 Catch:{ all -> 0x00db }
        r0 = 0;
        r10 = r15.isCacheBigPhoto();	 Catch:{ all -> 0x00db }
        if (r10 == 0) goto L_0x0095;
    L_0x0087:
        r10 = r15.isDecodeThumbnail();	 Catch:{ all -> 0x00db }
        if (r10 != 0) goto L_0x0095;
    L_0x008d:
        r10 = r15.getImageUri();	 Catch:{ all -> 0x00db }
        r0 = com.nostra13.universalimageloader.utils.MemoryCacheUtils.generateBigPhotoKey(r10, r6);	 Catch:{ all -> 0x00db }
    L_0x0095:
        r5 = r14.getImageStream(r15);	 Catch:{ all -> 0x00db }
        if (r5 != 0) goto L_0x00b3;
    L_0x009b:
        r10 = "No stream for image [%s]";
        r11 = 1;
        r11 = new java.lang.Object[r11];	 Catch:{ all -> 0x00db }
        r12 = 0;
        r13 = r15.getImageKey();	 Catch:{ all -> 0x00db }
        r11[r12] = r13;	 Catch:{ all -> 0x00db }
        com.nostra13.universalimageloader.utils.L.e(r10, r11);	 Catch:{ all -> 0x00db }
        r10 = 0;
        com.nostra13.universalimageloader.utils.IoUtils.closeSilently(r5);
    L_0x00ae:
        return r10;
    L_0x00af:
        r6 = 0;
        goto L_0x0011;
    L_0x00b3:
        r10 = 1;
        r3 = r14.decodeInternal(r15, r5, r10);	 Catch:{ all -> 0x00db }
        r10 = r15.isCacheBigPhoto();	 Catch:{ all -> 0x00db }
        if (r10 == 0) goto L_0x00d6;
    L_0x00be:
        r10 = r15.isDecodeThumbnail();	 Catch:{ all -> 0x00db }
        if (r10 != 0) goto L_0x00d6;
    L_0x00c4:
        r10 = 100;
        r2 = com.miui.gallery.util.BitmapUtils.compressToBytes(r3, r10);	 Catch:{ all -> 0x00db }
        if (r2 == 0) goto L_0x00d6;
    L_0x00cc:
        r10 = r2.length;	 Catch:{ all -> 0x00db }
        if (r10 <= 0) goto L_0x00d6;
    L_0x00cf:
        r10 = com.miui.gallery.util.uil.PhotoBytesCache.getInstance();	 Catch:{ all -> 0x00db }
        r10.putData(r0, r2);	 Catch:{ all -> 0x00db }
    L_0x00d6:
        com.nostra13.universalimageloader.utils.IoUtils.closeSilently(r5);
        r10 = r3;
        goto L_0x00ae;
    L_0x00db:
        r10 = move-exception;
    L_0x00dc:
        com.nostra13.universalimageloader.utils.IoUtils.closeSilently(r5);
        throw r10;
    L_0x00e0:
        r10 = move-exception;
        r5 = r8;
        goto L_0x00dc;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.core.decode.BaseImageDecoder.decode(com.nostra13.universalimageloader.core.decode.ImageDecodingInfo):android.graphics.Bitmap");
    }

    private Bitmap decodeInternal(ImageDecodingInfo decodingInfo, InputStream inImageStream, boolean considerOrientation) throws IOException {
        Bitmap decodedBitmap = null;
        ImageFileInfo imageInfo = null;
        InputStream imageStream = inImageStream;
        if (considerOrientation) {
            try {
                imageInfo = defineImageSizeAndRotation(imageStream, decodingInfo);
            } catch (Throwable th) {
                if (!(null == null || null.inBitmap == null)) {
                    L.e("decode (%1$s) (inSampleSize=%2$d) error use inBitmap (width=%3$d height=%4$d)", imageInfo.imageSize, Integer.valueOf(null.inSampleSize), Integer.valueOf(null.inBitmap.getWidth()), Integer.valueOf(null.inBitmap.getHeight()));
                    if (!null.inBitmap.isRecycled()) {
                        null.inBitmap.recycle();
                    }
                    null.inBitmap = null;
                    imageStream = resetStream(imageStream, decodingInfo);
                    decodedBitmap = BitmapFactory.decodeStream(imageStream, null, null);
                }
            }
        } else {
            imageInfo = defineImageSize(imageStream);
        }
        imageStream = resetStream(imageStream, decodingInfo);
        decodedBitmap = BitmapFactory.decodeStream(imageStream, null, prepareDecodingOptions(imageInfo.imageSize, decodingInfo));
        if (decodedBitmap == null) {
            L.e("Image can't be decoded [%s]", decodingInfo.getImageKey());
        } else {
            decodedBitmap = considerExactScaleAndOrientation(decodedBitmap, decodingInfo, imageInfo.exif.rotation, imageInfo.exif.flipHorizontal);
        }
        if (imageStream != inImageStream) {
            IoUtils.closeSilently(imageStream);
        }
        return decodedBitmap;
    }

    private String convertToFileScheme(String uri) {
        Scheme scheme = Scheme.ofUri(uri);
        if (scheme == Scheme.FILE) {
            return uri;
        }
        if (scheme == Scheme.CONTENT) {
            String filePath = MediaStoreUtils.getMediaFilePath(uri);
            if (!TextUtils.isEmpty(filePath)) {
                return Scheme.FILE.wrap(filePath);
            }
        }
        return null;
    }

    protected InputStream getImageStream(ImageDecodingInfo decodingInfo) throws IOException {
        return decodingInfo.getDownloader().getStream(decodingInfo.getImageUri(), decodingInfo.getExtraForDownloader());
    }

    protected ImageFileInfo defineImageSize(InputStream imageStream) {
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(imageStream, null, options);
        ExifInfo exif = new ExifInfo();
        return new ImageFileInfo(new ImageSize(options.outWidth, options.outHeight, exif.rotation), exif);
    }

    protected ImageFileInfo defineImageSizeAndRotation(InputStream imageStream, ImageDecodingInfo decodingInfo) throws IOException {
        ExifInfo exif;
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(imageStream, null, options);
        String imageUri = decodingInfo.getImageUri();
        if (decodingInfo.shouldConsiderExifParams() && canDefineExifParams(imageUri, options.outMimeType)) {
            exif = defineExifOrientation(decodingInfo);
        } else {
            exif = new ExifInfo();
        }
        return new ImageFileInfo(new ImageSize(options.outWidth, options.outHeight, exif.rotation), exif);
    }

    private boolean canDefineExifParams(String imageUri, String mimeType) {
        return "image/jpeg".equalsIgnoreCase(mimeType);
    }

    private boolean canDefineExifFromPath(ImageDecodingInfo decodingInfo) {
        return Scheme.ofUri(decodingInfo.getImageUri()) == Scheme.FILE;
    }

    protected ExifInfo defineExifOrientation(ImageDecodingInfo decodingInfo) {
        ExifInfo canDefineExifFromPath = canDefineExifFromPath(decodingInfo);
        if (canDefineExifFromPath != null) {
            byte[] secretKey = (!decodingInfo.isSecretImage() || decodingInfo.getSecretKey() == null) ? null : decodingInfo.getSecretKey();
            return defineExifOrientation(Scheme.FILE.crop(decodingInfo.getImageUri()), secretKey);
        }
        InputStream stream = null;
        try {
            stream = getImageStream(decodingInfo);
            if (stream != null) {
                canDefineExifFromPath = defineExifOrientation(stream);
                return canDefineExifFromPath;
            }
            IoUtils.closeSilently(stream);
            return new ExifInfo();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            IoUtils.closeSilently(stream);
        }
    }

    private ExifInfo defineExifOrientation(String path, byte[] secretKey) {
        com.miui.gallery.util.ExifUtil.ExifInfo exifInfo = ExifUtil.parseRotationInfo(path, secretKey);
        if (exifInfo != null) {
            return new ExifInfo(exifInfo.rotation, exifInfo.flip, exifInfo.exifOrientation);
        }
        return new ExifInfo();
    }

    private ExifInfo defineExifOrientation(InputStream stream) {
        try {
            ExifInterface exif = new ExifInterface();
            exif.readExif(stream);
            Integer exifOrientation = exif.getTagIntValue(ExifInterface.TAG_ORIENTATION);
            return packageExifInfo(exifOrientation == null ? 1 : exifOrientation.intValue());
        } catch (Exception e) {
            L.w("Can't read EXIF tags from stream", new Object[0]);
            return new ExifInfo();
        }
    }

    /* JADX WARNING: Missing block: B:3:0x000a, code:
            return new com.nostra13.universalimageloader.core.decode.BaseImageDecoder.ExifInfo(r1, r0, r4);
     */
    /* JADX WARNING: Missing block: B:5:0x000c, code:
            r1 = 0;
     */
    /* JADX WARNING: Missing block: B:7:0x000f, code:
            r1 = 90;
     */
    /* JADX WARNING: Missing block: B:9:0x0013, code:
            r1 = com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_180;
     */
    /* JADX WARNING: Missing block: B:11:0x0017, code:
            r1 = com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_270;
     */
    private com.nostra13.universalimageloader.core.decode.BaseImageDecoder.ExifInfo packageExifInfo(int r4) {
        /*
        r3 = this;
        r1 = 0;
        r0 = 0;
        switch(r4) {
            case 1: goto L_0x000c;
            case 2: goto L_0x000b;
            case 3: goto L_0x0013;
            case 4: goto L_0x0012;
            case 5: goto L_0x0016;
            case 6: goto L_0x000f;
            case 7: goto L_0x000e;
            case 8: goto L_0x0017;
            default: goto L_0x0005;
        };
    L_0x0005:
        r2 = new com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ExifInfo;
        r2.<init>(r1, r0, r4);
        return r2;
    L_0x000b:
        r0 = 1;
    L_0x000c:
        r1 = 0;
        goto L_0x0005;
    L_0x000e:
        r0 = 1;
    L_0x000f:
        r1 = 90;
        goto L_0x0005;
    L_0x0012:
        r0 = 1;
    L_0x0013:
        r1 = 180; // 0xb4 float:2.52E-43 double:8.9E-322;
        goto L_0x0005;
    L_0x0016:
        r0 = 1;
    L_0x0017:
        r1 = 270; // 0x10e float:3.78E-43 double:1.334E-321;
        goto L_0x0005;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.core.decode.BaseImageDecoder.packageExifInfo(int):com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ExifInfo");
    }

    private boolean usePowerOf2(ImageScaleType scaleType) {
        return scaleType == ImageScaleType.IN_SAMPLE_POWER_OF_2 || scaleType == ImageScaleType.EXACTLY || scaleType == ImageScaleType.EXACTLY_STRETCHED;
    }

    protected Options prepareDecodingOptions(ImageSize imageSize, ImageDecodingInfo decodingInfo) {
        int scale;
        ImageScaleType scaleType = decodingInfo.getImageScaleType();
        if (scaleType == ImageScaleType.NONE) {
            scale = 1;
        } else if (scaleType == ImageScaleType.NONE_SAFE) {
            scale = ImageSizeUtils.computeMinImageSampleSize(imageSize, decodingInfo.getDecodingOptions().inPreferredConfig);
        } else {
            scale = ImageSizeUtils.computeImageSampleSize(imageSize, decodingInfo.getTargetSize(), decodingInfo.getViewScaleType(), usePowerOf2(scaleType));
        }
        if (scale > 1 && this.loggingEnabled) {
            L.d("Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]", imageSize, imageSize.scaleDown(scale), Integer.valueOf(scale), decodingInfo.getImageKey());
        }
        Options decodingOptions = decodingInfo.getDecodingOptions();
        decodingOptions.inSampleSize = scale;
        if (decodingInfo.getInBitmapCache() != null) {
            Options options = new Options();
            options.outWidth = imageSize.getWidth();
            options.outHeight = imageSize.getHeight();
            options.inSampleSize = decodingOptions.inSampleSize;
            options.inPreferredConfig = decodingOptions.inPreferredConfig;
            decodingOptions.inBitmap = decodingInfo.getInBitmapCache().get(options);
            decodingOptions.inMutable = true;
        }
        return decodingOptions;
    }

    protected InputStream resetStream(InputStream imageStream, ImageDecodingInfo decodingInfo) throws IOException {
        if (imageStream.markSupported()) {
            try {
                imageStream.reset();
                return imageStream;
            } catch (IOException e) {
            }
        }
        IoUtils.closeSilently(imageStream);
        return getImageStream(decodingInfo);
    }

    protected Bitmap considerExactScaleAndOrientation(Bitmap subsampledBitmap, ImageDecodingInfo decodingInfo, int rotation, boolean flipHorizontal) {
        Matrix m = new Matrix();
        boolean shouldMatrix = false;
        ImageScaleType scaleType = decodingInfo.getImageScaleType();
        if (scaleType == ImageScaleType.EXACTLY || scaleType == ImageScaleType.EXACTLY_STRETCHED) {
            float scale = ImageSizeUtils.computeImageScale(new ImageSize(subsampledBitmap.getWidth(), subsampledBitmap.getHeight(), rotation), decodingInfo.getTargetSize(), decodingInfo.getViewScaleType(), scaleType == ImageScaleType.EXACTLY_STRETCHED);
            if (Float.compare(scale, 1.0f) != 0) {
                m.setScale(scale, scale);
                shouldMatrix = true;
                if (this.loggingEnabled) {
                    L.d("Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]", srcSize, srcSize.scale(scale), Float.valueOf(scale), decodingInfo.getImageKey());
                }
            }
        }
        if (flipHorizontal) {
            m.postScale(-1.0f, 1.0f);
            shouldMatrix = true;
            if (this.loggingEnabled) {
                L.d("Flip image horizontally [%s]", decodingInfo.getImageKey());
            }
        }
        if (rotation != 0) {
            m.postRotate((float) rotation);
            shouldMatrix = true;
            if (this.loggingEnabled) {
                L.d("Rotate image on %1$d° [%2$s]", Integer.valueOf(rotation), decodingInfo.getImageKey());
            }
        }
        if (!shouldMatrix) {
            return subsampledBitmap;
        }
        Bitmap finalBitmap = Bitmap.createBitmap(subsampledBitmap, 0, 0, subsampledBitmap.getWidth(), subsampledBitmap.getHeight(), m, true);
        if (finalBitmap == subsampledBitmap) {
            return finalBitmap;
        }
        if (decodingInfo.getInBitmapCache() != null) {
            decodingInfo.getInBitmapCache().put(subsampledBitmap);
            return finalBitmap;
        }
        subsampledBitmap.recycle();
        return finalBitmap;
    }
}
