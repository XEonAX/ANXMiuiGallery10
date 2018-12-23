.class public Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;
.super Ljava/lang/Object;
.source "MatrixEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field private mTempEndValues:[F

.field private mTempMatrix:Landroid/graphics/Matrix;

.field private mTempStartValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;->mTempStartValues:[F

    .line 8
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;->mTempEndValues:[F

    .line 9
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 5
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Landroid/graphics/Matrix;
    .param p3, "endValue"    # Landroid/graphics/Matrix;

    .line 13
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;->mTempStartValues:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 14
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;->mTempEndValues:[F

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;->mTempEndValues:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;->mTempStartValues:[F

    aget v2, v2, v0

    sub-float/2addr v1, v2

    .line 17
    .local v1, "diff":F
    iget-object v2, p0, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;->mTempEndValues:[F

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;->mTempStartValues:[F

    aget v3, v3, v0

    mul-float v4, p1, v1

    add-float/2addr v3, v4

    aput v3, v2, v0

    .line 15
    .end local v1    # "diff":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;->mTempEndValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 20
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;->evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method
