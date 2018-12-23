.class public Lcom/miui/extraphoto/refocus/RefocusJni;
.super Ljava/lang/Object;
.source "RefocusJni.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, "gallery_mpbase"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    const-string v0, "gallery_arcsoft_portrait_lighting_c"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    const-string v0, "gallery_arcsoft_portrait_lighting"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    const-string v0, "gallery_arcsoft_dualcam_refocus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    const-string v0, "refocus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native adjustToBokeh(J)V
.end method

.method public static native adjustToDisplay(J)V
.end method

.method public static native configBitmapByResult(Landroid/graphics/Bitmap;J)V
.end method

.method public static native configBokehMask(Landroid/graphics/Bitmap;IIIJ)V
.end method

.method public static native configBokehSize(IJ)V
.end method

.method public static native configFocusPoint(IIJ)V
.end method

.method public static native configMotionCount(IJ)V
.end method

.method public static native configMotionRingCount(IJ)V
.end method

.method public static native configOriginBokehSize(IJ)V
.end method

.method public static native configProcessQuality(IJ)V
.end method

.method public static native configRandomCount(IJ)V
.end method

.method public static native configRelightingLightSource([FJ)V
.end method

.method public static native configToBokeh(J)V
.end method

.method public static native configYUVDataByResult([BJ)V
.end method

.method public static native configYUVSingleDataByResult([B[B[BJ)V
.end method

.method public static native getCurrentBokehSize(J)I
.end method

.method public static native getYUVDataLength(J)I
.end method

.method public static native initMotionEffect(IIIJ)V
.end method

.method public static native initMotionRingEffect(FIIJ)V
.end method

.method public static native initRandomEffect(IIJ)V
.end method

.method public static native initRefocusNativeContext(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZIIII[BIIZI)J
.end method

.method public static native initRelightEffect(I[IJ)I
.end method

.method public static native processImageByHolder(J)V
.end method

.method public static native refocus(IIJ)V
.end method

.method public static native releaseEngine(J)V
.end method

.method public static native releaseNativeContext(J)V
.end method

.method public static native resetData(Landroid/graphics/Bitmap;IIIJ)V
.end method

.method public static native setRelightingLightSource(IIZJ)V
.end method
