.class Lcom/miui/gallery/picker/PickGalleryActivity$6;
.super Ljava/lang/Object;
.source "PickGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickGalleryActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/PickGalleryActivity;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$6;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 664
    iget-object v3, p0, Lcom/miui/gallery/picker/PickGalleryActivity$6;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v3}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1700(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/Downloader;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 665
    .local v2, "size":I
    :goto_0
    if-lez v2, :cond_0

    .line 666
    new-instance v1, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;

    invoke-direct {v1}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;-><init>()V

    .line 667
    .local v1, "downloadCancelDialog":Lcom/miui/gallery/picker/uri/DownloadCancelDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 668
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "remaining_count"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 669
    invoke-virtual {v1, v0}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->setArguments(Landroid/os/Bundle;)V

    .line 670
    iget-object v3, p0, Lcom/miui/gallery/picker/PickGalleryActivity$6;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "cancel_dialog"

    invoke-virtual {v1, v3, v4}, Lcom/miui/gallery/picker/uri/DownloadCancelDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 672
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "downloadCancelDialog":Lcom/miui/gallery/picker/uri/DownloadCancelDialog;
    :cond_0
    return-void

    .line 664
    .end local v2    # "size":I
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/picker/PickGalleryActivity$6;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v3}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1700(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/Downloader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/picker/uri/Downloader;->getRemainSize()I

    move-result v2

    goto :goto_0
.end method
