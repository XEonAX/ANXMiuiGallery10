package com.miui.gallery.util;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import java.lang.ref.SoftReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public abstract class ReusedBitmapCache {
    private Set<SoftReference<Bitmap>> mReuseBits = new HashSet();

    protected abstract Config getConfig();

    protected abstract int getMaxCount();

    public synchronized void put(Bitmap bitmap) {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                if (!isInBitmapSupport()) {
                    bitmap.recycle();
                } else if (!needMutable() || bitmap.isMutable()) {
                    trim(bitmap);
                    if (this.mReuseBits.size() < getMaxCount() || !needRecycle()) {
                        this.mReuseBits.add(new SoftReference(bitmap));
                        Log.i("ReusedBitmapCache", "put reused bitmap %s  %d", Integer.toHexString(System.identityHashCode(bitmap)), Integer.valueOf(this.mReuseBits.size()));
                    } else {
                        bitmap.recycle();
                    }
                } else {
                    bitmap.recycle();
                }
            }
        }
    }

    public synchronized Bitmap get(Options options) {
        Bitmap target;
        if (isInBitmapSupport()) {
            SoftReference<Bitmap> mostClosely = null;
            int mostCloselyCount = Integer.MAX_VALUE;
            Iterator<SoftReference<Bitmap>> iterator = this.mReuseBits.iterator();
            while (iterator.hasNext()) {
                SoftReference<Bitmap> temp = (SoftReference) iterator.next();
                Bitmap bit = (Bitmap) temp.get();
                if (bit == null || bit.isRecycled()) {
                    Log.i("ReusedBitmapCache", "soft reference is recycled");
                    iterator.remove();
                } else if (canUseForInBitmap(bit, options)) {
                    int alloc = bit.getAllocationByteCount();
                    if (!isSupportBytesCount()) {
                        mostClosely = temp;
                        break;
                    }
                    Log.i("ReusedBitmapCache", "can reused bitmap %s, size %d", Integer.toHexString(System.identityHashCode(bit)), Integer.valueOf(alloc));
                    if (alloc < mostCloselyCount) {
                        mostClosely = temp;
                        mostCloselyCount = alloc;
                    }
                } else {
                    continue;
                }
            }
            if (mostClosely != null) {
                target = (Bitmap) mostClosely.get();
            } else {
                target = null;
            }
            if (BitmapUtils.isValidate(target)) {
                Log.i("ReusedBitmapCache", "get reused bitmap %s, size %d", Integer.toHexString(System.identityHashCode(target)), Integer.valueOf(target.getAllocationByteCount()));
                this.mReuseBits.remove(mostClosely);
            } else {
                Log.i("ReusedBitmapCache", "no can used bitmap, count %d", Integer.valueOf(this.mReuseBits.size()));
                target = null;
            }
        } else {
            target = null;
        }
        return target;
    }

    private void trim(Bitmap insert) {
        Iterator<SoftReference<Bitmap>> iterator = this.mReuseBits.iterator();
        while (iterator.hasNext()) {
            Bitmap bit = (Bitmap) ((SoftReference) iterator.next()).get();
            if (bit == null || bit.isRecycled()) {
                iterator.remove();
            } else if (bit.getAllocationByteCount() < insert.getAllocationByteCount()) {
                iterator.remove();
            }
        }
    }

    protected boolean isSupportBytesCount() {
        return VERSION.SDK_INT >= 19;
    }

    protected boolean canUseForInBitmap(Bitmap bitmap, Options options) {
        if (isSupportBytesCount()) {
            int convertSampleSize = convertToPowerOf2(options.inSampleSize);
            if (((options.outWidth / convertSampleSize) * (options.outHeight / convertSampleSize)) * getBytesPerPixel(bitmap.getConfig()) <= bitmap.getAllocationByteCount()) {
                return true;
            }
            return false;
        } else if (bitmap.getWidth() == options.outWidth && bitmap.getHeight() == options.outHeight && options.inSampleSize == 1) {
            return true;
        } else {
            return false;
        }
    }

    protected int convertToPowerOf2(int inSampleSize) {
        int tarSampleSize = 1;
        while (tarSampleSize <= inSampleSize && tarSampleSize * 2 <= inSampleSize) {
            tarSampleSize *= 2;
        }
        return tarSampleSize;
    }

    public static int getBytesPerPixel(Config config) {
        if (config == Config.ARGB_8888) {
            return 4;
        }
        if (config == Config.RGB_565 || config == Config.ARGB_4444) {
            return 2;
        }
        if (config == Config.ALPHA_8) {
            return 1;
        }
        return 1;
    }

    protected boolean needMutable() {
        return true;
    }

    protected static boolean isInBitmapSupport() {
        return VERSION.SDK_INT >= 11;
    }

    public synchronized void clear() {
        Log.i("ReusedBitmapCache", "clear");
        for (SoftReference softReference : this.mReuseBits) {
            Bitmap bit = (Bitmap) softReference.get();
            if (!(bit == null || bit.isRecycled())) {
                bit.recycle();
            }
        }
        this.mReuseBits.clear();
    }

    protected boolean needRecycle() {
        return true;
    }
}
