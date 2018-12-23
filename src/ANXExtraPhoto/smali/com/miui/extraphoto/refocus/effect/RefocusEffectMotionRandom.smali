.class public Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotionRandom;
.super Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
.source "RefocusEffectMotionRandom.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;
    .param p3, "totalSecond"    # I

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;-><init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;I)V

    .line 10
    return-void
.end method


# virtual methods
.method public configEffectByProgress(FJ)V
    .locals 2
    .param p1, "progress"    # F
    .param p2, "refocusNativeContext"    # J

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {p1, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotionRandom;->valueByProgress(FFF)F

    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, p2, p3}, Lcom/miui/extraphoto/refocus/RefocusJni;->configRandomCount(IJ)V

    .line 21
    return-void
.end method

.method public destroyEffect(J)V
    .locals 0
    .param p1, "refocusNativeContext"    # J

    .line 25
    invoke-static {p1, p2}, Lcom/miui/extraphoto/refocus/RefocusJni;->releaseEngine(J)V

    .line 26
    return-void
.end method

.method public initEffect(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "refocusNativeContext"    # J

    .line 14
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotionRandom;->paramWithCoefficient(I)I

    move-result v0

    const/16 v1, 0x3c

    invoke-static {v0, v1, p2, p3}, Lcom/miui/extraphoto/refocus/RefocusJni;->initRandomEffect(IIJ)V

    .line 15
    return-void
.end method
