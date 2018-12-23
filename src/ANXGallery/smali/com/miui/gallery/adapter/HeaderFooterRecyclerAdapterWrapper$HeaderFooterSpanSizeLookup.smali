.class Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "HeaderFooterRecyclerAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderFooterSpanSizeLookup"
.end annotation


# instance fields
.field private mAdapterWrapper:Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

.field private mSpanCount:I

.field private mWrapped:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;I)V
    .locals 0
    .param p1, "wrapped"    # Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .param p2, "adapterWrapper"    # Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
    .param p3, "spanCount"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mWrapped:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 65
    iput-object p2, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mAdapterWrapper:Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

    .line 66
    iput p3, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mSpanCount:I

    .line 67
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mAdapterWrapper:Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

    invoke-virtual {v4}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->hasHeader()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 72
    .local v1, "isShowHeader":Z
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mAdapterWrapper:Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

    invoke-virtual {v4}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mAdapterWrapper:Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;

    invoke-virtual {v4}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->hasFooter()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 73
    .local v0, "isShowFooter":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 74
    :cond_0
    iget v2, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mSpanCount:I

    .line 76
    :goto_2
    return v2

    .end local v0    # "isShowFooter":Z
    .end local v1    # "isShowHeader":Z
    :cond_1
    move v1, v3

    .line 71
    goto :goto_0

    .restart local v1    # "isShowHeader":Z
    :cond_2
    move v0, v3

    .line 72
    goto :goto_1

    .line 76
    .restart local v0    # "isShowFooter":Z
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;->mWrapped:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    goto :goto_2
.end method
