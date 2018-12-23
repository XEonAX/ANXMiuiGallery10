.class public abstract Lcom/miui/gallery/adapter/CursorRecyclerAdapter;
.super Lcom/miui/gallery/adapter/BaseRecyclerAdapter;
.source "CursorRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/miui/gallery/adapter/BaseViewHolder;",
        ">",
        "Lcom/miui/gallery/adapter/BaseRecyclerAdapter",
        "<",
        "Landroid/database/Cursor;",
        "TVH;>;"
    }
.end annotation


# instance fields
.field protected mCursor:Landroid/database/Cursor;

.field protected mDataValid:Z

.field private mRowIDColumn:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/miui/gallery/adapter/CursorRecyclerAdapter;, "Lcom/miui/gallery/adapter/CursorRecyclerAdapter<TVH;>;"
    invoke-direct {p0}, Lcom/miui/gallery/adapter/BaseRecyclerAdapter;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lcom/miui/gallery/adapter/CursorRecyclerAdapter;, "Lcom/miui/gallery/adapter/CursorRecyclerAdapter<TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 67
    .local p0, "this":Lcom/miui/gallery/adapter/CursorRecyclerAdapter;, "Lcom/miui/gallery/adapter/CursorRecyclerAdapter<TVH;>;"
    iget-boolean v0, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/miui/gallery/adapter/CursorRecyclerAdapter;, "Lcom/miui/gallery/adapter/CursorRecyclerAdapter<TVH;>;"
    iget-boolean v0, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/CursorRecyclerAdapter;, "Lcom/miui/gallery/adapter/CursorRecyclerAdapter<TVH;>;"
    const-wide/16 v0, -0x1

    .line 45
    iget-boolean v2, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mDataValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 52
    :cond_0
    return-wide v0
.end method

.method protected isValidPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    .local p0, "this":Lcom/miui/gallery/adapter/CursorRecyclerAdapter;, "Lcom/miui/gallery/adapter/CursorRecyclerAdapter<TVH;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected moveCursorToPosition(I)Landroid/database/Cursor;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 84
    .local p0, "this":Lcom/miui/gallery/adapter/CursorRecyclerAdapter;, "Lcom/miui/gallery/adapter/CursorRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->isValidPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Wrong cursor position %d, total count %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->getItemCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 87
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 26
    .local p0, "this":Lcom/miui/gallery/adapter/CursorRecyclerAdapter;, "Lcom/miui/gallery/adapter/CursorRecyclerAdapter<TVH;>;"
    iget-object v1, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    .line 30
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    .line 31
    if-eqz p1, :cond_1

    .line 32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mDataValid:Z

    .line 33
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mRowIDColumn:I

    .line 34
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mDataValid:Z

    .line 37
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->mRowIDColumn:I

    .line 38
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/CursorRecyclerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
