.class Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;
.super Landroid/content/AsyncTaskLoader;
.source "PhotoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/miui/gallery/model/PhotoDetailInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataItem:Lcom/miui/gallery/model/BaseDataItem;

.field private mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 579
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 580
    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 581
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/miui/gallery/model/PhotoDetailInfo;
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/model/BaseDataItem;->getDetailInfo(Landroid/content/Context;)Lcom/miui/gallery/model/PhotoDetailInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->loadInBackground()Lcom/miui/gallery/model/PhotoDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final onReset()V
    .locals 1

    .prologue
    .line 608
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 609
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->onStopLoading()V

    .line 610
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    if-eqz v0, :cond_0

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    .line 613
    :cond_0
    return-void
.end method

.method protected final onStartLoading()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->deliverResult(Ljava/lang/Object;)V

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    if-nez v0, :cond_2

    .line 597
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->forceLoad()V

    .line 599
    :cond_2
    return-void
.end method

.method protected final onStopLoading()V
    .locals 0

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;->cancelLoad()Z

    .line 604
    return-void
.end method
