.class Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;
.super Ljava/lang/Object;
.source "PickGalleryActivity.java"

# interfaces
.implements Lcom/miui/gallery/picker/uri/OriginUrlRequestor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OriginUrlRequestProgressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickGalleryActivity;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/PickGalleryActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/picker/PickGalleryActivity;
    .param p2, "x1"    # Lcom/miui/gallery/picker/PickGalleryActivity$1;

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;-><init>(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    return-void
.end method

.method private finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 465
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1200(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1200(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 467
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1200(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->dismissAllowingStateLoss()V

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1, v2}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1202(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .line 473
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1400(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 474
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1400(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1500(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 478
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1500(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/picker/uri/OriginUrlRequestor;->destroy()V

    .line 479
    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v1, v2}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1502(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/OriginUrlRequestor;)Lcom/miui/gallery/picker/uri/OriginUrlRequestor;

    .line 481
    :cond_3
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->finish()V

    .line 462
    return-void
.end method

.method public onEnd(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/picker/uri/OriginUrlRequestor$OriginInfo;>;"
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->finish()V

    .line 445
    if-eqz p2, :cond_0

    .line 446
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1300(Lcom/miui/gallery/picker/PickGalleryActivity;Ljava/util/ArrayList;)V

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_0
    const-string v0, "PickGalleryActivity"

    const-string v1, "selected images OriginInfo generate error"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart(I)V
    .locals 3
    .param p1, "totalCount"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1200(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    new-instance v1, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    invoke-direct {v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1202(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/uri/PrepareProgressDialog;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1200(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setMax(I)V

    .line 437
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1200(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->setStage(I)V

    .line 438
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1200(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "prepare_progress_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public onUpdate(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1200(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$OriginUrlRequestProgressListener;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1200(Lcom/miui/gallery/picker/PickGalleryActivity;)Lcom/miui/gallery/picker/uri/PrepareProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/picker/uri/PrepareProgressDialog;->updateProgress(I)V

    .line 457
    :cond_0
    return-void
.end method
