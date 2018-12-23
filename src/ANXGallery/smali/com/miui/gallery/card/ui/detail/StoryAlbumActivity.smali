.class public Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "StoryAlbumActivity.java"


# instance fields
.field private mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragmentContainerId()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x1020002

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->onAttachDialogFragment(Landroid/app/Fragment;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "card"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 19
    .local v2, "cardId":J
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v4, 0x7f1100e6

    invoke-virtual {v1, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 21
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v4, "StoryAlbumFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    iput-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 22
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-direct {v1}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "card"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 26
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->mStoryAlbumFragment:Lcom/miui/gallery/card/ui/detail/StoryAlbumFragment;

    const-string v4, "StoryAlbumFragment"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ZZ)V

    .line 29
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
