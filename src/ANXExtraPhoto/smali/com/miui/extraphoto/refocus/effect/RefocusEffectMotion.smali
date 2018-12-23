.class public Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotion;
.super Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
.source "RefocusEffectMotion.java"


# instance fields
.field private final mDegree:I

.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;II)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;
    .param p3, "totalSecond"    # I
    .param p4, "degree"    # I

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;-><init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;I)V

    .line 16
    iput p4, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotion;->mDegree:I

    .line 17
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotion;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 18
    return-void
.end method


# virtual methods
.method public configEffectByProgress(FJ)V
    .locals 2
    .param p1, "progress"    # F
    .param p2, "refocusNativeContext"    # J

    .line 33
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotion;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 34
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotion;->paramWithCoefficient(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotion;->valueByProgress(FFF)F

    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, p2, p3}, Lcom/miui/extraphoto/refocus/RefocusJni;->configMotionCount(IJ)V

    .line 36
    return-void
.end method

.method public destroyEffect(J)V
    .locals 0
    .param p1, "refocusNativeContext"    # J

    .line 40
    invoke-static {p1, p2}, Lcom/miui/extraphoto/refocus/RefocusJni;->releaseEngine(J)V

    .line 41
    return-void
.end method

.method public initEffect(Landroid/content/Context;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "refocusNativeContext"    # J

    .line 22
    const/4 v0, 0x1

    invoke-static {v0, p2, p3}, Lcom/miui/extraphoto/refocus/RefocusJni;->configProcessQuality(IJ)V

    .line 23
    iget v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotion;->mDegree:I

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotion;->paramWithCoefficient(I)I

    move-result v1

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2, p2, p3}, Lcom/miui/extraphoto/refocus/RefocusJni;->initMotionEffect(IIIJ)V

    .line 24
    return-void
.end method

.method public initForVideo(J)V
    .locals 1
    .param p1, "refocusNativeContext"    # J

    .line 28
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/miui/extraphoto/refocus/RefocusJni;->configProcessQuality(IJ)V

    .line 29
    return-void
.end method
