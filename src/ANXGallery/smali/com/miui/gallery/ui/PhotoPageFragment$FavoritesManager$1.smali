.class Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    .prologue
    .line 4002
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([J)V
    .locals 5
    .param p1, "result"    # [J

    .prologue
    const/4 v4, 0x0

    .line 4005
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$7200(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4019
    :goto_0
    return-void

    .line 4006
    :cond_0
    if-eqz p1, :cond_2

    aget-wide v0, p1, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 4007
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->access$7300(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;Lcom/miui/gallery/model/BaseDataItem;)V

    .line 4008
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Favorites;->isFirstTimeAddToFavorites()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4009
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v1, 0x7f0e0016

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 4018
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-static {v0, v4}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->access$7402(Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;Z)Z

    goto :goto_0

    .line 4011
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/TalkBackUtil;->requestAnnouncementEvent(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 4015
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->refreshStatus()V

    .line 4016
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v1, 0x7f0e000e

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_1
.end method
