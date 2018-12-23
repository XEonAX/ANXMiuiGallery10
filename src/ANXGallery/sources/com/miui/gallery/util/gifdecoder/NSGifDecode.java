package com.miui.gallery.util.gifdecoder;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Handler;
import android.os.HandlerThread;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MiscUtil;
import com.nostra13.universalimageloader.utils.ImageSizeUtils;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class NSGifDecode implements Runnable {
    private DecodeRunnable mDecodeRunnable;
    private Bitmap mFrame = null;
    private Handler mHandler;
    private volatile GifFrameUpdateListener mListener = null;
    private final Object mLock = new Object();
    private NSGifGen mNSGif = null;
    private volatile boolean mQuit = false;

    public interface GifFrameUpdateListener {
        void onUpdateGifFrame(Bitmap bitmap);
    }

    private interface NSGifGen {
        NSGif gen();
    }

    private class DecodeRunnable implements Runnable {
        private int mIndex;
        private NSGif mNSGif;

        public DecodeRunnable(NSGif nsgif, int index) {
            this.mNSGif = nsgif;
            this.mIndex = index;
        }

        public void run() {
            if (!NSGifDecode.this.mQuit) {
                long end = System.currentTimeMillis() + ((long) Math.max(20, this.mNSGif.getFrameDelay(this.mIndex)));
                if (NSGifDecode.this.mQuit || !this.mNSGif.writeTo(NSGifDecode.this.mFrame)) {
                    Log.e("NSGifDecode", "write frame " + this.mIndex + " failed");
                    return;
                }
                GifFrameUpdateListener listener = NSGifDecode.this.mListener;
                if (listener != null) {
                    listener.onUpdateGifFrame(NSGifDecode.this.mFrame);
                }
                this.mIndex++;
                if (this.mIndex >= this.mNSGif.getFrameCount()) {
                    this.mIndex = 0;
                }
                if (!NSGifDecode.this.mQuit && this.mNSGif.decodeFrame(this.mIndex) && !NSGifDecode.this.mQuit) {
                    synchronized (NSGifDecode.this.mLock) {
                        if (NSGifDecode.this.mHandler != null) {
                            long now = System.currentTimeMillis();
                            if (now < end) {
                                NSGifDecode.this.mHandler.postDelayed(this, end - now);
                            } else {
                                NSGifDecode.this.mHandler.post(this);
                            }
                        }
                    }
                }
            }
        }
    }

    private static int convertShort(byte[] data, int offset) {
        return (data[offset] & 255) | ((data[offset + 1] & 255) << 8);
    }

    private static boolean checkGif(InputStream is, byte[] buffer, int[] wh) throws IOException {
        if (is.read(buffer, 0, 10) != 10) {
            return false;
        }
        String tag = new String(buffer, 0, 6);
        if ("GIF87a".equals(tag) || "GIF89a".equals(tag)) {
            int width = convertShort(buffer, 6);
            if (wh != null && wh.length > 0) {
                wh[0] = width;
            }
            if (width <= 0 || width > ImageSizeUtils.getMaxTextureSize()) {
                Log.d("NSGifDecode", "invalid width: " + width);
                return false;
            }
            int height = convertShort(buffer, 8);
            if (wh != null && wh.length > 1) {
                wh[1] = height;
            }
            if (height > 0 && height <= ImageSizeUtils.getMaxTextureSize()) {
                return true;
            }
            Log.d("NSGifDecode", "invalid height: " + height);
            return false;
        }
        Log.d("NSGifDecode", "is not gif, tag: " + tag);
        return false;
    }

    public static NSGifDecode create(final String path) {
        Object e;
        Throwable th;
        NSGifDecode nsgif = null;
        int[] wh = new int[2];
        FileInputStream fis = null;
        try {
            FileInputStream fis2 = new FileInputStream(path);
            try {
                if (checkGif(fis2, new byte[10], wh)) {
                    MiscUtil.closeSilently(fis2);
                    nsgif = create(new NSGifGen() {
                        public NSGif gen() {
                            return NSGif.create(path);
                        }
                    });
                    if (nsgif != null) {
                        try {
                            nsgif.mFrame = Bitmap.createBitmap(wh[0], wh[1], Config.ARGB_8888);
                        } catch (OutOfMemoryError e2) {
                        }
                    }
                    fis = fis2;
                } else {
                    MiscUtil.closeSilently(fis2);
                    fis = fis2;
                }
            } catch (IOException e3) {
                e = e3;
                fis = fis2;
            } catch (Throwable th2) {
                th = th2;
                fis = fis2;
                MiscUtil.closeSilently(fis);
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
            try {
                Log.d("NSGifDecode", "read gif file", e);
                MiscUtil.closeSilently(fis);
                return nsgif;
            } catch (Throwable th3) {
                th = th3;
                MiscUtil.closeSilently(fis);
                throw th;
            }
        }
        return nsgif;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x003c  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0037  */
    public static com.miui.gallery.util.gifdecoder.NSGifDecode create(java.io.FileDescriptor r13, byte[] r14) {
        /*
        r9 = 0;
        r4 = 0;
        r10 = 2;
        r8 = new int[r10];
        r5 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x004d }
        r5.<init>(r13);	 Catch:{ Exception -> 0x004d }
        r10 = r5.available();	 Catch:{ Exception -> 0x0080, all -> 0x007d }
        r11 = 5242880; // 0x500000 float:7.34684E-39 double:2.590327E-317;
        if (r10 <= r11) goto L_0x001f;
    L_0x0012:
        r10 = "NSGifDecode";
        r11 = "file is too large";
        com.miui.gallery.util.Log.d(r10, r11);	 Catch:{ Exception -> 0x0080, all -> 0x007d }
        com.miui.gallery.util.MiscUtil.closeSilently(r5);
        r4 = r5;
        r6 = r9;
    L_0x001e:
        return r6;
    L_0x001f:
        if (r14 == 0) goto L_0x0085;
    L_0x0021:
        r10 = r14.length;	 Catch:{ Exception -> 0x0080, all -> 0x007d }
        if (r10 <= 0) goto L_0x0085;
    L_0x0024:
        r4 = com.miui.gallery.util.uil.CryptUtil.getDecryptCipherInputStream(r5, r14);	 Catch:{ Exception -> 0x0080, all -> 0x007d }
    L_0x0028:
        r0 = new java.io.ByteArrayOutputStream;	 Catch:{ Exception -> 0x004d }
        r0.<init>();	 Catch:{ Exception -> 0x004d }
        r10 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r1 = new byte[r10];	 Catch:{ Exception -> 0x004d }
        r10 = checkGif(r4, r1, r8);	 Catch:{ Exception -> 0x004d }
        if (r10 != 0) goto L_0x003c;
    L_0x0037:
        com.miui.gallery.util.MiscUtil.closeSilently(r4);
        r6 = r9;
        goto L_0x001e;
    L_0x003c:
        r10 = 0;
        r11 = 10;
        r0.write(r1, r10, r11);	 Catch:{ Exception -> 0x004d }
    L_0x0042:
        r7 = r4.read(r1);	 Catch:{ Exception -> 0x004d }
        if (r7 < 0) goto L_0x005a;
    L_0x0048:
        r10 = 0;
        r0.write(r1, r10, r7);	 Catch:{ Exception -> 0x004d }
        goto L_0x0042;
    L_0x004d:
        r3 = move-exception;
    L_0x004e:
        r10 = "NSGifDecode";
        r11 = "load gif data";
        com.miui.gallery.util.Log.d(r10, r11, r3);	 Catch:{ all -> 0x0078 }
        com.miui.gallery.util.MiscUtil.closeSilently(r4);
        r6 = r9;
        goto L_0x001e;
    L_0x005a:
        r2 = r0.toByteArray();	 Catch:{ Exception -> 0x004d }
        r10 = 0;
        r11 = r2.length;	 Catch:{ Exception -> 0x004d }
        r6 = create(r2, r10, r11);	 Catch:{ Exception -> 0x004d }
        if (r6 == 0) goto L_0x0074;
    L_0x0066:
        r10 = 0;
        r10 = r8[r10];	 Catch:{ OutOfMemoryError -> 0x0083 }
        r11 = 1;
        r11 = r8[r11];	 Catch:{ OutOfMemoryError -> 0x0083 }
        r12 = android.graphics.Bitmap.Config.ARGB_8888;	 Catch:{ OutOfMemoryError -> 0x0083 }
        r10 = android.graphics.Bitmap.createBitmap(r10, r11, r12);	 Catch:{ OutOfMemoryError -> 0x0083 }
        r6.mFrame = r10;	 Catch:{ OutOfMemoryError -> 0x0083 }
    L_0x0074:
        com.miui.gallery.util.MiscUtil.closeSilently(r4);
        goto L_0x001e;
    L_0x0078:
        r9 = move-exception;
    L_0x0079:
        com.miui.gallery.util.MiscUtil.closeSilently(r4);
        throw r9;
    L_0x007d:
        r9 = move-exception;
        r4 = r5;
        goto L_0x0079;
    L_0x0080:
        r3 = move-exception;
        r4 = r5;
        goto L_0x004e;
    L_0x0083:
        r9 = move-exception;
        goto L_0x0074;
    L_0x0085:
        r4 = r5;
        goto L_0x0028;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.gallery.util.gifdecoder.NSGifDecode.create(java.io.FileDescriptor, byte[]):com.miui.gallery.util.gifdecoder.NSGifDecode");
    }

    private static NSGifDecode create(final byte[] data, final int offset, final int length) {
        return create(new NSGifGen() {
            public NSGif gen() {
                return NSGif.create(data, offset, length);
            }
        });
    }

    private static NSGifDecode create(NSGifGen nsGifgen) {
        if (nsGifgen != null) {
            try {
                NSGifDecode decode = new NSGifDecode();
                decode.mNSGif = nsGifgen;
                return decode;
            } catch (OutOfMemoryError e) {
            }
        }
        return null;
    }

    public void cancel() {
        this.mQuit = true;
        synchronized (this.mLock) {
            if (this.mHandler != null) {
                this.mHandler.removeCallbacks(this.mDecodeRunnable);
                this.mHandler.getLooper().quitSafely();
                this.mDecodeRunnable = null;
                this.mHandler = null;
            }
        }
    }

    public void run() {
        try {
            if (this.mNSGif != null) {
                NSGif nsgif = this.mNSGif.gen();
                this.mNSGif = null;
                if (nsgif != null) {
                    if (this.mFrame == null) {
                        try {
                            this.mFrame = Bitmap.createBitmap(nsgif.getWidth(), nsgif.getHeight(), Config.ARGB_8888);
                        } catch (Object e) {
                            Log.e("NSGifDecode", "OOM on create bitmap", e);
                            return;
                        }
                    }
                    if (nsgif.getFrameCount() == 1) {
                        GifFrameUpdateListener listener = this.mListener;
                        if (nsgif.decodeFrame(0) && nsgif.writeTo(this.mFrame) && listener != null) {
                            listener.onUpdateGifFrame(this.mFrame);
                            return;
                        }
                        return;
                    }
                    if (!nsgif.decodeFrame(0)) {
                        this.mQuit = true;
                    }
                    if (!this.mQuit) {
                        synchronized (this.mLock) {
                            HandlerThread handlerThread = new HandlerThread("NSGifDecode");
                            handlerThread.start();
                            this.mHandler = new Handler(handlerThread.getLooper());
                            this.mDecodeRunnable = new DecodeRunnable(nsgif, 0);
                            this.mHandler.post(this.mDecodeRunnable);
                        }
                    }
                }
            }
        } catch (Throwable e2) {
            Log.w("NSGifDecode", e2);
        }
    }

    public void setListener(GifFrameUpdateListener listener) {
        this.mListener = listener;
    }
}
