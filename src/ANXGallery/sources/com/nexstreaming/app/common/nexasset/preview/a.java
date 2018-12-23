package com.nexstreaming.app.common.nexasset.preview;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.EGLConfigChooser;
import android.opengl.GLSurfaceView.Renderer;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View.MeasureSpec;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemType;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.kminternal.kinemaster.config.NexEditorDeviceProfile;
import com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader;
import com.nexstreaming.kminternal.nexvideoeditor.NexImageLoader.d;
import com.nexstreaming.kminternal.nexvideoeditor.NexThemeRenderer;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.opengles.GL10;

/* compiled from: AssetPreviewView */
public class a extends GLSurfaceView {
    private static final long FRAME_RATE = 30;
    private static final long FRAME_TIME = 33;
    private static String TAG = "NexThemePreviewView";
    private float mAspectRatio = 1.7777778f;
    private float mColor = 0.0f;
    private int m_absTime = 0;
    private c m_assetPackageManager;
    public boolean m_done = false;
    private f m_effect;
    private String m_effectOptions = null;
    private long m_effectTime = 2000;
    private long m_frameEnd;
    private long m_frameStart;
    private Handler m_handler = new Handler();
    private boolean m_isClipEffect;
    private boolean m_isRenderItem;
    private NexThemeRenderer m_nexThemeRenderer = null;
    private d m_overlayPathResolver = null;
    private long m_pauseTime = 1000;
    private Object m_renderLock = new Object();
    private f m_setEffect;
    private String m_setEffectOptions = null;
    private long m_setEffectTime = -1;
    private boolean m_showOnRender = false;
    private long m_startTime;
    private boolean m_swapPlaceholders = false;

    /* compiled from: AssetPreviewView */
    private class a implements Renderer {
        private a() {
        }

        /* synthetic */ a(a aVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        /* JADX WARNING: Removed duplicated region for block: B:20:0x00e7 A:{SYNTHETIC} */
        /* JADX WARNING: Removed duplicated region for block: B:63:0x02b3  */
        /* JADX WARNING: Removed duplicated region for block: B:90:? A:{SYNTHETIC, RETURN} */
        /* JADX WARNING: Removed duplicated region for block: B:65:0x02cf  */
        public void onDrawFrame(javax.microedition.khronos.opengles.GL10 r19) {
            /*
            r18 = this;
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.miliTime();
            r2.m_frameEnd = r4;
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r2 = r2.m_frameStart;
            r4 = 0;
            r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
            if (r2 != 0) goto L_0x0028;
        L_0x0019:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r0 = r18;
            r3 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r4 = r3.m_frameEnd;
            r2.m_frameStart = r4;
        L_0x0028:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r2 = r2.m_frameEnd;
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r4 = r4.m_frameStart;
            r2 = r2 - r4;
            r4 = 33;
            r2 = r4 - r2;
            r4 = 5;
            r2 = r2 - r4;
            r4 = 5;
            r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
            if (r4 <= 0) goto L_0x0049;
        L_0x0046:
            java.lang.Thread.sleep(r2);	 Catch:{ InterruptedException -> 0x02fd }
        L_0x0049:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r0 = r18;
            r3 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r4 = r3.m_frameStart;
            r6 = 33;
            r4 = r4 + r6;
            r2.m_frameStart = r4;
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r0 = r18;
            r3 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r3 = r3.mColor;
            r4 = 1000593162; // 0x3ba3d70a float:0.005 double:4.94358707E-315;
            r3 = r3 + r4;
            r2.mColor = r3;
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r2 = r2.mColor;
            r3 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
            r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1));
            if (r2 <= 0) goto L_0x0084;
        L_0x007c:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r3 = 0;
            r2.mColor = r3;
        L_0x0084:
            r2 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
            r3 = 1045220557; // 0x3e4ccccd float:0.2 double:5.164075695E-315;
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r4 = r4.mColor;
            r5 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
            r0 = r19;
            r0.glClearColor(r2, r3, r4, r5);
            r2 = 16640; // 0x4100 float:2.3318E-41 double:8.2213E-320;
            r0 = r19;
            r0.glClear(r2);
            r4 = -1;
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r2 = r2.m_effectTime;
            r6 = 0;
            r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1));
            if (r2 != 0) goto L_0x0307;
        L_0x00af:
            r2 = 0;
            r12 = r4;
        L_0x00b1:
            r3 = 0;
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r4 = r4.m_swapPlaceholders;
            if (r2 == r4) goto L_0x0351;
        L_0x00bc:
            r3 = 1;
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r4.m_swapPlaceholders = r2;
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r2 = r2.m_swapPlaceholders;
            if (r2 == 0) goto L_0x0342;
        L_0x00ce:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r2 = r2.m_nexThemeRenderer;
            r4 = "placeholder2.jpg";
            r5 = "placeholder1.jpg";
            r2.setPlaceholders(r4, r5);
            r11 = r3;
        L_0x00de:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r14 = r2.m_renderLock;
            monitor-enter(r14);
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r2 = r2.m_nexThemeRenderer;	 Catch:{ all -> 0x0387 }
            if (r2 == 0) goto L_0x02a8;
        L_0x00f1:
            r3 = 0;
            r2 = 0;
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r4 = r4.m_effectOptions;	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r5 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r5 = r5.m_setEffectOptions;	 Catch:{ all -> 0x0387 }
            if (r4 == r5) goto L_0x0115;
        L_0x0105:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r4 = r4.m_effectOptions;	 Catch:{ all -> 0x0387 }
            r2.m_setEffectOptions = r4;	 Catch:{ all -> 0x0387 }
            r2 = 1;
        L_0x0115:
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r4 = r4.m_effect;	 Catch:{ all -> 0x0387 }
            if (r4 == 0) goto L_0x0141;
        L_0x011f:
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r4 = r4.m_effect;	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r5 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r5 = r5.m_setEffect;	 Catch:{ all -> 0x0387 }
            if (r4 == r5) goto L_0x0141;
        L_0x0131:
            r0 = r18;
            r3 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r4 = r4.m_effect;	 Catch:{ all -> 0x0387 }
            r3.m_setEffect = r4;	 Catch:{ all -> 0x0387 }
            r3 = 1;
        L_0x0141:
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r4 = r4.m_setEffectTime;	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r6 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r6 = r6.m_effectTime;	 Catch:{ all -> 0x0387 }
            r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
            if (r4 == 0) goto L_0x0165;
        L_0x0155:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r4 = r4.m_effectTime;	 Catch:{ all -> 0x0387 }
            r2.m_setEffectTime = r4;	 Catch:{ all -> 0x0387 }
            r2 = 1;
        L_0x0165:
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r4 = r4.m_assetPackageManager;	 Catch:{ all -> 0x0387 }
            if (r4 == 0) goto L_0x0262;
        L_0x016f:
            if (r2 != 0) goto L_0x0173;
        L_0x0171:
            if (r3 == 0) goto L_0x0262;
        L_0x0173:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r2 = r2.m_nexThemeRenderer;	 Catch:{ all -> 0x0387 }
            r2.clearClipEffect();	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r2 = r2.m_nexThemeRenderer;	 Catch:{ all -> 0x0387 }
            r2.clearTransitionEffect();	 Catch:{ all -> 0x0387 }
            if (r3 == 0) goto L_0x0212;
        L_0x018b:
            r3 = 0;
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ IOException -> 0x0373 }
            r2 = r2.m_isRenderItem;	 Catch:{ IOException -> 0x0373 }
            if (r2 == 0) goto L_0x0354;
        L_0x0196:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ IOException -> 0x0373 }
            r2 = r2.m_assetPackageManager;	 Catch:{ IOException -> 0x0373 }
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ IOException -> 0x0373 }
            r4 = r4.m_effect;	 Catch:{ IOException -> 0x0373 }
            r4 = r4.getId();	 Catch:{ IOException -> 0x0373 }
            r4 = java.util.Collections.singletonList(r4);	 Catch:{ IOException -> 0x0373 }
            r2 = r2.a(r4);	 Catch:{ IOException -> 0x0373 }
        L_0x01b2:
            r3 = "EffectPreviewView";
            r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0387 }
            r4.<init>();	 Catch:{ all -> 0x0387 }
            r5 = " m_isRenderItem=";
            r4 = r4.append(r5);	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r5 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r5 = r5.m_isRenderItem;	 Catch:{ all -> 0x0387 }
            r4 = r4.append(r5);	 Catch:{ all -> 0x0387 }
            r5 = ",m_isClipEffect=";
            r4 = r4.append(r5);	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r5 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r5 = r5.m_isClipEffect;	 Catch:{ all -> 0x0387 }
            r4 = r4.append(r5);	 Catch:{ all -> 0x0387 }
            r4 = r4.toString();	 Catch:{ all -> 0x0387 }
            android.util.Log.d(r3, r4);	 Catch:{ all -> 0x0387 }
            if (r2 == 0) goto L_0x0212;
        L_0x01e6:
            r0 = r18;
            r3 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r3 = r3.m_isRenderItem;	 Catch:{ all -> 0x0387 }
            if (r3 == 0) goto L_0x037a;
        L_0x01f0:
            r0 = r18;
            r3 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r3 = r3.m_nexThemeRenderer;	 Catch:{ all -> 0x0387 }
            r3.clearRenderItems();	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r3 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r3 = r3.m_nexThemeRenderer;	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r4 = r4.m_effect;	 Catch:{ all -> 0x0387 }
            r4 = r4.getId();	 Catch:{ all -> 0x0387 }
            r3.loadRenderItem(r4, r2);	 Catch:{ all -> 0x0387 }
        L_0x0212:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r2 = r2.m_effect;	 Catch:{ all -> 0x0387 }
            if (r2 == 0) goto L_0x0262;
        L_0x021c:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r2 = r2.m_isClipEffect;	 Catch:{ all -> 0x0387 }
            if (r2 == 0) goto L_0x038a;
        L_0x0226:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r2 = r2.m_nexThemeRenderer;	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r3 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r3 = r3.m_effect;	 Catch:{ all -> 0x0387 }
            r3 = r3.getId();	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r4 = r4.m_effectOptions;	 Catch:{ all -> 0x0387 }
            r5 = 1;
            r6 = 3;
            r7 = 0;
            r0 = r18;
            r8 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r8 = r8.m_effectTime;	 Catch:{ all -> 0x0387 }
            r8 = (int) r8;	 Catch:{ all -> 0x0387 }
            r8 = r8 + 100;
            r9 = 50;
            r0 = r18;
            r10 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r16 = r10.m_effectTime;	 Catch:{ all -> 0x0387 }
            r0 = r16;
            r10 = (int) r0;	 Catch:{ all -> 0x0387 }
            r10 = r10 + 50;
            r2.setClipEffect(r3, r4, r5, r6, r7, r8, r9, r10);	 Catch:{ all -> 0x0387 }
        L_0x0262:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r3 = r2.m_nexThemeRenderer;	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r4 = r2.m_pauseTime;	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r6 = r2.m_effectTime;	 Catch:{ all -> 0x0387 }
            r4 = r4 + r6;
            r4 = r12 % r4;
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r6 = r2.m_effectTime;	 Catch:{ all -> 0x0387 }
            r8 = 1;
            r6 = r6 - r8;
            r4 = java.lang.Math.min(r4, r6);	 Catch:{ all -> 0x0387 }
            r4 = (int) r4;	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r2 = r2.m_isClipEffect;	 Catch:{ all -> 0x0387 }
            if (r2 == 0) goto L_0x03b7;
        L_0x0297:
            r2 = 50;
        L_0x0299:
            r2 = r2 + r4;
            r3.setCTS(r2);	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r2 = r2.m_nexThemeRenderer;	 Catch:{ all -> 0x0387 }
            r2.render();	 Catch:{ all -> 0x0387 }
        L_0x02a8:
            monitor-exit(r14);	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r2 = r2.m_showOnRender;
            if (r2 == 0) goto L_0x02cd;
        L_0x02b3:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r3 = 0;
            r2.m_showOnRender = r3;
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r2 = r2.m_handler;
            r3 = new com.nexstreaming.app.common.nexasset.preview.a$a$1;
            r0 = r18;
            r3.<init>();
            r2.post(r3);
        L_0x02cd:
            if (r11 == 0) goto L_0x02fc;
        L_0x02cf:
            r2 = com.nexstreaming.app.common.nexasset.preview.a.miliTime();
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r4 = r4.m_frameEnd;
            r2 = r2 - r4;
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r0 = r18;
            r5 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r6 = r5.m_startTime;
            r6 = r6 + r2;
            r4.m_startTime = r6;
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r0 = r18;
            r5 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r6 = r5.m_frameStart;
            r2 = r2 + r6;
            r4.m_frameStart = r2;
        L_0x02fc:
            return;
        L_0x02fd:
            r2 = move-exception;
            r2 = "NexThemePreviewView";
            r3 = "Preview sleep INTERRUPTED";
            android.util.Log.d(r2, r3);
            goto L_0x0049;
        L_0x0307:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r2 = r2.m_pauseTime;
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r4 = r4.m_effectTime;
            r2 = r2 + r4;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.miliTime();
            r0 = r18;
            r6 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r6 = r6.m_startTime;
            r4 = r4 - r6;
            r6 = 2;
            r6 = r6 * r2;
            r4 = r4 % r6;
            r6 = 33;
            r6 = r4 % r6;
            r4 = r4 - r6;
            r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
            if (r2 <= 0) goto L_0x0340;
        L_0x0332:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r2 = r2.m_isClipEffect;
            if (r2 != 0) goto L_0x0340;
        L_0x033c:
            r2 = 1;
        L_0x033d:
            r12 = r4;
            goto L_0x00b1;
        L_0x0340:
            r2 = 0;
            goto L_0x033d;
        L_0x0342:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;
            r2 = r2.m_nexThemeRenderer;
            r4 = "placeholder1.jpg";
            r5 = "placeholder2.jpg";
            r2.setPlaceholders(r4, r5);
        L_0x0351:
            r11 = r3;
            goto L_0x00de;
        L_0x0354:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ IOException -> 0x0373 }
            r2 = r2.m_assetPackageManager;	 Catch:{ IOException -> 0x0373 }
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ IOException -> 0x0373 }
            r4 = r4.m_effect;	 Catch:{ IOException -> 0x0373 }
            r4 = r4.getId();	 Catch:{ IOException -> 0x0373 }
            r4 = java.util.Collections.singletonList(r4);	 Catch:{ IOException -> 0x0373 }
            r5 = 0;
            r2 = r2.a(r4, r5);	 Catch:{ IOException -> 0x0373 }
            goto L_0x01b2;
        L_0x0373:
            r2 = move-exception;
            r2.printStackTrace();	 Catch:{ all -> 0x0387 }
            r2 = r3;
            goto L_0x01b2;
        L_0x037a:
            r0 = r18;
            r3 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r3 = r3.m_nexThemeRenderer;	 Catch:{ all -> 0x0387 }
            r3.a(r2);	 Catch:{ all -> 0x0387 }
            goto L_0x0212;
        L_0x0387:
            r2 = move-exception;
            monitor-exit(r14);	 Catch:{ all -> 0x0387 }
            throw r2;
        L_0x038a:
            r0 = r18;
            r2 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r2 = r2.m_nexThemeRenderer;	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r3 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r3 = r3.m_effect;	 Catch:{ all -> 0x0387 }
            r3 = r3.getId();	 Catch:{ all -> 0x0387 }
            r0 = r18;
            r4 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r4 = r4.m_effectOptions;	 Catch:{ all -> 0x0387 }
            r5 = 1;
            r6 = 3;
            r7 = 0;
            r0 = r18;
            r8 = com.nexstreaming.app.common.nexasset.preview.a.this;	 Catch:{ all -> 0x0387 }
            r8 = r8.m_effectTime;	 Catch:{ all -> 0x0387 }
            r8 = (int) r8;	 Catch:{ all -> 0x0387 }
            r2.setTransitionEffect(r3, r4, r5, r6, r7, r8);	 Catch:{ all -> 0x0387 }
            goto L_0x0262;
        L_0x03b7:
            r2 = 0;
            goto L_0x0299;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.nexstreaming.app.common.nexasset.preview.a.a.onDrawFrame(javax.microedition.khronos.opengles.GL10):void");
        }

        public void onSurfaceChanged(GL10 gl10, int i, int i2) {
            Log.d(a.TAG, "onSurfaceChanged");
            gl10.glViewport(0, 0, i, i2);
            if (a.this.m_nexThemeRenderer != null) {
                a.this.m_nexThemeRenderer.surfaceChange(i, i2);
            }
        }

        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            Log.d(a.TAG, "onSurfaceCreated");
        }
    }

    private static long miliTime() {
        return System.nanoTime() / 1000000;
    }

    public a(Context context) {
        super(context);
        init(false, 0, 1);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(false, 0, 1);
    }

    public a(Context context, boolean z, int i, int i2) {
        super(context);
        init(z, i, 1);
    }

    public void setAspectRatio(float f) {
        this.mAspectRatio = f;
    }

    public float getAspectRatio() {
        return this.mAspectRatio;
    }

    public void setOverlayPathResolver(d dVar) {
        this.m_overlayPathResolver = dVar;
    }

    public void setEffectOptions(String str) {
        if (str == null || this.m_effectOptions == null || !str.equals(this.m_effectOptions)) {
            this.m_effectOptions = str;
        }
    }

    public String getEffectOptions() {
        return this.m_effectOptions;
    }

    public void deinitRenderer() {
    }

    public void setEffect(String str) {
        setEffect(c.a(getContext()).c(str));
    }

    public void setEffect(f fVar) {
        boolean z = true;
        if (fVar != this.m_effect) {
            boolean z2;
            this.m_startTime = miliTime();
            if (fVar.getCategory() == ItemCategory.effect) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.m_isClipEffect = z2;
            if (fVar.getType() != ItemType.renderitem) {
                z = false;
            }
            this.m_isRenderItem = z;
            this.m_effect = fVar;
        }
    }

    public void setEffectTime(int i) {
        if (((long) i) != this.m_effectTime) {
            this.m_startTime = miliTime();
            this.m_effectTime = (long) i;
        }
    }

    public void setPauseTime(int i) {
        this.m_pauseTime = (long) i;
    }

    public int getPauseTime() {
        return (int) this.m_pauseTime;
    }

    public void stepForward(int i) {
        this.m_absTime += i;
        if (this.m_absTime < 0) {
            this.m_absTime = 0;
        }
        if (this.m_absTime > 60) {
            this.m_absTime = 60;
        }
        this.m_effectTime = 0;
    }

    public void stepBackward(int i) {
        this.m_absTime -= i;
        if (this.m_absTime < 0) {
            this.m_absTime = 0;
        }
        if (this.m_absTime > 60) {
            this.m_absTime = 60;
        }
        this.m_effectTime = 0;
    }

    public void showOnRender() {
        this.m_showOnRender = true;
    }

    protected void onDetachedFromWindow() {
        destroyRenderer();
        super.onDetachedFromWindow();
    }

    private void destroyRenderer() {
        synchronized (this.m_renderLock) {
            if (this.m_nexThemeRenderer != null) {
                this.m_nexThemeRenderer.deinit(true);
                this.m_nexThemeRenderer = null;
            }
        }
    }

    private void makeRenderer() {
        if (this.m_nexThemeRenderer == null && !this.m_done) {
            this.m_nexThemeRenderer = new NexThemeRenderer();
            this.m_nexThemeRenderer.init(new NexImageLoader(getContext().getResources(), c.a(getContext()).e(), this.m_overlayPathResolver, 1440, 810, 1500000));
            if (!this.m_swapPlaceholders || this.m_isClipEffect) {
                this.m_nexThemeRenderer.setPlaceholders("placeholder1.jpg", "placeholder2.jpg");
            } else {
                this.m_nexThemeRenderer.setPlaceholders("placeholder2.jpg", "placeholder1.jpg");
            }
        }
    }

    protected void onAttachedToWindow() {
        makeRenderer();
        super.onAttachedToWindow();
    }

    protected void onMeasure(int i, int i2) {
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        if (this.mAspectRatio > 0.0f) {
            if (((float) size2) * this.mAspectRatio > ((float) size)) {
                size2 = (int) (((float) size) / this.mAspectRatio);
            } else {
                size = (int) (((float) size2) * this.mAspectRatio);
            }
        }
        setMeasuredDimension(size, size2);
    }

    private void init(boolean z, int i, int i2) {
        this.m_assetPackageManager = c.a(getContext());
        setEGLContextClientVersion(2);
        setZOrderOnTop(true);
        getHolder().setFormat(1);
        final NexEditorDeviceProfile deviceProfile = NexEditorDeviceProfile.getDeviceProfile();
        setEGLConfigChooser(new EGLConfigChooser() {
            public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
                int i;
                int[] iArr = new int[19];
                iArr[0] = 12352;
                iArr[1] = 4;
                iArr[2] = 12324;
                iArr[3] = 8;
                iArr[4] = 12323;
                iArr[5] = 8;
                iArr[6] = 12322;
                iArr[7] = 8;
                iArr[8] = 12321;
                iArr[9] = 8;
                iArr[10] = 12326;
                iArr[11] = 1;
                iArr[12] = 12338;
                iArr[13] = deviceProfile.getGLMultisample() ? 1 : 0;
                iArr[14] = 12337;
                if (deviceProfile.getGLMultisample()) {
                    i = 2;
                } else {
                    i = 0;
                }
                iArr[15] = i;
                iArr[16] = 12325;
                iArr[17] = deviceProfile.getGLDepthBufferBits();
                iArr[18] = 12344;
                int[] iArr2 = new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12326, 8, 12344};
                int[] iArr3 = new int[1];
                egl10.eglChooseConfig(eGLDisplay, iArr, null, 0, iArr3);
                if (iArr3[0] < 1) {
                    egl10.eglChooseConfig(eGLDisplay, iArr2, null, 0, iArr3);
                } else {
                    iArr2 = iArr;
                }
                EGLConfig[] eGLConfigArr = new EGLConfig[iArr3[0]];
                egl10.eglChooseConfig(eGLDisplay, iArr2, eGLConfigArr, eGLConfigArr.length, iArr3);
                return eGLConfigArr[0];
            }
        });
        Renderer aVar = new a(this, null);
        setRenderer(aVar);
        setRenderMode(1);
        Log.d(TAG, "GL View Created " + aVar);
        this.m_startTime = miliTime();
    }

    public void suspendRendering() {
        setRenderMode(0);
    }

    public void resumeRendering() {
        setRenderMode(1);
    }

    public int getRenderingMode() {
        return getRenderMode();
    }
}
