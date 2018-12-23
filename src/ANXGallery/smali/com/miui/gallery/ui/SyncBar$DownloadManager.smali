.class final Lcom/miui/gallery/ui/SyncBar$DownloadManager;
.super Lcom/miui/gallery/ui/SyncBar$ChildManager;
.source "SyncBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SyncBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;
    }
.end annotation


# static fields
.field private static sNeedShowError:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/error/core/ErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurError:Lcom/miui/gallery/error/core/ErrorCode;

.field private mDownloadState:I

.field private mErrorHandler:Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 490
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->sNeedShowError:Ljava/util/LinkedList;

    .line 491
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->sNeedShowError:Ljava/util/LinkedList;

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->STORAGE_FULL:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 492
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->sNeedShowError:Ljava/util/LinkedList;

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->PRIMARY_STORAGE_WRITE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->sNeedShowError:Ljava/util/LinkedList;

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->SECONDARY_STORAGE_WRITE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->sNeedShowError:Ljava/util/LinkedList;

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->STORAGE_LOW:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/ui/SyncBar;I)V
    .locals 1
    .param p1, "bar"    # Lcom/miui/gallery/ui/SyncBar;
    .param p2, "key"    # I

    .prologue
    .line 500
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/SyncBar$ChildManager;-><init>(Lcom/miui/gallery/ui/SyncBar;I)V

    .line 484
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mDownloadState:I

    .line 497
    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    iput-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mCurError:Lcom/miui/gallery/error/core/ErrorCode;

    .line 501
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/SyncBar$DownloadManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SyncBar$DownloadManager;

    .prologue
    .line 478
    iget v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mDownloadState:I

    return v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/ui/SyncBar$DownloadManager;Lcom/miui/gallery/error/core/ErrorCode;)Lcom/miui/gallery/error/core/ErrorCode;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/SyncBar$DownloadManager;
    .param p1, "x1"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mCurError:Lcom/miui/gallery/error/core/ErrorCode;

    return-object p1
.end method

.method private getErrorHandler()Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mErrorHandler:Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mErrorHandler:Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mErrorHandler:Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;

    return-object v0
.end method

.method private statClickWhenDownloading()V
    .locals 2

    .prologue
    .line 626
    const-string v0, "Sync"

    const-string/jumbo v1, "sync_auto_download_click_when_downloading"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    return-void
.end method


# virtual methods
.method public needShow()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 577
    iget v3, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mDownloadState:I

    if-ne v3, v1, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v1

    .line 580
    :cond_1
    iget v3, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mDownloadState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 581
    invoke-direct {p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getErrorHandler()Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;->getErrorTip()Lcom/miui/gallery/error/core/ErrorTip;

    move-result-object v0

    .line 582
    .local v0, "tip":Lcom/miui/gallery/error/core/ErrorTip;
    if-eqz v0, :cond_2

    sget-object v3, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->sNeedShowError:Ljava/util/LinkedList;

    invoke-virtual {v0}, Lcom/miui/gallery/error/core/ErrorTip;->getCode()Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 583
    iget-object v3, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mCurError:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-virtual {v0}, Lcom/miui/gallery/error/core/ErrorTip;->getCode()Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "tip":Lcom/miui/gallery/error/core/ErrorTip;
    :cond_2
    move v1, v2

    .line 586
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 592
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 593
    .local v0, "builder":Lcom/miui/gallery/ui/AlertDialogFragment$Builder;
    iget v3, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mDownloadState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 594
    invoke-direct {p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->statClickWhenDownloading()V

    .line 595
    new-instance v3, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    invoke-direct {v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;-><init>()V

    const v4, 0x7f0e016f

    .line 596
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v3

    const v4, 0x7f0e016e

    .line 597
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v3

    const v4, 0x7f0e02e0

    .line 598
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v0

    .line 600
    :cond_0
    iget v3, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mDownloadState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 601
    invoke-direct {p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getErrorHandler()Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;->getErrorTip()Lcom/miui/gallery/error/core/ErrorTip;

    move-result-object v2

    .line 602
    .local v2, "tip":Lcom/miui/gallery/error/core/ErrorTip;
    if-eqz v2, :cond_1

    .line 603
    new-instance v3, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    invoke-direct {v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;-><init>()V

    .line 604
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/gallery/error/core/ErrorTip;->getMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v3

    .line 605
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/gallery/error/core/ErrorTip;->getActionStr(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/ui/SyncBar$DownloadManager$3;

    invoke-direct {v5, p0, v2}, Lcom/miui/gallery/ui/SyncBar$DownloadManager$3;-><init>(Lcom/miui/gallery/ui/SyncBar$DownloadManager;Lcom/miui/gallery/error/core/ErrorTip;)V

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v3

    const v4, 0x7f0e00bf

    .line 611
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/ui/SyncBar$DownloadManager$2;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager$2;-><init>(Lcom/miui/gallery/ui/SyncBar$DownloadManager;)V

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v0

    .line 620
    .end local v2    # "tip":Lcom/miui/gallery/error/core/ErrorTip;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 621
    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->create()Lcom/miui/gallery/ui/AlertDialogFragment;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v5, "download"

    invoke-virtual {v4, v3, v5}, Lcom/miui/gallery/ui/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 623
    :cond_2
    return-void
.end method

.method public onDownloadCancelled(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "success":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;>;"
    .local p2, "total":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;>;"
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 567
    iput v4, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mDownloadState:I

    .line 568
    new-instance v0, Lcom/miui/gallery/ui/SyncBar$PanelData;

    move-object v2, v1

    move-object v3, v1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/SyncBar$PanelData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0, v4}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->refresh(Lcom/miui/gallery/ui/SyncBar$PanelData;Z)Z

    .line 569
    return-void
.end method

.method public onDownloadComplete(Ljava/util/List;Ljava/util/List;Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 7
    .param p3, "code"    # Lcom/miui/gallery/error/core/ErrorCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;",
            ">;",
            "Lcom/miui/gallery/error/core/ErrorCode;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "success":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;>;"
    .local p2, "total":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;>;"
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 525
    if-eqz p3, :cond_0

    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    if-eq p3, v0, :cond_0

    const/4 v6, 0x1

    .line 526
    .local v6, "downloadError":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 527
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mDownloadState:I

    .line 528
    invoke-direct {p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getErrorHandler()Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/SyncBar$DownloadManager$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager$1;-><init>(Lcom/miui/gallery/ui/SyncBar$DownloadManager;)V

    invoke-virtual {v0, p3, v1}, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;->handleError(Lcom/miui/gallery/error/core/ErrorCode;Lcom/miui/gallery/error/core/ErrorTranslateCallback;)V

    .line 551
    :goto_1
    return-void

    .end local v6    # "downloadError":Z
    :cond_0
    move v6, v4

    .line 525
    goto :goto_0

    .line 548
    .restart local v6    # "downloadError":Z
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mDownloadState:I

    .line 549
    new-instance v0, Lcom/miui/gallery/ui/SyncBar$PanelData;

    move-object v2, v1

    move-object v3, v1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/SyncBar$PanelData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0, v4}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->refresh(Lcom/miui/gallery/ui/SyncBar$PanelData;Z)Z

    goto :goto_1
.end method

.method public onDownloadProgress(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "success":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;>;"
    .local p2, "total":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/download/BatchDownloadManager$BatchItem;>;"
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 555
    iput v7, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mDownloadState:I

    .line 556
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mErrorHandler:Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->mErrorHandler:Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager$ErrorHandler;->clearError()V

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e016f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e016d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, "desc":Ljava/lang/String;
    new-instance v0, Lcom/miui/gallery/ui/SyncBar$PanelData;

    const/4 v3, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/SyncBar$PanelData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0, v4}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->refresh(Lcom/miui/gallery/ui/SyncBar$PanelData;Z)Z

    .line 563
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 513
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getInstance()Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->unregisterBatchDownloadListener(Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;)V

    .line 514
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 505
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->canAutoDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getInstance()Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SyncBar$DownloadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->startBatchDownload(Landroid/content/Context;Z)V

    .line 508
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->getInstance()Lcom/miui/gallery/cloud/download/BatchDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/cloud/download/BatchDownloadManager;->registerBatchDownloadListener(Lcom/miui/gallery/cloud/download/BatchDownloadManager$OnBatchDownloadListener;)V

    .line 509
    return-void
.end method
