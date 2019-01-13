.class public Lcom/miui/gallery/activity/HomePageActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "HomePageActivity.java"

# interfaces
.implements Lcom/miui/gallery/activity/HomePageStartupHelper$Attacher;
.implements Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/activity/HomePageActivity$MediaScanJob;,
        Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;
    }
.end annotation


# instance fields
.field private mAppFocusedCheckHelper:Lcom/miui/gallery/util/AppFocusedCheckHelper;

.field private mCurrentPagePosition:I

.field private mFirstTime:Z

.field private mFragmentPagerScrollState:I

.field private mHomePageStartupHelper:Lcom/miui/gallery/activity/HomePageStartupHelper;

.field private mImmersionMenuHelper:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

.field private mIsInStartup:Z

.field private mMediaScannerReceiver:Lcom/miui/gallery/scanner/MediaScannerReceiver;

.field private mMenuItemsCheckListener:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$MenuItemsCheckListener;

.field private mPager:Lmiui/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mFirstTime:Z

    .line 40
    iput v1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mCurrentPagePosition:I

    .line 48
    iput-boolean v1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mIsInStartup:Z

    .line 49
    iput v1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mFragmentPagerScrollState:I

    .line 184
    new-instance v0, Lcom/miui/gallery/activity/HomePageActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/activity/HomePageActivity$2;-><init>(Lcom/miui/gallery/activity/HomePageActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mMenuItemsCheckListener:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$MenuItemsCheckListener;

    .line 341
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/activity/HomePageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageActivity;

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mCurrentPagePosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/activity/HomePageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mCurrentPagePosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/activity/HomePageActivity;)Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mImmersionMenuHelper:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/activity/HomePageActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/gallery/activity/HomePageActivity;->getPageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/activity/HomePageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/gallery/activity/HomePageActivity;->updateActionBarMore(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/miui/gallery/activity/HomePageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mFragmentPagerScrollState:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/activity/HomePageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/activity/HomePageActivity;->setupOtherFragments()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/activity/HomePageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageActivity;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mFirstTime:Z

    return v0
.end method

.method static synthetic access$702(Lcom/miui/gallery/activity/HomePageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mFirstTime:Z

    return p1
.end method

.method static synthetic access$800(Lcom/miui/gallery/activity/HomePageActivity;)Lmiui/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mPager:Lmiui/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/activity/HomePageActivity;Lmiui/view/ViewPager;)Lmiui/view/ViewPager;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageActivity;
    .param p1, "x1"    # Lmiui/view/ViewPager;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mPager:Lmiui/view/ViewPager;

    return-object p1
.end method

.method private getPageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    const-string v0, "home"

    .line 181
    :goto_0
    return-object v0

    .line 176
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 177
    const-string v0, "album"

    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 179
    const-string v0, "assistant"

    goto :goto_0

    .line 181
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerMediaScannerReceiver()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 320
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mMediaScannerReceiver:Lcom/miui/gallery/scanner/MediaScannerReceiver;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/miui/gallery/scanner/MediaScannerReceiver;

    invoke-direct {v0}, Lcom/miui/gallery/scanner/MediaScannerReceiver;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mMediaScannerReceiver:Lcom/miui/gallery/scanner/MediaScannerReceiver;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mMediaScannerReceiver:Lcom/miui/gallery/scanner/MediaScannerReceiver;

    const-string v1, "file"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    aput-object v4, v2, v3

    invoke-static {p0, v0, v5, v1, v2}, Lcom/miui/gallery/util/ReceiverUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;[Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private setupActionBar()V
    .locals 4

    .prologue
    .line 141
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {p0}, Lcom/miui/gallery/activity/HomePageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V

    .line 142
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    const v2, 0x7f040002

    invoke-virtual {v1, v2}, Lmiui/app/ActionBar;->setCustomView(I)V

    .line 143
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v1}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "customView":Landroid/view/View;
    new-instance v1, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    invoke-direct {v1, p0}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mImmersionMenuHelper:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    .line 145
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mImmersionMenuHelper:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageActivity;->mMenuItemsCheckListener:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$MenuItemsCheckListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->registerMenuItemsCheckListener(Lcom/miui/gallery/activity/HomePageImmersionMenuHelper$MenuItemsCheckListener;)V

    .line 146
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mImmersionMenuHelper:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->checkRedDotFeature()V

    .line 147
    const v1, 0x7f120012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/activity/HomePageActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/activity/HomePageActivity$1;-><init>(Lcom/miui/gallery/activity/HomePageActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget v1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mCurrentPagePosition:I

    invoke-direct {p0, v1}, Lcom/miui/gallery/activity/HomePageActivity;->updateActionBarMore(I)V

    .line 161
    return-void
.end method

.method private setupHomePageFragment()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/miui/gallery/activity/HomePageActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    const-string v1, "HomePageFragment"

    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    .line 199
    invoke-virtual {v2}, Lmiui/app/ActionBar;->newTab()Lmiui/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0e023c

    invoke-virtual {v2, v3}, Lmiui/app/ActionBar$Tab;->setText(I)Lmiui/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/miui/gallery/ui/HomePageFragment;

    .line 198
    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Lmiui/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    const-string v1, "Empty"

    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    .line 202
    invoke-virtual {v2}, Lmiui/app/ActionBar;->newTab()Lmiui/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0e003c

    invoke-virtual {v2, v3}, Lmiui/app/ActionBar$Tab;->setText(I)Lmiui/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Landroid/app/Fragment;

    .line 201
    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Lmiui/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 204
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->isStoryFunctionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    const-string v1, "StoryStub"

    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    .line 206
    invoke-virtual {v2}, Lmiui/app/ActionBar;->newTab()Lmiui/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0e0560

    invoke-virtual {v2, v3}, Lmiui/app/ActionBar$Tab;->setText(I)Lmiui/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Landroid/app/Fragment;

    .line 205
    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Lmiui/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    new-instance v1, Lcom/miui/gallery/activity/HomePageActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/activity/HomePageActivity$3;-><init>(Lcom/miui/gallery/activity/HomePageActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 233
    return-void
.end method

.method private setupOtherFragments()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 236
    iget-boolean v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mIsInStartup:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mFragmentPagerScrollState:I

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iput-boolean v6, p0, Lcom/miui/gallery/activity/HomePageActivity;->mIsInStartup:Z

    .line 240
    iget v7, p0, Lcom/miui/gallery/activity/HomePageActivity;->mCurrentPagePosition:I

    .line 241
    .local v7, "position":I
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    const-string v1, "AlbumPageFragment"

    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    .line 242
    invoke-virtual {v2}, Lmiui/app/ActionBar;->newTab()Lmiui/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0e003c

    invoke-virtual {v2, v3}, Lmiui/app/ActionBar$Tab;->setText(I)Lmiui/app/ActionBar$Tab;

    move-result-object v2

    const/4 v3, 0x1

    const-class v4, Lcom/miui/gallery/ui/AlbumPageFragment;

    .line 241
    invoke-virtual/range {v0 .. v6}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Lmiui/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    .line 245
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v1, v7}, Lmiui/app/ActionBar;->getTabAt(I)Lmiui/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->selectTab(Lmiui/app/ActionBar$Tab;)V

    .line 246
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v0, v8}, Lmiui/app/ActionBar;->removeFragmentTabAt(I)V

    .line 248
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->isStoryFunctionEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    const-string v1, "AssistantPageFragment"

    iget-object v2, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    .line 250
    invoke-virtual {v2}, Lmiui/app/ActionBar;->newTab()Lmiui/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0e0560

    invoke-virtual {v2, v3}, Lmiui/app/ActionBar$Tab;->setText(I)Lmiui/app/ActionBar$Tab;

    move-result-object v2

    const-class v4, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    move v3, v8

    .line 249
    invoke-virtual/range {v0 .. v6}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Lmiui/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    .line 253
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->removeFragmentTabAt(I)V

    goto :goto_0
.end method

.method private unregisterMediaScannerReceiver()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mMediaScannerReceiver:Lcom/miui/gallery/scanner/MediaScannerReceiver;

    invoke-static {p0, v0}, Lcom/miui/gallery/util/ReceiverUtils;->safeUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mMediaScannerReceiver:Lcom/miui/gallery/scanner/MediaScannerReceiver;

    .line 333
    return-void
.end method

.method private updateActionBarMore(I)V
    .locals 2
    .param p1, "curPosition"    # I

    .prologue
    const/4 v1, 0x1

    .line 164
    if-ne p1, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    if-nez p1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchAppFocused()V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    iget v2, p0, Lcom/miui/gallery/activity/HomePageActivity;->mCurrentPagePosition:I

    invoke-virtual {v1, v2}, Lmiui/app/ActionBar;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    .line 99
    .local v0, "f":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;

    .end local v0    # "f":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;->onAppFocused()V

    .line 102
    :cond_0
    return-void
.end method

.method public getStartupHelper()Lcom/miui/gallery/activity/HomePageStartupHelper;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mHomePageStartupHelper:Lcom/miui/gallery/activity/HomePageStartupHelper;

    return-object v0
.end method

.method protected hasCustomContentView()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public onAppFocused()V
    .locals 3

    .prologue
    .line 91
    const-string v0, "HomePageActivity"

    const-string v1, "onAppFocused"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/miui/gallery/activity/HomePageActivity;->dispatchAppFocused()V

    .line 94
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/activity/HomePageActivity$MediaScanJob;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/gallery/activity/HomePageActivity$MediaScanJob;-><init>(Lcom/miui/gallery/activity/HomePageActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 95
    return-void
.end method

.method public onCheckPermissionSucceed()V
    .locals 3

    .prologue
    .line 337
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onCheckPermissionSucceed()V

    .line 338
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/activity/HomePageActivity$MediaScanJob;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/gallery/activity/HomePageActivity$MediaScanJob;-><init>(Lcom/miui/gallery/activity/HomePageActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 339
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    new-instance v0, Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-direct {v0, p0, p0}, Lcom/miui/gallery/activity/HomePageStartupHelper;-><init>(Landroid/content/Context;Lcom/miui/gallery/activity/HomePageStartupHelper$Attacher;)V

    iput-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mHomePageStartupHelper:Lcom/miui/gallery/activity/HomePageStartupHelper;

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mHomePageStartupHelper:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->onActivityCreate()V

    .line 59
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/miui/gallery/activity/HomePageActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {p0}, Lcom/miui/gallery/activity/HomePageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 61
    invoke-direct {p0}, Lcom/miui/gallery/activity/HomePageActivity;->setupHomePageFragment()V

    .line 63
    new-instance v0, Lcom/miui/gallery/util/AppFocusedCheckHelper;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/AppFocusedCheckHelper;-><init>(Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;)V

    iput-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mAppFocusedCheckHelper:Lcom/miui/gallery/util/AppFocusedCheckHelper;

    .line 65
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->onCreateOrDestroyHomePage()V

    .line 66
    return-void
.end method

.method protected onCtaChecked(Z)V
    .locals 1
    .param p1, "agreed"    # Z

    .prologue
    .line 127
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$DocumentProvider;->isFirstEntrance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->needRequestExternalSDCardPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->startFirstEntrancyPermissionActivityForResult(Lmiui/app/Activity;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mAppFocusedCheckHelper:Lcom/miui/gallery/util/AppFocusedCheckHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/AppFocusedCheckHelper;->onDestroy()V

    .line 107
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onDestroy()V

    .line 109
    invoke-static {}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->getInstance()Lcom/miui/gallery/util/PhotoPageOrientationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->reset()V

    .line 110
    invoke-direct {p0}, Lcom/miui/gallery/activity/HomePageActivity;->unregisterMediaScannerReceiver()V

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mHomePageStartupHelper:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper;->onActivityDestroy()V

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mImmersionMenuHelper:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mImmersionMenuHelper:Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/HomePageImmersionMenuHelper;->onActivityDestroy()V

    .line 116
    :cond_0
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->onCreateOrDestroyHomePage()V

    .line 117
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onPause()V

    .line 122
    iget v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mCurrentPagePosition:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/activity/HomePageActivity;->getPageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Lmiui/app/Activity;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onResume()V

    .line 136
    iget v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mCurrentPagePosition:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/activity/HomePageActivity;->getPageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Lmiui/app/Activity;Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mCurrentPagePosition:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/activity/HomePageActivity;->updateActionBarMore(I)V

    .line 138
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onStart()V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mAppFocusedCheckHelper:Lcom/miui/gallery/util/AppFocusedCheckHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/AppFocusedCheckHelper;->onStart()V

    .line 87
    return-void
.end method

.method public onStartup()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mIsInStartup:Z

    .line 72
    invoke-direct {p0}, Lcom/miui/gallery/activity/HomePageActivity;->setupOtherFragments()V

    .line 73
    invoke-direct {p0}, Lcom/miui/gallery/activity/HomePageActivity;->setupActionBar()V

    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/activity/HomePageActivity;->registerMediaScannerReceiver()V

    .line 75
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageActivity;->mAppFocusedCheckHelper:Lcom/miui/gallery/util/AppFocusedCheckHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/util/AppFocusedCheckHelper;->onStop()V

    .line 80
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onStop()V

    .line 81
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 269
    new-instance v0, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/activity/HomePageActivity$CallbackWrapper;-><init>(Lcom/miui/gallery/activity/HomePageActivity;Landroid/view/ActionMode$Callback;)V

    invoke-super {p0, v0}, Lcom/miui/gallery/activity/BaseActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method protected supportEnterSetting()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    return v0
.end method
