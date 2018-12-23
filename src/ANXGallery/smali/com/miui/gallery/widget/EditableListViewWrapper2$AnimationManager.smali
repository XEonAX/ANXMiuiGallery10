.class Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;
.super Ljava/lang/Object;
.source "EditableListViewWrapper2.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/EditableListViewWrapper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$Scroll2PickHelper;,
        Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$MyScaleItemImageViewAnimatorListener;
    }
.end annotation


# instance fields
.field private isTurnOnScaleImageViewAni:Z

.field private mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScroll2PickHelper:Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$Scroll2PickHelper;

.field final synthetic this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/EditableListViewWrapper2;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    .line 334
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$Scroll2PickHelper;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$Scroll2PickHelper;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->mScroll2PickHelper:Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$Scroll2PickHelper;

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->isTurnOnScaleImageViewAni:Z

    .line 636
    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;Landroid/widget/ImageView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # F

    .prologue
    .line 311
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->setImageViewScale(Landroid/widget/ImageView;F)V

    return-void
.end method

.method private finishImageViewScaleAnimatorIfNecessary(Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "image"    # Landroid/widget/ImageView;

    .prologue
    .line 367
    const v3, 0x7f12001a

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 368
    .local v1, "oldAnimator":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 371
    :cond_0
    if-eqz v1, :cond_1

    .line 372
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->getImageViewScale(Landroid/widget/ImageView;)F

    move-result v0

    .line 373
    .local v0, "curScale":F
    const v3, 0x7f120025

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 374
    .local v2, "targetScale":F
    sub-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x800000

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 375
    invoke-direct {p0, p1, v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->setImageViewScale(Landroid/widget/ImageView;F)V

    .line 378
    .end local v0    # "curScale":F
    .end local v2    # "targetScale":F
    :cond_1
    return-void
.end method

.method private getImageViewScale(Landroid/widget/ImageView;)F
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 625
    instance-of v0, p1, Lcom/miui/gallery/widget/ScalableImageView;

    if-eqz v0, :cond_0

    .line 626
    check-cast p1, Lcom/miui/gallery/widget/ScalableImageView;

    .end local p1    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/miui/gallery/widget/ScalableImageView;->getMatrixScale()F

    move-result v0

    .line 628
    :goto_0
    return v0

    .restart local p1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setImageViewScale(Landroid/widget/ImageView;F)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "scale"    # F

    .prologue
    .line 619
    instance-of v0, p1, Lcom/miui/gallery/widget/ScalableImageView;

    if-eqz v0, :cond_0

    .line 620
    check-cast p1, Lcom/miui/gallery/widget/ScalableImageView;

    .end local p1    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1, p2}, Lcom/miui/gallery/widget/ScalableImageView;->setMatrixScale(F)V

    .line 622
    :cond_0
    return-void
.end method

.method private setItemImageView2OriginalScaleAfterEnlarge(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x0

    .line 601
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->finishImageViewScaleAnimatorIfNecessary(Landroid/widget/ImageView;)V

    .line 602
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->setImageViewScale(Landroid/widget/ImageView;F)V

    .line 603
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 606
    :cond_0
    const v0, 0x7f120021

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 607
    const v0, 0x7f12001a

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 608
    return-void
.end method

.method private setItemImageViewEnlargeAfterChecked(Landroid/widget/ImageView;I)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "position"    # I

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->finishImageViewScaleAnimatorIfNecessary(Landroid/widget/ImageView;)V

    .line 613
    const v0, 0x7f120021

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 614
    const v0, 0x3f99999a    # 1.2f

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->setImageViewScale(Landroid/widget/ImageView;F)V

    .line 615
    const v0, 0x7f12001a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 616
    return-void
.end method

.method private startScaleItemImageViewAnimationInternal(Landroid/widget/ImageView;ZIII)V
    .locals 10
    .param p1, "image"    # Landroid/widget/ImageView;
    .param p2, "enlarge"    # Z
    .param p3, "position"    # I
    .param p4, "delay"    # I
    .param p5, "duration"    # I

    .prologue
    const v9, 0x7f120025

    const v8, 0x7f120021

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 382
    iget-boolean v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->isTurnOnScaleImageViewAni:Z

    if-nez v4, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->finishImageViewScaleAnimatorIfNecessary(Landroid/widget/ImageView;)V

    .line 388
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 389
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-lez v4, :cond_0

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const/high16 v3, 0x3f800000    # 1.0f

    .line 395
    .local v3, "originFactor":F
    const v2, 0x3f99999a    # 1.2f

    .line 396
    .local v2, "enlargeFactor":F
    if-eqz p2, :cond_3

    .line 397
    new-array v4, v7, [F

    aput v3, v4, v5

    aput v2, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 398
    new-instance v4, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$MyScaleItemImageViewAnimatorListener;

    invoke-direct {v4, p0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$MyScaleItemImageViewAnimatorListener;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 400
    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 401
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {p1, v8, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 403
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v4, :cond_2

    .line 404
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    .line 406
    :cond_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v9, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 415
    :goto_1
    int-to-long v4, p5

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 416
    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 417
    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 418
    const v4, 0x7f12001a

    invoke-virtual {p1, v4, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 419
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 408
    :cond_3
    new-array v4, v7, [F

    aput v2, v4, v5

    aput v3, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 410
    new-instance v4, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$MyScaleItemImageViewAnimatorListener;

    invoke-direct {v4, p0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$MyScaleItemImageViewAnimatorListener;-><init>(Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 411
    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 412
    const/4 v4, 0x0

    invoke-virtual {p1, v8, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 413
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v9, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private startScaleListViewAnimation(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 13
    .param p1, "listView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "enlarge"    # Z

    .prologue
    .line 481
    if-eqz p2, :cond_1

    .line 482
    const v7, 0x3f6b851f    # 0.92f

    .line 483
    .local v7, "beginScale":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 489
    .local v8, "endScale":F
    :goto_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 490
    invoke-virtual {p1, v9}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 491
    .local v12, "view":Landroid/view/View;
    instance-of v0, v12, Lcom/miui/gallery/ui/Checkable;

    if-nez v0, :cond_2

    .line 489
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 485
    .end local v7    # "beginScale":F
    .end local v8    # "endScale":F
    .end local v9    # "i":I
    .end local v12    # "view":Landroid/view/View;
    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    .line 486
    .restart local v7    # "beginScale":F
    const v8, 0x3f6b851f    # 0.92f

    .restart local v8    # "endScale":F
    goto :goto_0

    .line 494
    .restart local v9    # "i":I
    .restart local v12    # "view":Landroid/view/View;
    :cond_2
    const-string v0, "scaleX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v7, v2, v3

    const/4 v3, 0x1

    aput v8, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 496
    .local v10, "pvhY":Landroid/animation/PropertyValuesHolder;
    const-string v0, "scaleY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v7, v2, v3

    const/4 v3, 0x1

    aput v8, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 498
    .local v11, "pvhZ":Landroid/animation/PropertyValuesHolder;
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v10, v0, v2

    const/4 v2, 0x1

    aput-object v11, v0, v2

    invoke-static {v12, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 499
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 500
    .local v6, "animator":Landroid/animation/ObjectAnimator;
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 501
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 502
    const v0, 0x7f120024

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 504
    if-eqz p2, :cond_0

    .line 505
    instance-of v0, v12, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$BackgroundImageViewable;

    if-eqz v0, :cond_0

    move-object v0, v12

    .line 506
    check-cast v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$BackgroundImageViewable;

    .line 507
    invoke-interface {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$BackgroundImageViewable;->getBackgroundImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 508
    .local v1, "imageView":Landroid/widget/ImageView;
    const v0, 0x7f120021

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    const/4 v2, 0x0

    .line 511
    invoke-virtual {p1, v12}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, p0

    .line 509
    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startScaleItemImageViewAnimationInternal(Landroid/widget/ImageView;ZIII)V

    goto :goto_2

    .line 517
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v6    # "animator":Landroid/animation/ObjectAnimator;
    .end local v10    # "pvhY":Landroid/animation/PropertyValuesHolder;
    .end local v11    # "pvhZ":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->mScroll2PickHelper:Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$Scroll2PickHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$Scroll2PickHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public resetViewPropertyIfNeed(Landroid/view/View;Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    const v7, 0x7f120021

    const v6, 0x7f120024

    const v5, 0x7f120022

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f6b851f    # 0.92f

    .line 555
    invoke-virtual {p1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 556
    .local v1, "itemScaleFactor":Ljava/lang/Object;
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->isInChoiceMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 557
    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Float;

    .end local v1    # "itemScaleFactor":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2, v3}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 559
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 560
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 561
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 572
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->isTurnOnScaleImageViewAni:Z

    if-nez v2, :cond_4

    .line 597
    .end local p1    # "view":Landroid/view/View;
    :goto_1
    return-void

    .line 564
    .restart local v1    # "itemScaleFactor":Ljava/lang/Object;
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Float;

    .end local v1    # "itemScaleFactor":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2, v4}, Lcom/miui/gallery/util/MiscUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 566
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 567
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 568
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 576
    :cond_4
    instance-of v2, p1, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$BackgroundImageViewable;

    if-eqz v2, :cond_6

    .line 577
    check-cast p1, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$BackgroundImageViewable;

    .line 578
    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$BackgroundImageViewable;->getBackgroundImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 579
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->isInChoiceMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 580
    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 581
    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p3, :cond_5

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    .line 582
    invoke-static {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$600(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->getCheckState(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 583
    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->setItemImageView2OriginalScaleAfterEnlarge(Landroid/widget/ImageView;)V

    .line 586
    :cond_5
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v2}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$600(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->getCheckState(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 587
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 588
    invoke-direct {p0, v0, p3}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->setItemImageViewEnlargeAfterChecked(Landroid/widget/ImageView;I)V

    .line 596
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_6
    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v5, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 591
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_7
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 592
    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->setItemImageView2OriginalScaleAfterEnlarge(Landroid/widget/ImageView;)V

    goto :goto_2
.end method

.method public setLongTouchPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->mScroll2PickHelper:Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$Scroll2PickHelper;

    invoke-static {v0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$Scroll2PickHelper;->access$1000(Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager$Scroll2PickHelper;I)V

    .line 339
    return-void
.end method

.method public startEnterActionModeAni()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$1200(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startScaleListViewAnimation(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 473
    return-void
.end method

.method public startExistActionModeAni()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$1200(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startScaleListViewAnimation(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 477
    return-void
.end method

.method public startPickingNumberAnimation(Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$ShowNumberWhenPicking;)V
    .locals 10
    .param p1, "view"    # Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$ShowNumberWhenPicking;

    .prologue
    .line 520
    invoke-interface {p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$ShowNumberWhenPicking;->getBackgroundMask()Landroid/widget/ImageView;

    move-result-object v0

    .line 521
    .local v0, "backgroundMask":Landroid/widget/ImageView;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 522
    invoke-interface {p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$ShowNumberWhenPicking;->getShowNumberTextView()Landroid/widget/TextView;

    move-result-object v5

    .line 523
    .local v5, "showingNumberView":Landroid/widget/TextView;
    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper2;

    invoke-static {v9}, Lcom/miui/gallery/widget/EditableListViewWrapper2;->access$600(Lcom/miui/gallery/widget/EditableListViewWrapper2;)Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    .line 527
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "scaleX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    .line 528
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    .line 531
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v6, v7

    .line 526
    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x12c

    .line 534
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 535
    .local v2, "fadeIn":Landroid/animation/ObjectAnimator;
    new-instance v6, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v6}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 537
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_3

    .line 538
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xc8

    .line 539
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 540
    .local v3, "fadeOut":Landroid/animation/ObjectAnimator;
    new-instance v6, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v6}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 541
    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 543
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 544
    .local v4, "pickingNumberAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 545
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 547
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_4

    .line 548
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x2bc

    .line 549
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 550
    .local v1, "bgMaskAlpha":Landroid/animation/ObjectAnimator;
    new-instance v6, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v6}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 551
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 552
    return-void

    .line 525
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 527
    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 528
    :array_2
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 537
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 547
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public startScaleAllItemImageViewAnimation(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;Z)V
    .locals 8
    .param p1, "listView"    # Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;
    .param p2, "checked"    # Z

    .prologue
    .line 457
    invoke-virtual {p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildCount()I

    move-result v0

    .line 458
    .local v0, "childCount":I
    if-lez v0, :cond_0

    .line 459
    const/4 v3, 0x0

    .line 460
    .local v3, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 461
    invoke-virtual {p1, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 462
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$BackgroundImageViewable;

    if-eqz v6, :cond_1

    move-object v6, v5

    .line 463
    check-cast v6, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$BackgroundImageViewable;

    invoke-interface {v6}, Lcom/miui/gallery/widget/EditableListViewWrapper2$PickAnimationHelper$BackgroundImageViewable;->getBackgroundImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 465
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1, v5}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    mul-int/lit8 v7, v4, 0x28

    .line 464
    invoke-virtual {p0, v2, v6, p2, v7}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startScaleItemImageViewAnimation(Landroid/widget/ImageView;IZI)V

    .line 460
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_0

    .line 469
    .end local v1    # "i":I
    .end local v4    # "j":I
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    return-void

    .restart local v1    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1
.end method

.method public startScaleItemImageViewAnimation(Landroid/widget/ImageView;I)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "position"    # I

    .prologue
    const/16 v5, 0x12c

    const/16 v4, 0x64

    .line 424
    const v0, 0x7f120021

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 425
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startScaleItemImageViewAnimationInternal(Landroid/widget/ImageView;ZIII)V

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startScaleItemImageViewAnimationInternal(Landroid/widget/ImageView;ZIII)V

    goto :goto_0
.end method

.method public startScaleItemImageViewAnimation(Landroid/widget/ImageView;IZI)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "position"    # I
    .param p3, "checked"    # Z
    .param p4, "delay"    # I

    .prologue
    .line 439
    const/16 v5, 0x12c

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startScaleItemImageViewAnimation(Landroid/widget/ImageView;IZII)V

    .line 441
    return-void
.end method

.method public startScaleItemImageViewAnimation(Landroid/widget/ImageView;IZII)V
    .locals 7
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "position"    # I
    .param p3, "checked"    # Z
    .param p4, "delay"    # I
    .param p5, "duration"    # I

    .prologue
    const v6, 0x7f120021

    .line 445
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 446
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startScaleItemImageViewAnimationInternal(Landroid/widget/ImageView;ZIII)V

    .line 450
    :cond_0
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 451
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startScaleItemImageViewAnimationInternal(Landroid/widget/ImageView;ZIII)V

    .line 454
    :cond_1
    return-void
.end method

.method public startScaleItemImageViewAnimationByScrollPicked(Landroid/widget/ImageView;IZ)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "position"    # I
    .param p3, "checked"    # Z

    .prologue
    .line 433
    const/16 v0, 0x64

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$AnimationManager;->startScaleItemImageViewAnimation(Landroid/widget/ImageView;IZI)V

    .line 435
    return-void
.end method
