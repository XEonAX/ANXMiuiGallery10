.class Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "GalleryHybridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/hybrid/GalleryHybridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryHybridChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment;
    .param p2, "x1"    # Lcom/miui/gallery/hybrid/GalleryHybridFragment$1;

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 373
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 374
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 415
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$1600(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 416
    const-string v2, "GalleryHybridFragment"

    const-string v3, "onJsAlert: already detached, do nothing"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const/4 v2, 0x0

    .line 439
    :goto_0
    return v2

    .line 420
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$1700(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 421
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 423
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 425
    :cond_1
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 426
    const v2, 0x104000a

    new-instance v3, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient$4;

    invoke-direct {v3, p0, p4}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient$4;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    new-instance v2, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient$5;

    invoke-direct {v2, p0, p4}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient$5;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 439
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 379
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$1400(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 380
    const-string v2, "GalleryHybridFragment"

    const-string v3, "onJsConfirm: already detached, do nothing"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v2, 0x0

    .line 410
    :goto_0
    return v2

    .line 384
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$1500(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 387
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 389
    :cond_1
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 390
    const v2, 0x104000a

    new-instance v3, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient$1;

    invoke-direct {v3, p0, p4}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient$1;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient$2;

    invoke-direct {v3, p0, p4}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient$2;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 403
    new-instance v2, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient$3;

    invoke-direct {v2, p0, p4}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient$3;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 410
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    const/4 v0, 0x0

    .line 445
    iget-object v1, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v1}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$1800(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 446
    const-string v1, "GalleryHybridFragment"

    const-string v2, "onJsPrompt: already detached, do nothing"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_0
    :goto_0
    return v0

    .line 450
    :cond_1
    const-string v1, "MiuiGallery-finish-queuing"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$1900(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/activity/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 452
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$2000(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 453
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 454
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 463
    const-string v0, "GalleryHybridFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$2100(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 465
    const-string v0, "GalleryHybridFragment"

    const-string v1, "onProgressChanged: already detached, do nothing"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 469
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$700(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$700(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->getProgress()I

    move-result v0

    sub-int v0, p2, v0

    if-lez v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$700(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->setProgress(I)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$1200(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 360
    const-string v0, "GalleryHybridFragment"

    const-string v1, "onReceivedTitle: already detached, do nothing"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$1300(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridFragment$GalleryHybridChromeClient;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-static {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->access$1300(Lcom/miui/gallery/hybrid/GalleryHybridFragment;)Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;->onReceivedTitle(Ljava/lang/String;)V

    goto :goto_0
.end method
