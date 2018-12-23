.class public Lcom/miui/extraphoto/refocus/effect/RelightingEffect;
.super Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
.source "RelightingEffect.java"


# static fields
.field private static final ARC_PL_ERR_NO_FACE:I = 0x40001

.field private static final ARC_PL_ERR_SMALL_FACE:I = 0x40002


# instance fields
.field public final cameraDefinedType:I

.field public final effectType:I

.field private mFacePoint:[I

.field private mResult:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;ILjava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;
    .param p3, "totalSecond"    # I
    .param p4, "effectType"    # Ljava/lang/String;
    .param p5, "cameraDefinedType"    # I

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/extraphoto/refocus/effect/RefocusEffect;-><init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;I)V

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->mFacePoint:[I

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->mResult:I

    .line 22
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .local v0, "targetType":I
    goto :goto_0

    .line 23
    .end local v0    # "targetType":I
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/16 v0, 0x10

    .line 26
    .local v0, "targetType":I
    :goto_0
    iput v0, p0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->effectType:I

    .line 27
    iput p5, p0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->cameraDefinedType:I

    .line 28
    return-void
.end method


# virtual methods
.method public configEffectByProgress(FJ)V
    .locals 0
    .param p1, "progress"    # F
    .param p2, "refocusNativeContext"    # J

    .line 37
    return-void
.end method

.method public destroyEffect(J)V
    .locals 0
    .param p1, "refocusNativeContext"    # J

    .line 41
    return-void
.end method

.method public getFacePoint([I)V
    .locals 3
    .param p1, "dst"    # [I

    .line 44
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->mFacePoint:[I

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->mFacePoint:[I

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    return-void
.end method

.method public hasFace()Z
    .locals 1

    .line 48
    iget v0, p0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->mResult:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initEffect(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "refocusNativeContext"    # J

    .line 32
    iget v0, p0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->effectType:I

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->mFacePoint:[I

    invoke-static {v0, v1, p2, p3}, Lcom/miui/extraphoto/refocus/RefocusJni;->initRelightEffect(I[IJ)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->mResult:I

    .line 33
    return-void
.end method

.method public makeErrorToast(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    iget v0, p0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->mResult:I

    const v1, 0x40001

    if-ne v0, v1, :cond_0

    .line 53
    const v0, 0x7f070004

    invoke-static {p1, v0}, Lcom/miui/extraphoto/common/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0

    .line 54
    :cond_0
    iget v0, p0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;->mResult:I

    const v1, 0x40002

    if-ne v0, v1, :cond_1

    .line 55
    const v0, 0x7f070005

    invoke-static {p1, v0}, Lcom/miui/extraphoto/common/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 57
    :cond_1
    :goto_0
    return-void
.end method
