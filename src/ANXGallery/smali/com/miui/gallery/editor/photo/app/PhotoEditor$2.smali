.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/app/InitializeController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInitialize()I
    .locals 5

    .prologue
    const/4 v2, 0x2

    .line 488
    sget-object v3, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/core/SdkManager;->onAttach(Landroid/app/Application;)V

    .line 489
    sget-object v3, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/SdkManager;->onActivityCreate()V

    .line 492
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$200(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->isInMainProcess()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/app/DraftManager;->initializeForPreview(Z)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 500
    .local v1, "result":Z
    if-eqz v1, :cond_0

    const/4 v2, 0x3

    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return v2

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "PhotoEditor"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 495
    const/4 v2, 0x1

    goto :goto_0

    .line 496
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "PhotoEditor"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDone()V
    .locals 4

    .prologue
    .line 505
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "preview"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .local v0, "fragment":Landroid/app/Fragment;
    move-object v1, v0

    .line 506
    check-cast v1, Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    .line 507
    .local v1, "preview":Lcom/miui/gallery/editor/photo/app/PreviewFragment;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->setLoadDone(Z)V

    .line 508
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->showForLoadDown()V

    .line 509
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$200(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2$1;

    invoke-direct {v3, p0, v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2$1;-><init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;Lcom/miui/gallery/editor/photo/app/PreviewFragment;)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/DraftManager;->setOnPreviewRefreshListener(Lcom/miui/gallery/editor/photo/app/DraftManager$OnPreviewRefreshListener;)V

    .line 515
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$2;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$400(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TransitionConfiguration;->onImageLoaded()V

    .line 516
    return-void
.end method
