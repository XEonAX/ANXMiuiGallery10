.class Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;
.super Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
.source "PhotoPageGifItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageGifItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifDownloadManager"
.end annotation


# instance fields
.field private mOriginProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageGifItem;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageGifItem;Lcom/miui/gallery/ui/PhotoPageGifItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageGifItem;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageGifItem$1;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;-><init>(Lcom/miui/gallery/ui/PhotoPageGifItem;)V

    return-void
.end method

.method private initOriginProgressBar()Landroid/widget/ProgressBar;
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 351
    new-instance v1, Lcom/miui/gallery/widget/CircleStrokeProgressBar;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageGifItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;-><init>(Landroid/content/Context;)V

    .line 352
    .local v1, "progressBar":Lcom/miui/gallery/widget/CircleStrokeProgressBar;
    new-array v2, v6, [I

    const v3, 0x7f020202

    aput v3, v2, v5

    new-array v3, v6, [I

    const v4, 0x7f020204

    aput v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setDrawablesForLevels([I[I[I)V

    .line 353
    new-array v2, v6, [I

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageGifItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v5

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageGifItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b014f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setMiddleStrokeColors([IF)V

    .line 354
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 355
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 356
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 357
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setVisibility(I)V

    .line 358
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-virtual {v2, v1, v0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    return-object v1
.end method


# virtual methods
.method protected adjustProgressBarLocation(ZLandroid/graphics/RectF;Z)V
    .locals 2
    .param p1, "isActionBarVisible"    # Z
    .param p2, "imageRect"    # Landroid/graphics/RectF;
    .param p3, "anim"    # Z

    .prologue
    .line 376
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->getCurDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->adjustProgressBarLocation(ZLandroid/graphics/RectF;Z)V

    goto :goto_0
.end method

.method protected doOnDownloaded(Lcom/miui/gallery/sdk/download/DownloadType;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doOnDownloaded(Lcom/miui/gallery/sdk/download/DownloadType;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->isPagerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->access$600(Lcom/miui/gallery/ui/PhotoPageGifItem;)V

    .line 336
    :cond_0
    return-void
.end method

.method protected doOnProgressVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 340
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doOnProgressVisibilityChanged(Z)V

    .line 341
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->getCurDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->access$000(Lcom/miui/gallery/ui/PhotoPageGifItem;Z)V

    .line 343
    if-eqz p1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->setVisible(Z)V

    .line 348
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 342
    goto :goto_0
.end method

.method protected getErrorTip()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 391
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->getCurDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e015f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageGifItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0314

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getErrorTip()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected getProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 364
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->getCurDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->mOriginProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->initOriginProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->mOriginProgressBar:Landroid/widget/ProgressBar;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->mOriginProgressBar:Landroid/widget/ProgressBar;

    .line 370
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    goto :goto_0
.end method

.method protected needShowDownloadView()Z
    .locals 2

    .prologue
    .line 384
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->getCurDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;->isDrawableDisplayInside()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    .line 385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 387
    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->needShowDownloadView()Z

    move-result v0

    goto :goto_0
.end method
