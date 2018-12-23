.class Lcom/miui/gallery/ui/AlbumPageFragment$5;
.super Ljava/lang/Object;
.source "AlbumPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$5;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationDone(JLjava/lang/String;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "albumName"    # Ljava/lang/String;

    .prologue
    .line 532
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$5;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$5;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$1102(Lcom/miui/gallery/ui/AlbumPageFragment;Z)Z

    .line 535
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$5;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/ui/AddPhotosFragment;->addPhotos(Landroid/app/Fragment;J)V

    .line 537
    :cond_0
    return-void
.end method
