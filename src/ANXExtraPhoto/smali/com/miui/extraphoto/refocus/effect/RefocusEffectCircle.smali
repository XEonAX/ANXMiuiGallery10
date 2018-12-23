.class public Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;
.super Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;
.source "RefocusEffectCircle.java"


# instance fields
.field private mAccInterpolator:Landroid/view/animation/Interpolator;

.field private mDecInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;ILjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;
    .param p3, "totalSecond"    # I
    .param p4, "maskIcon"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;-><init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;ILjava/lang/String;)V

    .line 16
    const/16 v0, 0x96

    iput v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->mLight:I

    .line 17
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->mAccInterpolator:Landroid/view/animation/Interpolator;

    .line 18
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->mDecInterpolator:Landroid/view/animation/Interpolator;

    .line 19
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->mCoefficient:F

    .line 20
    return-void
.end method


# virtual methods
.method public configEffectByProgress(FJ)V
    .locals 1
    .param p1, "progress"    # F
    .param p2, "refocusNativeContext"    # J

    .line 24
    invoke-virtual {p0, p1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->getBokehSizeByProgress(F)I

    move-result v0

    invoke-static {v0, p2, p3}, Lcom/miui/extraphoto/refocus/RefocusJni;->configBokehSize(IJ)V

    .line 25
    return-void
.end method

.method public getBokehSizeByProgress(F)I
    .locals 6
    .param p1, "progress"    # F

    .line 29
    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x42940000    # 74.0f

    const/high16 v3, 0x41f00000    # 30.0f

    if-gtz v1, :cond_0

    .line 30
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->progressInRange(FFF)F

    move-result p1

    .line 32
    invoke-virtual {p0, v3}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->paramWithCoefficient(F)F

    move-result v0

    invoke-virtual {p0, v2}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->paramWithCoefficient(F)F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->valueByProgress(FFF)F

    move-result p1

    goto :goto_0

    .line 33
    :cond_0
    cmpl-float v1, p1, v0

    const/high16 v4, 0x420c0000    # 35.0f

    const/high16 v5, 0x3f000000    # 0.5f

    if-ltz v1, :cond_1

    cmpg-float v1, p1, v5

    if-gtz v1, :cond_1

    .line 34
    invoke-static {p1, v0, v5}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->progressInRange(FFF)F

    move-result p1

    .line 36
    invoke-virtual {p0, v2}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->paramWithCoefficient(F)F

    move-result v0

    invoke-virtual {p0, v4}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->paramWithCoefficient(F)F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->valueByProgress(FFF)F

    move-result p1

    goto :goto_0

    .line 37
    :cond_1
    cmpl-float v0, p1, v5

    const/high16 v1, 0x428a0000    # 69.0f

    const/high16 v2, 0x3f400000    # 0.75f

    if-ltz v0, :cond_2

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_2

    .line 38
    invoke-static {p1, v5, v2}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->progressInRange(FFF)F

    move-result p1

    .line 40
    invoke-virtual {p0, v4}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->paramWithCoefficient(F)F

    move-result v0

    invoke-virtual {p0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->paramWithCoefficient(F)F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->valueByProgress(FFF)F

    move-result p1

    goto :goto_0

    .line 41
    :cond_2
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v4, p1, v0

    if-gtz v4, :cond_3

    .line 42
    invoke-static {p1, v2, v0}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->progressInRange(FFF)F

    move-result p1

    .line 44
    invoke-virtual {p0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->paramWithCoefficient(F)F

    move-result v0

    invoke-virtual {p0, v3}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->paramWithCoefficient(F)F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;->valueByProgress(FFF)F

    move-result p1

    .line 46
    :cond_3
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getSuggestImageProgress()F
    .locals 1

    .line 51
    const/high16 v0, 0x3f200000    # 0.625f

    return v0
.end method
