.class public Lmiui/widget/DropDownPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DropDownPopupWindow$ListController;,
        Lmiui/widget/DropDownPopupWindow$ViewContentController;,
        Lmiui/widget/DropDownPopupWindow$DefaultContainerController;,
        Lmiui/widget/DropDownPopupWindow$ContentController;,
        Lmiui/widget/DropDownPopupWindow$ContainerController;,
        Lmiui/widget/DropDownPopupWindow$Controller;,
        Lmiui/widget/DropDownPopupWindow$ContainerView;
    }
.end annotation


# instance fields
.field private Rb:Landroid/widget/PopupWindow;

.field private Rc:Lmiui/widget/DropDownPopupWindow$ContainerView;

.field private Rd:Lmiui/widget/DropDownPopupWindow$ContentController;

.field private Re:Lmiui/widget/DropDownPopupWindow$ContainerController;

.field private Rf:Lmiui/widget/DropDownPopupWindow$Controller;

.field private Rg:I

.field private Rh:I

.field private Ri:Z

.field private Rj:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private Rk:Landroid/animation/Animator$AnimatorListener;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private oF:Landroid/view/View;

.field private vv:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/DropDownPopupWindow;->Rg:I

    .line 43
    iput v0, p0, Lmiui/widget/DropDownPopupWindow;->Rh:I

    .line 46
    new-instance v0, Lmiui/widget/DropDownPopupWindow$1;

    invoke-direct {v0, p0}, Lmiui/widget/DropDownPopupWindow$1;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rj:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 58
    new-instance v0, Lmiui/widget/DropDownPopupWindow$2;

    invoke-direct {v0, p0}, Lmiui/widget/DropDownPopupWindow$2;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/animation/Animator$AnimatorListener;

    .line 252
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 253
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    .line 254
    new-instance v0, Lmiui/widget/DropDownPopupWindow$ContainerView;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/widget/DropDownPopupWindow$ContainerView;-><init>(Lmiui/widget/DropDownPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rc:Lmiui/widget/DropDownPopupWindow$ContainerView;

    .line 255
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 256
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->eB()V

    .line 257
    return-void
.end method

.method static synthetic a(Lmiui/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 32
    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->vv:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private aV()I
    .registers 5

    .line 392
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 393
    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 394
    if-lez v1, :cond_17

    .line 395
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 397
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerController;
    .registers 1

    .line 32
    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->Re:Lmiui/widget/DropDownPopupWindow$ContainerController;

    return-object p0
.end method

.method static synthetic c(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerView;
    .registers 1

    .line 32
    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->Rc:Lmiui/widget/DropDownPopupWindow$ContainerView;

    return-object p0
.end method

.method private c(FFI)V
    .registers 8

    .line 329
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->vv:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 330
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->vv:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 333
    :cond_9
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Re:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-nez v0, :cond_11

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rd:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_50

    .line 334
    :cond_11
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->vv:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_25

    .line 335
    new-array v0, v3, [F

    aput p1, v0, v2

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->vv:Landroid/animation/ValueAnimator;

    goto :goto_30

    .line 337
    :cond_25
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->vv:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    aput p1, v3, v2

    aput p2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 339
    :goto_30
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow;->vv:Landroid/animation/ValueAnimator;

    sget-boolean p2, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p2, :cond_38

    int-to-long p2, p3

    goto :goto_3a

    :cond_38
    const-wide/16 p2, 0x0

    :goto_3a
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 340
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow;->vv:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lmiui/widget/DropDownPopupWindow;->Rj:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 341
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow;->vv:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lmiui/widget/DropDownPopupWindow;->Rk:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 342
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow;->vv:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 344
    :cond_50
    return-void
.end method

.method static synthetic d(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContentController;
    .registers 1

    .line 32
    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->Rd:Lmiui/widget/DropDownPopupWindow$ContentController;

    return-object p0
.end method

.method static synthetic e(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;
    .registers 1

    .line 32
    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method private eB()V
    .registers 4

    .line 260
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->Rc:Lmiui/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 262
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 264
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V

    .line 266
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInsetDecor(Landroid/widget/PopupWindow;Z)V

    .line 267
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 268
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 269
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 270
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    new-instance v1, Lmiui/widget/DropDownPopupWindow$3;

    invoke-direct {v1, p0}, Lmiui/widget/DropDownPopupWindow$3;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 284
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rc:Lmiui/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0, v2}, Lmiui/widget/DropDownPopupWindow$ContainerView;->setFocusableInTouchMode(Z)V

    .line 286
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rc:Lmiui/widget/DropDownPopupWindow$ContainerView;

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$color;->arrow_popup_window_dim_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownPopupWindow$ContainerView;->setBackgroundColor(I)V

    .line 287
    return-void
.end method

.method private eC()V
    .registers 2

    .line 347
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 348
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 350
    :cond_9
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Re:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_12

    .line 351
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Re:Lmiui/widget/DropDownPopupWindow$ContainerController;

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$ContainerController;->onDismiss()V

    .line 353
    :cond_12
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rd:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_1b

    .line 354
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rd:Lmiui/widget/DropDownPopupWindow$ContentController;

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$ContentController;->onDismiss()V

    .line 356
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->Ri:Z

    .line 357
    return-void
.end method

.method private eD()V
    .registers 6

    .line 365
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->oF:Landroid/view/View;

    .line 366
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 367
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 368
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 369
    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 375
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 376
    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 377
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 378
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->aV()I

    move-result v4

    .line 384
    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v4, :cond_34

    const/4 v4, 0x0

    .line 385
    :cond_34
    add-int/2addr v3, v4

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v3, v0

    .line 386
    if-lez v3, :cond_45

    .line 387
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 389
    :cond_45
    return-void
.end method

.method static synthetic f(Lmiui/widget/DropDownPopupWindow;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lmiui/widget/DropDownPopupWindow;->Ri:Z

    return p0
.end method

.method static synthetic g(Lmiui/widget/DropDownPopupWindow;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->eC()V

    return-void
.end method

.method static synthetic h(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;
    .registers 1

    .line 32
    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow;->Rf:Lmiui/widget/DropDownPopupWindow$Controller;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .registers 4

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/DropDownPopupWindow;->Ri:Z

    .line 361
    iget v0, p0, Lmiui/widget/DropDownPopupWindow;->Rh:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lmiui/widget/DropDownPopupWindow;->c(FFI)V

    .line 362
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 143
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAnchor(Landroid/view/View;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->oF:Landroid/view/View;

    .line 291
    return-void
.end method

.method public setContainerController(Lmiui/widget/DropDownPopupWindow$ContainerController;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->Re:Lmiui/widget/DropDownPopupWindow$ContainerController;

    .line 133
    return-void
.end method

.method public setContentController(Lmiui/widget/DropDownPopupWindow$ContentController;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->Rd:Lmiui/widget/DropDownPopupWindow$ContentController;

    .line 136
    return-void
.end method

.method public setDropDownController(Lmiui/widget/DropDownPopupWindow$Controller;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow;->Rf:Lmiui/widget/DropDownPopupWindow$Controller;

    .line 140
    return-void
.end method

.method public show()V
    .registers 7

    .line 294
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 295
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->oF:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 296
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->oF:Landroid/view/View;

    invoke-virtual {v0, v2, v1, v1}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    goto/16 :goto_94

    .line 298
    :cond_16
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1, v1}, Landroid/widget/PopupWindow;->update(II)V

    goto/16 :goto_94

    .line 301
    :cond_1d
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rd:Lmiui/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_50

    .line 302
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rd:Lmiui/widget/DropDownPopupWindow$ContentController;

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$ContentController;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    .line 303
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_50

    .line 304
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Re:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Re:Lmiui/widget/DropDownPopupWindow$ContainerController;

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->Rc:Lmiui/widget/DropDownPopupWindow$ContainerView;

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    invoke-interface {v0, v2, v3}, Lmiui/widget/DropDownPopupWindow$ContainerController;->onAddContent(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 305
    :cond_3d
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rc:Lmiui/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow$ContainerView;->removeAllViews()V

    .line 306
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rc:Lmiui/widget/DropDownPopupWindow$ContainerView;

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lmiui/widget/DropDownPopupWindow$ContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    :cond_50
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Re:Lmiui/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_59

    .line 312
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Re:Lmiui/widget/DropDownPopupWindow$ContainerController;

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$ContainerController;->onShow()V

    .line 314
    :cond_59
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lmiui/widget/DropDownPopupWindow;->Rg:I

    invoke-direct {p0, v0, v2, v3}, Lmiui/widget/DropDownPopupWindow;->c(FFI)V

    .line 316
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->oF:Landroid/view/View;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->oF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 317
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow;->eD()V

    .line 318
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 319
    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->oF:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 320
    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lmiui/widget/DropDownPopupWindow;->Rc:Lmiui/widget/DropDownPopupWindow$ContainerView;

    const/4 v4, 0x1

    aget v0, v0, v4

    iget-object v4, p0, Lmiui/widget/DropDownPopupWindow;->oF:Landroid/view/View;

    .line 321
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 320
    invoke-virtual {v2, v3, v1, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 322
    goto :goto_94

    .line 323
    :cond_8a
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow;->Rb:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow;->Rc:Lmiui/widget/DropDownPopupWindow$ContainerView;

    const v3, 0x800033

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 326
    :goto_94
    return-void
.end method
