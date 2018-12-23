.class public Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;
.super Ljava/lang/Object;
.source "EditableListViewWrapper2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/EditableListViewWrapper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;,
        Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;,
        Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;
    }
.end annotation


# instance fields
.field protected mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

.field protected mCheckState:Landroid/util/SparseBooleanArray;

.field protected mIndex:J

.field private mReverseIndex:J

.field protected mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mSource:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

.field protected mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

.field protected mUserSelectedIdIndex:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    .line 1180
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    .line 1181
    sget-object v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    .line 1183
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    .line 1184
    sget-object v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    .line 1186
    iput-wide v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mIndex:J

    .line 1187
    iput-wide v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mReverseIndex:J

    .line 1414
    return-void
.end method


# virtual methods
.method public bind(Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;)V
    .locals 0
    .param p1, "source"    # Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    .prologue
    .line 1190
    if-nez p1, :cond_0

    .line 1194
    :goto_0
    return-void

    .line 1193
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1242
    sget-object v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    .line 1243
    sget-object v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    .line 1244
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1245
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1246
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1247
    iput-wide v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mIndex:J

    .line 1248
    iput-wide v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mReverseIndex:J

    .line 1249
    return-void
.end method

.method public getCheckState(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    sget-object v1, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    if-ne v0, v1, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1200
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;->getSourceItemId(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->getCheckState(J)Z

    move-result v0

    goto :goto_0
.end method

.method public getCheckState(J)Z
    .locals 5
    .param p1, "id"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1204
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    sget-object v3, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;->REVERSE:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 6

    .prologue
    .line 1257
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    sget-object v5, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;->DIRTY:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    if-ne v4, v5, :cond_4

    .line 1258
    new-instance v4, Landroid/util/SparseBooleanArray;

    iget-object v5, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    invoke-interface {v5}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;->getSourceItemCount()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    .line 1259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    invoke-interface {v4}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;->getSourceItemCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1260
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    invoke-interface {v4, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;->getSourceItemId(I)J

    move-result-wide v2

    .line 1261
    .local v2, "id":J
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    sget-object v5, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-gez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    sget-object v5, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;->REVERSE:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    .line 1262
    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-gez v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1263
    .local v0, "checked":Z
    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 1259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1262
    .end local v0    # "checked":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1265
    .end local v2    # "id":J
    :cond_3
    sget-object v4, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    iput-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    .line 1267
    .end local v1    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v4

    return-object v4
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    sget-object v1, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    if-ne v0, v1, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1402
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    invoke-interface {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;->getSourceItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public handleDataChanged()V
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1253
    sget-object v0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;->DIRTY:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    iput-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    .line 1254
    return-void
.end method

.method public setAllChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 1230
    sget-object v1, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    iput-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    .line 1231
    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;->REVERSE:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    :goto_0
    iput-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    .line 1232
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1233
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1234
    iput-wide v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mIndex:J

    .line 1235
    iput-wide v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mReverseIndex:J

    .line 1236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    invoke-interface {v1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;->getSourceItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1237
    iget-object v1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    invoke-interface {v2, v0}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;->getSourceEncryptPosition(I)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 1236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1231
    .end local v0    # "i":I
    :cond_0
    sget-object v1, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    goto :goto_0

    .line 1239
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setCheckState(IZ)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    const-wide/16 v6, 0x1

    .line 1208
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mStatus:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    sget-object v3, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Status;

    if-ne v2, v3, :cond_0

    .line 1209
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1211
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mSource:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;

    invoke-interface {v2, p1}, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Source;->getSourceItemId(I)J

    move-result-wide v0

    .line 1212
    .local v0, "itemId":J
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mCheckMode:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    sget-object v3, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState$Mode;

    if-ne v2, v3, :cond_2

    .line 1213
    if-eqz p2, :cond_1

    .line 1214
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mIndex:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mIndex:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1227
    :goto_0
    return-void

    .line 1216
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_0

    .line 1219
    :cond_2
    if-eqz p2, :cond_3

    .line 1220
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1221
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mReverseIndex:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mReverseIndex:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 1223
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mIndex:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mIndex:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1224
    iget-object v2, p0, Lcom/miui/gallery/widget/EditableListViewWrapper2$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_0
.end method
