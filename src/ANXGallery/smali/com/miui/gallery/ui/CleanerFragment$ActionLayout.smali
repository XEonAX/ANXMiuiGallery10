.class Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;
.super Ljava/lang/Object;
.source "CleanerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CleanerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionLayout"
.end annotation


# instance fields
.field private mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private mButton:Landroid/widget/TextView;

.field private mDescription:Landroid/widget/TextView;

.field private mLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field private mTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/gallery/ui/CleanerFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/CleanerFragment;Landroid/view/View;)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 304
    iput-object p2, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mView:Landroid/view/View;

    .line 305
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 307
    const v0, 0x7f120076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mTitle:Landroid/widget/TextView;

    .line 308
    const v0, 0x7f1200ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mDescription:Landroid/widget/TextView;

    .line 309
    const v0, 0x7f1200f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mButton:Landroid/widget/TextView;

    .line 310
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->showNoScanResultTip()V

    return-void
.end method

.method private cancelAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 372
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 373
    iput-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 374
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 376
    :cond_0
    return-void
.end method

.method private showNoScanResultTip()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0e00d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 361
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mDescription:Landroid/widget/TextView;

    const v1, 0x7f0e00d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 362
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mButton:Landroid/widget/TextView;

    const v1, 0x7f0e00d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 363
    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 4
    .param p1, "anim"    # Z

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->cancelAnimation()V

    .line 337
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 339
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 340
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 341
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout$1;-><init>(Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 353
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->this$0:Lcom/miui/gallery/ui/CleanerFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/CleanerFragment;->onBackPressed()Z

    .line 388
    :cond_0
    return-void
.end method

.method public setHeight(II)V
    .locals 2
    .param p1, "topMargin"    # I
    .param p2, "height"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 315
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 316
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    return-void
.end method

.method public setMarginTop(I)V
    .locals 2
    .param p1, "marginTop"    # I

    .prologue
    .line 379
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 380
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "anim"    # Z

    .prologue
    .line 320
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->show(ZJ)V

    .line 321
    return-void
.end method

.method public show(ZJ)V
    .locals 4
    .param p1, "anim"    # Z
    .param p2, "delay"    # J

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->cancelAnimation()V

    .line 325
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 327
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 328
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 329
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 330
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    return-void
.end method
