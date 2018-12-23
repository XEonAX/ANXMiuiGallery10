.class Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;
.super Landroid/os/AsyncTask;
.source "CollageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/CollageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveAssistantExtraTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mCollageMargin:Lcom/miui/gallery/collage/render/CollageMargin;

.field mFinalIndex:I

.field mType:Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

.field final synthetic this$0:Lcom/miui/gallery/collage/CollageActivity;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/CollageActivity;)V
    .locals 1

    .prologue
    .line 459
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 461
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mFinalIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/CollageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p2, "x1"    # Lcom/miui/gallery/collage/CollageActivity$1;

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;-><init>(Lcom/miui/gallery/collage/CollageActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 459
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 467
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 468
    .local v1, "gson":Lcom/google/gson/Gson;
    aget-object v4, p1, v12

    .line 469
    .local v4, "json":Ljava/lang/String;
    const-class v8, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel;

    invoke-virtual {v1, v4, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel;

    .line 470
    .local v0, "collageAssistantRenderModel":Lcom/miui/gallery/collage/render/CollageAssistantRenderModel;
    iget-object v8, v0, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel;->collageMargin:Lcom/miui/gallery/collage/render/CollageMargin;

    iput-object v8, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mCollageMargin:Lcom/miui/gallery/collage/render/CollageMargin;

    .line 471
    iget-object v3, v0, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel;->index:Ljava/lang/String;

    .line 472
    .local v3, "index":Ljava/lang/String;
    iget-object v8, v0, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel;->type:Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    iput-object v8, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mType:Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    .line 473
    sget-object v8, Lcom/miui/gallery/collage/CollageActivity$7;->$SwitchMap$com$miui$gallery$collage$render$CollageAssistantRenderModel$Type:[I

    iget-object v9, v0, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel;->type:Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    invoke-virtual {v9}, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 495
    :cond_0
    :goto_0
    const/4 v8, 0x0

    return-object v8

    .line 475
    :pswitch_0
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%d_%s.json"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v11}, Lcom/miui/gallery/collage/CollageActivity;->access$600(Lcom/miui/gallery/collage/CollageActivity;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 476
    .local v6, "layoutSuffix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v8}, Lcom/miui/gallery/collage/CollageActivity;->access$700(Lcom/miui/gallery/collage/CollageActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 477
    iget-object v8, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v8}, Lcom/miui/gallery/collage/CollageActivity;->access$700(Lcom/miui/gallery/collage/CollageActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/collage/LayoutModel;

    .line 478
    .local v5, "layoutModel":Lcom/miui/gallery/collage/LayoutModel;
    iget-object v8, v5, Lcom/miui/gallery/collage/LayoutModel;->name:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 479
    iput v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mFinalIndex:I

    goto :goto_0

    .line 476
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 485
    .end local v2    # "i":I
    .end local v5    # "layoutModel":Lcom/miui/gallery/collage/LayoutModel;
    .end local v6    # "layoutSuffix":Ljava/lang/String;
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v8, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v8}, Lcom/miui/gallery/collage/CollageActivity;->access$800(Lcom/miui/gallery/collage/CollageActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 486
    iget-object v8, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v8}, Lcom/miui/gallery/collage/CollageActivity;->access$800(Lcom/miui/gallery/collage/CollageActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/collage/PosterModel;

    .line 487
    .local v7, "posterModel":Lcom/miui/gallery/collage/PosterModel;
    iget-object v8, v7, Lcom/miui/gallery/collage/PosterModel;->name:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 488
    invoke-static {v7, v0}, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel;->configPosterModel(Lcom/miui/gallery/collage/PosterModel;Lcom/miui/gallery/collage/render/CollageAssistantRenderModel;)V

    .line 489
    iput v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mFinalIndex:I

    goto :goto_0

    .line 485
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 459
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "collageAssistantRenderModel"    # Ljava/lang/Void;

    .prologue
    .line 500
    iget v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mFinalIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mFinalIndex:I

    .line 501
    :cond_0
    sget-object v1, Lcom/miui/gallery/collage/CollageActivity$7;->$SwitchMap$com$miui$gallery$collage$render$CollageAssistantRenderModel$Type:[I

    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mType:Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;

    invoke-virtual {v2}, Lcom/miui/gallery/collage/render/CollageAssistantRenderModel$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 521
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v1}, Lcom/miui/gallery/collage/CollageActivity;->access$2100(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mFinalIndex:I

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->scrollToPosition(I)V

    .line 522
    return-void

    .line 503
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v2}, Lcom/miui/gallery/collage/CollageActivity;->access$900(Lcom/miui/gallery/collage/CollageActivity;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/collage/CollageActivity;->onClick(Landroid/view/View;)V

    .line 504
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mCollageMargin:Lcom/miui/gallery/collage/render/CollageMargin;

    if-eqz v1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v1}, Lcom/miui/gallery/collage/CollageActivity;->access$1000(Lcom/miui/gallery/collage/CollageActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mCollageMargin:Lcom/miui/gallery/collage/render/CollageMargin;

    iget v2, v2, Lcom/miui/gallery/collage/render/CollageMargin;->iconRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v1}, Lcom/miui/gallery/collage/CollageActivity;->access$1100(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/collage/widget/CollageLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mCollageMargin:Lcom/miui/gallery/collage/render/CollageMargin;

    iget v2, v2, Lcom/miui/gallery/collage/render/CollageMargin;->marginSize:F

    invoke-virtual {v1, v2}, Lcom/miui/gallery/collage/widget/CollageLayout;->setCollageMargin(F)V

    .line 507
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mCollageMargin:Lcom/miui/gallery/collage/render/CollageMargin;

    invoke-static {v1, v2}, Lcom/miui/gallery/collage/CollageActivity;->access$1202(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/render/CollageMargin;)Lcom/miui/gallery/collage/render/CollageMargin;

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    iget v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mFinalIndex:I

    invoke-static {v1, v2}, Lcom/miui/gallery/collage/CollageActivity;->access$1302(Lcom/miui/gallery/collage/CollageActivity;I)I

    .line 510
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v1}, Lcom/miui/gallery/collage/CollageActivity;->access$700(Lcom/miui/gallery/collage/CollageActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v2}, Lcom/miui/gallery/collage/CollageActivity;->access$1300(Lcom/miui/gallery/collage/CollageActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/LayoutModel;

    .line 511
    .local v0, "layoutModel":Lcom/miui/gallery/collage/LayoutModel;
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v1, v0}, Lcom/miui/gallery/collage/CollageActivity;->access$1400(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/LayoutModel;)V

    .line 512
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v2}, Lcom/miui/gallery/collage/CollageActivity;->access$1500(Lcom/miui/gallery/collage/CollageActivity;)[Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/gallery/collage/CollageActivity;->access$1600(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/LayoutModel;[Landroid/graphics/Bitmap;)V

    .line 513
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v1}, Lcom/miui/gallery/collage/CollageActivity;->access$1700(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mFinalIndex:I

    invoke-virtual {v1, v2}, Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;->setSelection(I)V

    goto :goto_0

    .line 516
    .end local v0    # "layoutModel":Lcom/miui/gallery/collage/LayoutModel;
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    iget v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mFinalIndex:I

    invoke-static {v1, v2}, Lcom/miui/gallery/collage/CollageActivity;->access$1802(Lcom/miui/gallery/collage/CollageActivity;I)I

    .line 517
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v2}, Lcom/miui/gallery/collage/CollageActivity;->access$1500(Lcom/miui/gallery/collage/CollageActivity;)[Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/collage/CollageActivity;->access$1900(Lcom/miui/gallery/collage/CollageActivity;[Landroid/graphics/Bitmap;)V

    .line 518
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v1}, Lcom/miui/gallery/collage/CollageActivity;->access$2000(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->mFinalIndex:I

    invoke-virtual {v1, v2}, Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;->setSelection(I)V

    goto/16 :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
