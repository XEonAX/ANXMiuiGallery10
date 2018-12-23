.class Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyAudioItemSelectChangeListener;
.super Ljava/lang/Object;
.source "MovieEditorMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$ItemSelectChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAudioItemSelectChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;
    .param p2, "x1"    # Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$1;

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyAudioItemSelectChangeListener;-><init>(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelect(Landroid/support/v7/widget/RecyclerView;Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;IZ)Z
    .locals 9
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "holder"    # Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
    .param p3, "position"    # I
    .param p4, "isChanged"    # Z

    .prologue
    const/4 v6, 0x0

    .line 548
    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v7}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$1000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/miui/gallery/movie/ui/adapter/AudioAdapter;->getItemData(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/movie/entity/AudioResource;

    .line 549
    .local v1, "data":Lcom/miui/gallery/movie/entity/AudioResource;
    if-eqz v1, :cond_0

    .line 550
    invoke-virtual {v1}, Lcom/miui/gallery/movie/entity/AudioResource;->getResType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 552
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 553
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "audio/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v7, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v7, "com.miui.player"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    :try_start_0
    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v3, v8}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v6

    .line 558
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 559
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "MovieEditorMenuFragment"

    const-string v8, "com.miui.player not found,try all picker"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 562
    .end local v3    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    :try_start_2
    const-string v7, "audio/*"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    const-string v7, "android.intent.action.GET_CONTENT"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v4, v8}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 567
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 565
    :catch_1
    move-exception v0

    .line 566
    .local v0, "ae":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string v7, "MovieEditorMenuFragment"

    const-string v8, "picker not found"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 571
    .end local v0    # "ae":Landroid/content/ActivityNotFoundException;
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz p4, :cond_0

    .line 572
    invoke-virtual {v1}, Lcom/miui/gallery/movie/entity/AudioResource;->getDownloadState()I

    move-result v5

    .line 573
    .local v5, "state":I
    const/16 v7, 0x11

    if-eq v5, v7, :cond_2

    if-nez v5, :cond_3

    .line 574
    :cond_2
    invoke-static {p1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 575
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v6}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$000(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v6

    iget-object v7, v1, Lcom/miui/gallery/movie/entity/AudioResource;->nameKey:Ljava/lang/String;

    iput-object v7, v6, Lcom/miui/gallery/movie/entity/MovieInfo;->audio:Ljava/lang/String;

    .line 576
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v6}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$100(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/miui/gallery/movie/core/MovieManager;->setAudio(Lcom/miui/gallery/movie/entity/AudioResource;)V

    .line 577
    invoke-static {v1}, Lcom/miui/gallery/movie/utils/MovieStatUtils;->statItemChoose(Lcom/miui/gallery/movie/entity/MovieResource;)V

    .line 578
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v6}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$1800(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;)V

    .line 579
    const/4 v6, 0x1

    goto :goto_0

    .line 580
    :cond_3
    const/16 v7, 0x13

    if-eq v5, v7, :cond_4

    const/16 v7, 0x14

    if-ne v5, v7, :cond_0

    .line 581
    :cond_4
    iget-object v7, p0, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment$MyAudioItemSelectChangeListener;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;

    invoke-static {v7, v1, p3}, Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;->access$1900(Lcom/miui/gallery/movie/ui/fragment/MovieEditorMenuFragment;Lcom/miui/gallery/movie/entity/MovieResource;I)V

    goto :goto_0

    .line 565
    .end local v5    # "state":I
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method
