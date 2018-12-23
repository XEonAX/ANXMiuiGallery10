.class abstract Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;
.super Ljava/lang/Object;
.source "PhotoPageFragmentBase.java"

# interfaces
.implements Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;
.implements Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ChoiceManagerBase"
.end annotation


# instance fields
.field protected mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

.field protected mShareClassName:Ljava/lang/String;

.field protected mSharePackageName:Ljava/lang/String;

.field protected mSharePendingIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z

    .prologue
    .line 525
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->doShare(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 525
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->getShareDisplayLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Ljava/util/ArrayList;
    .param p5, "x5"    # Ljava/util/List;
    .param p6, "x6"    # Ljava/util/ArrayList;
    .param p7, "x7"    # Ljava/util/ArrayList;

    .prologue
    .line 525
    invoke-direct/range {p0 .. p7}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->doPrepareFiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private doPrepareFiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 759
    .local p1, "compressItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    .local p3, "needRender":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p4, "secretItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p5, "secretKeys":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p6, "shareUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p7, "secretIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 822
    .local v0, "listener":Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;
    invoke-static/range {p1 .. p7}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->newInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    move-result-object v6

    .line 823
    .local v6, "fragment":Lcom/miui/gallery/ui/ShareFilePrepareFragment;
    invoke-virtual {v6, v0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->setOnDownloadListener(Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnPrepareListener;)V

    .line 824
    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;)V

    invoke-virtual {v6, v1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 830
    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$3;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;)V

    invoke-virtual {v6, v1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->setErrorListener(Lcom/miui/gallery/ui/ShareFilePrepareFragment$OnErrorListener;)V

    .line 836
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DownloadFragment"

    invoke-virtual {v6, v1, v2}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method private doShare(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 840
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->doShare(Ljava/util/ArrayList;Z)V

    .line 841
    return-void
.end method

.method private doShare(Ljava/util/ArrayList;Z)V
    .locals 8
    .param p2, "hasSecret"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v6, 0x1

    .line 844
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    if-nez v3, :cond_0

    .line 899
    :goto_0
    return-void

    .line 848
    :cond_0
    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    invoke-static {v3, v4}, Lcom/miui/gallery/provider/GalleryOpenProvider;->needReturnContentUri(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 849
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 850
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/provider/GalleryOpenProvider;->translateToContent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 851
    .local v2, "translatedUri":Landroid/net/Uri;
    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePackageName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 853
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v6}, Lcom/miui/gallery/activity/BaseActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 849
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 858
    .end local v0    # "i":I
    .end local v2    # "translatedUri":Landroid/net/Uri;
    :cond_3
    const-string v3, "PhotoPageFragmentBase"

    const-string v4, "prepare to share: %s"

    invoke-static {v3, v4, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 860
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 861
    .local v1, "size":I
    if-lez v1, :cond_5

    .line 862
    if-le v1, v6, :cond_6

    .line 863
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 868
    :goto_2
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 869
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    const/high16 v4, 0x8080000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 870
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v6}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 871
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$1100(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Ljava/lang/Runnable;

    move-result-object v3

    if-nez v3, :cond_4

    .line 872
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    new-instance v4, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$4;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase$4;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;)V

    invoke-static {v3, v4}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$1102(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 891
    :cond_4
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$1100(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/CompatHandler;->hasCallbacksCompat(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 892
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v3, v6}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$1202(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Z)Z

    .line 893
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$1100(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 896
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 865
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.STREAM"

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private getShareDisplayLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 902
    const/4 v1, 0x0

    .line 904
    .local v1, "label":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 905
    .local v2, "res":Landroid/content/res/Resources;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s_%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    .line 906
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "string"

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v5, v5, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 907
    invoke-virtual {v5}, Lcom/miui/gallery/activity/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 905
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 909
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 915
    .end local v0    # "id":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v1

    .line 912
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method protected configTargetIntentBySelected(ILandroid/content/Intent;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 568
    const/4 v3, 0x1

    if-gt p1, v3, :cond_2

    .line 569
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const/4 v1, 0x0

    .line 571
    .local v1, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-lez p1, :cond_0

    .line 572
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v4, v3, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getSelectItems()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    .line 574
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "video/*"

    :goto_0
    invoke-virtual {p2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    .end local v1    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :goto_1
    return-void

    .line 574
    .restart local v1    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_1
    const-string v3, "image/*"

    goto :goto_0

    .line 576
    .end local v1    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_2
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string/jumbo v2, "video/*"

    .line 578
    .local v2, "mimeType":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_2
    if-ge v0, p1, :cond_3

    .line 579
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v4, v3, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getSelectItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    .line 580
    .restart local v1    # "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/FileMimeUtil;->isImageFromMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 581
    const-string v2, "image/*"

    .line 585
    .end local v1    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_3
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 578
    .restart local v1    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected abstract getChoiceTitle()Landroid/widget/TextView;
.end method

.method protected abstract getContainerId()I
.end method

.method public final onAllItemsCheckedStateChanged(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->updateSelectMode()V

    .line 611
    return-void
.end method

.method public final onIntentSelected(Landroid/content/Intent;)V
    .locals 36
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 615
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    if-nez v6, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    if-eqz v6, :cond_2

    .line 620
    const-string v6, "PhotoPageFragmentBase"

    const-string v30, "already preparing for a pending intent, skip this"

    move-object/from16 v0, v30

    invoke-static {v6, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 625
    const-string v6, "fast_share"

    const-string v30, "app_selected"

    .line 628
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v31

    .line 625
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v6, v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v6}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getSelectItems()Ljava/util/List;

    move-result-object v27

    .line 632
    .local v27, "selects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_14

    .line 634
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v6

    const/16 v30, 0x1f4

    move/from16 v0, v30

    if-le v6, v0, :cond_4

    .line 635
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0e0455

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1f4

    .line 636
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    .line 635
    invoke-virtual/range {v30 .. v32}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v6, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 639
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePendingIntent:Landroid/content/Intent;

    .line 640
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mSharePackageName:Ljava/lang/String;

    .line 641
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mShareClassName:Ljava/lang/String;

    .line 642
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v12, "shareUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v7, "needCompress":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v9, "needRender":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v10, "needDecode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v11, "secretKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v13, "secretIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v22, 0x0

    .line 650
    .local v22, "processingCount":I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v18, "needDownloadThumbnails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/model/BaseDataItem;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v17, "needDownloadOrigins":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/model/BaseDataItem;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v6}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getOriginItems()Ljava/util/List;

    move-result-object v19

    .line 653
    .local v19, "origins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v6}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getRenderItems()Ljava/util/List;

    move-result-object v23

    .line 655
    .local v23, "renders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v28, 0x0

    .line 656
    .local v28, "statOrigin":Z
    const/16 v29, 0x0

    .line 659
    .local v29, "statRender":Z
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_5
    :goto_1
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 660
    .local v21, "pos":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v16

    .line 661
    .local v16, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v16, :cond_5

    .line 662
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->isProcessingMedia(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 663
    add-int/lit8 v22, v22, 0x1

    .line 664
    goto :goto_1

    .line 666
    :cond_6
    const/4 v14, 0x0

    .line 668
    .local v14, "contentUri":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/model/BaseDataItem;->getSecretKey()[B

    move-result-object v26

    .line 669
    .local v26, "secretKey":[B
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v15

    .line 670
    .local v15, "isSecret":Z
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v24

    .line 672
    .local v24, "secretId":J
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 673
    const/16 v28, 0x1

    .line 674
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 675
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v14

    .line 676
    if-eqz v14, :cond_7

    .line 677
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_7
    :goto_2
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v14, :cond_8

    .line 708
    const/16 v29, 0x1

    .line 709
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_8
    if-eqz v15, :cond_5

    .line 712
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 680
    :cond_9
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    .line 681
    if-nez v15, :cond_7

    .line 682
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 686
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/model/BaseDataItem;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v14

    .line 687
    if-nez v14, :cond_b

    .line 688
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v14

    .line 689
    if-eqz v14, :cond_7

    .line 690
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 701
    :cond_b
    if-nez v15, :cond_7

    .line 702
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 719
    .end local v14    # "contentUri":Landroid/net/Uri;
    .end local v15    # "isSecret":Z
    .end local v16    # "item":Lcom/miui/gallery/model/BaseDataItem;
    .end local v21    # "pos":I
    .end local v24    # "secretId":J
    .end local v26    # "secretKey":[B
    :cond_c
    if-lez v22, :cond_d

    .line 720
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0d003d

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    .line 721
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    .line 720
    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v22

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v6, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 722
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 723
    .local v20, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "count"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    const-string v6, "fast_share"

    const-string v30, "processing_media_checked"

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 731
    .end local v20    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    if-eqz v28, :cond_e

    .line 732
    const-string v6, "fast_share"

    const-string v30, "origin_checked"

    move-object/from16 v0, v30

    invoke-static {v6, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_e
    if-eqz v29, :cond_f

    .line 736
    const-string v6, "fast_share"

    const-string v30, "render_checked"

    move-object/from16 v0, v30

    invoke-static {v6, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_f
    invoke-static {v12}, Lcom/miui/gallery/ui/PhotoPagerSamplingStatHelper;->onImageShared(Ljava/util/ArrayList;)V

    .line 740
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_10

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_10

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_13

    .line 741
    :cond_10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v8, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/miui/gallery/model/BaseDataItem;

    .line 743
    .restart local v16    # "item":Lcom/miui/gallery/model/BaseDataItem;
    new-instance v30, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v31

    sget-object v32, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/model/BaseDataItem;->getSize()J

    move-result-wide v34

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;J)V

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 745
    .end local v16    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_11
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/miui/gallery/model/BaseDataItem;

    .line 746
    .restart local v16    # "item":Lcom/miui/gallery/model/BaseDataItem;
    new-instance v30, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v31

    sget-object v32, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/model/BaseDataItem;->getSize()J

    move-result-wide v34

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;J)V

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v16    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_12
    move-object/from16 v6, p0

    .line 748
    invoke-direct/range {v6 .. v13}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->doPrepareFiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 750
    .end local v8    # "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->doShare(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 753
    .end local v7    # "needCompress":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "needRender":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v10    # "needDecode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v11    # "secretKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v12    # "shareUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v13    # "secretIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v17    # "needDownloadOrigins":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/model/BaseDataItem;>;"
    .end local v18    # "needDownloadThumbnails":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/model/BaseDataItem;>;"
    .end local v19    # "origins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v22    # "processingCount":I
    .end local v23    # "renders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v28    # "statOrigin":Z
    .end local v29    # "statRender":Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    sget v31, Lmiui/R$string;->select_item:I

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v6, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public final onItemCheckedStateChanged(IJZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "checked"    # Z

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->updateSelectMode()V

    .line 606
    return-void
.end method

.method protected onShared()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method protected onVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 597
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ChooserFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 598
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 599
    check-cast v0, Lcom/miui/gallery/ui/ChooserFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/ChooserFragment;->onVisibilityChanged(Z)V

    .line 601
    :cond_0
    return-void
.end method

.method protected setUpChooserFragment(IZ)V
    .locals 6
    .param p1, "chooseTheme"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 536
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "ChooserFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 537
    .local v1, "fragment":Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 538
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 539
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v2, "i":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    invoke-static {v2, p1, p2}, Lcom/miui/gallery/ui/ChooserFragment;->newInstance(Landroid/content/Intent;IZ)Lcom/miui/gallery/ui/ChooserFragment;

    move-result-object v0

    .line 542
    .local v0, "f":Lcom/miui/gallery/ui/ChooserFragment;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/ui/ChooserFragment;->setOnIntentSelectedListener(Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;)V

    .line 543
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->getContainerId()I

    move-result v4

    const-string v5, "ChooserFragment"

    invoke-virtual {v3, v4, v0, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 544
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 548
    .end local v0    # "f":Lcom/miui/gallery/ui/ChooserFragment;
    .end local v1    # "fragment":Landroid/app/Fragment;
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "transaction":Landroid/app/FragmentTransaction;
    :goto_0
    return-void

    .line 546
    .restart local v1    # "fragment":Landroid/app/Fragment;
    :cond_0
    check-cast v1, Lcom/miui/gallery/ui/ChooserFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, p0}, Lcom/miui/gallery/ui/ChooserFragment;->setOnIntentSelectedListener(Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;)V

    goto :goto_0
.end method

.method protected updateSelectMode()V
    .locals 9

    .prologue
    .line 551
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getSelectItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 552
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->getChoiceTitle()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 553
    if-nez v2, :cond_2

    .line 554
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->getChoiceTitle()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0137

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 560
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0, v2, v1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->configTargetIntentBySelected(ILandroid/content/Intent;)V

    .line 561
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "ChooserFragment"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 562
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 563
    check-cast v0, Lcom/miui/gallery/ui/ChooserFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ChooserFragment;->requery(Landroid/content/Intent;)V

    .line 565
    :cond_1
    return-void

    .line 556
    .end local v1    # "i":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->getChoiceTitle()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0015

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
