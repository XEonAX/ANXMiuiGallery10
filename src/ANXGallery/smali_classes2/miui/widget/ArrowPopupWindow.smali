.class public Lmiui/widget/ArrowPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# static fields
.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_MODE:I = 0x1


# instance fields
.field private OJ:I

.field protected mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 93
    sget v0, Lcom/miui/internal/R$style;->Widget_PopupWindow:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 117
    iput-object p1, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Lmiui/widget/ArrowPopupWindow;->ef()V

    .line 119
    return-void
.end method

.method private ef()V
    .registers 5

    .line 134
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->arrow_popup_window_list_max_height:I

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ArrowPopupWindow;->OJ:I

    .line 136
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 137
    sget v1, Lcom/miui/internal/R$layout;->arrow_popup_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ArrowPopupView;

    iput-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    .line 139
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 141
    nop

    .line 142
    invoke-direct {p0}, Lmiui/widget/ArrowPopupWindow;->eg()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_44

    .line 143
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 144
    iget-object v2, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 145
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_45

    .line 148
    :cond_44
    move v0, v1

    :goto_45
    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 149
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 151
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmiui/widget/ArrowPopupWindow;->setSoftInputMode(I)V

    .line 152
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowPopupWindow(Lmiui/widget/ArrowPopupWindow;)V

    .line 153
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 156
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->onPrepareWindow()V

    .line 158
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->update()V

    .line 159
    return-void
.end method

.method private eg()Z
    .registers 4

    .line 277
    nop

    .line 278
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$integer;->window_translucent_status:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 279
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$attr;->windowTranslucentStatus:I

    invoke-static {v0, v2, v1}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    nop

    .line 278
    :cond_20
    return v1
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 2

    .line 298
    if-eqz p1, :cond_8

    .line 299
    iget-object p1, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ArrowPopupView;->animateToDismiss()V

    goto :goto_b

    .line 301
    :cond_8
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->dismiss()V

    .line 303
    :goto_b
    return-void
.end method

.method public getArrowMode()I
    .registers 2

    .line 243
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getArrowMode()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .registers 2

    .line 411
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_b

    .line 413
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 415
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .line 219
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentWidth()I
    .registers 2

    .line 354
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_b

    .line 356
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    .line 358
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 127
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;
    .registers 2

    .line 525
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 398
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentHeight()I

    move-result v0

    return v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 167
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 168
    return-object v0
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .registers 2

    .line 498
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getNegativeButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .registers 2

    .line 469
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getPositiveButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 341
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentWidth()I

    move-result v0

    return v0
.end method

.method protected onPrepareWindow()V
    .registers 1

    .line 177
    return-void
.end method

.method public setArrowMode(I)V
    .registers 3

    .line 252
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowMode(I)V

    .line 253
    return-void
.end method

.method public setContentHeight(I)V
    .registers 4

    .line 441
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 442
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_e

    iget v1, p0, Lmiui/widget/ArrowPopupWindow;->OJ:I

    if-le p1, v1, :cond_e

    .line 444
    iget p1, p0, Lmiui/widget/ArrowPopupWindow;->OJ:I

    .line 446
    :cond_e
    if-eqz v0, :cond_19

    .line 447
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 448
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 449
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    :cond_19
    return-void
.end method

.method public final setContentView(I)V
    .registers 3

    .line 234
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(I)V

    .line 235
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .registers 3

    .line 192
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 208
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    return-void
.end method

.method public setContentWidth(I)V
    .registers 4

    .line 384
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_f

    .line 386
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 387
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 388
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    :cond_f
    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 425
    invoke-virtual {p0, p1}, Lmiui/widget/ArrowPopupWindow;->setContentHeight(I)V

    .line 426
    return-void
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)V
    .registers 4

    .line 489
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiui/widget/ArrowPopupWindow;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 490
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 479
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 480
    return-void
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)V
    .registers 4

    .line 460
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiui/widget/ArrowPopupWindow;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 461
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 332
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 333
    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 516
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/ArrowPopupWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 517
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 507
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setTitle(Ljava/lang/CharSequence;)V

    .line 508
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 3

    .line 322
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 323
    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 368
    invoke-virtual {p0, p1}, Lmiui/widget/ArrowPopupWindow;->setContentWidth(I)V

    .line 369
    return-void
.end method

.method public show(Landroid/view/View;II)V
    .registers 5

    .line 266
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setAnchor(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/widget/ArrowPopupView;->setOffset(II)V

    .line 270
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object p2

    invoke-direct {p0}, Lmiui/widget/ArrowPopupWindow;->eg()Z

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V

    .line 272
    const/4 p2, 0x0

    const p3, 0x800033

    invoke-virtual {p0, p1, p3, p2, p2}, Lmiui/widget/ArrowPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 273
    iget-object p1, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ArrowPopupView;->animateToShow()V

    .line 274
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .registers 4

    .line 286
    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    .line 287
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .registers 5

    .line 312
    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    .line 313
    return-void
.end method

.method public update(IIIIZ)V
    .registers 12

    .line 317
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 318
    return-void
.end method
