.class Lcom/miui/gallery/cloud/SyncFromServer$2;
.super Ljava/lang/Object;
.source "SyncFromServer.java"

# interfaces
.implements Lcom/miui/gallery/util/GalleryUtils$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/SyncFromServer;->appendSyncInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/GalleryUtils$QueryHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/SyncFromServer;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/SyncFromServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/SyncFromServer;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/miui/gallery/cloud/SyncFromServer$2;->this$0:Lcom/miui/gallery/cloud/SyncFromServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/SyncFromServer$2;->handle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 346
    if-nez p1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-object v0

    .line 349
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "value":Ljava/lang/String;
    goto :goto_0
.end method
