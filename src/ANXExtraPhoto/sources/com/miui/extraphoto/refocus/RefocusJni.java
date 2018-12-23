package com.miui.extraphoto.refocus;

import android.graphics.Bitmap;

public class RefocusJni {
    public static native void adjustToBokeh(long j);

    public static native void adjustToDisplay(long j);

    public static native void configBitmapByResult(Bitmap bitmap, long j);

    public static native void configBokehMask(Bitmap bitmap, int i, int i2, int i3, long j);

    public static native void configBokehSize(int i, long j);

    public static native void configFocusPoint(int i, int i2, long j);

    public static native void configMotionCount(int i, long j);

    public static native void configMotionRingCount(int i, long j);

    public static native void configOriginBokehSize(int i, long j);

    public static native void configProcessQuality(int i, long j);

    public static native void configRandomCount(int i, long j);

    public static native void configRelightingLightSource(float[] fArr, long j);

    public static native void configToBokeh(long j);

    public static native void configYUVDataByResult(byte[] bArr, long j);

    public static native void configYUVSingleDataByResult(byte[] bArr, byte[] bArr2, byte[] bArr3, long j);

    public static native int getCurrentBokehSize(long j);

    public static native int getYUVDataLength(long j);

    public static native void initMotionEffect(int i, int i2, int i3, long j);

    public static native void initMotionRingEffect(float f, int i, int i2, long j);

    public static native void initRandomEffect(int i, int i2, long j);

    public static native long initRefocusNativeContext(Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, Bitmap bitmap4, boolean z, int i, int i2, int i3, int i4, byte[] bArr, int i5, int i6, boolean z2, int i7);

    public static native int initRelightEffect(int i, int[] iArr, long j);

    public static native void processImageByHolder(long j);

    public static native void refocus(int i, int i2, long j);

    public static native void releaseEngine(long j);

    public static native void releaseNativeContext(long j);

    public static native void resetData(Bitmap bitmap, int i, int i2, int i3, long j);

    public static native void setRelightingLightSource(int i, int i2, boolean z, long j);

    static {
        System.loadLibrary("gallery_mpbase");
        System.loadLibrary("gallery_arcsoft_portrait_lighting_c");
        System.loadLibrary("gallery_arcsoft_portrait_lighting");
        System.loadLibrary("gallery_arcsoft_dualcam_refocus");
        System.loadLibrary("refocus");
    }
}
