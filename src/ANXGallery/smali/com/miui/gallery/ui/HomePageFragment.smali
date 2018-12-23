.class public Lcom/miui/gallery/ui/HomePageFragment;
.super Lcom/miui/gallery/ui/BaseMediaFragment;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/AIAlbumDisplayHelper$DisplayStatusCallback;
.implements Lcom/miui/gallery/util/AppFocusedCheckHelper$OnAppFocusedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;,
        Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;
    }
.end annotation


# static fields
.field public static final PHOTOS_LOADER_PROJECTION:[Ljava/lang/String;

.field public static final PHOTOS_LOADER_URI:Landroid/net/Uri;

.field private static final PHOTOS_PAGE_URI:Landroid/net/Uri;


# instance fields
.field private mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

.field private mChoiceModeListener:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

.field private mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

.field private mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

.field private mHomeGridView:Landroid/widget/GridView;

.field private mHomeGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

.field private mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

.field private mHomePagePhotoLoaderCallback:Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;

.field private mHomePageStartHelper:Lcom/miui/gallery/activity/HomePageStartupHelper;

.field private mHomePageTopBarController:Lcom/miui/gallery/ui/HomePageTopBarController;

.field private mIsStartupDone:Z

.field private mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

.field private mSearchBarStatusObserver:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

.field private mSearchContainer:Landroid/widget/FrameLayout;

.field private mSearchTextPreview:Landroid/widget/FrameLayout;

.field private mStartCalled:Z

.field private mVoiceAssistantReceiver:Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 98
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_duplicate_items"

    .line 101
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "generate_headers"

    .line 104
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/ui/HomePageFragment;->PHOTOS_LOADER_URI:Landroid/net/Uri;

    .line 106
    sget-object v0, Lcom/miui/gallery/adapter/HomePageAdapter;->PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/ui/HomePageFragment;->PHOTOS_LOADER_PROJECTION:[Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_duplicate_items"

    .line 117
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/ui/HomePageFragment;->PHOTOS_PAGE_URI:Landroid/net/Uri;

    .line 114
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mIsStartupDone:Z

    .line 491
    new-instance v0, Lcom/miui/gallery/ui/HomePageFragment$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/HomePageFragment$5;-><init>(Lcom/miui/gallery/ui/HomePageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mChoiceModeListener:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

    .line 752
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/adapter/HomePageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/miui/gallery/ui/HomePageFragment;->PHOTOS_PAGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/HomePageFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/HomePageFragment;->onSend(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/HomePageFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchTextPreview:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/HomePageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->inflateEmptyView()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/HomePageTopBarController;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageTopBarController:Lcom/miui/gallery/ui/HomePageTopBarController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/widget/TwoStageDrawer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/activity/HomePageStartupHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageStartHelper:Lcom/miui/gallery/activity/HomePageStartupHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/ui/TopSearchBarController;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/widget/EditableListViewWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/HomePageFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    return-object v0
.end method

.method private addSearchContainer()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 239
    new-instance v5, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchContainer:Landroid/widget/FrameLayout;

    .line 240
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v0, v7, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 241
    .local v0, "containerParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchContainer:Landroid/widget/FrameLayout;

    const v6, -0x80809

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 243
    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchContainer:Landroid/widget/FrameLayout;

    const v6, 0x7f120007

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 245
    invoke-static {v8}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->isSearchCacheStatusOpen(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 246
    new-instance v5, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchTextPreview:Landroid/widget/FrameLayout;

    .line 247
    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/high16 v6, 0x421a0000    # 38.5f

    invoke-static {v5, v6}, Lcom/miui/gallery/util/MiscUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 248
    .local v3, "textHeight":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v5, v6}, Lcom/miui/gallery/util/MiscUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 250
    .local v1, "horizontalMargin":I
    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v6, 0x40ca8f5c    # 6.33f

    invoke-static {v5, v6}, Lcom/miui/gallery/util/MiscUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 251
    .local v4, "verticalMargin":I
    invoke-virtual {v2, v1, v8, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 252
    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchTextPreview:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchTextPreview:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 254
    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchTextPreview:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 255
    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    add-int v6, v3, v1

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setTranslationY(F)V

    .line 257
    .end local v1    # "horizontalMargin":I
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "textHeight":I
    .end local v4    # "verticalMargin":I
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    iget-object v6, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Lcom/miui/gallery/widget/TwoStageDrawer;->addView(Landroid/view/View;)V

    .line 258
    return-void
.end method

.method private addTopBar()V
    .locals 7

    .prologue
    .line 261
    new-instance v2, Lcom/miui/gallery/widget/PanelBar;

    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v2, v4}, Lcom/miui/gallery/widget/PanelBar;-><init>(Landroid/content/Context;)V

    .line 262
    .local v2, "panel":Lcom/miui/gallery/widget/PanelBar;
    const v4, 0x7f120008

    invoke-virtual {v2, v4}, Lcom/miui/gallery/widget/PanelBar;->setId(I)V

    .line 263
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/gallery/widget/PanelBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 265
    .local v0, "horizontalMargin":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 266
    .local v3, "verticalMargin":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    .line 267
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0202

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 268
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    const/4 v4, 0x3

    const v5, 0x7f120007

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 270
    invoke-virtual {v2, v1}, Lcom/miui/gallery/widget/PanelBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {v4, v2}, Lcom/miui/gallery/widget/TwoStageDrawer;->addView(Landroid/view/View;)V

    .line 272
    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {v4, v2}, Lcom/miui/gallery/widget/TwoStageDrawer;->setSecondaryContentView(Landroid/view/View;)V

    .line 273
    return-void
.end method

.method private displaySearchBar()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 682
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    if-nez v3, :cond_0

    .line 683
    new-instance v3, Lcom/miui/gallery/search/widget/BannerSearchBar;

    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v3, v4}, Lcom/miui/gallery/search/widget/BannerSearchBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    .line 684
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const v4, 0x7f120006

    invoke-virtual {v3, v4}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setId(I)V

    .line 686
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    if-nez v3, :cond_1

    .line 687
    new-instance v3, Lcom/miui/gallery/ui/TopSearchBarController;

    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    const-string v5, "from_home_page"

    invoke-direct {v3, p0, v4, v5}, Lcom/miui/gallery/ui/TopSearchBarController;-><init>(Lmiui/app/Fragment;Lcom/miui/gallery/search/widget/BannerSearchBar;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    .line 690
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 691
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 692
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/TopSearchBarController;->onResume()V

    .line 696
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    invoke-virtual {v3}, Lcom/miui/gallery/search/widget/BannerSearchBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 697
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    new-instance v4, Lcom/miui/gallery/ui/HomePageFragment$6;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/HomePageFragment$6;-><init>(Lcom/miui/gallery/ui/HomePageFragment;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/search/widget/BannerSearchBar;->post(Ljava/lang/Runnable;)Z

    .line 727
    :goto_0
    return-void

    .line 708
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchTextPreview:Landroid/widget/FrameLayout;

    if-nez v3, :cond_4

    .line 709
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 710
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/miui/gallery/util/MiscUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 711
    .local v0, "horizontalMargin":I
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v4, 0x40ca8f5c    # 6.33f

    invoke-static {v3, v4}, Lcom/miui/gallery/util/MiscUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 712
    .local v2, "verticalMargin":I
    invoke-virtual {v1, v0, v6, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 713
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 715
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    new-instance v4, Lcom/miui/gallery/ui/HomePageFragment$7;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/HomePageFragment$7;-><init>(Lcom/miui/gallery/ui/HomePageFragment;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/search/widget/BannerSearchBar;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 724
    .end local v0    # "horizontalMargin":I
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "verticalMargin":I
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchTextPreview:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/miui/gallery/ui/HomePageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 725
    iget-object v3, p0, Lcom/miui/gallery/ui/HomePageFragment;->mBannerSearchBar:Lcom/miui/gallery/search/widget/BannerSearchBar;

    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getSearchBarAppearAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/search/widget/BannerSearchBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private doOnStart()V
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mStartCalled:Z

    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/HomePageAdapter;->updateGalleryCloudSyncableState()V

    .line 437
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageTopBarController:Lcom/miui/gallery/ui/HomePageTopBarController;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageTopBarController:Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomePageTopBarController;->onResume()V

    .line 440
    :cond_0
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getInstance()Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->triggerNewImageCalculation()V

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mStartCalled:Z

    .line 442
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->onVisibleToUser()V

    .line 446
    :cond_1
    return-void
.end method

.method private doOnStop()V
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mStartCalled:Z

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageTopBarController:Lcom/miui/gallery/ui/HomePageTopBarController;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageTopBarController:Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomePageTopBarController;->onPause()V

    .line 453
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mStartCalled:Z

    .line 455
    :cond_1
    return-void
.end method

.method private getSearchBarAppearAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 4

    .prologue
    .line 730
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 731
    .local v0, "appearAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 732
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 733
    new-instance v1, Lcom/miui/gallery/ui/HomePageFragment$8;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/HomePageFragment$8;-><init>(Lcom/miui/gallery/ui/HomePageFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 749
    return-object v0
.end method

.method private inflateEmptyView()V
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040086

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/EmptyPage;

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    .line 358
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    new-instance v1, Lcom/miui/gallery/ui/HomePageFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/HomePageFragment$3;-><init>(Lcom/miui/gallery/ui/HomePageFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setOnActionButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->addView(Landroid/view/View;)V

    .line 366
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setEmptyView(Landroid/view/View;)V

    .line 368
    :cond_0
    return-void
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/HomePageAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/HomePageAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "targetClass"    # Ljava/lang/String;

    .prologue
    .line 763
    const v8, 0x7fffffff

    .line 764
    .local v8, "initPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/EditableListViewWrapper;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v23

    .line 765
    .local v23, "selectedItems":Landroid/util/SparseBooleanArray;
    new-instance v22, Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 766
    .local v22, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 767
    .local v19, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_1

    .line 768
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v20

    .line 769
    .local v20, "key":I
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 770
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/miui/gallery/adapter/HomePageAdapter;->getItemKey(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    move/from16 v0, v20

    if-ge v0, v8, :cond_0

    .line 773
    move/from16 v8, v20

    .line 767
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 778
    .end local v20    # "key":I
    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 807
    :goto_1
    return-void

    .line 782
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v15, v3, [I

    .line 783
    .local v15, "selectedPos":[I
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v14, v3, [J

    .line 784
    .local v14, "selectedId":[J
    const/16 v18, 0x0

    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_3

    .line 785
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v15, v18

    .line 786
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v14, v18

    .line 784
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 789
    :cond_3
    const v3, 0x7fffffff

    if-ne v8, v3, :cond_4

    .line 790
    const/4 v8, 0x0

    .line 792
    :cond_4
    new-instance v2, Lcom/miui/gallery/model/ImageLoadParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    .line 793
    invoke-virtual {v3, v8}, Lcom/miui/gallery/adapter/HomePageAdapter;->getItemKey(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    .line 794
    invoke-virtual {v5, v8}, Lcom/miui/gallery/adapter/HomePageAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v5

    .line 795
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    .line 796
    invoke-virtual {v7}, Lcom/miui/gallery/adapter/HomePageAdapter;->getItemDecodeRectF()Landroid/graphics/RectF;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    .line 797
    invoke-virtual {v9, v8}, Lcom/miui/gallery/adapter/HomePageAdapter;->getMimeType(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    invoke-virtual {v10, v8}, Lcom/miui/gallery/adapter/HomePageAdapter;->getFileLength(I)J

    move-result-wide v10

    invoke-direct/range {v2 .. v11}, Lcom/miui/gallery/model/ImageLoadParams;-><init>(JLjava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ILjava/lang/String;J)V

    .line 799
    .local v2, "loadParams":Lcom/miui/gallery/model/ImageLoadParams;
    sget-object v7, Lcom/miui/gallery/ui/HomePageFragment;->PHOTOS_PAGE_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    .line 800
    invoke-virtual {v3}, Lcom/miui/gallery/adapter/HomePageAdapter;->getCount()I

    move-result v9

    const-string v10, "alias_show_in_homepage=1 AND sha1 NOT NULL"

    const/4 v11, 0x0

    const-string v12, "alias_sort_time DESC "

    move-object/from16 v6, p0

    move-object v13, v2

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    .line 799
    invoke-static/range {v6 .. v17}, Lcom/miui/gallery/util/IntentUtil;->gotoPreviewSelectPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;[J[ILjava/lang/String;Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/EditableListViewWrapper;->stopActionMode()V

    .line 804
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 805
    .local v21, "map":Ljava/util/Map;
    const-string v3, "count"

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string v3, "home"

    const-string v4, "send"

    move-object/from16 v0, v21

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1
.end method

.method private onVisibleToUser()V
    .locals 1

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->statHomeEmpty()V

    .line 629
    :cond_0
    return-void
.end method

.method private registerSearchStatusObserver()V
    .locals 2

    .prologue
    .line 654
    new-instance v0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;-><init>(Lcom/miui/gallery/ui/AIAlbumDisplayHelper$DisplayStatusCallback;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchBarStatusObserver:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    .line 655
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->getInstance()Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchBarStatusObserver:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    .line 656
    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->registerAIAlbumDisplayStatusObserver(Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 655
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/HomePageFragment;->onStatusChanged(Landroid/util/SparseBooleanArray;)V

    .line 657
    return-void
.end method

.method private statHomeEmpty()V
    .locals 3

    .prologue
    .line 632
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 633
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "login"

    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v1, "home"

    const-string v2, "home_empty"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 635
    return-void

    .line 633
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unregisterSearchStatusObserver()V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchBarStatusObserver:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    if-eqz v0, :cond_0

    .line 661
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->getInstance()Lcom/miui/gallery/ui/AIAlbumDisplayHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchBarStatusObserver:Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper;->unregisterAIAlbumDisplayStatusObserver(Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;)V

    .line 663
    :cond_0
    return-void
.end method

.method private updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 644
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 645
    .local v0, "firstVisibleItemPosition":I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 646
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v2

    iget v2, v2, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsLand:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 650
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 651
    return-void

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v2

    iget v2, v2, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsPortrait:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getLoader()Landroid/content/Loader;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLoaders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Loader;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    const-string v0, "home"

    return-object v0
.end method

.method public onAppFocused()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageTopBarController:Lcom/miui/gallery/ui/HomePageTopBarController;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageTopBarController:Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomePageTopBarController;->onAppFocused()V

    .line 430
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 639
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 640
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/HomePageFragment;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 641
    return-void
.end method

.method public onDataBind()V
    .locals 2

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mIsStartupDone:Z

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mIsStartupDone:Z

    .line 374
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/HomePageFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/HomePageFragment$4;-><init>(Lcom/miui/gallery/ui/HomePageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 381
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 482
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onDestroy()V

    .line 483
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageTopBarController:Lcom/miui/gallery/ui/HomePageTopBarController;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageTopBarController:Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomePageTopBarController;->onDestroy()V

    .line 486
    :cond_0
    invoke-static {}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->getInstance()Lcom/miui/gallery/discovery/DiscoveryMessageManager;

    move-result-object v0

    .line 487
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    .line 486
    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/discovery/DiscoveryMessageManager;->markAsReadByTypeAsync(Landroid/content/Context;I)V

    .line 489
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->unregisterSearchStatusObserver()V

    .line 278
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onDestroyView()V

    .line 279
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 145
    new-instance v0, Lcom/miui/gallery/widget/TwoStageDrawer;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    .line 146
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setOverScrollMode(I)V

    .line 155
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/HomePageFragment;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 157
    new-instance v0, Lcom/miui/gallery/adapter/HomePageAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/adapter/HomePageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->addView(Landroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    check-cast v0, Lcom/miui/gallery/activity/HomePageStartupHelper$Attacher;

    invoke-interface {v0}, Lcom/miui/gallery/activity/HomePageStartupHelper$Attacher;->getStartupHelper()Lcom/miui/gallery/activity/HomePageStartupHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageStartHelper:Lcom/miui/gallery/activity/HomePageStartupHelper;

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageStartHelper:Lcom/miui/gallery/activity/HomePageStartupHelper;

    new-instance v1, Lcom/miui/gallery/ui/HomePageFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/HomePageFragment$1;-><init>(Lcom/miui/gallery/ui/HomePageFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/HomePageStartupHelper;->setDataLoaderListener(Lcom/miui/gallery/activity/HomePageStartupHelper$DataLoadListener;)V

    .line 174
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->addSearchContainer()V

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 400
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onPause()V

    .line 403
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TopSearchBarController;->onPause()V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;

    .line 411
    :cond_1
    return-void
.end method

.method protected onPhotoPageCreate(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 459
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->onPhotoPageCreate(Landroid/content/Intent;)V

    .line 460
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->doOnStop()V

    .line 461
    return-void
.end method

.method protected onPhotoPageDestroy(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 465
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->onPhotoPageDestroy(Landroid/content/Intent;)V

    .line 466
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->doOnStart()V

    .line 467
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 385
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onResume()V

    .line 388
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->isInActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TopSearchBarController;->onResume()V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;

    if-nez v0, :cond_1

    .line 393
    new-instance v0, Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;-><init>(Lcom/miui/gallery/ui/HomePageFragment;Lcom/miui/gallery/ui/HomePageFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;

    .line 394
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.miui.gallery.action.VOICE_ASSISTANT_SELECT_SHARE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 396
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 415
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onStart()V

    .line 416
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->doOnStart()V

    .line 417
    return-void
.end method

.method public onStartup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->setContentViewBackground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->setTargetView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->setPrimaryContentView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02027e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->setScrollDivider(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/TwoStageDrawer;->setScrollableView(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {v0, v4}, Lcom/miui/gallery/widget/TwoStageDrawer;->setDragEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    invoke-virtual {v0, v4}, Lcom/miui/gallery/widget/TwoStageDrawer;->setInitialDrawerState(I)V

    .line 190
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->addTopBar()V

    .line 191
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchTextPreview:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 192
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->displaySearchBar()V

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setFastScrollEnabled(Z)V

    .line 196
    new-instance v0, Lcom/miui/gallery/widget/EditableListViewWrapper;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridView:Landroid/widget/GridView;

    invoke-direct {v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    .line 197
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    invoke-virtual {v1, v5}, Lcom/miui/gallery/adapter/HomePageAdapter;->generatePreloadListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 198
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageAdapter:Lcom/miui/gallery/adapter/HomePageAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setChoiceMode(I)V

    .line 200
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mChoiceModeListener:Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setMultiChoiceModeListener(Lcom/miui/gallery/widget/EditableListViewWrapper$MultiChoiceModeListener;)V

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomeGridViewWrapper:Lcom/miui/gallery/widget/EditableListViewWrapper;

    new-instance v1, Lcom/miui/gallery/ui/HomePageFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/HomePageFragment$2;-><init>(Lcom/miui/gallery/ui/HomePageFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EditableListViewWrapper;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 221
    new-instance v0, Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageFragment;->mDrawer:Lcom/miui/gallery/widget/TwoStageDrawer;

    const v3, 0x7f120008

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/ui/HomePageTopBarController;-><init>(Landroid/app/Activity;Lcom/miui/gallery/widget/TwoStageDrawer;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageTopBarController:Lcom/miui/gallery/ui/HomePageTopBarController;

    .line 222
    iget-boolean v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mStartCalled:Z

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageTopBarController:Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomePageTopBarController;->onAppFocused()V

    .line 224
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePageTopBarController:Lcom/miui/gallery/ui/HomePageTopBarController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomePageTopBarController;->onResume()V

    .line 227
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->registerSearchStatusObserver()V

    .line 229
    new-instance v0, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;

    invoke-direct {v0, p0, v5}, Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;-><init>(Lcom/miui/gallery/ui/HomePageFragment;Lcom/miui/gallery/ui/HomePageFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePagePhotoLoaderCallback:Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;

    .line 230
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePagePhotoLoaderCallback:Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;

    invoke-virtual {v0, v4, v5, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 231
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomePageFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/gallery/ui/HomePageFragment;->mHomePagePhotoLoaderCallback:Lcom/miui/gallery/ui/HomePageFragment$HomePagePhotoLoaderCallback;

    invoke-virtual {v0, v1, v5, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0
.end method

.method public onStatusChanged(Landroid/util/SparseBooleanArray;)V
    .locals 2
    .param p1, "changedStatus"    # Landroid/util/SparseBooleanArray;

    .prologue
    const/4 v1, 0x1

    .line 667
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 668
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->setIsSearchCacheStatusOpen(Z)V

    .line 670
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->displaySearchBar()V

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->setIsSearchCacheStatusOpen(Z)V

    .line 673
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchBarController:Lcom/miui/gallery/ui/TopSearchBarController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TopSearchBarController;->onPause()V

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment;->mSearchContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 421
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->onStop()V

    .line 422
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->doOnStop()V

    .line 423
    return-void
.end method

.method protected recordPageByDefault()Z
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 615
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseMediaFragment;->setUserVisibleHint(Z)V

    .line 616
    if-eqz p1, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomePageFragment;->onVisibleToUser()V

    .line 619
    :cond_0
    return-void
.end method
