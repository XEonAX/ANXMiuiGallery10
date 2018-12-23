.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStartTime:J

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 915
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sampleExportTime(Ljava/lang/String;J)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "milli"    # J

    .prologue
    .line 950
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$900(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/Sampler;

    move-result-object v0

    const-string v1, "_main"

    const-wide/16 v2, 0x64

    div-long v2, p2, v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/miui/gallery/editor/photo/app/Sampler;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 951
    return-void
.end method


# virtual methods
.method public doExport()Z
    .locals 8

    .prologue
    .line 920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->mStartTime:J

    .line 921
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->prepareToExport()V

    .line 922
    const-string v1, "PhotoEditor"

    const-string v2, "doExport start"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$100(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$200(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->getExportUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/editor/photo/origin/EditorOriginHandler;->doExport(Lcom/miui/gallery/editor/photo/app/DraftManager;Landroid/net/Uri;)Z

    move-result v0

    .line 924
    .local v0, "finish":Z
    const-string v1, "PhotoEditor"

    const-string v2, "doExport end, use time: %d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 925
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->onExport(Z)Z

    move-result v0

    .line 926
    const-string v1, "compress_finished"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->sampleExportTime(Ljava/lang/String;J)V

    .line 927
    return v0
.end method

.method public onCancelled(Z)V
    .locals 6
    .param p1, "success"    # Z

    .prologue
    .line 932
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->onCancelled(Z)V

    .line 933
    const-string v0, "compress_cancelled"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->sampleExportTime(Ljava/lang/String;J)V

    .line 934
    return-void
.end method

.method public onExported(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 938
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->onPostExport(Z)V

    .line 939
    if-eqz p1, :cond_0

    .line 940
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->access$1700(Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;)V

    .line 941
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$600(Lcom/miui/gallery/editor/photo/app/PhotoEditor;Z)V

    .line 942
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/compat/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 947
    :goto_0
    return-void

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$700(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->closeExportDialog()V

    .line 945
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$10;->this$0:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    const v1, 0x7f0e0288

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0
.end method
