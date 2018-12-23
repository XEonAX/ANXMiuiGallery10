.class Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;
.super Landroid/os/AsyncTask;
.source "NexVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/miui/gallery/video/editor/NexVideoEditor$Change;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V
    .locals 0
    .param p2, "onCompletedListener"    # Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .prologue
    .line 825
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 826
    iput-object p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;->mOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .line 827
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/miui/gallery/video/editor/NexVideoEditor$Change;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "changes"    # [Lcom/miui/gallery/video/editor/NexVideoEditor$Change;

    .prologue
    .line 830
    if-eqz p1, :cond_0

    .line 831
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 832
    .local v0, "change":Lcom/miui/gallery/video/editor/NexVideoEditor$Change;
    invoke-interface {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor$Change;->applyChange()V

    .line 831
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 835
    .end local v0    # "change":Lcom/miui/gallery/video/editor/NexVideoEditor$Change;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$100(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->updateProject()V

    .line 836
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 823
    check-cast p1, [Lcom/miui/gallery/video/editor/NexVideoEditor$Change;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;->doInBackground([Lcom/miui/gallery/video/editor/NexVideoEditor$Change;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 840
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 841
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1900(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 842
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$300(Lcom/miui/gallery/video/editor/NexVideoEditor;I)V

    .line 843
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;->mOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;->mOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;->onCompleted()V

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;->mOnCompletedListener:Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;

    .line 847
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 823
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/NexVideoEditor$ApplyTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
