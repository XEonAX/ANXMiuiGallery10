.class Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;
.super Ljava/lang/Object;
.source "PeoplePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PeoplePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowEmptyViewHelper"
.end annotation


# instance fields
.field mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

.field final synthetic this$0:Lcom/miui/gallery/ui/PeoplePageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment;)V
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment;Lcom/miui/gallery/ui/PeoplePageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PeoplePageFragment$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->setupNetworkConnection()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;Landroid/view/ViewStub;Z)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;
    .param p1, "x1"    # Landroid/view/ViewStub;
    .param p2, "x2"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->initializeEmptyView(Landroid/view/ViewStub;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->updateEmptyView()V

    return-void
.end method

.method private initializeEmptyView(Landroid/view/ViewStub;Z)Landroid/view/View;
    .locals 1
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "cursorIsNull"    # Z

    .prologue
    .line 106
    if-eqz p2, :cond_1

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/EmptyPage;

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    .line 109
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->setupEmptyView()V

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->updateEmptyView()V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    return-object v0
.end method

.method private setupEmptyView()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    .line 194
    return-void
.end method

.method private setupNetworkConnection()V
    .locals 2

    .prologue
    .line 197
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 201
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showFaceEmptyTips()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0e01d0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setTitle(I)V

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    .line 142
    return-void
.end method

.method private showNoWifiTips()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0e01d2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setTitle(I)V

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0e0461

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonText(I)V

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    new-instance v1, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$2;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setOnActionButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method

.method private showSwitchClosedTips()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0e01d8

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setTitle(I)V

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0e0481

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonText(I)V

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    new-instance v1, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$3;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setOnActionButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void
.end method

.method private showSyncOffTips()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0e01d8

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setTitle(I)V

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0e0402

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonText(I)V

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    new-instance v1, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper$1;-><init>(Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setOnActionButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method private showSyncingTips()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const v1, 0x7f0e01d1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setTitle(I)V

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/EmptyPage;->setActionButtonVisible(Z)V

    .line 147
    return-void
.end method

.method private updateEmptyView()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->mEmptyView:Lcom/miui/gallery/widget/EmptyPage;

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sIsFirstSynced()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceAlbumEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->showSwitchClosedTips()V

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->isFirstSyncCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->showFaceEmptyTips()V

    goto :goto_0

    .line 130
    :cond_2
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->showNoWifiTips()V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 133
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->showSyncOffTips()V

    goto :goto_0

    .line 135
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeoplePageFragment$ShowEmptyViewHelper;->showSyncingTips()V

    goto :goto_0
.end method
