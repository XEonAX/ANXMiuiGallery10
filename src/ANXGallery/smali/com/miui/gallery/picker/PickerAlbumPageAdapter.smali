.class public Lcom/miui/gallery/picker/PickerAlbumPageAdapter;
.super Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;
.source "PickerAlbumPageAdapter.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;-><init>(Landroid/app/Activity;)V

    .line 19
    return-void
.end method


# virtual methods
.method public sortCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v12, 0x11

    .line 22
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 23
    :cond_0
    const/4 v7, 0x0

    .line 75
    :cond_1
    :goto_0
    return-object v7

    .line 25
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 26
    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v11, Lcom/miui/gallery/picker/PickerAlbumPageAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v7, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 27
    .local v7, "result":Landroid/database/MatrixCursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v4, "forceTopAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v9, "systemAlbumAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "babyAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v10, "unclassifiedAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v8, "sortedAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v11, Lcom/miui/gallery/picker/PickerAlbumPageAdapter;->PROJECTION:[Ljava/lang/String;

    array-length v3, v11

    .line 33
    .local v3, "columnsLen":I
    new-array v2, v3, [Ljava/lang/Object;

    .line 34
    .local v2, "columns":[Ljava/lang/Object;
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 36
    .local v5, "lastClassification":I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_7

    .line 37
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 38
    .local v1, "classification":I
    if-eq v1, v5, :cond_3

    .line 39
    invoke-interface {v8, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 41
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 43
    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 46
    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 48
    move v5, v1

    .line 51
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickerAlbumPageAdapter;->isForceTypeTime(Landroid/database/Cursor;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 52
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 53
    :cond_4
    invoke-static {p1}, Lcom/miui/gallery/picker/PickerAlbumPageAdapter;->isSystemAlbum(Landroid/database/Cursor;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 54
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 55
    :cond_5
    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickerAlbumPageAdapter;->isBabyAlbum(Landroid/database/Cursor;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 56
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 58
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 62
    .end local v1    # "classification":I
    :cond_7
    invoke-interface {v8, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 66
    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 69
    .local v6, "position":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 70
    invoke-static {p1, v7, v2}, Lcom/miui/gallery/util/CursorUtils;->addRowToMatrixCursor(Landroid/database/Cursor;Landroid/database/MatrixCursor;[Ljava/lang/Object;)V

    goto :goto_3

    .end local v0    # "babyAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "columns":[Ljava/lang/Object;
    .end local v3    # "columnsLen":I
    .end local v4    # "forceTopAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "lastClassification":I
    .end local v6    # "position":Ljava/lang/Integer;
    .end local v7    # "result":Landroid/database/MatrixCursor;
    .end local v8    # "sortedAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "systemAlbumAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "unclassifiedAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_8
    move-object v7, p1

    .line 75
    goto/16 :goto_0
.end method
