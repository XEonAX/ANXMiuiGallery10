package com.nexstreaming.app.common.nexasset.overlay.impl;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.RectF;
import android.graphics.drawable.PictureDrawable;
import android.util.Log;
import android.util.LruCache;
import com.larvalabs.svgandroid.SVGParser;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.nexasset.overlay.AwakeAsset;
import com.nexstreaming.app.common.nexasset.overlay.OverlaySpec;
import com.nexstreaming.app.common.nexasset.overlay.OverlaySpec.Frame;
import com.nexstreaming.app.common.nexasset.overlay.OverlaySpec.Layer;
import com.nexstreaming.app.common.util.b;
import com.nexstreaming.app.common.util.i;
import com.nexstreaming.kminternal.nexvideoeditor.LayerRenderer;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

public class AnimatedOverlayAsset extends AbstractOverlayAsset {
    private static final String LOG_TAG = "AnimOverlayAsset";
    private static final int MAX_TEX_SIZE = 2000;
    private String baseFile;
    private OverlaySpec overlaySpec;
    private AssetPackageReader reader;
    private float vectorScale;

    private static class AwakeAssetImpl implements AwakeAsset {
        private final String baseFile;
        private LruCache<String, Bitmap> bitmapCache = new LruCache<String, Bitmap>(41943040) {
            protected int sizeOf(String str, Bitmap bitmap) {
                return bitmap.getByteCount();
            }
        };
        private final RectF bounds;
        private final OverlaySpec overlaySpec;
        private final AssetPackageReader reader;
        private final float vectorScale;

        AwakeAssetImpl(RectF rectF, OverlaySpec overlaySpec, AssetPackageReader assetPackageReader, String str, float f) {
            this.bounds = new RectF(rectF);
            this.overlaySpec = overlaySpec;
            this.reader = assetPackageReader;
            this.baseFile = str;
            this.vectorScale = f;
        }

        public void onAsleep(LayerRenderer layerRenderer) {
            this.bitmapCache.evictAll();
            b.a(this.reader);
        }

        /* JADX WARNING: Removed duplicated region for block: B:39:0x0090 A:{SYNTHETIC} */
        /* JADX WARNING: Removed duplicated region for block: B:24:0x007c  */
        public void onRender(com.nexstreaming.kminternal.nexvideoeditor.LayerRenderer r13, com.nexstreaming.app.common.nexasset.overlay.OverlayMotion r14, int r15, int r16) {
            /*
            r12 = this;
            r0 = r12.overlaySpec;
            if (r0 != 0) goto L_0x0005;
        L_0x0004:
            return;
        L_0x0005:
            r0 = r13.g();
            r0 = r0 - r15;
            r1 = r12.overlaySpec;
            r1 = r1.fps;
            r0 = r0 * r1;
            r6 = r0 / 1000;
            r0 = r12.overlaySpec;
            r0 = r0.layers;
            r8 = r0.size();
            r0 = 0;
            r7 = r0;
        L_0x001b:
            if (r7 >= r8) goto L_0x0004;
        L_0x001d:
            r0 = r12.overlaySpec;
            r0 = r0.layers;
            r0 = r0.get(r7);
            r0 = (com.nexstreaming.app.common.nexasset.overlay.OverlaySpec.Layer) r0;
            r1 = r0.iterationCount;
            if (r1 < 0) goto L_0x0094;
        L_0x002b:
            r1 = r0.iterationCount;
            r2 = r0.duration;
            r1 = r1 * r2;
            r1 = r1 + -1;
            if (r6 <= r1) goto L_0x0094;
        L_0x0034:
            r1 = r0.iterationCount;
            r2 = r0.duration;
            r1 = r1 * r2;
            r1 = r1 + -1;
        L_0x003b:
            r2 = r0.duration;
            r2 = r1 / r2;
            r2 = r2 % 2;
            if (r2 != 0) goto L_0x0096;
        L_0x0043:
            r2 = 1;
        L_0x0044:
            r3 = r0.duration;
            r1 = r1 % r3;
            r3 = com.nexstreaming.app.common.nexasset.overlay.impl.AnimatedOverlayAsset.AnonymousClass1.$SwitchMap$com$nexstreaming$app$common$nexasset$overlay$OverlaySpec$AnimDirection;
            r4 = r0.direction;
            r4 = r4.ordinal();
            r3 = r3[r4];
            switch(r3) {
                case 1: goto L_0x0098;
                case 2: goto L_0x009a;
                case 3: goto L_0x00a0;
                case 4: goto L_0x00a8;
                default: goto L_0x0054;
            };
        L_0x0054:
            r2 = r1;
        L_0x0055:
            r1 = r0.frames;
            r5 = r1.size();
            r4 = 0;
            r3 = 0;
            r1 = 0;
            r11 = r1;
            r1 = r4;
            r4 = r3;
            r3 = r11;
        L_0x0062:
            if (r3 >= r5) goto L_0x006e;
        L_0x0064:
            r1 = r0.frames;
            r1 = r1.get(r3);
            r1 = (com.nexstreaming.app.common.nexasset.overlay.OverlaySpec.Frame) r1;
            if (r2 > r4) goto L_0x00b0;
        L_0x006e:
            if (r1 == 0) goto L_0x0090;
        L_0x0070:
            r0 = r1.blank;
            if (r0 != 0) goto L_0x0090;
        L_0x0074:
            r0 = r1.src;
            r1 = r12.getImage(r0);
            if (r1 == 0) goto L_0x0090;
        L_0x007c:
            r0 = r12.bounds;
            r2 = r0.left;
            r0 = r12.bounds;
            r3 = r0.top;
            r0 = r12.bounds;
            r4 = r0.right;
            r0 = r12.bounds;
            r5 = r0.bottom;
            r0 = r13;
            r0.a(r1, r2, r3, r4, r5);
        L_0x0090:
            r0 = r7 + 1;
            r7 = r0;
            goto L_0x001b;
        L_0x0094:
            r1 = r6;
            goto L_0x003b;
        L_0x0096:
            r2 = 0;
            goto L_0x0044;
        L_0x0098:
            r2 = r1;
            goto L_0x0055;
        L_0x009a:
            r2 = r0.duration;
            r1 = r2 - r1;
            r2 = r1;
            goto L_0x0055;
        L_0x00a0:
            if (r2 != 0) goto L_0x0054;
        L_0x00a2:
            r2 = r0.duration;
            r1 = r2 - r1;
            r2 = r1;
            goto L_0x0055;
        L_0x00a8:
            if (r2 == 0) goto L_0x0054;
        L_0x00aa:
            r2 = r0.duration;
            r1 = r2 - r1;
            r2 = r1;
            goto L_0x0055;
        L_0x00b0:
            r9 = 1;
            r10 = r1.hold;
            r9 = java.lang.Math.max(r9, r10);
            r4 = r4 + r9;
            r3 = r3 + 1;
            goto L_0x0062;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.app.common.nexasset.overlay.impl.AnimatedOverlayAsset.AwakeAssetImpl.onRender(com.nexstreaming.kminternal.nexvideoeditor.LayerRenderer, com.nexstreaming.app.common.nexasset.overlay.OverlayMotion, int, int):void");
        }

        public boolean needRendererReawakeOnEditResize() {
            return true;
        }

        public boolean onRefresh(LayerRenderer layerRenderer, RectF rectF, String str) {
            return false;
        }

        private Bitmap getImage(String str) {
            if (this.reader == null) {
                return null;
            }
            Bitmap bitmap = (Bitmap) this.bitmapCache.get(str);
            if (bitmap != null) {
                return bitmap;
            }
            bitmap = loadImage(str);
            if (bitmap == null) {
                return bitmap;
            }
            this.bitmapCache.put(str, bitmap);
            return bitmap;
        }

        private Bitmap loadImage(String str) {
            Closeable a;
            Throwable e;
            Throwable th;
            Bitmap bitmap = null;
            String b = i.b(this.baseFile, str);
            String a2 = i.a(str);
            try {
                a = this.reader.a(b);
                try {
                    if (a2.equalsIgnoreCase("svg")) {
                        bitmap = loadSVG(a);
                    } else {
                        bitmap = loadBitmap(a);
                    }
                    b.a(a);
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (IOException e3) {
                e = e3;
                a = bitmap;
            } catch (Throwable e4) {
                a = bitmap;
                th = e4;
                b.a(a);
                throw th;
            }
            return bitmap;
            try {
                Log.e(AnimatedOverlayAsset.LOG_TAG, "Error reading frame image", e4);
                b.a(a);
                return bitmap;
            } catch (Throwable th2) {
                th = th2;
                b.a(a);
                throw th;
            }
        }

        private Bitmap loadBitmap(InputStream inputStream) {
            return BitmapFactory.decodeStream(inputStream);
        }

        private Bitmap loadSVG(InputStream inputStream) {
            PictureDrawable a = SVGParser.a(inputStream).a();
            Bitmap createBitmap = Bitmap.createBitmap((int) Math.floor((double) (((float) this.overlaySpec.width) * this.vectorScale)), (int) Math.floor((double) (((float) this.overlaySpec.height) * this.vectorScale)), Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            a.setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
            a.draw(canvas);
            return createBitmap;
        }
    }

    public AnimatedOverlayAsset(f fVar) throws IOException, XmlPullParserException {
        Throwable th;
        Closeable closeable = null;
        super(fVar);
        Closeable assetPackageReader;
        Closeable a;
        try {
            assetPackageReader = getAssetPackageReader();
            try {
                a = assetPackageReader.a(fVar.getFilePath());
                try {
                    this.overlaySpec = OverlaySpec.fromInputStream(a);
                    if ((this.overlaySpec.width <= 0 || this.overlaySpec.height <= 0) && this.overlaySpec.layers != null && this.overlaySpec.layers.size() > 0) {
                        Layer layer = (Layer) this.overlaySpec.layers.get(0);
                        if (layer.frames != null && layer.frames.size() > 0) {
                            Frame frame = (Frame) layer.frames.get(0);
                            if (!frame.blank) {
                                closeable = assetPackageReader.a(frame.src);
                                Picture b = SVGParser.a((InputStream) closeable).b();
                                this.overlaySpec.width = b.getWidth();
                                this.overlaySpec.height = b.getHeight();
                            }
                        }
                    }
                    if (this.overlaySpec.width <= 0 || this.overlaySpec.height <= 0) {
                        this.overlaySpec.width = 100;
                        this.overlaySpec.height = 100;
                    }
                    b.a(closeable);
                    b.a(a);
                    b.a(assetPackageReader);
                } catch (Throwable th2) {
                    th = th2;
                    b.a(null);
                    b.a(a);
                    b.a(assetPackageReader);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                a = null;
            }
        } catch (Throwable th4) {
            th = th4;
            assetPackageReader = null;
            a = null;
        }
    }

    public int getIntrinsicWidth() {
        return this.overlaySpec.width;
    }

    public int getIntrinsicHeight() {
        return this.overlaySpec.height;
    }

    public int getDefaultDuration() {
        if (this.overlaySpec.duration > 0) {
            return (this.overlaySpec.duration * 1000) / this.overlaySpec.fps;
        }
        int i = 0;
        for (Layer layer : this.overlaySpec.layers) {
            if (layer.iterationCount < 0) {
                return 0;
            }
            i = Math.max(i, ((layer.iterationCount * layer.duration) * 1000) / this.overlaySpec.fps);
        }
        if (i > 30000) {
            return 0;
        }
        if (i < 1000) {
            return 1000;
        }
        return i;
    }

    public AwakeAsset onAwake(LayerRenderer layerRenderer, RectF rectF, String str, Map<String, String> map) {
        AssetPackageReader assetPackageReader = null;
        try {
            assetPackageReader = getAssetPackageReader();
        } catch (Throwable e) {
            Log.e(LOG_TAG, "Error getting package reader", e);
        }
        float max = (float) (2000 / Math.max(this.overlaySpec.width, this.overlaySpec.height));
        return new AwakeAssetImpl(rectF, this.overlaySpec, assetPackageReader, getItemInfo().getFilePath(), 1.0f);
    }
}
