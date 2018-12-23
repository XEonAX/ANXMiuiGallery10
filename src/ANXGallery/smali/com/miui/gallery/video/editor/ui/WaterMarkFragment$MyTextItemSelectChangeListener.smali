.class Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;
.super Ljava/lang/Object;
.source "WaterMarkFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$ItemSelectChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTextItemSelectChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p2, "x1"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$1;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelect(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;IZ)Z
    .locals 5
    .param p1, "adapter"    # Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;
    .param p2, "position"    # I
    .param p3, "isChanged"    # Z

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$600(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 337
    check-cast v1, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    .line 338
    .local v1, "textRecyclerViewAdapter":Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$700(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 339
    invoke-virtual {v1, p2}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getTextStyle(I)Lcom/miui/gallery/video/editor/TextStyle;

    move-result-object v0

    .line 340
    .local v0, "style":Lcom/miui/gallery/video/editor/TextStyle;
    if-eqz v0, :cond_0

    if-nez p3, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    :cond_2
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isNone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 344
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3, p2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$800(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;I)V

    .line 345
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3, v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$902(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Z)Z

    .line 346
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/TextStyle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1002(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;

    .line 347
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v2, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1102(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;

    .line 348
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    const-string v3, ""

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/video/editor/VideoEditor;->setAutoWaterMark(Ljava/lang/String;I)Z

    .line 349
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)I

    move-result v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/video/editor/VideoEditor;->setWarterMark(ILjava/lang/String;)Z

    .line 350
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v3, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener$1;

    invoke-direct {v3, p0, p2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener$1;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;I)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v2

    goto :goto_0

    .line 359
    :cond_3
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isExtra()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 360
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3, v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$902(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Z)Z

    .line 361
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 362
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v2, p2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$800(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;I)V

    .line 363
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1400(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    .line 364
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/TextStyle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1002(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;

    .line 365
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v2, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1102(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;

    .line 366
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    const-string v3, ""

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/video/editor/VideoEditor;->setAutoWaterMark(Ljava/lang/String;I)Z

    .line 367
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->getTemplateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/video/editor/VideoEditor;->setWarterMark(ILjava/lang/String;)Z

    .line 368
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v2, v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v3, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener$2;

    invoke-direct {v3, p0, p2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener$2;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;I)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v2

    goto/16 :goto_0

    .line 378
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v3, v3, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIDownloadListener:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;

    invoke-interface {v3, v0, p2}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;->downloadResourceWithCheck(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V

    .line 379
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1502(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;

    goto/16 :goto_0

    .line 381
    :cond_5
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/TextStyle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1002(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;

    .line 383
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1102(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;

    .line 384
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1600(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 386
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$900(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 387
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1700(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z

    .line 399
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1400(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    goto/16 :goto_0

    .line 390
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1800(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    .line 391
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1900(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    .line 392
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v3, v3, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/VideoEditor;->pause()V

    goto :goto_1

    .line 395
    :cond_7
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1800(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    .line 396
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1900(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    .line 397
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    iget-object v3, v3, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/VideoEditor;->pause()V

    goto :goto_1
.end method
