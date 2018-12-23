.class Lcom/miui/gallery/ui/BabyAlbumDetailFragment$1;
.super Ljava/lang/Object;
.source "BabyAlbumDetailFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/BabyAlbumDetailPageScrollView$InnerScollerStateChangedMessager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$1;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disappearFloatingView()Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$1;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$500(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$1;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$500(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecommendFaceButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$1;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$600(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isScoll2Top()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$1;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$400(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Z

    move-result v0

    return v0
.end method

.method public setNormalActionBarBackground()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$1;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$000(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->access$200(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)V

    .line 196
    return-void
.end method

.method public setNullActionBarBackground()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$1;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$000(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;->access$100(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$ActionBarHelper;)V

    .line 191
    return-void
.end method
