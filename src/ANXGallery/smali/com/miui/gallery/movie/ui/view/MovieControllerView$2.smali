.class Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;
.super Ljava/lang/Object;
.source "MovieControllerView.java"

# interfaces
.implements Lcom/miui/gallery/movie/core/MovieManager$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/view/MovieControllerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackEOF()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->onPlaybackTimeChanged(I)V

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$500(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->replay()V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;->onPlaybackEOF()V

    .line 128
    :cond_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$402(Lcom/miui/gallery/movie/ui/view/MovieControllerView;Z)Z

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/movie/core/MovieManager;->seek(I)V

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->pause()V

    goto :goto_0
.end method

.method public onPlaybackPreloadingCompletion()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showLoadingView(Z)V

    .line 142
    return-void
.end method

.method public onPlaybackTimeChanged(I)V
    .locals 3
    .param p1, "currentTime"    # I

    .prologue
    .line 132
    int-to-float v1, p1

    iget-object v2, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/movie/core/MovieManager;->getTotalTime()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 133
    .local v0, "percent":F
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v1, p1, v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setCurrentPlayTime(IF)V

    .line 134
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;->onChanged(FI)V

    .line 137
    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$200(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/movie/core/MovieManager;->setState(I)V

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$400(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showPlayBtn(Z)V

    .line 107
    :goto_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->setDeleteVisible(Z)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$300(Lcom/miui/gallery/movie/ui/view/MovieControllerView;)Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/movie/ui/view/MovieControllerView$ProgressChangeListener;->onStateChanged(I)V

    .line 113
    :cond_1
    return-void

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->showPlayBtn(Z)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MovieControllerView$2;->this$0:Lcom/miui/gallery/movie/ui/view/MovieControllerView;

    invoke-static {v0, v2}, Lcom/miui/gallery/movie/ui/view/MovieControllerView;->access$402(Lcom/miui/gallery/movie/ui/view/MovieControllerView;Z)Z

    goto :goto_0
.end method
