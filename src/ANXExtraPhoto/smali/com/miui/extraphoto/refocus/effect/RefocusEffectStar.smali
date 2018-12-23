.class public Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;
.super Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;
.source "RefocusEffectStar.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;ILjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;
    .param p3, "totalSecond"    # I
    .param p4, "maskIcon"    # Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;-><init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;ILjava/lang/String;)V

    .line 7
    return-void
.end method


# virtual methods
.method public getBokehSizeByProgress(F)I
    .locals 6
    .param p1, "progress"    # F

    .line 11
    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v3, 0x42340000    # 45.0f

    if-gtz v1, :cond_0

    .line 12
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->progressInRange(FFF)F

    move-result p1

    .line 14
    invoke-virtual {p0, v3}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->paramWithCoefficient(F)F

    move-result v0

    invoke-virtual {p0, v2}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->paramWithCoefficient(F)F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->valueByProgress(FFF)F

    move-result p1

    goto :goto_0

    .line 15
    :cond_0
    cmpl-float v1, p1, v0

    const/high16 v4, 0x42520000    # 52.5f

    const/high16 v5, 0x3f000000    # 0.5f

    if-ltz v1, :cond_1

    cmpg-float v1, p1, v5

    if-gtz v1, :cond_1

    .line 16
    invoke-static {p1, v0, v5}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->progressInRange(FFF)F

    move-result p1

    .line 18
    invoke-virtual {p0, v2}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->paramWithCoefficient(F)F

    move-result v0

    invoke-virtual {p0, v4}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->paramWithCoefficient(F)F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->valueByProgress(FFF)F

    move-result p1

    goto :goto_0

    .line 19
    :cond_1
    cmpl-float v0, p1, v5

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x3f400000    # 0.75f

    if-ltz v0, :cond_2

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_2

    .line 20
    invoke-static {p1, v5, v2}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->progressInRange(FFF)F

    move-result p1

    .line 22
    invoke-virtual {p0, v4}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->paramWithCoefficient(F)F

    move-result v0

    invoke-virtual {p0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->paramWithCoefficient(F)F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->valueByProgress(FFF)F

    move-result p1

    goto :goto_0

    .line 23
    :cond_2
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v4, p1, v0

    if-gtz v4, :cond_3

    .line 24
    invoke-static {p1, v2, v0}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->progressInRange(FFF)F

    move-result p1

    .line 26
    invoke-virtual {p0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->paramWithCoefficient(F)F

    move-result v0

    invoke-virtual {p0, v3}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->paramWithCoefficient(F)F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;->valueByProgress(FFF)F

    move-result p1

    .line 28
    :cond_3
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
