.class public Lcom/miui/gallery/picker/PickGalleryActivity;
.super Lcom/miui/gallery/picker/PickerActivity;
.source "PickGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;,
        Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;,
        Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;
    }
.end annotation


# instance fields
.field private mCancelConfirmListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCloseType:I

.field private mContinueDownloadListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCurrentPagePosition:I

.field private mDownloadListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDownloadPendings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

.field private mOriginRequestPendings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

.field private mParseTask:Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

.field private mPickIntent:Landroid/content/Intent;

.field private mProgressDialog:Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

.field private mResults:[Landroid/net/Uri;

.field private mSha1s:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickerActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCurrentPagePosition:I

    .line 626
    new-instance v0, Lcom/miui/gallery/picker/PickGalleryActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/PickGalleryActivity$3;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    .line 638
    new-instance v0, Lcom/miui/gallery/picker/PickGalleryActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/PickGalleryActivity$4;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    .line 651
    new-instance v0, Lcom/miui/gallery/picker/PickGalleryActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/PickGalleryActivity$5;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mContinueDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    .line 660
    new-instance v0, Lcom/miui/gallery/picker/PickGalleryActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/PickGalleryActivity$6;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCancelConfirmListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 675
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/picker/PickGalleryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCurrentPagePosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/picker/PickGalleryActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCurrentPagePosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/picker/PickGalleryActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/picker/PickGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->startDownload()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mProgressDialog:Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mProgressDialog:Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/miui/gallery/picker/PickGalleryActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->parseOriginUrlResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginRequestPendings:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/Downloader;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/Downloader;)Lcom/miui/gallery/picker/uri/Downloader;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Lcom/miui/gallery/picker/uri/Downloader;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    return-object p1
.end method

.method static synthetic access$202(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;)Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mParseTask:Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/picker/PickGalleryActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/picker/PickGalleryActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->doCompleteOperation(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/picker/PickGalleryActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->prepareResult(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/picker/PickGalleryActivity;)[Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/picker/PickGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->parseResult()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/picker/PickGalleryActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->showConfirmDialog(Z)V

    return-void
.end method

.method private doCompleteOperation(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->isPickIntentMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    iget v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCloseType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mPickIntent:Landroid/content/Intent;

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 526
    :goto_0
    return-void

    .line 516
    :cond_0
    iget v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCloseType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 517
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->finish()V

    .line 518
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 523
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 524
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->finish()V

    goto :goto_0
.end method

.method private getPageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    const-string v0, "home"

    .line 160
    :goto_0
    return-object v0

    .line 157
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 158
    const-string v0, "album"

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResultIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->isPickIntentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mPickIntent:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method private isPickIntentMode()Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mPickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseOriginUrlResult(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "originRequestResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;>;"
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v1

    .line 487
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 489
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;

    invoke-virtual {v3}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_0
    const-string v3, "pick-result-origin-download-info"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 492
    const-string v3, "pick-result-data"

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 493
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 495
    invoke-direct {p0, v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->doCompleteOperation(Landroid/content/Intent;)V

    .line 496
    return-void
.end method

.method private parseResult()V
    .locals 15

    .prologue
    const/4 v12, 0x2

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 361
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    array-length v9, v9

    if-nez v9, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->finish()V

    .line 427
    :goto_0
    return-void

    .line 366
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v1, "checkedResultUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v0, "checkedResultSha1s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    array-length v9, v9

    if-ge v3, v9, :cond_2

    .line 369
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v9, v9, v3

    if-eqz v9, :cond_1

    .line 370
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v9, v9, v3

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mSha1s:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 374
    :cond_2
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    array-length v9, v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 375
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/net/Uri;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    iput-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    .line 376
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mSha1s:[Ljava/lang/String;

    .line 377
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    array-length v9, v9

    if-nez v9, :cond_3

    .line 378
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->finish()V

    goto :goto_0

    .line 383
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v9

    invoke-interface {v9}, Lcom/miui/gallery/picker/helper/Picker;->getResultType()Lcom/miui/gallery/picker/helper/Picker$ResultType;

    move-result-object v7

    .line 384
    .local v7, "type":Lcom/miui/gallery/picker/helper/Picker$ResultType;
    const-string v9, "PickGalleryActivity"

    const-string v10, "parse raw results[%s] for %s"

    iget-object v11, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    invoke-static {v9, v10, v11, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    sget-object v9, Lcom/miui/gallery/picker/helper/Picker$ResultType;->OPEN_URI:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    if-ne v7, v9, :cond_4

    .line 387
    const/4 v3, 0x0

    :goto_2
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    array-length v9, v9

    if-ge v3, v9, :cond_4

    .line 388
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    iget-object v10, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/gallery/provider/GalleryOpenProvider;->translateToContent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    aput-object v10, v9, v3

    .line 387
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 392
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v9

    invoke-interface {v9}, Lcom/miui/gallery/picker/helper/Picker;->getImageType()Lcom/miui/gallery/picker/helper/Picker$ImageType;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN_OR_DOWNLOAD_INFO:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    if-ne v9, v10, :cond_5

    .line 393
    new-instance v9, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    iget-object v10, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginRequestPendings:Ljava/util/ArrayList;

    new-instance v11, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/PickGalleryActivity$1;)V

    invoke-direct {v9, v10, v11}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;-><init>(Ljava/util/ArrayList;Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;)V

    iput-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    .line 394
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    iget-object v10, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    iget-object v11, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mSha1s:[Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->start([Landroid/net/Uri;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :cond_5
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v4

    .line 399
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v9

    invoke-interface {v9}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v5

    .line 400
    .local v5, "mediaType":Lcom/miui/gallery/picker/helper/Picker$MediaType;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v9

    invoke-interface {v9}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/picker/helper/Picker$Mode;->MULTIPLE:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-eq v9, v10, :cond_6

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v9

    invoke-interface {v9}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v9

    sget-object v10, Lcom/miui/gallery/picker/helper/Picker$Mode;->UNLIMITED:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-ne v9, v10, :cond_a

    .line 402
    :cond_6
    sget-object v9, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v5, v9, :cond_7

    .line 403
    new-instance v2, Landroid/content/ClipData;

    const-string v9, "data"

    new-array v10, v12, [Ljava/lang/String;

    const-string v11, "image/*"

    aput-object v11, v10, v13

    const-string/jumbo v11, "text/uri-list"

    aput-object v11, v10, v14

    new-instance v11, Landroid/content/ClipData$Item;

    iget-object v12, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v12, v12, v13

    invoke-direct {v11, v12}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v2, v9, v10, v11}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 410
    .local v2, "clip":Landroid/content/ClipData;
    :goto_3
    const/4 v3, 0x1

    :goto_4
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    array-length v9, v9

    if-ge v3, v9, :cond_9

    .line 411
    new-instance v9, Landroid/content/ClipData$Item;

    iget-object v10, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v10, v10, v3

    invoke-direct {v9, v10}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v9}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 410
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 404
    .end local v2    # "clip":Landroid/content/ClipData;
    :cond_7
    sget-object v9, Lcom/miui/gallery/picker/helper/Picker$MediaType;->ALL:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v5, v9, :cond_8

    .line 405
    new-instance v2, Landroid/content/ClipData;

    const-string v9, "data"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "image/*"

    aput-object v11, v10, v13

    const-string/jumbo v11, "video/*"

    aput-object v11, v10, v14

    const-string/jumbo v11, "text/uri-list"

    aput-object v11, v10, v12

    new-instance v11, Landroid/content/ClipData$Item;

    iget-object v12, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v12, v12, v13

    invoke-direct {v11, v12}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v2, v9, v10, v11}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .restart local v2    # "clip":Landroid/content/ClipData;
    goto :goto_3

    .line 407
    .end local v2    # "clip":Landroid/content/ClipData;
    :cond_8
    new-instance v2, Landroid/content/ClipData;

    const-string v9, "data"

    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v11, "video/*"

    aput-object v11, v10, v13

    const-string/jumbo v11, "text/uri-list"

    aput-object v11, v10, v14

    new-instance v11, Landroid/content/ClipData$Item;

    iget-object v12, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v12, v12, v13

    invoke-direct {v11, v12}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v2, v9, v10, v11}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .restart local v2    # "clip":Landroid/content/ClipData;
    goto :goto_3

    .line 414
    :cond_9
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 415
    const-string v9, "pick-result-data"

    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 424
    .end local v2    # "clip":Landroid/content/ClipData;
    :goto_5
    invoke-virtual {v4, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 426
    invoke-direct {p0, v4}, Lcom/miui/gallery/picker/PickGalleryActivity;->doCompleteOperation(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 416
    :cond_a
    sget-object v9, Lcom/miui/gallery/picker/helper/Picker$ResultType;->OPEN_URI:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    if-ne v7, v9, :cond_b

    .line 417
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v8, v9, v13

    .line 418
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 419
    .local v6, "mimeType":Ljava/lang/String;
    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 421
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_b
    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    aget-object v9, v9, v13

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v4, v9}, Lcom/miui/gallery/picker/PickGalleryActivity;->parseSingle(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private parseSingle(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->getResultType()Lcom/miui/gallery/picker/helper/Picker$ResultType;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/picker/helper/Picker$ResultType;->LEGACY_MEDIA:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    if-ne v3, v4, :cond_1

    .line 547
    invoke-direct {p0, p2}, Lcom/miui/gallery/picker/PickGalleryActivity;->queryMediaUri(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 548
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 549
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 553
    .local v2, "result":Landroid/net/Uri;
    invoke-static {p2}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "mimeType":Ljava/lang/String;
    const-string v3, "*/*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 555
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 557
    :cond_2
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private prepareResult(Landroid/database/Cursor;)V
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v12, 0x0

    .line 311
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 312
    .local v10, "resultCount":I
    new-array v0, v10, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    .line 313
    new-array v0, v10, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mSha1s:[Ljava/lang/String;

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginRequestPendings:Ljava/util/ArrayList;

    .line 317
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 318
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 319
    .local v1, "position":I
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mSha1s:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 320
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 321
    .local v9, "path":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 329
    .end local v7    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->getImageType()Lcom/miui/gallery/picker/helper/Picker$ImageType;

    move-result-object v8

    .line 330
    .local v8, "imageType":Lcom/miui/gallery/picker/helper/Picker$ImageType;
    sget-object v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    if-ne v8, v0, :cond_2

    .line 333
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    sget-object v6, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 338
    .local v6, "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v2, v3, v6, v4, v1}, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    .end local v6    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_1
    sget-object v6, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    .restart local v6    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    goto :goto_1

    .line 342
    .end local v6    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_2
    sget-object v0, Lcom/miui/gallery/picker/helper/Picker$ImageType;->ORIGIN_OR_DOWNLOAD_INFO:Lcom/miui/gallery/picker/helper/Picker$ImageType;

    if-ne v8, v0, :cond_3

    .line 343
    iget-object v11, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginRequestPendings:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x7

    .line 344
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginUrlRequestTask;-><init>(ILandroid/net/Uri;III)V

    .line 343
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_3
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 348
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 349
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 351
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 356
    .end local v7    # "file":Ljava/io/File;
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-direct {v2, v3, v4, v12, v1}, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 358
    .end local v1    # "position":I
    .end local v8    # "imageType":Lcom/miui/gallery/picker/helper/Picker$ImageType;
    .end local v9    # "path":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private queryMediaUri(Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 563
    const/4 v7, 0x0

    .line 564
    .local v7, "dataType":Ljava/lang/String;
    const/4 v8, 0x0

    .line 565
    .local v8, "uri":Landroid/net/Uri;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 566
    const/4 v6, 0x0

    .line 568
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->getMediaType()Lcom/miui/gallery/picker/helper/Picker$MediaType;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$MediaType;->IMAGE:Lcom/miui/gallery/picker/helper/Picker$MediaType;

    if-ne v0, v1, :cond_3

    .line 569
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 570
    const-string/jumbo v7, "vnd.android.cursor.dir/image"

    .line 571
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 586
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 590
    :cond_0
    if-eqz v6, :cond_1

    .line 591
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 597
    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    return-object v0

    .line 578
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 579
    const-string/jumbo v7, "vnd.android.cursor.dir/video"

    .line 580
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 590
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 591
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private sendStatistics()V
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const-string/jumbo v0, "unknown"

    .line 132
    :cond_0
    const-string v1, "picker"

    const-string v2, "open_picker"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private setupTabFragments()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 194
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mActionBar:Lmiui/app/ActionBar;

    const-string v1, "PickHomePageFragment"

    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mActionBar:Lmiui/app/ActionBar;

    .line 195
    invoke-virtual {v2}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0e023c

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/miui/gallery/picker/PickHomePageFragment;

    .line 194
    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 197
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mActionBar:Lmiui/app/ActionBar;

    const-string v1, "PickAlbumPageFragment"

    iget-object v2, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mActionBar:Lmiui/app/ActionBar;

    .line 198
    invoke-virtual {v2}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0e003c

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/miui/gallery/picker/PickAlbumPageFragment;

    .line 197
    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mActionBar:Lmiui/app/ActionBar;

    new-instance v1, Lcom/miui/gallery/picker/PickGalleryActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/picker/PickGalleryActivity$2;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 223
    return-void
.end method

.method private showConfirmDialog(Z)V
    .locals 6
    .param p1, "retry"    # Z

    .prologue
    .line 601
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 602
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "download_file_count"

    iget-object v5, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 603
    const-string v4, "local_file_count"

    iget-object v5, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    array-length v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 604
    const/4 v2, 0x0

    .line 605
    .local v2, "size":I
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;

    .line 606
    .local v3, "task":Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    iget v5, v3, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mSize:I

    add-int/2addr v2, v5

    .line 607
    goto :goto_0

    .line 608
    .end local v3    # "task":Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
    :cond_0
    const-string v4, "download_file_size"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    const-string v4, "retry_mode"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 611
    new-instance v1, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;

    invoke-direct {v1}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;-><init>()V

    .line 612
    .local v1, "dialog":Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
    invoke-virtual {v1, v0}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    .line 613
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "confirm_dialog"

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method private startDownload()V
    .locals 4

    .prologue
    .line 617
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->cancel()V

    .line 619
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->destroy()V

    .line 622
    :cond_0
    new-instance v0, Lcom/miui/gallery/picker/uri/Downloader;

    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/picker/PickGalleryActivity$DownloadProgressListener;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/PickGalleryActivity$1;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/picker/uri/Downloader;-><init>(Ljava/util/ArrayList;Lcom/miui/gallery/picker/uri/Downloader$DownloadListener;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    .line 623
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->start()V

    .line 624
    return-void
.end method


# virtual methods
.method protected hasCustomContentView()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 539
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/picker/PickerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 540
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->finish()V

    .line 543
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 755
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 756
    instance-of v1, p1, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 757
    check-cast v0, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;

    .line 758
    .local v0, "dialog":Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 759
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;->setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 768
    .end local v0    # "dialog":Lcom/miui/gallery/picker/uri/DownloadConfirmDialog;
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    instance-of v1, p1, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 761
    check-cast v0, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .line 762
    .local v0, "dialog":Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCancelConfirmListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 763
    .end local v0    # "dialog":Lcom/miui/gallery/picker/uri/PrepareProgressDialog;
    :cond_2
    instance-of v1, p1, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 764
    check-cast v0, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;

    .line 765
    .local v0, "dialog":Lcom/miui/gallery/picker/uri/DownloadCancelDialog;
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCancelDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->setCancelListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 766
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mContinueDownloadListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->setContinueListener(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iget-object v5, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    if-nez v5, :cond_0

    .line 125
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->sendStatistics()V

    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 91
    .local v0, "actionBar":Lmiui/app/ActionBar;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v0, p0, v5}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 92
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->setupTabFragments()V

    .line 93
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->isCrossUserPick()Z

    move-result v5

    if-nez v5, :cond_1

    .line 94
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v5

    new-instance v6, Lcom/miui/gallery/picker/PickGalleryActivity$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/picker/PickGalleryActivity$1;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    invoke-virtual {v5, v6}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 103
    :cond_1
    if-eqz p1, :cond_6

    .line 104
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "confirm_dialog"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 105
    .local v2, "confirmDialog":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "prepare_progress_dialog"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 106
    .local v3, "progressDialog":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "cancel_dialog"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 107
    .local v1, "cancelDialog":Landroid/app/Fragment;
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-eqz v1, :cond_6

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 109
    .local v4, "transaction":Landroid/app/FragmentTransaction;
    if-eqz v2, :cond_3

    .line 110
    invoke-virtual {v4, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 112
    :cond_3
    if-eqz v3, :cond_4

    .line 113
    invoke-virtual {v4, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 115
    :cond_4
    if-eqz v1, :cond_5

    .line 116
    invoke-virtual {v4, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 118
    :cond_5
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 119
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 123
    .end local v1    # "cancelDialog":Landroid/app/Fragment;
    .end local v2    # "confirmDialog":Landroid/app/Fragment;
    .end local v3    # "progressDialog":Landroid/app/Fragment;
    .end local v4    # "transaction":Landroid/app/FragmentTransaction;
    :cond_6
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "pick_intent"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    iput-object v5, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mPickIntent:Landroid/content/Intent;

    .line 124
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "pick_close_type"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCloseType:I

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-super {p0}, Lcom/miui/gallery/picker/PickerActivity;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloadPendings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 170
    iput-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mResults:[Landroid/net/Uri;

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mSha1s:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 173
    iput-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mSha1s:[Ljava/lang/String;

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginUrlRequestor:Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->cancel()V

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginRequestPendings:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mOriginRequestPendings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    :cond_4
    return-void
.end method

.method protected onDone()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mParseTask:Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/helper/Picker;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mParseTask:Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mParseTask:Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    const-string v0, "PickGalleryActivity"

    const-string v1, "parse task is running, skip"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/miui/gallery/picker/PickerActivity;->onPause()V

    .line 138
    iget v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCurrentPagePosition:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->pause()V

    .line 142
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/miui/gallery/picker/PickerActivity;->onResume()V

    .line 147
    iget v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mCurrentPagePosition:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity;->mDownloader:Lcom/miui/gallery/picker/uri/Downloader;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/Downloader;->resume()V

    .line 152
    :cond_0
    return-void
.end method
