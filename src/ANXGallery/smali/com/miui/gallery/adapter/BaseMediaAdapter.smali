.class public abstract Lcom/miui/gallery/adapter/BaseMediaAdapter;
.super Lcom/miui/gallery/adapter/BaseAdapter;
.source "BaseMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 34
    const v0, 0x7f12001f

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->doBindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 36
    return-void
.end method

.method protected abstract doBindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public getCheckedItem(I)Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/BaseMediaAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 45
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;-><init>(Lcom/miui/gallery/adapter/BaseMediaAdapter;ILcom/miui/gallery/adapter/BaseMediaAdapter$1;)V

    goto :goto_0
.end method

.method public getItemDecodeRectF()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getItemKey(I)J
.end method

.method public getItemSecretKey(I)[B
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getMimeType(I)Ljava/lang/String;
.end method

.method public abstract getSha1(I)Ljava/lang/String;
.end method
