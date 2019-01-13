.class public Lmiui/widget/ScrollableViewDrawer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ScrollableViewDrawer$ScrollViewWrapper;,
        Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;,
        Lmiui/widget/ScrollableViewDrawer$IScrollableView;,
        Lmiui/widget/ScrollableViewDrawer$DrawerListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ScrollableViewDrawer"

.field private static final STATE_DRAGGING:I = 0x1

.field private static final ZB:I = 0x2

.field private static final ZC:Z = false

.field private static final Zz:I


# instance fields
.field private NB:Z

.field private Vi:I

.field private ZD:I

.field private ZE:I

.field private ZF:Landroid/view/View;

.field private ZG:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

.field private ZH:I

.field private ZI:Landroid/graphics/drawable/Drawable;

.field private ZJ:I

.field private ZK:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

.field private ZL:I

.field private ZN:Z

.field private ZO:Z

.field private ZP:Z

.field private ZQ:F

.field private ZR:F

.field private ZS:I

.field private fE:I

.field private mContentView:Landroid/view/View;

.field private mLastMotionY:F

.field private qH:I

.field private qS:Landroid/view/VelocityTracker;

.field private wp:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ScrollableViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZL:I

    .line 103
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->fE:I

    .line 104
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->wp:Landroid/widget/Scroller;

    .line 105
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qS:Landroid/view/VelocityTracker;

    .line 107
    sget-object v0, Lmiui/R$styleable;->ScrollableViewDrawer:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 108
    sget p3, Lmiui/R$styleable;->ScrollableViewDrawer_contentView:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/ScrollableViewDrawer;->ZD:I

    .line 109
    iget p3, p0, Lmiui/widget/ScrollableViewDrawer;->ZD:I

    if-eqz p3, :cond_85

    .line 113
    sget p3, Lmiui/R$styleable;->ScrollableViewDrawer_targetView:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/ScrollableViewDrawer;->ZE:I

    .line 114
    iget p3, p0, Lmiui/widget/ScrollableViewDrawer;->ZE:I

    if-eqz p3, :cond_7d

    .line 118
    sget p3, Lmiui/R$styleable;->ScrollableViewDrawer_scrollableView:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lmiui/widget/ScrollableViewDrawer;->Vi:I

    .line 119
    iget p3, p0, Lmiui/widget/ScrollableViewDrawer;->Vi:I

    if-eqz p3, :cond_75

    .line 123
    sget p3, Lmiui/R$styleable;->ScrollableViewDrawer_scrollDivider:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiui/widget/ScrollableViewDrawer;->ZI:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object p3, p0, Lmiui/widget/ScrollableViewDrawer;->ZI:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_5c

    .line 125
    sget p3, Lmiui/R$attr;->scrollDivider:I

    invoke-static {p1, p3}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/ScrollableViewDrawer;->ZI:Landroid/graphics/drawable/Drawable;

    .line 127
    :cond_5c
    iget-object p1, p0, Lmiui/widget/ScrollableViewDrawer;->ZI:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_68

    .line 128
    iget-object p1, p0, Lmiui/widget/ScrollableViewDrawer;->ZI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lmiui/widget/ScrollableViewDrawer;->ZJ:I

    .line 130
    :cond_68
    sget p1, Lmiui/R$styleable;->ScrollableViewDrawer_dragEnabled:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiui/widget/ScrollableViewDrawer;->NB:Z

    .line 131
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    return-void

    .line 120
    :cond_75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The scrollableView attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_7d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The targetView attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The contentView attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fJ()I
    .registers 2

    .line 171
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZH:I

    if-nez v0, :cond_c

    .line 172
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZH:I

    .line 174
    :cond_c
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZH:I

    return v0
.end method

.method private fK()Z
    .registers 2

    .line 346
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZF:Landroid/view/View;

    if-eqz v0, :cond_12

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZG:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    invoke-interface {v0}, Lmiui/widget/ScrollableViewDrawer$IScrollableView;->canScroll()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private fL()V
    .registers 4

    .line 377
    nop

    .line 378
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 379
    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZN:Z

    if-nez v0, :cond_1a

    .line 380
    const/4 v0, 0x0

    goto :goto_1b

    .line 382
    :cond_c
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fJ()I

    move-result v2

    if-ne v0, v2, :cond_1a

    .line 383
    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZN:Z

    if-nez v0, :cond_1a

    .line 384
    const/4 v0, 0x2

    goto :goto_1b

    .line 387
    :cond_1a
    move v0, v1

    :goto_1b
    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->qH:I

    if-eq v2, v0, :cond_25

    .line 388
    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->qH:I

    .line 389
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fM()V

    goto :goto_2c

    .line 390
    :cond_25
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->qH:I

    if-ne v0, v1, :cond_2c

    .line 391
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fM()V

    .line 393
    :cond_2c
    :goto_2c
    return-void
.end method

.method private fM()V
    .registers 4

    .line 396
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZK:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

    if-eqz v0, :cond_25

    .line 397
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->qH:I

    packed-switch v0, :pswitch_data_26

    goto :goto_25

    .line 402
    :pswitch_a
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZK:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

    invoke-interface {v0, p0}, Lmiui/widget/ScrollableViewDrawer$DrawerListener;->onDrawerOpened(Lmiui/widget/ScrollableViewDrawer;)V

    .line 403
    goto :goto_25

    .line 405
    :pswitch_10
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZK:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    int-to-float v1, v1

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fJ()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, p0, v1}, Lmiui/widget/ScrollableViewDrawer$DrawerListener;->onDrawerSlide(Lmiui/widget/ScrollableViewDrawer;F)V

    goto :goto_25

    .line 399
    :pswitch_1f
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZK:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

    invoke-interface {v0, p0}, Lmiui/widget/ScrollableViewDrawer$DrawerListener;->onDrawerClosed(Lmiui/widget/ScrollableViewDrawer;)V

    .line 400
    nop

    .line 409
    :cond_25
    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method

.method private fN()V
    .registers 3

    .line 463
    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->NB:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZF:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 464
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZF:Landroid/view/View;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 465
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fL()V

    .line 467
    :cond_13
    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .registers 2

    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableViewDrawer;->closeDrawer(Z)V

    .line 446
    return-void
.end method

.method public closeDrawer(Z)V
    .registers 5

    .line 453
    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 454
    iget-object p1, p0, Lmiui/widget/ScrollableViewDrawer;->wp:Landroid/widget/Scroller;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    neg-int v2, v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_13

    .line 456
    :cond_e
    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    .line 457
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fN()V

    .line 459
    :goto_13
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    .line 460
    return-void
.end method

.method public computeScroll()V
    .registers 2

    .line 351
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 352
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZF:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 353
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 354
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    .line 355
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fN()V

    .line 356
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->postInvalidateOnAnimation()V

    .line 359
    :cond_1d
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 182
    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->NB:Z

    if-nez v0, :cond_9

    .line 183
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 186
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_db

    packed-switch v0, :pswitch_data_110

    goto/16 :goto_102

    .line 197
    :pswitch_17
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZL:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 198
    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 199
    nop

    .line 200
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZL:I

    .line 203
    move v0, v3

    :cond_28
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->ZQ:F

    sub-float/2addr v1, v4

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->ZR:F

    sub-float/2addr v4, v5

    .line 206
    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->ZN:Z

    if-nez v5, :cond_91

    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->ZP:Z

    if-nez v5, :cond_91

    .line 207
    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fJ()I

    move-result v6

    if-ne v5, v6, :cond_4e

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_4e

    .line 208
    iput-boolean v2, p0, Lmiui/widget/ScrollableViewDrawer;->ZN:Z

    goto :goto_5b

    .line 209
    :cond_4e
    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->fE:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5b

    .line 210
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fK()Z

    move-result v5

    iput-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->ZN:Z

    .line 213
    :cond_5b
    :goto_5b
    iget-boolean v5, p0, Lmiui/widget/ScrollableViewDrawer;->ZN:Z

    if-eqz v5, :cond_6f

    .line 214
    const-string v5, "ScrollableViewDrawer"

    const-string v6, "determine drag"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 216
    if-eqz v5, :cond_6f

    .line 217
    invoke-interface {v5, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 221
    :cond_6f
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->fE:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_80

    iget-boolean v4, p0, Lmiui/widget/ScrollableViewDrawer;->ZP:Z

    if-nez v4, :cond_80

    .line 222
    iput-boolean v2, p0, Lmiui/widget/ScrollableViewDrawer;->ZO:Z

    .line 225
    :cond_80
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->fE:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_91

    iget-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->ZO:Z

    if-nez v1, :cond_91

    .line 226
    iput-boolean v2, p0, Lmiui/widget/ScrollableViewDrawer;->ZP:Z

    .line 229
    :cond_91
    iget-boolean v1, p0, Lmiui/widget/ScrollableViewDrawer;->ZN:Z

    if-nez v1, :cond_102

    .line 230
    iget-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    goto :goto_102

    .line 247
    :pswitch_a1
    iget-boolean v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZN:Z

    if-nez v0, :cond_aa

    .line 248
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 250
    :cond_aa
    iput-boolean v3, p0, Lmiui/widget/ScrollableViewDrawer;->ZN:Z

    .line 251
    iput-boolean v3, p0, Lmiui/widget/ScrollableViewDrawer;->ZP:Z

    .line 252
    iput-boolean v3, p0, Lmiui/widget/ScrollableViewDrawer;->ZO:Z

    goto :goto_102

    .line 188
    :pswitch_b1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZL:I

    .line 189
    iput-boolean v3, p0, Lmiui/widget/ScrollableViewDrawer;->ZN:Z

    .line 190
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 191
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 192
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZQ:F

    .line 193
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZR:F

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    .line 194
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    .line 195
    goto :goto_102

    .line 236
    :cond_db
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 238
    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->ZL:I

    if-ne v1, v4, :cond_102

    .line 239
    if-nez v0, :cond_eb

    .line 240
    move v0, v2

    goto :goto_ed

    .line 239
    :cond_eb
    nop

    .line 240
    move v0, v3

    :goto_ed
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/ScrollableViewDrawer;->ZL:I

    .line 241
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lmiui/widget/ScrollableViewDrawer;->ZQ:F

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZR:F

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    .line 243
    nop

    .line 259
    :cond_102
    :goto_102
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_10f

    iget-boolean p1, p0, Lmiui/widget/ScrollableViewDrawer;->ZN:Z

    if-eqz p1, :cond_10d

    goto :goto_10f

    :cond_10d
    move v2, v3

    nop

    :cond_10f
    :goto_10f
    return v2

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_a1
        :pswitch_17
        :pswitch_a1
    .end packed-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 11

    .line 325
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, v0, :cond_33

    .line 326
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->getPaddingLeft()I

    move-result v0

    .line 327
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 328
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 329
    iget v3, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    add-int/2addr v3, v2

    .line 330
    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->ZJ:I

    if-lez v4, :cond_2d

    .line 331
    iget-object v4, p0, Lmiui/widget/ScrollableViewDrawer;->ZI:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lmiui/widget/ScrollableViewDrawer;->ZJ:I

    sub-int v5, v3, v5

    invoke-virtual {v4, v0, v5, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 332
    iget-object v4, p0, Lmiui/widget/ScrollableViewDrawer;->ZI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 333
    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->ZJ:I

    sub-int/2addr v3, v4

    .line 335
    :cond_2d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 336
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 338
    :cond_33
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 339
    iget-object p4, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, p4, :cond_3e

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 342
    :cond_3e
    return p3
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 136
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZD:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_6f

    .line 141
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_67

    .line 146
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZE:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableViewDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZF:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZF:Landroid/view/View;

    if-eqz v0, :cond_5f

    .line 152
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZF:Landroid/view/View;

    iget v1, p0, Lmiui/widget/ScrollableViewDrawer;->Vi:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_57

    .line 158
    instance-of v1, v0, Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    if-eqz v1, :cond_33

    .line 159
    check-cast v0, Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    iput-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZG:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    goto :goto_4e

    .line 160
    :cond_33
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_41

    .line 161
    new-instance v1, Lmiui/widget/ScrollableViewDrawer$ScrollViewWrapper;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Lmiui/widget/ScrollableViewDrawer$ScrollViewWrapper;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->ZG:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    goto :goto_4e

    .line 162
    :cond_41
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_4f

    .line 163
    new-instance v1, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-direct {v1, v0}, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Lmiui/widget/ScrollableViewDrawer;->ZG:Lmiui/widget/ScrollableViewDrawer$IScrollableView;

    .line 168
    :goto_4e
    return-void

    .line 165
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scrollableView attribute is must refer to an ScrollView or AdapterView or IScrollableViewWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scrollableView attribute is must refer to an existing child of targetView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The targetView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is must be a direct child of ScrollableViewDrawer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The contentView attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 320
    iget-boolean p1, p0, Lmiui/widget/ScrollableViewDrawer;->NB:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lmiui/widget/ScrollableViewDrawer;->ZN:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_b8

    goto/16 :goto_b2

    .line 303
    :pswitch_a
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    if-eqz v0, :cond_24

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fJ()I

    move-result v2

    if-eq v0, v2, :cond_24

    .line 304
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->wp:Landroid/widget/Scroller;

    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    iget v3, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 305
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    goto :goto_27

    .line 307
    :cond_24
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fL()V

    .line 309
    :goto_27
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_b2

    .line 271
    :pswitch_2e
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 272
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZL:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 273
    const/4 v2, -0x1

    if-ne v0, v2, :cond_44

    .line 274
    nop

    .line 275
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZL:I

    .line 277
    move v0, v1

    :cond_44
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 278
    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    sub-float v2, v0, v2

    float-to-int v2, v2

    iget v3, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    add-int/2addr v2, v3

    .line 279
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fJ()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 280
    iput v1, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    .line 281
    iput v0, p0, Lmiui/widget/ScrollableViewDrawer;->mLastMotionY:F

    .line 283
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fN()V

    .line 284
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    .line 285
    goto :goto_b2

    .line 288
    :pswitch_67
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 289
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qS:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 290
    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    if-eqz v0, :cond_a8

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fJ()I

    move-result v2

    if-eq v0, v2, :cond_a8

    .line 291
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9a

    .line 292
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->wp:Landroid/widget/Scroller;

    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fJ()I

    move-result v3

    iget v4, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_a4

    .line 294
    :cond_9a
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->wp:Landroid/widget/Scroller;

    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    iget v3, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 296
    :goto_a4
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    goto :goto_ab

    .line 298
    :cond_a8
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fL()V

    .line 300
    :goto_ab
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 301
    goto :goto_b2

    .line 269
    :pswitch_b1
    nop

    .line 315
    :goto_b2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_67
        :pswitch_2e
        :pswitch_a
    .end packed-switch
.end method

.method public openDrawer()V
    .registers 2

    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableViewDrawer;->openDrawer(Z)V

    .line 425
    return-void
.end method

.method public openDrawer(Z)V
    .registers 5

    .line 432
    if-eqz p1, :cond_12

    .line 433
    iget-object p1, p0, Lmiui/widget/ScrollableViewDrawer;->wp:Landroid/widget/Scroller;

    iget v0, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fJ()I

    move-result v1

    iget v2, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_1b

    .line 435
    :cond_12
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fJ()I

    move-result p1

    iput p1, p0, Lmiui/widget/ScrollableViewDrawer;->ZS:I

    .line 436
    invoke-direct {p0}, Lmiui/widget/ScrollableViewDrawer;->fN()V

    .line 438
    :goto_1b
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->invalidate()V

    .line 439
    return-void
.end method

.method public resetState()V
    .registers 1

    .line 417
    invoke-virtual {p0}, Lmiui/widget/ScrollableViewDrawer;->closeDrawer()V

    .line 418
    return-void
.end method

.method public setDragEnabled(Z)V
    .registers 2

    .line 365
    iput-boolean p1, p0, Lmiui/widget/ScrollableViewDrawer;->NB:Z

    .line 366
    return-void
.end method

.method public setDrawerListener(Lmiui/widget/ScrollableViewDrawer$DrawerListener;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lmiui/widget/ScrollableViewDrawer;->ZK:Lmiui/widget/ScrollableViewDrawer$DrawerListener;

    .line 374
    return-void
.end method
