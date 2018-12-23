package com.miui.extraphoto.refocus.gles;

import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import java.lang.ref.WeakReference;

public abstract class RenderThread extends Thread {
    private static final String TAG = RenderHandler.class.getSimpleName();
    private EglCore mEglCore;
    private RenderHandler mHandler;
    private int mHeight;
    private boolean mReady = false;
    private Object mStartLock = new Object();
    private volatile SurfaceHolder mSurfaceHolder;
    private int mWidth;
    private WindowSurface mWindowSurface;

    public static class RenderHandler extends Handler {
        private static final int MSG_DO_FRAME = 2;
        private static final int MSG_SHUTDOWN = 5;
        private static final int MSG_SURFACE_CHANGED = 1;
        private static final int MSG_SURFACE_CREATED = 0;
        private WeakReference<RenderThread> mWeakRenderThread;

        public RenderHandler(RenderThread rt) {
            this.mWeakRenderThread = new WeakReference(rt);
        }

        public void sendSurfaceCreated(SurfaceHolder surfaceHolder) {
            sendMessage(obtainMessage(0, surfaceHolder));
        }

        public void sendSurfaceChanged(int width, int height) {
            sendMessage(obtainMessage(1, width, height));
        }

        public void sendDoFrame() {
            sendMessage(obtainMessage(2));
        }

        public void sendShutdown() {
            sendMessage(obtainMessage(5));
        }

        public void handleMessage(Message msg) {
            int what = msg.what;
            RenderThread renderThread = (RenderThread) this.mWeakRenderThread.get();
            if (renderThread == null) {
                Log.w(RenderThread.TAG, "RenderHandler.handleMessage: weak ref is null");
                return;
            }
            if (what != 5) {
                switch (what) {
                    case 0:
                        renderThread.onSurfaceCreated((SurfaceHolder) msg.obj);
                        break;
                    case 1:
                        renderThread.onSurfaceChanged(msg.arg1, msg.arg2);
                        break;
                    case 2:
                        renderThread.doFrame();
                        break;
                    default:
                        renderThread.handleMessage(msg);
                        break;
                }
            }
            renderThread.shutdown();
        }
    }

    public void run() {
        Looper.prepare();
        this.mHandler = new RenderHandler(this);
        this.mEglCore = new EglCore(null, 3);
        synchronized (this.mStartLock) {
            this.mReady = true;
            this.mStartLock.notify();
        }
        Looper.loop();
        Log.d(TAG, "looper quit");
        releaseGl();
        this.mEglCore.release();
        synchronized (this.mStartLock) {
            this.mReady = false;
        }
    }

    protected void releaseGl() {
        GLES20.glClear(16640);
        if (this.mWindowSurface != null) {
            this.mWindowSurface.release();
        }
    }

    private void shutdown() {
        Log.d(TAG, "shutdown");
        Looper.myLooper().quit();
    }

    public RenderHandler getHandler() {
        return this.mHandler;
    }

    protected void onSurfaceCreated(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != null) {
            prepareGl(surfaceHolder.getSurface());
        }
    }

    private void prepareGl(Surface surface) {
        if (this.mWindowSurface != null) {
            this.mWindowSurface.release();
        }
        if (surface.isValid()) {
            this.mWindowSurface = new WindowSurface(this.mEglCore, surface, false);
            this.mWindowSurface.makeCurrent();
            GLES20.glDisable(2929);
            GLES20.glClear(16640);
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    protected void onSurfaceChanged(int width, int height) {
        this.mWidth = width;
        this.mHeight = height;
        GLES20.glViewport(0, 0, width, height);
    }

    private void doFrame() {
        GLES20.glClear(16640);
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        this.mWindowSurface.swapBuffers();
    }

    protected void updateSurface() {
        this.mWindowSurface.swapBuffers();
    }

    protected void makeCurrent() {
        this.mWindowSurface.makeCurrent();
    }

    public void waitUntilReady() {
        synchronized (this.mStartLock) {
            while (!this.mReady) {
                try {
                    this.mStartLock.wait();
                } catch (InterruptedException e) {
                }
            }
        }
    }

    public void sendShutdown() {
        this.mHandler.sendShutdown();
    }

    public void sendSurfaceCreated(SurfaceHolder surfaceHolder) {
        this.mHandler.sendSurfaceCreated(surfaceHolder);
    }

    public void sendSurfaceChanged(int width, int height) {
        this.mHandler.sendSurfaceChanged(width, height);
    }

    protected void handleMessage(Message msg) {
    }

    public int getViewPortWidth() {
        return this.mWidth;
    }

    public int getViewPortHeight() {
        return this.mHeight;
    }

    public EglCore getEglCore() {
        return this.mEglCore;
    }
}
