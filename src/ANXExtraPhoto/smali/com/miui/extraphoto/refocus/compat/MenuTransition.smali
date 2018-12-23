.class public Lcom/miui/extraphoto/refocus/compat/MenuTransition;
.super Landroid/transition/Transition;
.source "MenuTransition.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TRANSITION"


# instance fields
.field private mCurrentY:F

.field private mEnter:Z

.field private mExitAlphaDuration:I

.field private mExitTranslateDuration:I

.field private mTranslate:F


# direct methods
.method public constructor <init>(FZIIF)V
    .locals 0
    .param p1, "translate"    # F
    .param p2, "enter"    # Z
    .param p3, "translateDuration"    # I
    .param p4, "alphaDuration"    # I
    .param p5, "currentY"    # F

    .line 22
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 23
    iput p1, p0, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->mTranslate:F

    .line 24
    iput-boolean p2, p0, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->mEnter:Z

    .line 25
    iput p3, p0, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->mExitTranslateDuration:I

    .line 26
    iput p4, p0, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->mExitAlphaDuration:I

    .line 27
    iput p5, p0, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->mCurrentY:F

    .line 28
    return-void
.end method

.method private createEnterAnimator(Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 52
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 53
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->mTranslate:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput v6, v3, v4

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 54
    .local v1, "translate":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    fill-array-data v6, :array_0

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 55
    .local v3, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v5

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 56
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 57
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createExitAnimator(Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 61
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 62
    .local v0, "translateAnim":Landroid/animation/ObjectAnimator;
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    .line 63
    .local v1, "y":F
    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    iget v7, p0, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->mCurrentY:F

    const/4 v8, 0x0

    aput v7, v6, v8

    iget v7, p0, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->mTranslate:F

    iget v9, p0, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->mCurrentY:F

    add-float/2addr v7, v9

    aput v7, v6, v2

    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 64
    iget v3, p0, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->mExitTranslateDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 65
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 67
    new-instance v3, Landroid/animation/ObjectAnimator;

    invoke-direct {v3}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 68
    .local v3, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-array v4, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 69
    iget v4, p0, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->mExitAlphaDuration:I

    int-to-long v6, v4

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 70
    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 72
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 73
    .local v4, "animSet":Landroid/animation/AnimatorSet;
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v8

    aput-object v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 74
    return-object v4

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 40
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 36
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 44
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->mEnter:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0, p3}, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->createEnterAnimator(Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->createExitAnimator(Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 1
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/transition/TransitionValues;

    .line 31
    const/4 v0, 0x1

    return v0
.end method
