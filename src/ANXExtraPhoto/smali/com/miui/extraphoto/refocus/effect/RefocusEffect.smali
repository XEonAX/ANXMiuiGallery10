.class public abstract Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
.super Ljava/lang/Object;
.source "RefocusEffect.java"


# instance fields
.field protected mCoefficient:F

.field public final name:Ljava/lang/String;

.field public final totalSecond:I

.field public final type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;
    .param p3, "totalSecond"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->name:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    .line 16
    iput p3, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->totalSecond:I

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->mCoefficient:F

    .line 18
    return-void
.end method

.method static progressInRange(FFF)F
    .locals 2
    .param p0, "progress"    # F
    .param p1, "rangeStart"    # F
    .param p2, "rangeEnd"    # F

    .line 63
    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    return v0

    .line 65
    :cond_0
    cmpl-float v0, p0, p2

    if-ltz v0, :cond_1

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 68
    :cond_1
    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method static valueByProgress(FFF)F
    .locals 1
    .param p0, "progress"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 59
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public abstract configEffectByProgress(FJ)V
.end method

.method public configEffectBySuggest(J)V
    .locals 1
    .param p1, "refocusNativeContext"    # J

    .line 35
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->getSuggestImageProgress()F

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->configEffectByProgress(FJ)V

    .line 36
    return-void
.end method

.method public abstract destroyEffect(J)V
.end method

.method public enableEffectByProgress(FJ)V
    .locals 0
    .param p1, "progress"    # F
    .param p2, "refocusNativeContext"    # J

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->configEffectByProgress(FJ)V

    .line 22
    invoke-static {p2, p3}, Lcom/miui/extraphoto/refocus/RefocusJni;->processImageByHolder(J)V

    .line 23
    return-void
.end method

.method public getSuggestImageProgress()F
    .locals 1

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getTotalFrame(I)I
    .locals 2
    .param p1, "frameRate"    # I

    .line 43
    iget v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->totalSecond:I

    mul-int/2addr v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public abstract initEffect(Landroid/content/Context;J)V
.end method

.method public initForVideo(J)V
    .locals 0
    .param p1, "refocusNativeContext"    # J

    .line 28
    return-void
.end method

.method public multiplyCoefficient(I)V
    .locals 2
    .param p1, "value"    # I

    .line 55
    iget v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->mCoefficient:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->mCoefficient:F

    .line 56
    return-void
.end method

.method protected paramWithCoefficient(F)F
    .locals 1
    .param p1, "value"    # F

    .line 47
    iget v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->mCoefficient:F

    mul-float/2addr v0, p1

    return v0
.end method

.method protected paramWithCoefficient(I)I
    .locals 2
    .param p1, "value"    # I

    .line 51
    iget v0, p0, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;->mCoefficient:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
