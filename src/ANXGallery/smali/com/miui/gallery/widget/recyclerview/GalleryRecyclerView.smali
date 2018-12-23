.class public Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "GalleryRecyclerView.java"

# interfaces
.implements Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;
    }
.end annotation


# instance fields
.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field protected mItemClickSupport:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

.field private mOnItemLongClickListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 17
    invoke-static {p0}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;->addTo(Landroid/support/v7/widget/RecyclerView;)Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mItemClickSupport:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    .line 18
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mItemClickSupport:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;->setOnItemLongClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 23
    invoke-static {p0}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;->addTo(Landroid/support/v7/widget/RecyclerView;)Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mItemClickSupport:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    .line 24
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mItemClickSupport:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;->setOnItemLongClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 29
    invoke-static {p0}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;->addTo(Landroid/support/v7/widget/RecyclerView;)Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mItemClickSupport:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mItemClickSupport:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;->setOnItemLongClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;)V

    .line 31
    return-void
.end method

.method private openContextMenu(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    if-ltz p1, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->createContextMenuInfo(I)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->showContextMenu()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected createContextMenuInfo(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;

    invoke-direct {v0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    check-cast v0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;->setValues(I)V

    goto :goto_0
.end method

.method public findChildViewUnderForExternal(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForAdapterPositionForExternal(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildAdapterPositionForExternal(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public onItemLongClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    .locals 8
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 63
    const/4 v6, 0x0

    .line 64
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mOnItemLongClickListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mOnItemLongClickListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;->onItemLongClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z

    move-result v6

    .line 67
    :cond_0
    if-nez v6, :cond_1

    invoke-direct {p0, p3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->openContextMenu(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mItemClickSupport:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 35
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mOnItemLongClickListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

    .line 39
    return-void
.end method
