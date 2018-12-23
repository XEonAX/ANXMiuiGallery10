.class public Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase$AlbumNormalItemViewHolder;
.super Lcom/miui/gallery/adapter/BaseViewHolder;
.source "AlbumRecyclerAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumNormalItemViewHolder"
.end annotation


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 198
    return-void
.end method

.method public static newInstance(Landroid/view/ViewGroup;)Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase$AlbumNormalItemViewHolder;
    .locals 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 201
    new-instance v0, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase$AlbumNormalItemViewHolder;

    const v1, 0x7f04001d

    invoke-static {p0, v1}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase$AlbumNormalItemViewHolder;->getView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase$AlbumNormalItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
