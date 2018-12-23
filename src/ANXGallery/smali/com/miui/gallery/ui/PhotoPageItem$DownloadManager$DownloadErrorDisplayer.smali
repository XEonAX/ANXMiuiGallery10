.class public Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"

# interfaces
.implements Lcom/miui/gallery/error/core/ErrorActionCallback;
.implements Lcom/miui/gallery/error/core/ErrorTranslateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DownloadErrorDisplayer"
.end annotation


# instance fields
.field private mErrorDialog:Lcom/miui/gallery/widget/GalleryDialogFragment;

.field private mErrorTip:Lcom/miui/gallery/error/core/ErrorTip;

.field private mErrorTranslator:Lcom/miui/gallery/error/BaseErrorCodeTranslator;

.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V
    .locals 1
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1367
    new-instance v0, Lcom/miui/gallery/error/BaseErrorCodeTranslator;

    invoke-direct {v0}, Lcom/miui/gallery/error/BaseErrorCodeTranslator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->mErrorTranslator:Lcom/miui/gallery/error/BaseErrorCodeTranslator;

    .line 1368
    return-void
.end method


# virtual methods
.method public display(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->mErrorTip:Lcom/miui/gallery/error/core/ErrorTip;

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->display(Landroid/content/Context;Lcom/miui/gallery/error/core/ErrorTip;)Z

    move-result v0

    return v0
.end method

.method public final display(Landroid/content/Context;Lcom/miui/gallery/error/core/ErrorTip;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tip"    # Lcom/miui/gallery/error/core/ErrorTip;

    .prologue
    const/4 v1, 0x0

    .line 1385
    if-nez p2, :cond_0

    .line 1424
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return v1

    .line 1388
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->mErrorDialog:Lcom/miui/gallery/widget/GalleryDialogFragment;

    if-eqz v2, :cond_1

    .line 1389
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->mErrorDialog:Lcom/miui/gallery/widget/GalleryDialogFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 1390
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->mErrorDialog:Lcom/miui/gallery/widget/GalleryDialogFragment;

    .line 1392
    :cond_1
    invoke-virtual {p2}, Lcom/miui/gallery/error/core/ErrorTip;->getCode()Lcom/miui/gallery/error/core/ErrorCode;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/error/core/ErrorCode;->NO_CTA_PERMISSION:Lcom/miui/gallery/error/core/ErrorCode;

    if-ne v2, v3, :cond_3

    .line 1393
    invoke-static {v1}, Lcom/miui/gallery/ui/CtaNoticeFragment;->newInstance(Z)Lcom/miui/gallery/ui/CtaNoticeFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->mErrorDialog:Lcom/miui/gallery/widget/GalleryDialogFragment;

    .line 1394
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->mErrorDialog:Lcom/miui/gallery/widget/GalleryDialogFragment;

    check-cast v0, Lcom/miui/gallery/ui/CtaNoticeFragment;

    .line 1395
    .local v0, "cta":Lcom/miui/gallery/ui/CtaNoticeFragment;
    new-instance v1, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer$1;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CtaNoticeFragment;->setOnPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1420
    .end local v0    # "cta":Lcom/miui/gallery/ui/CtaNoticeFragment;
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->mErrorDialog:Lcom/miui/gallery/widget/GalleryDialogFragment;

    if-eqz v1, :cond_2

    .line 1421
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->mErrorDialog:Lcom/miui/gallery/widget/GalleryDialogFragment;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/widget/GalleryDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1423
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$1400(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$2100(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorTip;)V

    .line 1424
    const/4 v1, 0x1

    goto :goto_0

    .line 1401
    .restart local p1    # "context":Landroid/content/Context;
    :cond_3
    invoke-virtual {p2, p1}, Lcom/miui/gallery/error/core/ErrorTip;->getActionStr(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1402
    new-instance v1, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    invoke-direct {v1}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;-><init>()V

    .line 1403
    invoke-virtual {p2, p1}, Lcom/miui/gallery/error/core/ErrorTip;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v1

    .line 1404
    invoke-virtual {p2, p1}, Lcom/miui/gallery/error/core/ErrorTip;->getMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    .line 1405
    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer$3;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer$3;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v1

    .line 1411
    invoke-virtual {p2, p1}, Lcom/miui/gallery/error/core/ErrorTip;->getActionStr(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer$2;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;Lcom/miui/gallery/error/core/ErrorTip;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v1

    .line 1416
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->create()Lcom/miui/gallery/ui/AlertDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->mErrorDialog:Lcom/miui/gallery/widget/GalleryDialogFragment;

    goto :goto_1

    .line 1418
    :cond_4
    invoke-virtual {p2, p1}, Lcom/miui/gallery/error/core/ErrorTip;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public handleError(Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 2
    .param p1, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->mErrorTranslator:Lcom/miui/gallery/error/BaseErrorCodeTranslator;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lcom/miui/gallery/error/BaseErrorCodeTranslator;->translate(Landroid/content/Context;Lcom/miui/gallery/error/core/ErrorCode;Lcom/miui/gallery/error/core/ErrorTranslateCallback;)V

    .line 1372
    return-void
.end method

.method public onAction(Lcom/miui/gallery/error/core/ErrorCode;Z)V
    .locals 3
    .param p1, "code"    # Lcom/miui/gallery/error/core/ErrorCode;
    .param p2, "handled"    # Z

    .prologue
    .line 1429
    if-nez p2, :cond_0

    .line 1430
    sget-object v0, Lcom/miui/gallery/ui/PhotoPageItem$4;->$SwitchMap$com$miui$gallery$error$core$ErrorCode:[I

    invoke-virtual {p1}, Lcom/miui/gallery/error/core/ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1447
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$1400(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->mErrorTip:Lcom/miui/gallery/error/core/ErrorTip;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->access$2200(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorTip;)V

    .line 1448
    return-void

    .line 1434
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->downloadOrigin()V

    goto :goto_0

    .line 1438
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->downloadOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)V

    goto :goto_0

    .line 1441
    :pswitch_2
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->this$1:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->processDownload()V

    goto :goto_0

    .line 1430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTranslate(Lcom/miui/gallery/error/core/ErrorTip;)V
    .locals 0
    .param p1, "tip"    # Lcom/miui/gallery/error/core/ErrorTip;

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->mErrorTip:Lcom/miui/gallery/error/core/ErrorTip;

    .line 1377
    return-void
.end method
