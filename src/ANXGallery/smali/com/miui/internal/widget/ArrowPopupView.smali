.class public Lcom/miui/internal/widget/ArrowPopupView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;
    }
.end annotation


# static fields
.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_NONE_MODE:I = -0x1

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ArrowPopupView"

.field private static final tk:I = 0x4

.field private static final tl:I = 0x8


# instance fields
.field private ny:Landroid/graphics/drawable/Drawable;

.field private qi:Landroid/widget/LinearLayout;

.field private sD:Landroid/view/View;

.field private sE:Landroid/widget/ImageView;

.field private sF:Landroid/widget/FrameLayout;

.field private sG:Landroid/widget/LinearLayout;

.field private sH:Landroid/widget/TextView;

.field private sI:Landroid/widget/Button;

.field private sJ:Landroid/widget/Button;

.field private sK:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private sL:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private sM:I

.field private sN:I

.field private sO:Landroid/graphics/drawable/Drawable;

.field private sP:Landroid/graphics/drawable/Drawable;

.field private sQ:Landroid/graphics/drawable/Drawable;

.field private sR:Landroid/graphics/drawable/Drawable;

.field private sS:Landroid/graphics/drawable/Drawable;

.field private sT:Landroid/graphics/drawable/Drawable;

.field private sU:Landroid/graphics/drawable/Drawable;

.field private sV:Landroid/graphics/drawable/Drawable;

.field private sW:Lmiui/widget/ArrowPopupWindow;

.field private sX:Landroid/view/View$OnTouchListener;

.field private sY:Landroid/graphics/Rect;

.field private sZ:Landroid/graphics/RectF;

.field private ta:Landroid/animation/AnimatorSet;

.field private tb:Landroid/view/animation/AnimationSet;

.field private tc:Z

.field private td:I

.field private te:I

.field private tf:I

.field private tg:I

.field private th:I

.field private ti:Z

.field private tj:I

.field private tm:Landroid/view/animation/Animation$AnimationListener;

.field private tn:Landroid/view/animation/Animation$AnimationListener;

.field private to:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 192
    sget v0, Lcom/miui/internal/R$attr;->arrowPopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sY:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sZ:Landroid/graphics/RectF;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ti:Z

    .line 147
    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$1;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tm:Landroid/view/animation/Animation$AnimationListener;

    .line 166
    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$2;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$2;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tn:Landroid/view/animation/Animation$AnimationListener;

    .line 185
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    .line 198
    sget-object v1, Lcom/miui/internal/R$styleable;->ArrowPopupView:[I

    .line 199
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 202
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_contentBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->ny:Landroid/graphics/drawable/Drawable;

    .line 203
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_backgroundLeft:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/graphics/drawable/Drawable;

    .line 204
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_backgroundRight:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:Landroid/graphics/drawable/Drawable;

    .line 205
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_titleBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/graphics/drawable/Drawable;

    .line 206
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_topArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sR:Landroid/graphics/drawable/Drawable;

    .line 207
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_topArrowWithTitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sS:Landroid/graphics/drawable/Drawable;

    .line 208
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_bottomArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sT:Landroid/graphics/drawable/Drawable;

    .line 209
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_rightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:Landroid/graphics/drawable/Drawable;

    .line 210
    sget p3, Lcom/miui/internal/R$styleable;->ArrowPopupView_leftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sV:Landroid/graphics/drawable/Drawable;

    .line 212
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->arrow_popup_window_min_border:I

    .line 215
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->td:I

    .line 216
    return-void
.end method

.method private static a(Landroid/content/res/Resources;)I
    .registers 4

    .line 384
    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 385
    if-lez v0, :cond_11

    .line 386
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 388
    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/miui/internal/widget/ArrowPopupView;I)I
    .registers 2

    .line 59
    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tj:I

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/ArrowPopupView;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/view/animation/AnimationSet;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/ArrowPopupView;[F)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->a([F)V

    return-void
.end method

.method private a([F)V
    .registers 8

    .line 641
    nop

    .line 642
    nop

    .line 644
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    .line 646
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    .line 647
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    .line 649
    iget v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_44

    .line 668
    move v0, v5

    goto :goto_3d

    .line 651
    :pswitch_22
    int-to-float v5, v2

    .line 652
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 653
    goto :goto_3d

    .line 655
    :pswitch_29
    int-to-float v5, v3

    .line 656
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 657
    goto :goto_3d

    .line 659
    :pswitch_30
    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v5, v2

    .line 660
    int-to-float v0, v0

    .line 661
    goto :goto_3d

    .line 663
    :pswitch_37
    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v5, v2

    .line 664
    int-to-float v0, v1

    .line 668
    :goto_3d
    const/4 v1, 0x0

    aput v5, p1, v1

    .line 669
    const/4 v1, 0x1

    aput v0, p1, v1

    .line 670
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_22
    .end packed-switch
.end method

.method static synthetic a(Lcom/miui/internal/widget/ArrowPopupView;)Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ti:Z

    return p0
.end method

.method static synthetic a(Lcom/miui/internal/widget/ArrowPopupView;Z)Z
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tc:Z

    return p1
.end method

.method static synthetic b(Lcom/miui/internal/widget/ArrowPopupView;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bE()V

    return-void
.end method

.method private bA()V
    .registers 18

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 393
    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v3

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

    move-result v4

    .line 396
    iget-object v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v6

    if-le v5, v6, :cond_2b

    .line 397
    iget-object v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    goto :goto_31

    :cond_2b
    iget-object v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v5

    .line 399
    :goto_31
    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v7

    if-le v6, v7, :cond_46

    .line 400
    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    goto :goto_4c

    :cond_46
    iget-object v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v6

    .line 401
    :goto_4c
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->bC()I

    move-result v7

    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->bD()I

    move-result v8

    .line 404
    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 405
    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 406
    const/4 v11, 0x0

    aget v12, v10, v11

    .line 407
    const/4 v13, 0x1

    aget v14, v10, v13

    .line 408
    invoke-virtual {v0, v10}, Lcom/miui/internal/widget/ArrowPopupView;->getLocationInWindow([I)V

    .line 409
    div-int/lit8 v15, v1, 0x2

    add-int/2addr v15, v12

    aget v16, v10, v11

    sub-int v15, v15, v16

    iput v15, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    .line 410
    iget v15, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    sub-int v15, v3, v15

    .line 411
    sub-int/2addr v1, v7

    div-int/2addr v1, v9

    add-int/2addr v12, v1

    aget v1, v10, v11

    sub-int/2addr v12, v1

    iput v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->tg:I

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getTop()I

    move-result v1

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    .line 414
    nop

    .line 415
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    if-nez v1, :cond_a2

    .line 416
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    aget v2, v10, v13

    sub-int v2, v14, v2

    sub-int/2addr v2, v6

    iget-object v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    .line 417
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v9, v8

    add-int/2addr v2, v9

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    .line 418
    aget v1, v10, v13

    sub-int/2addr v14, v1

    sub-int/2addr v14, v8

    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:I

    add-int/2addr v1, v14

    goto :goto_bb

    .line 419
    :cond_a2
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    if-ne v1, v13, :cond_ba

    .line 420
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    add-int/2addr v14, v2

    aget v2, v10, v13

    sub-int/2addr v14, v2

    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    .line 421
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v14, v2

    add-int/2addr v14, v8

    add-int/2addr v1, v14

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    .line 422
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    goto :goto_bb

    .line 425
    :cond_ba
    move v1, v11

    :goto_bb
    div-int/lit8 v2, v5, 0x2

    .line 426
    sub-int v9, v5, v2

    .line 427
    iget v10, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    if-lt v10, v2, :cond_cb

    if-lt v15, v9, :cond_cb

    .line 429
    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    sub-int/2addr v9, v2

    iput v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    goto :goto_d8

    .line 430
    :cond_cb
    if-ge v15, v9, :cond_d2

    .line 432
    sub-int v2, v3, v5

    iput v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    goto :goto_d8

    .line 433
    :cond_d2
    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    if-ge v9, v2, :cond_d8

    .line 435
    iput v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    .line 437
    :cond_d8
    :goto_d8
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->sM:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    .line 438
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tg:I

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->sM:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tg:I

    .line 440
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tg:I

    if-gez v2, :cond_ed

    .line 441
    iput v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->tg:I

    goto :goto_fb

    .line 442
    :cond_ed
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tg:I

    add-int/2addr v2, v7

    if-le v2, v3, :cond_fb

    .line 443
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tg:I

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->tg:I

    add-int/2addr v9, v7

    sub-int/2addr v9, v3

    sub-int/2addr v2, v9

    iput v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tg:I

    .line 448
    :cond_fb
    :goto_fb
    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Landroid/view/View;

    invoke-direct {v0, v2}, Lcom/miui/internal/widget/ArrowPopupView;->h(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_113

    .line 449
    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/internal/widget/ArrowPopupView;->a(Landroid/content/res/Resources;)I

    move-result v2

    .line 450
    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    sub-int/2addr v9, v2

    iput v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    .line 451
    sub-int/2addr v1, v2

    .line 454
    :cond_113
    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    iget v9, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    .line 455
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    .line 456
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    add-int/2addr v11, v5

    .line 457
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    add-int/2addr v5, v6

    .line 458
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 454
    invoke-virtual {v2, v9, v10, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 460
    iget-object v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    iget v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->tg:I

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->tg:I

    add-int/2addr v0, v7

    add-int/2addr v8, v1

    invoke-virtual {v2, v3, v1, v0, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 464
    return-void
.end method

.method private bB()V
    .registers 19

    .line 467
    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 468
    iget-object v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 469
    const/4 v3, 0x0

    aget v4, v2, v3

    .line 470
    const/4 v5, 0x1

    aget v6, v2, v5

    .line 471
    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ArrowPopupView;->getLocationInWindow([I)V

    .line 472
    iget-object v7, v0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 473
    iget-object v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v9

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

    move-result v10

    .line 476
    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v12

    if-le v11, v12, :cond_3c

    .line 478
    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    goto :goto_42

    :cond_3c
    iget-object v11, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v11

    .line 480
    :goto_42
    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    iget-object v13, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v13

    if-le v12, v13, :cond_57

    .line 481
    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    goto :goto_5d

    :cond_57
    iget-object v12, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v12

    .line 482
    :goto_5d
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->bC()I

    move-result v13

    .line 483
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->bD()I

    move-result v14

    .line 484
    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v6

    aget v16, v2, v5

    sub-int v15, v15, v16

    iput v15, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    .line 485
    iget v15, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    sub-int v15, v10, v15

    .line 486
    sub-int/2addr v8, v14

    div-int/2addr v8, v1

    add-int/2addr v6, v8

    aget v5, v2, v5

    sub-int/2addr v6, v5

    iput v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    .line 488
    div-int/lit8 v5, v12, 0x2

    .line 489
    sub-int v6, v12, v5

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getLeft()I

    move-result v8

    iget v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->sM:I

    add-int/2addr v8, v3

    iput v8, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    .line 492
    nop

    .line 493
    iget v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    if-ne v3, v1, :cond_a8

    .line 494
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    sub-int v3, v4, v11

    iget-object v7, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    .line 495
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v3, v7

    sub-int/2addr v3, v13

    const/4 v7, 0x0

    aget v8, v2, v7

    sub-int/2addr v3, v8

    add-int/2addr v1, v3

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    .line 496
    sub-int/2addr v4, v13

    aget v1, v2, v7

    sub-int/2addr v4, v1

    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sM:I

    add-int v3, v4, v1

    goto :goto_c3

    .line 497
    :cond_a8
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_c2

    .line 498
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    add-int/2addr v4, v7

    iget-object v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    .line 499
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v4, v3

    add-int/2addr v4, v13

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v4, v2

    add-int/2addr v1, v4

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    .line 500
    iget v3, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    goto :goto_c3

    .line 503
    :cond_c2
    const/4 v3, 0x0

    :goto_c3
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    if-lt v1, v5, :cond_d2

    if-lt v15, v6, :cond_d2

    .line 505
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    sub-int/2addr v1, v5

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    goto :goto_e4

    .line 506
    :cond_d2
    if-ge v15, v6, :cond_dc

    .line 508
    sub-int v1, v10, v12

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    goto :goto_e4

    .line 509
    :cond_dc
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    if-ge v1, v5, :cond_e4

    .line 511
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:I

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    .line 513
    :cond_e4
    :goto_e4
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->sN:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    .line 515
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    if-gez v1, :cond_f3

    .line 516
    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    goto :goto_101

    .line 517
    :cond_f3
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    add-int/2addr v1, v14

    if-le v1, v10, :cond_101

    .line 518
    iget v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    add-int/2addr v2, v14

    sub-int/2addr v2, v10

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    .line 521
    :cond_101
    :goto_101
    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->h(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 522
    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/internal/widget/ArrowPopupView;->a(Landroid/content/res/Resources;)I

    move-result v1

    .line 523
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    .line 524
    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    .line 527
    :cond_11d
    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    .line 528
    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    .line 529
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    add-int/2addr v5, v11

    .line 530
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    add-int/2addr v6, v12

    .line 531
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 527
    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 533
    iget-object v1, v0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    iget v2, v0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    add-int/2addr v13, v3

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    add-int/2addr v0, v14

    invoke-virtual {v1, v3, v2, v13, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 537
    return-void
.end method

.method private bC()I
    .registers 2

    .line 540
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 541
    if-nez v0, :cond_12

    .line 542
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 545
    :cond_12
    return v0
.end method

.method private bD()I
    .registers 2

    .line 549
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 550
    if-nez v0, :cond_12

    .line 551
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 554
    :cond_12
    return v0
.end method

.method private bE()V
    .registers 13

    .line 757
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_a4

    .line 758
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_d

    .line 759
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 761
    :cond_d
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ta:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_16

    .line 762
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ta:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 764
    :cond_16
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ta:Landroid/animation/AnimatorSet;

    .line 765
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ta:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$4;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$4;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 772
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    .line 773
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 774
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    if-eqz v2, :cond_49

    packed-switch v2, :pswitch_data_a6

    goto :goto_4b

    .line 780
    :pswitch_42
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 781
    goto :goto_4b

    .line 784
    :pswitch_45
    neg-float v0, v0

    .line 785
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_4b

    .line 776
    :cond_49
    neg-float v0, v0

    .line 777
    nop

    .line 789
    :goto_4b
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v7, 0x1

    aput v0, v4, v7

    const/4 v8, 0x2

    aput v6, v4, v8

    invoke-static {v2, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 790
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 791
    const-wide/16 v9, 0x4b0

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 792
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 793
    new-instance v11, Lcom/miui/internal/widget/ArrowPopupView$5;

    invoke-direct {v11, p0}, Lcom/miui/internal/widget/ArrowPopupView$5;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v2, v11}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 803
    iget-object v11, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    new-array v3, v3, [F

    aput v6, v3, v5

    aput v0, v3, v7

    aput v6, v3, v8

    invoke-static {v11, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 804
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 805
    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 806
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 808
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->ta:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v2, v3, v5

    aput-object v0, v3, v7

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 809
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ta:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 811
    :cond_a4
    return-void

    nop

    :pswitch_data_a6
    .packed-switch 0x2
        :pswitch_45
        :pswitch_42
    .end packed-switch
.end method

.method private bF()V
    .registers 14

    .line 817
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 818
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 820
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v2

    .line 821
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

    move-result v3

    .line 822
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    .line 823
    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    .line 824
    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 825
    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 827
    const/4 v8, 0x4

    new-array v9, v8, [I

    .line 828
    const/4 v10, 0x1

    aget v11, v1, v10

    sub-int/2addr v11, v5

    const/4 v12, 0x0

    aput v11, v9, v12

    .line 829
    aget v11, v1, v10

    sub-int/2addr v3, v11

    sub-int/2addr v3, v6

    sub-int/2addr v3, v5

    aput v3, v9, v10

    .line 830
    aget v3, v1, v12

    sub-int/2addr v3, v4

    aput v3, v9, v0

    .line 831
    aget v0, v1, v12

    sub-int/2addr v2, v0

    sub-int/2addr v2, v7

    sub-int/2addr v2, v4

    const/4 v0, 0x3

    aput v2, v9, v0

    .line 835
    nop

    .line 836
    nop

    .line 837
    const/high16 v0, -0x80000000

    move v1, v0

    move v0, v12

    :goto_4c
    if-ge v12, v8, :cond_64

    .line 838
    aget v2, v9, v12

    iget v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->td:I

    if-lt v2, v3, :cond_58

    .line 839
    nop

    .line 840
    nop

    .line 846
    move v0, v12

    goto :goto_64

    .line 841
    :cond_58
    aget v2, v9, v12

    if-le v2, v1, :cond_61

    .line 842
    nop

    .line 843
    aget v0, v9, v12

    .line 837
    move v1, v0

    move v0, v12

    :cond_61
    add-int/lit8 v12, v12, 0x1

    goto :goto_4c

    .line 846
    :cond_64
    :goto_64
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowMode(I)V

    .line 847
    return-void
.end method

.method private bx()V
    .registers 6

    .line 296
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_e

    .line 299
    :cond_a
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bB()V

    goto :goto_11

    .line 297
    :cond_e
    :goto_e
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bA()V

    .line 303
    :goto_11
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_67

    .line 305
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 306
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->qi:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_41

    .line 307
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->qi:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_58

    .line 309
    :cond_41
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    if-le v2, v3, :cond_58

    .line 310
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 311
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    :cond_58
    :goto_58
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_60

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v0, :cond_67

    .line 314
    :cond_60
    const-string v0, "ArrowPopupView"

    const-string v1, "Invalid LayoutPrams of content view, please check the anchor view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_67
    return-void
.end method

.method private by()Z
    .registers 3

    .line 372
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bz()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 373
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sW:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 374
    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_1f

    const/4 v1, 0x1

    nop

    :cond_1f
    return v1

    .line 376
    :cond_20
    return v1
.end method

.method private bz()Z
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sW:Lmiui/widget/ArrowPopupWindow;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sW:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static synthetic c(Lcom/miui/internal/widget/ArrowPopupView;)Lmiui/widget/ArrowPopupWindow;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sW:Lmiui/widget/ArrowPopupWindow;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ta:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/view/animation/AnimationSet;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation$AnimationListener;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tm:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/internal/widget/ArrowPopupView;)I
    .registers 1

    .line 59
    iget p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tj:I

    return p0
.end method

.method private g(Landroid/view/View;)Z
    .registers 7

    .line 320
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_61

    .line 322
    :try_start_7
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 323
    const-string v2, "getRootWindowInsets"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 324
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 325
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 326
    if-eqz p1, :cond_60

    .line 327
    const-string v0, "android.view.WindowInsets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 328
    const-string v3, "getDisplayCutout"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 330
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_38} :catch_58
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_38} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_38} :catch_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_38} :catch_3d

    if-eqz p1, :cond_3c

    move v1, v2

    nop

    :cond_3c
    return v1

    .line 338
    :catch_3d
    move-exception p1

    .line 339
    const-string v0, "ArrowPopupView"

    const-string v2, "ClassNotFoundException in isNotchOverOreo()"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    .line 336
    :catch_46
    move-exception p1

    .line 337
    const-string v0, "ArrowPopupView"

    const-string v2, "InvocationTargetException in isNotchOverOreo()"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60

    .line 334
    :catch_4f
    move-exception p1

    .line 335
    const-string v0, "ArrowPopupView"

    const-string v2, "IllegalAccessException in isNotchOverOreo()"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60

    .line 332
    :catch_58
    move-exception p1

    .line 333
    const-string v0, "ArrowPopupView"

    const-string v2, "NoSuchMethodException in isNotchOverOreo()"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    :cond_60
    :goto_60
    nop

    .line 342
    :cond_61
    :goto_61
    return v1
.end method

.method static synthetic h(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private h(Landroid/view/View;)Z
    .registers 4

    .line 346
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bz()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->g(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 347
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sW:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p1}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 349
    :try_start_1c
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "layoutInDisplayCutoutMode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 350
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 352
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->by()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 353
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    .line 354
    return v1

    .line 357
    :cond_40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1c .. :try_end_48} :catch_54
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_48} :catch_4b

    if-eqz p1, :cond_5c

    .line 358
    return v1

    .line 363
    :catch_4b
    move-exception p1

    .line 364
    const-string v0, "ArrowPopupView"

    const-string v1, "NoSuchFieldException in isNotchShow()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    .line 361
    :catch_54
    move-exception p1

    .line 362
    const-string v0, "ArrowPopupView"

    const-string v1, "NoSuchFieldException in isNotchShow()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    :cond_5c
    nop

    .line 367
    :cond_5d
    :goto_5d
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public animateToDismiss()V
    .registers 13

    .line 718
    iget-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tc:Z

    if-eqz v0, :cond_5

    .line 719
    return-void

    .line 722
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ta:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_e

    .line 723
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ta:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 726
    :cond_e
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_17

    .line 727
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 730
    :cond_17
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/view/animation/AnimationSet;

    .line 732
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 733
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->a([F)V

    .line 735
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    const/4 v2, 0x0

    aget v8, v0, v2

    const/4 v9, 0x0

    aget v10, v0, v1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 740
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 742
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_51

    .line 743
    const-wide/16 v1, 0x96

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 744
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_58

    .line 746
    :cond_51
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 749
    :goto_58
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 750
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 751
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tn:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 752
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 753
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tb:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 754
    return-void
.end method

.method public animateToShow()V
    .registers 3

    .line 673
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->invalidate()V

    .line 674
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$3;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$3;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 715
    return-void
.end method

.method public enableShowingAnimation(Z)V
    .registers 2

    .line 907
    iput-boolean p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->ti:Z

    .line 908
    return-void
.end method

.method public getArrowMode()I
    .registers 2

    .line 850
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sF:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_10

    .line 258
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sF:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 260
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sJ:Landroid/widget/Button;

    return-object v0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sI:Landroid/widget/Button;

    return-object v0
.end method

.method public getRollingPercent()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 633
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 567
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->ny:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 568
    return-void

    .line 571
    :cond_5
    nop

    .line 572
    nop

    .line 573
    nop

    .line 574
    nop

    .line 575
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 576
    iget v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 578
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_130

    .line 604
    move v2, v3

    move v5, v4

    move v6, v5

    goto :goto_91

    .line 592
    :pswitch_2a
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 593
    iget v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 594
    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v6

    sub-int/2addr v6, v5

    .line 595
    iget v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    sub-int/2addr v5, v7

    .line 596
    goto :goto_91

    .line 598
    :pswitch_42
    const/high16 v2, 0x42b40000    # 90.0f

    .line 599
    iget v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->th:I

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 600
    iget v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    sub-int v6, v5, v6

    .line 601
    iget-object v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v7

    sub-int v5, v7, v5

    goto :goto_91

    .line 580
    :pswitch_5c
    nop

    .line 581
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->tg:I

    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 582
    iget v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    sub-int v5, v2, v5

    .line 583
    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getRight()I

    move-result v6

    sub-int v2, v6, v2

    .line 584
    nop

    .line 604
    move v6, v5

    move v5, v2

    move v2, v3

    goto :goto_91

    .line 586
    :pswitch_79
    const/high16 v2, 0x43340000    # 180.0f

    .line 587
    iget v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->tg:I

    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 588
    iget-object v6, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getRight()I

    move-result v6

    sub-int/2addr v6, v5

    .line 589
    iget v7, p0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    sub-int/2addr v5, v7

    .line 590
    nop

    .line 604
    :goto_91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 605
    int-to-float v8, v0

    int-to-float v9, v1

    invoke-virtual {p1, v2, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 606
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    packed-switch v2, :pswitch_data_13c

    goto/16 :goto_12b

    .line 619
    :pswitch_a1
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 620
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v4, v4, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 621
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_cc

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tj:I

    :goto_ca
    int-to-float v0, v0

    goto :goto_d0

    :cond_cc
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tj:I

    neg-int v0, v0

    goto :goto_ca

    :goto_d0
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 622
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 623
    int-to-float v0, v6

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 624
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v4, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 625
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_12b

    .line 609
    :pswitch_ed
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->te:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->tf:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 610
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v4, v4, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 611
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10a

    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tj:I

    :goto_108
    int-to-float v0, v0

    goto :goto_10e

    :cond_10a
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->tj:I

    neg-int v0, v0

    goto :goto_108

    :goto_10e
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 612
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 613
    int-to-float v0, v6

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 614
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v4, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 615
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 616
    nop

    .line 628
    :goto_12b
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 629
    return-void

    nop

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_79
        :pswitch_5c
        :pswitch_42
        :pswitch_2a
    .end packed-switch

    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_ed
        :pswitch_ed
        :pswitch_a1
        :pswitch_a1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 6

    .line 220
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 221
    sget v0, Lcom/miui/internal/R$id;->popup_arrow:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    .line 222
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sF:Landroid/widget/FrameLayout;

    .line 223
    sget v0, Lcom/miui/internal/R$id;->content_wrapper:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    .line 224
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->ny:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sP:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_48

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 228
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 229
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 232
    :cond_48
    sget v0, Lcom/miui/internal/R$id;->title_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->qi:Landroid/widget/LinearLayout;

    .line 233
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->qi:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sQ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/widget/TextView;

    .line 235
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sI:Landroid/widget/Button;

    .line 236
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sJ:Landroid/widget/Button;

    .line 238
    new-instance v0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 239
    new-instance v0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 240
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sI:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sJ:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 559
    iget p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    .line 560
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bF()V

    .line 562
    :cond_8
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->bx()V

    .line 563
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 893
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 894
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 897
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sY:Landroid/graphics/Rect;

    .line 898
    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->sG:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 899
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_24

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_24

    .line 900
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sW:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p1, v4}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 901
    return v4

    .line 903
    :cond_24
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sX:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sX:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    :goto_32
    return v4
.end method

.method public setAnchor(Landroid/view/View;)V
    .registers 2

    .line 875
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sD:Landroid/view/View;

    .line 876
    return-void
.end method

.method public setArrowMode(I)V
    .registers 3

    .line 854
    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->to:I

    .line 855
    packed-switch p1, :pswitch_data_32

    goto :goto_31

    .line 865
    :pswitch_6
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    goto :goto_31

    .line 869
    :pswitch_e
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sU:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_31

    .line 857
    :pswitch_16
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->qi:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sS:Landroid/graphics/drawable/Drawable;

    goto :goto_25

    :cond_23
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sR:Landroid/graphics/drawable/Drawable;

    :goto_25
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 858
    goto :goto_31

    .line 861
    :pswitch_29
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sE:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 862
    nop

    .line 872
    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_29
        :pswitch_16
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public setArrowPopupWindow(Lmiui/widget/ArrowPopupWindow;)V
    .registers 2

    .line 884
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sW:Lmiui/widget/ArrowPopupWindow;

    .line 885
    return-void
.end method

.method public setContentView(I)V
    .registers 4

    .line 264
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    .line 265
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    .line 245
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sF:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 251
    if-eqz p1, :cond_c

    .line 252
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sF:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    :cond_c
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sJ:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sJ:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/16 p1, 0x8

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sL:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    return-void
.end method

.method public setOffset(II)V
    .registers 3

    .line 879
    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sM:I

    .line 880
    iput p2, p0, Lcom/miui/internal/widget/ArrowPopupView;->sN:I

    .line 881
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 279
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sI:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sI:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/16 p1, 0x8

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sK:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    return-void
.end method

.method public setRollingPercent(F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4

    .line 268
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->qi:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x8

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->sH:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .line 888
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->sX:Landroid/view/View$OnTouchListener;

    .line 889
    return-void
.end method
