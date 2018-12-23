.class public Lcom/miui/extraphoto/refocus/compat/ImageTransition;
.super Landroid/transition/ChangeBounds;
.source "ImageTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/refocus/compat/ImageTransition$ConfigCropType;
    }
.end annotation


# static fields
.field private static final PROPERTY_IMAGE_MATRIX:Ljava/lang/String; = "image-matrix"

.field private static PROPERTY_MATRIX:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/widget/ImageView;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnter:Z

.field private mImageHeight:I

.field private mImageWidth:I

.field private mMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 121
    new-instance v0, Lcom/miui/extraphoto/refocus/compat/ImageTransition$1;

    const-class v1, Landroid/graphics/Matrix;

    const-string v2, "matrix"

    invoke-direct {v0, v1, v2}, Lcom/miui/extraphoto/refocus/compat/ImageTransition$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->PROPERTY_MATRIX:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(ZLandroid/graphics/Matrix;II)V
    .locals 1
    .param p1, "enter"    # Z
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "imageWidth"    # I
    .param p4, "imageHeight"    # I

    .line 23
    invoke-direct {p0}, Landroid/transition/ChangeBounds;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->mMatrix:Landroid/graphics/Matrix;

    .line 24
    iput-boolean p1, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->mEnter:Z

    .line 25
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 26
    iput p3, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->mImageWidth:I

    .line 27
    iput p4, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->mImageHeight:I

    .line 28
    return-void
.end method

.method private captureInitialMatrix(Landroid/transition/TransitionValues;)V
    .locals 6
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 52
    .local v0, "originBounds":Landroid/graphics/RectF;
    iget v1, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->mImageWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->mImageHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 54
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 55
    .local v1, "imgBounds":Landroid/graphics/RectF;
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    .line 56
    .local v2, "view":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v3, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 58
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 59
    .local v3, "matrix":Landroid/graphics/Matrix;
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v1, v0, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 61
    iget-object v4, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 62
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "image-matrix"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private captureMatrix(Landroid/transition/TransitionValues;)V
    .locals 7
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 66
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 67
    .local v0, "view":Landroid/widget/ImageView;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 68
    .local v1, "matrix":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 69
    .local v2, "viewBounds":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 70
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 71
    .local v3, "imgBounds":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v5, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 72
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 73
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "image-matrix"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method private static floatNear(FFF)Z
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F
    .param p2, "eps"    # F

    .line 164
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 42
    invoke-super {p0, p1}, Landroid/transition/ChangeBounds;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 43
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->mEnter:Z

    if-nez v0, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->captureInitialMatrix(Landroid/transition/TransitionValues;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->captureMatrix(Landroid/transition/TransitionValues;)V

    .line 48
    :goto_0
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 32
    invoke-super {p0, p1}, Landroid/transition/ChangeBounds;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 33
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->mEnter:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->captureInitialMatrix(Landroid/transition/TransitionValues;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->captureMatrix(Landroid/transition/TransitionValues;)V

    .line 38
    :goto_0
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    .line 88
    .local v0, "bounds":Landroid/animation/Animator;
    const/4 v1, 0x0

    .line 89
    .local v1, "scaleChanged":Z
    iget-boolean v2, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->mEnter:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 90
    iget-object v2, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 91
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->mImageWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    iget v6, p0, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->mImageHeight:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 92
    .local v4, "targetScale":F
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 93
    .local v5, "currentScale":F
    const v6, 0x3c23d70a    # 0.01f

    invoke-static {v4, v5, v6}, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->floatNear(FFF)Z

    move-result v6

    xor-int/2addr v6, v3

    move v1, v6

    .line 97
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "targetScale":F
    .end local v5    # "currentScale":F
    :cond_0
    const/4 v2, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 98
    iget-object v5, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const-string v6, "transitionAlpha"

    new-array v7, v3, [F

    const/4 v8, 0x0

    aput v8, v7, v4

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .local v5, "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 100
    .end local v5    # "animator":Landroid/animation/Animator;
    :cond_1
    new-instance v5, Landroid/animation/ObjectAnimator;

    invoke-direct {v5}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 101
    .local v5, "imageMatrix":Landroid/animation/ObjectAnimator;
    sget-object v6, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->PROPERTY_MATRIX:Landroid/util/Property;

    new-instance v7, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;

    invoke-direct {v7}, Lcom/miui/extraphoto/refocus/compat/MatrixEvaluator;-><init>()V

    new-array v8, v2, [Landroid/graphics/Matrix;

    iget-object v9, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v10, "image-matrix"

    .line 103
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Matrix;

    aput-object v9, v8, v4

    iget-object v9, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v10, "image-matrix"

    .line 104
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Matrix;

    aput-object v9, v8, v3

    .line 101
    invoke-static {v6, v7, v8}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 106
    .local v6, "values":Landroid/animation/PropertyValuesHolder;
    new-array v7, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v7, v4

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 107
    iget-object v7, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 108
    new-instance v7, Lcom/miui/extraphoto/refocus/compat/ImageTransition$ConfigCropType;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/miui/extraphoto/refocus/compat/ImageTransition$ConfigCropType;-><init>(Lcom/miui/extraphoto/refocus/compat/ImageTransition$1;)V

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 109
    nop

    .line 112
    .end local v6    # "values":Landroid/animation/PropertyValuesHolder;
    .local v5, "animator":Landroid/animation/Animator;
    :goto_0
    if-eqz v0, :cond_2

    .line 113
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 114
    .local v6, "set":Landroid/animation/AnimatorSet;
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    aput-object v5, v2, v3

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 115
    return-object v6

    .line 117
    .end local v6    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    return-object v5
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 4

    .line 78
    invoke-super {p0}, Landroid/transition/ChangeBounds;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "boundsProperties":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 80
    .local v1, "properties":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    array-length v2, v0

    const-string v3, "image-matrix"

    aput-object v3, v1, v2

    .line 82
    return-object v1
.end method
