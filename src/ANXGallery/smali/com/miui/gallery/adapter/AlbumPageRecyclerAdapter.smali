.class public Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;
.super Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;
.source "AlbumPageRecyclerAdapter.java"

# interfaces
.implements Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mForceTopAlbumCount:I

.field private mHaveOtherAlbum:Z

.field private mMostlyRecentCreatedAlbumPosition:I

.field private mSystemAlbumCount:I

.field private mUnclassifiedAlbumCount:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/AlbumRecyclerAdapterBase;-><init>(Landroid/app/Activity;)V

    .line 31
    iput v0, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mSystemAlbumCount:I

    .line 32
    iput v0, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mForceTopAlbumCount:I

    .line 33
    iput v0, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mUnclassifiedAlbumCount:I

    .line 39
    iput-object p1, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mActivity:Landroid/app/Activity;

    .line 40
    return-void
.end method

.method private isSyncable()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public classifyCursor(Landroid/database/Cursor;)[Landroid/database/MatrixCursor;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "albumPageCursor":Landroid/database/MatrixCursor;
    const/4 v4, 0x0

    .line 157
    .local v4, "otherAlbumPageCursor":Landroid/database/MatrixCursor;
    iput v11, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mSystemAlbumCount:I

    .line 158
    iput v11, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mForceTopAlbumCount:I

    .line 159
    iput v11, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mUnclassifiedAlbumCount:I

    .line 160
    const/4 v9, 0x2

    new-array v7, v9, [Landroid/database/MatrixCursor;

    .line 161
    .local v7, "result":[Landroid/database/MatrixCursor;
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_7

    .line 162
    sget-object v6, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->PROJECTION:[Ljava/lang/String;

    .line 163
    .local v6, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v1, "babyAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v8, "unclassifiedAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/database/MatrixCursor;

    .end local v0    # "albumPageCursor":Landroid/database/MatrixCursor;
    invoke-direct {v0, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 166
    .restart local v0    # "albumPageCursor":Landroid/database/MatrixCursor;
    new-instance v4, Landroid/database/MatrixCursor;

    .end local v4    # "otherAlbumPageCursor":Landroid/database/MatrixCursor;
    invoke-direct {v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 167
    .restart local v4    # "otherAlbumPageCursor":Landroid/database/MatrixCursor;
    array-length v3, v6

    .line 168
    .local v3, "columnsLen":I
    new-array v2, v3, [Ljava/lang/Object;

    .line 169
    .local v2, "columns":[Ljava/lang/Object;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 171
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_4

    .line 172
    invoke-static {p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isOtherAlbum(Landroid/database/Cursor;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 173
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isForceTypeTime(Landroid/database/Cursor;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 174
    invoke-static {p1, v0, v2}, Lcom/miui/gallery/util/CursorUtils;->addRowToMatrixCursor(Landroid/database/Cursor;Landroid/database/MatrixCursor;[Ljava/lang/Object;)V

    .line 175
    iget v9, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mForceTopAlbumCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mForceTopAlbumCount:I

    .line 189
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isSystemAlbum(Landroid/database/Cursor;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 177
    invoke-static {p1, v0, v2}, Lcom/miui/gallery/util/CursorUtils;->addRowToMatrixCursor(Landroid/database/Cursor;Landroid/database/MatrixCursor;[Ljava/lang/Object;)V

    .line 178
    iget v9, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mSystemAlbumCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mSystemAlbumCount:I

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isBabyAlbum(Landroid/database/Cursor;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 180
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget v9, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mUnclassifiedAlbumCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mUnclassifiedAlbumCount:I

    goto :goto_1

    .line 183
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget v9, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mUnclassifiedAlbumCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mUnclassifiedAlbumCount:I

    goto :goto_1

    .line 187
    :cond_3
    invoke-static {p1, v4, v2}, Lcom/miui/gallery/util/CursorUtils;->addRowToMatrixCursor(Landroid/database/Cursor;Landroid/database/MatrixCursor;[Ljava/lang/Object;)V

    goto :goto_1

    .line 192
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 193
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 194
    .local v5, "position":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 195
    invoke-static {p1, v0, v2}, Lcom/miui/gallery/util/CursorUtils;->addRowToMatrixCursor(Landroid/database/Cursor;Landroid/database/MatrixCursor;[Ljava/lang/Object;)V

    goto :goto_2

    .line 199
    .end local v5    # "position":Ljava/lang/Integer;
    :cond_5
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result v9

    iput v9, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mMostlyRecentCreatedAlbumPosition:I

    .line 201
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 203
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 204
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 205
    .restart local v5    # "position":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 206
    invoke-static {p1, v0, v2}, Lcom/miui/gallery/util/CursorUtils;->addRowToMatrixCursor(Landroid/database/Cursor;Landroid/database/MatrixCursor;[Ljava/lang/Object;)V

    goto :goto_3

    .line 210
    .end local v5    # "position":Ljava/lang/Integer;
    :cond_6
    invoke-virtual {p0, v4}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->classifyOtherAlbumsCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v4

    .line 211
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/database/MatrixCursor;->getCount()I

    move-result v9

    if-lez v9, :cond_8

    move v9, v10

    :goto_4
    iput-boolean v9, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mHaveOtherAlbum:Z

    .line 212
    aput-object v0, v7, v11

    .line 213
    aput-object v4, v7, v10

    .line 215
    .end local v1    # "babyAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "columns":[Ljava/lang/Object;
    .end local v3    # "columnsLen":I
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v8    # "unclassifiedAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7
    return-object v7

    .restart local v1    # "babyAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "columns":[Ljava/lang/Object;
    .restart local v3    # "columnsLen":I
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v8    # "unclassifiedAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_8
    move v9, v11

    .line 211
    goto :goto_4
.end method

.method public classifyOtherAlbumsCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 222
    const/4 v4, 0x0

    .line 223
    .local v4, "result":Landroid/database/MatrixCursor;
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 224
    sget-object v3, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->PROJECTION:[Ljava/lang/String;

    .line 225
    .local v3, "projection":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v5, "unclassifiedAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Landroid/database/MatrixCursor;

    .end local v4    # "result":Landroid/database/MatrixCursor;
    invoke-direct {v4, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 227
    .restart local v4    # "result":Landroid/database/MatrixCursor;
    array-length v1, v3

    .line 228
    .local v1, "columnsLen":I
    new-array v0, v1, [Ljava/lang/Object;

    .line 229
    .local v0, "columns":[Ljava/lang/Object;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 231
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 232
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isForceTypeTime(Landroid/database/Cursor;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 233
    invoke-static {p1, v4, v0}, Lcom/miui/gallery/util/CursorUtils;->addRowToMatrixCursor(Landroid/database/Cursor;Landroid/database/MatrixCursor;[Ljava/lang/Object;)V

    .line 237
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 235
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 242
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 243
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 244
    .local v2, "position":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 245
    invoke-static {p1, v4, v0}, Lcom/miui/gallery/util/CursorUtils;->addRowToMatrixCursor(Landroid/database/Cursor;Landroid/database/MatrixCursor;[Ljava/lang/Object;)V

    goto :goto_2

    .line 249
    .end local v0    # "columns":[Ljava/lang/Object;
    .end local v1    # "columnsLen":I
    .end local v2    # "position":Ljava/lang/Integer;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v5    # "unclassifiedAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    return-object v4
.end method

.method public getBottomDividerType(I)I
    .locals 3
    .param p1, "adapterPosition"    # I

    .prologue
    const/4 v0, 0x3

    .line 44
    iget-boolean v1, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mHaveOtherAlbum:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    iget v1, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mForceTopAlbumCount:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mForceTopAlbumCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_4

    :cond_2
    iget v1, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mForceTopAlbumCount:I

    iget v2, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mSystemAlbumCount:I

    add-int/2addr v1, v2

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mForceTopAlbumCount:I

    iget v2, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mSystemAlbumCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mUnclassifiedAlbumCount:I

    iget v2, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mForceTopAlbumCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mSystemAlbumCount:I

    add-int/2addr v1, v2

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mUnclassifiedAlbumCount:I

    iget v2, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mForceTopAlbumCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mSystemAlbumCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_5

    .line 51
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 53
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getFormedNameNotExceedMaxWidth(Landroid/database/Cursor;Landroid/widget/TextView;I)Ljava/lang/String;
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "maxWidthId"    # I

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 60
    .local v4, "paint":Landroid/text/TextPaint;
    iget-object v10, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 61
    .local v2, "maxWidth":I
    const/4 v8, 0x0

    .line 62
    .local v8, "total":F
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 63
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "firstAlbumName":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 65
    .local v9, "width":F
    int-to-float v10, v2

    cmpl-float v10, v9, v10

    if-lez v10, :cond_0

    .line 86
    .end local v1    # "firstAlbumName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 68
    .restart local v1    # "firstAlbumName":Ljava/lang/String;
    :cond_0
    move v8, v9

    .line 69
    iget-object v10, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f0e02cb

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "split":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 71
    .local v6, "splitWidth":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v3, "name":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 74
    add-float v10, v8, v6

    int-to-float v11, v2

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 86
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "albumName":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 79
    .local v7, "temp":F
    add-float v10, v8, v6

    add-float/2addr v10, v7

    int-to-float v11, v2

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_1

    .line 82
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-float v10, v8, v6

    add-float v8, v10, v7

    .line 85
    goto :goto_1
.end method

.method public getMostlyRecentCreatedAlbumPosition()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mMostlyRecentCreatedAlbumPosition:I

    return v0
.end method

.method protected newClickItemIntent(IJZ)Landroid/content/Intent;
    .locals 6
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "isLocalAlbum"    # Z

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p2, p3}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isFaceAlbum(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.miui.gallery.action.VIEW_PEOPLE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 93
    :cond_0
    invoke-static {p2, p3}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isRecentAlbum(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$RecentAlbum;->VIEW_PAGE_URI:Landroid/net/Uri;

    .line 96
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "source"

    const-string v5, "album_page"

    .line 97
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 95
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    iget-object v3, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isBabyAlbum(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 103
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.miui.gallery.action.VIEW_ALBUM_DETAIL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isOtherShareAlbum(I)Z

    move-result v1

    .line 113
    .local v1, "isOtherShareAlbum":Z
    const-string v3, "other_share_album"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isOwnerShareAlbum(I)Z

    move-result v2

    .line 115
    .local v2, "isOwnerShareAlbum":Z
    const-string v3, "owner_share_album"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string v3, "is_local_album"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    const-string v3, "screenshot_album"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isScreenshotsAlbum(I)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const-string v3, "pano_album"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isPanoAlbum(I)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    const-string v3, "album_id"

    invoke-virtual {v0, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 120
    const-string v3, "album_name"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getAlbumName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v3, "album_server_id"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getServerId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v3, "attributes"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getAttributes(I)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 123
    const-string v3, "album_unwriteable"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->albumUnwriteable(I)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    const-string v3, "album_local_path"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getAlbumLocalPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 105
    .end local v1    # "isOtherShareAlbum":Z
    .end local v2    # "isOwnerShareAlbum":Z
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/miui/gallery/activity/facebaby/BabyAlbumDetailActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "people_id"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getBabyAlbumPeopleId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v3, "baby_info"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getBabyInfo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v3, "thumbnail_info_of_baby"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getThumbnailInfoOfBaby(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v3, "baby_sharer_info"

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getBabySharerInfo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method public onItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    .locals 6
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v2, 0x1

    .line 135
    .line 136
    invoke-virtual {p0, p3}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-direct {p0}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isSyncable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p3}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->isAutoUploadedAlbum(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 135
    :goto_0
    invoke-virtual {p0, p3, v4, v5, v1}, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->newClickItemIntent(IJZ)Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/gallery/adapter/AlbumPageRecyclerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 139
    return v2

    .line 136
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
