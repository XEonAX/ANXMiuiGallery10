.class Lcom/miui/gallery/editor/photo/app/MenuTransition;
.super Landroid/transition/Transition;
.source "MenuTransition.java"


# instance fields
.field private mEnter:Z

.field private mExitAlphaDuration:I

.field private mExitTranslateDuration:I

.field private mTranslate:F


# direct methods
.method public constructor <init>(FZLandroid/content/res/Resources;)V
    .locals 1
    .param p1, "translate"    # F
    .param p2, "enter"    # Z
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 25
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/MenuTransition;->mTranslate:F

    .line 26
    iput-boolean p2, p0, Lcom/miui/gallery/editor/photo/app/MenuTransition;->mEnter:Z

    .line 27
    const v0, 0x7f090037

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/MenuTransition;->mExitTranslateDuration:I

    .line 28
    const v0, 0x7f090038

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/MenuTransition;->mExitAlphaDuration:I

    .line 29
    return-void
.end method

.method private createEnterAnimator(Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 9
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 53
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 54
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    iget v5, p0, Lcom/miui/gallery/editor/photo/app/MenuTransition;->mTranslate:F

    aput v5, v4, v7

    const/4 v5, 0x0

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 55
    .local v2, "translate":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 56
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 57
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 58
    return-object v1

    .line 55
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

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 62
    new-instance v2, Landroid/animation/ObjectAnimator;

    invoke-direct {v2}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 63
    .local v2, "translateAnim":Landroid/animation/ObjectAnimator;
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v9, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    iget v6, p0, Lcom/miui/gallery/editor/photo/app/MenuTransition;->mTranslate:F

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 64
    iget v3, p0, Lcom/miui/gallery/editor/photo/app/MenuTransition;->mExitTranslateDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 65
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 67
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 68
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 69
    iget v3, p0, Lcom/miui/gallery/editor/photo/app/MenuTransition;->mExitAlphaDuration:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 70
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 72
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 73
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 74
    return-object v1

    .line 68
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

    .prologue
    .line 41
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 37
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/MenuTransition;->mEnter:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, p3}, Lcom/miui/gallery/editor/photo/app/MenuTransition;->createEnterAnimator(Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/gallery/editor/photo/app/MenuTransition;->createExitAnimator(Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method public isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 1
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
