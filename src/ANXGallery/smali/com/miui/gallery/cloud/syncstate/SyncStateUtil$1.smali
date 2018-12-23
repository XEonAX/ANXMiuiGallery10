.class final Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$1;
.super Ljava/lang/Object;
.source "SyncStateUtil.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->querySize(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)[J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<[J>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$1;->handle(Landroid/database/Cursor;)[J

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)[J
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 105
    const/4 v4, 0x2

    new-array v2, v4, [J

    fill-array-data v2, :array_0

    .line 108
    .local v2, "querySize":[J
    if-eqz p1, :cond_1

    .line 109
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 111
    .local v0, "count":J
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 112
    .local v3, "serverType":I
    if-ne v3, v5, :cond_0

    .line 113
    aput-wide v0, v2, v6

    goto :goto_0

    .line 115
    :cond_0
    aput-wide v0, v2, v5

    goto :goto_0

    .line 119
    .end local v0    # "count":J
    .end local v3    # "serverType":I
    :cond_1
    return-object v2

    .line 105
    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method
