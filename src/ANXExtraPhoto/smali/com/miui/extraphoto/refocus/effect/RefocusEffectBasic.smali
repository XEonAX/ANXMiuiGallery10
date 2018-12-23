.class public Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;
.super Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
.source "RefocusEffectBasic.java"


# static fields
.field public static final MAX_BOKEH_SIZE:I = 0x24


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field protected mLight:I

.field private final mMaskIcon:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;ILjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;
    .param p3, "totalSecond"    # I
    .param p4, "maskIcon"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;-><init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;I)V

    .line 22
    iput-object p4, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;->mMaskIcon:Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;->mLight:I

    .line 25
    return-void
.end method


# virtual methods
.method public configEffectByProgress(FJ)V
    .locals 1
    .param p1, "progress"    # F
    .param p2, "refocusNativeContext"    # J

    .line 48
    invoke-virtual {p0, p1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;->getBokehSizeByProgress(F)I

    move-result v0

    invoke-static {v0, p2, p3}, Lcom/miui/extraphoto/refocus/RefocusJni;->configBokehSize(IJ)V

    .line 49
    return-void
.end method

.method public destroyEffect(J)V
    .locals 0
    .param p1, "refocusNativeContext"    # J

    .line 64
    return-void
.end method

.method public enableEffectByBokehSize(IJ)V
    .locals 0
    .param p1, "bokehSize"    # I
    .param p2, "refocusNativeContext"    # J

    .line 52
    invoke-static {p1, p2, p3}, Lcom/miui/extraphoto/refocus/RefocusJni;->configBokehSize(IJ)V

    .line 53
    invoke-static {p2, p3}, Lcom/miui/extraphoto/refocus/RefocusJni;->processImageByHolder(J)V

    .line 54
    return-void
.end method

.method public getBokehSizeByProgress(F)I
    .locals 2
    .param p1, "progress"    # F

    .line 57
    const/4 v0, 0x0

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {p1, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;->valueByProgress(FFF)F

    move-result p1

    .line 58
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public hasMask()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;->mMaskIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public initEffect(Landroid/content/Context;J)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "refocusNativeContext"    # J

    .line 29
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;->mMaskIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;->mLight:I

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/miui/extraphoto/refocus/RefocusJni;->configBokehMask(Landroid/graphics/Bitmap;IIIJ)V

    goto :goto_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 34
    .local v0, "mask":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;->mMaskIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 37
    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 38
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;->mLight:I

    move-object v2, v0

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lcom/miui/extraphoto/refocus/RefocusJni;->configBokehMask(Landroid/graphics/Bitmap;IIIJ)V

    goto :goto_1

    .line 41
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;->mLight:I

    move-wide v10, p2

    invoke-static/range {v6 .. v11}, Lcom/miui/extraphoto/refocus/RefocusJni;->configBokehMask(Landroid/graphics/Bitmap;IIIJ)V

    .line 44
    .end local v0    # "mask":Landroid/graphics/Bitmap;
    :goto_1
    return-void
.end method
