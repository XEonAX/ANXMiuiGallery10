.class Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;
.super Ljava/lang/Object;
.source "MoviePreviewMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongVideoTitleViewClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$400(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/entity/MovieInfo;->backToLongVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$500(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$400(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/movie/core/MovieManager;->resetImage(Ljava/util/List;Z)V

    .line 195
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$600(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$500(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->replay()V

    .line 200
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->updateShareData(Z)V

    .line 202
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->updateStorySha1Data()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$400(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/movie/utils/MovieStatUtils;->statDurationClick(Lcom/miui/gallery/movie/entity/MovieInfo;ZZ)V

    .line 205
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$500(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/movie/core/MovieManager;->setIsShortVideo(Z)V

    goto :goto_0
.end method

.method public onShortVideoTitleViewClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$400(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/entity/MovieInfo;->changeToShortVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$500(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$400(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/movie/entity/MovieInfo;->imageList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/movie/core/MovieManager;->resetImage(Ljava/util/List;Z)V

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$600(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)V

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$500(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/movie/core/MovieManager;->replay()V

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->updateShareData(Z)V

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$200(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/movie/ui/listener/MenuFragmentListener;->updateStorySha1Data()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$400(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/entity/MovieInfo;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/miui/gallery/movie/utils/MovieStatUtils;->statDurationClick(Lcom/miui/gallery/movie/entity/MovieInfo;ZZ)V

    .line 189
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment$2;->this$0:Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;->access$500(Lcom/miui/gallery/movie/ui/fragment/MoviePreviewMenuFragment;)Lcom/miui/gallery/movie/core/MovieManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/gallery/movie/core/MovieManager;->setIsShortVideo(Z)V

    goto :goto_0
.end method
