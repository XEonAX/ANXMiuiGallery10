.class public Lmiui/widget/ImmersionListPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImmersionListPopupWindow"

.field private static final Tt:F = 8.0f

.field private static final Tu:F = 8.0f


# instance fields
.field private TA:Z

.field private TB:I

.field private TE:Landroid/view/WindowManager;

.field private TF:Landroid/database/DataSetObserver;

.field private Tv:Landroid/widget/FrameLayout;

.field private Tw:Z

.field private Tx:Landroid/widget/AdapterView$OnItemClickListener;

.field private Ty:I

.field private Tz:I

.field private cn:Landroid/widget/ListView;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private final oX:Landroid/graphics/Rect;

.field private final sM:I

.field private final sN:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lmiui/widget/ImmersionListPopupWindow$1;

    invoke-direct {v0, p0}, Lmiui/widget/ImmersionListPopupWindow$1;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->TF:Landroid/database/DataSetObserver;

    .line 75
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    sget v1, Lcom/miui/internal/R$dimen;->list_menu_dialog_maximum_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/ImmersionListPopupWindow;->Ty:I

    .line 79
    sget v1, Lcom/miui/internal/R$dimen;->list_menu_dialog_minimum_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/ImmersionListPopupWindow;->Tz:I

    .line 81
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 82
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/ImmersionListPopupWindow;->sM:I

    .line 83
    iput v0, p0, Lmiui/widget/ImmersionListPopupWindow;->sN:I

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->oX:Landroid/graphics/Rect;

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ImmersionListPopupWindow;->setFocusable(Z)V

    .line 88
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->Tv:Landroid/widget/FrameLayout;

    .line 89
    iget-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->Tv:Landroid/widget/FrameLayout;

    new-instance v1, Lmiui/widget/ImmersionListPopupWindow$2;

    invoke-direct {v1, p0}, Lmiui/widget/ImmersionListPopupWindow$2;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    sget v1, Lmiui/R$attr;->immersionWindowBackground:I

    invoke-static {p1, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 96
    if-eqz p1, :cond_5e

    .line 97
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->oX:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 98
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->Tv:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_5e
    iget-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->Tv:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 103
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object p1

    .line 104
    invoke-virtual {p1, p0, v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V

    .line 105
    invoke-virtual {p1, p0, v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInsetDecor(Landroid/widget/PopupWindow;Z)V

    .line 107
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_81

    .line 109
    sget v0, Lcom/miui/internal/R$style;->Animation_PopupWindow_ImmersionMenu:I

    goto :goto_82

    .line 110
    :cond_81
    nop

    .line 108
    :goto_82
    invoke-virtual {p0, v0}, Lmiui/widget/ImmersionListPopupWindow;->setAnimationStyle(I)V

    .line 111
    return-void
.end method

.method private static a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .registers 13

    .line 265
    nop

    .line 266
    nop

    .line 267
    nop

    .line 268
    nop

    .line 269
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 270
    nop

    .line 271
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 272
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 273
    const/4 v4, 0x0

    move-object v6, p1

    move p1, v0

    move v5, p1

    move-object v7, v4

    :goto_17
    if-ge v0, v3, :cond_3f

    .line 274
    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 275
    if-eq v8, p1, :cond_23

    .line 276
    nop

    .line 277
    nop

    .line 279
    move-object v7, v4

    move p1, v8

    :cond_23
    if-nez v6, :cond_2a

    .line 280
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 282
    :cond_2a
    invoke-interface {p0, v0, v7, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 283
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 284
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 285
    if-lt v8, p3, :cond_38

    .line 286
    return p3

    .line 287
    :cond_38
    if-le v8, v5, :cond_3c

    .line 288
    nop

    .line 273
    move v5, v8

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 291
    :cond_3f
    return v5
.end method

.method static synthetic a(Lmiui/widget/ImmersionListPopupWindow;)I
    .registers 1

    .line 36
    invoke-direct {p0}, Lmiui/widget/ImmersionListPopupWindow;->eT()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/widget/ImmersionListPopupWindow;Z)Z
    .registers 2

    .line 36
    iput-boolean p1, p0, Lmiui/widget/ImmersionListPopupWindow;->TA:Z

    return p1
.end method

.method static synthetic b(Lmiui/widget/ImmersionListPopupWindow;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lmiui/widget/ImmersionListPopupWindow;->eU()V

    return-void
.end method

.method static synthetic c(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListView;
    .registers 1

    .line 36
    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->cn:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic d(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListAdapter;
    .registers 1

    .line 36
    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic e(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 1

    .line 36
    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->Tx:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method private eT()I
    .registers 5

    .line 177
    iget-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow;->TA:Z

    if-nez v0, :cond_14

    .line 178
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    iget v3, p0, Lmiui/widget/ImmersionListPopupWindow;->Ty:I

    invoke-static {v0, v1, v2, v3}, Lmiui/widget/ImmersionListPopupWindow;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ImmersionListPopupWindow;->TB:I

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow;->TA:Z

    .line 182
    :cond_14
    iget v0, p0, Lmiui/widget/ImmersionListPopupWindow;->TB:I

    iget v1, p0, Lmiui/widget/ImmersionListPopupWindow;->Tz:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->oX:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->oX:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method private eU()V
    .registers 5

    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_39

    iget-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow;->Tw:Z

    if-nez v0, :cond_39

    .line 338
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 339
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 340
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v3, 0x800003

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_39

    .line 341
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v3, -0x800004

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 342
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v3, 0x800005

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 343
    invoke-direct {p0}, Lmiui/widget/ImmersionListPopupWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    :cond_39
    return-void
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .registers 3

    .line 249
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->TE:Landroid/view/WindowManager;

    if-nez v0, :cond_10

    .line 250
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->TE:Landroid/view/WindowManager;

    .line 253
    :cond_10
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->TE:Landroid/view/WindowManager;

    return-object v0
.end method

.method private p(Landroid/view/View;)V
    .registers 10

    .line 186
    invoke-static {p1}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow;->Tw:Z

    .line 187
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 188
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 189
    new-array v0, v0, [I

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 191
    iget-boolean v2, p0, Lmiui/widget/ImmersionListPopupWindow;->Tw:Z

    const/16 v3, 0x17

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_5c

    .line 192
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const v6, 0x800033

    if-le v2, v3, :cond_39

    .line 193
    aget v0, v1, v5

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->oX:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget v2, p0, Lmiui/widget/ImmersionListPopupWindow;->sM:I

    add-int/2addr v0, v2

    aget v1, v1, v4

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->oX:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/ImmersionListPopupWindow;->sN:I

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v6, v0, v1}, Lmiui/widget/ImmersionListPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_bd

    .line 199
    :cond_39
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 200
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 201
    aget v2, v0, v4

    iget-object v3, p0, Lmiui/widget/ImmersionListPopupWindow;->oX:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p0, Lmiui/widget/ImmersionListPopupWindow;->sN:I

    add-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    .line 202
    aget v0, v0, v5

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->oX:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ImmersionListPopupWindow;->sM:I

    add-int/2addr v0, v1

    .line 203
    invoke-virtual {p0, p1, v6, v0, v2}, Lmiui/widget/ImmersionListPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 204
    goto :goto_bd

    .line 207
    :cond_5c
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 208
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const v7, 0x800035

    if-le v6, v3, :cond_93

    .line 209
    invoke-direct {p0}, Lmiui/widget/ImmersionListPopupWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 210
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 211
    aget v2, v1, v5

    sub-int/2addr v0, v2

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->oX:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iget v2, p0, Lmiui/widget/ImmersionListPopupWindow;->sM:I

    add-int/2addr v0, v2

    aget v1, v1, v4

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->oX:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/ImmersionListPopupWindow;->sN:I

    add-int/2addr v1, v2

    .line 211
    invoke-virtual {p0, p1, v7, v0, v1}, Lmiui/widget/ImmersionListPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 216
    goto :goto_bd

    .line 219
    :cond_93
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 220
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 221
    aget v2, v0, v4

    iget-object v3, p0, Lmiui/widget/ImmersionListPopupWindow;->oX:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p0, Lmiui/widget/ImmersionListPopupWindow;->sN:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 222
    iget v1, v1, Landroid/graphics/Rect;->right:I

    aget v0, v0, v5

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->oX:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iget v0, p0, Lmiui/widget/ImmersionListPopupWindow;->sM:I

    add-int/2addr v1, v0

    .line 223
    invoke-virtual {p0, p1, v7, v1, v2}, Lmiui/widget/ImmersionListPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 227
    :goto_bd
    return-void
.end method


# virtual methods
.method protected createDefaultFadeInAnimation()Landroid/view/animation/LayoutAnimationController;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createDefaultFadeOutAnimation()Landroid/view/animation/LayoutAnimationController;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public dismiss(Z)V
    .registers 2

    .line 322
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->dismiss()V

    .line 323
    return-void
.end method

.method public fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 3

    .line 236
    invoke-direct {p0}, Lmiui/widget/ImmersionListPopupWindow;->eT()I

    move-result p2

    invoke-virtual {p0, p2}, Lmiui/widget/ImmersionListPopupWindow;->setWidth(I)V

    .line 237
    invoke-direct {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->p(Landroid/view/View;)V

    .line 238
    return-void
.end method

.method protected getBackgroundAnimator(Landroid/view/animation/LayoutAnimationController;Z)Landroid/animation/Animator;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getBlurBackground(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .line 132
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected installHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    .line 114
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 115
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->TF:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 117
    :cond_b
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 118
    iget-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_18

    .line 119
    iget-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->TF:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 121
    :cond_18
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    .line 129
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->Tx:Landroid/widget/AdapterView$OnItemClickListener;

    .line 125
    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 6

    .line 136
    if-nez p1, :cond_a

    .line 137
    const-string p1, "ImmersionListPopupWindow"

    const-string p2, "show: anchor is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 141
    :cond_a
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    const v0, 0x102000a

    if-nez p2, :cond_1f

    .line 142
    new-instance p2, Landroid/widget/ListView;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    .line 143
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 146
    :cond_1f
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->Tv:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_33

    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->Tv:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    if-eq p2, v1, :cond_51

    .line 147
    :cond_33
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->Tv:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 148
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->Tv:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 149
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 150
    const/4 v1, -0x1

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 151
    const/4 v1, -0x2

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 152
    const/16 v1, 0x10

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 155
    :cond_51
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->cn:Landroid/widget/ListView;

    .line 156
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->cn:Landroid/widget/ListView;

    if-nez p2, :cond_67

    .line 157
    const-string p1, "ImmersionListPopupWindow"

    const-string p2, "list not found"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void

    .line 160
    :cond_67
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->cn:Landroid/widget/ListView;

    new-instance v0, Lmiui/widget/ImmersionListPopupWindow$3;

    invoke-direct {v0, p0}, Lmiui/widget/ImmersionListPopupWindow$3;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->cn:Landroid/widget/ListView;

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    invoke-direct {p0}, Lmiui/widget/ImmersionListPopupWindow;->eT()I

    move-result p2

    invoke-virtual {p0, p2}, Lmiui/widget/ImmersionListPopupWindow;->setWidth(I)V

    .line 172
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object p2

    invoke-virtual {p2}, Lmiui/view/inputmethod/InputMethodHelper;->getManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 173
    invoke-direct {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->p(Landroid/view/View;)V

    .line 174
    return-void
.end method
