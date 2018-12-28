.class public Lcom/miui/gallery/hybrid/GalleryHybridActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "GalleryHybridActivity.java"

# interfaces
.implements Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;


# instance fields
.field private mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private configureActionBar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 49
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 50
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 51
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 52
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f04008a

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 53
    iget-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "customView":Landroid/view/View;
    const v2, 0x7f120076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mTitleView:Landroid/widget/TextView;

    .line 55
    const v2, 0x7f12017c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "close":Landroid/view/View;
    new-instance v2, Lcom/miui/gallery/hybrid/GalleryHybridActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity$1;-><init>(Lcom/miui/gallery/hybrid/GalleryHybridActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method private loadURL()V
    .locals 6

    .prologue
    .line 65
    iget-object v3, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    if-nez v3, :cond_0

    .line 66
    const-string v3, "GalleryHybridActivity"

    const-string v4, "Hybrid fragment not attached, couldn\'t load url now!"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    const-string v3, "GalleryHybridActivity"

    const-string v4, "CTA not allowed, couldn\'t connect to network!"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 77
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 81
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "url":Ljava/lang/String;
    :cond_3
    const-string v3, "com.miui.gallery.action.VIEW_WEB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .restart local v2    # "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v2    # "url":Ljava/lang/String;
    :cond_4
    const-string v3, "com.miui.gallery.action.VIEW_WEB_LOGIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 86
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .restart local v2    # "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->loadWebLoginUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    .end local v2    # "url":Ljava/lang/String;
    :cond_5
    const-string v3, "GalleryHybridActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not supported action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected allowUseOnOffline()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getRuntimePermissions()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->getRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/miui/gallery/util/StringUtils;->mergeStringArray([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    .line 105
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f04008b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->configureActionBar()V

    .line 33
    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f12017e

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    iput-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mHybridFragment:Lcom/miui/gallery/hybrid/GalleryHybridFragment;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/hybrid/GalleryHybridFragment;->setHybridViewEventListener(Lcom/miui/gallery/hybrid/GalleryHybridFragment$HybridViewEventListener;)V

    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->loadURL()V

    .line 38
    return-void
.end method

.method protected onCtaChecked(Z)V
    .locals 1
    .param p1, "agreed"    # Z

    .prologue
    .line 42
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->resumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->loadURL()V

    .line 45
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    return-void
.end method
