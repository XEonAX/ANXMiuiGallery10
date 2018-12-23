.class public Lcom/miui/gallery/ui/ChooserFragment;
.super Landroid/app/Fragment;
.source "ChooserFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/ChooserFragment$Component;,
        Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;,
        Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;,
        Lcom/miui/gallery/ui/ChooserFragment$SortInitializeListener;,
        Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;,
        Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

.field private mListener:Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;

.field private mPoint:Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;

.field private mSorterInitializedListener:Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;

.field private mViewPager:Lcom/miui/gallery/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 869
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/ChooserFragment;)Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ChooserFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mListener:Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/ChooserFragment;)Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/ChooserFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mAdapter:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Intent;IZ)Lcom/miui/gallery/ui/ChooserFragment;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "theme"    # I
    .param p2, "initVisible"    # Z

    .prologue
    .line 69
    new-instance v1, Lcom/miui/gallery/ui/ChooserFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/ChooserFragment;-><init>()V

    .line 70
    .local v1, "fragment":Lcom/miui/gallery/ui/ChooserFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "argue":Landroid/os/Bundle;
    const-string v2, "key_target_intent"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    const-string v2, "key_theme"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string v2, "init_visible"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/ChooserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ChooserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 88
    .local v7, "bundle":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    const-string v0, "key_target_intent"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .local v2, "tarIntent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 89
    .end local v2    # "tarIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "target intent couldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    .restart local v2    # "tarIntent":Landroid/content/Intent;
    :cond_1
    const-string v0, "key_theme"

    invoke-virtual {v7, v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 92
    .local v3, "theme":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ChooserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 93
    .local v4, "isCropper":Z
    const-string v0, "init_visible"

    invoke-virtual {v7, v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 95
    .local v5, "visible":Z
    const v0, 0x7f040044

    invoke-virtual {p1, v0, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 96
    .local v9, "root":Landroid/view/View;
    const v0, 0x7f1200f4

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/ViewPager;

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0, v11}, Lcom/miui/gallery/widget/ViewPager;->setRightOffscreenPageLimit(I)V

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0, v11}, Lcom/miui/gallery/widget/ViewPager;->setLeftOffscreenPageLimit(I)V

    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ChooserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v3, :cond_3

    const v0, 0x7f0202d7

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 100
    .local v8, "normal":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ChooserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02025a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 101
    .local v6, "active":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;

    const v0, 0x7f1200f3

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0, v8, v6}, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;-><init>(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment;->mPoint:Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;

    .line 102
    new-instance v0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ChooserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;IZZ)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mAdapter:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mPoint:Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;

    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment;->mAdapter:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->notifyPointCountChanged(II)V

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/ViewPager;->setOnPageChangeListener(Lcom/miui/gallery/widget/ViewPager$OnPageChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment;->mAdapter:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setAdapter(Lcom/miui/gallery/widget/PagerAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mAdapter:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    new-instance v1, Lcom/miui/gallery/ui/ChooserFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/ChooserFragment$1;-><init>(Lcom/miui/gallery/ui/ChooserFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->setOnIntentSelectedListener(Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;)V

    .line 115
    invoke-static {}, Lcom/miui/gallery/util/ShareComponentSorter;->getInstance()Lcom/miui/gallery/util/ShareComponentSorter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/ShareComponentSorter;->initialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    const-string v0, "ChooserFragment"

    const-string/jumbo v1, "sorter not initialized"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/miui/gallery/ui/ChooserFragment$SortInitializeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/ChooserFragment$SortInitializeListener;-><init>(Lcom/miui/gallery/ui/ChooserFragment;Lcom/miui/gallery/ui/ChooserFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mSorterInitializedListener:Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;

    .line 118
    invoke-static {}, Lcom/miui/gallery/util/ShareComponentSorter;->getInstance()Lcom/miui/gallery/util/ShareComponentSorter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment;->mSorterInitializedListener:Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/ShareComponentSorter;->registerOnInitializedListener(Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;)V

    .line 119
    invoke-static {}, Lcom/miui/gallery/util/ShareComponentSorter;->getInstance()Lcom/miui/gallery/util/ShareComponentSorter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ChooserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/ShareComponentSorter;->initialize(Landroid/content/Context;)V

    .line 122
    :cond_2
    return-object v9

    .line 99
    .end local v6    # "active":Landroid/graphics/drawable/Drawable;
    .end local v8    # "normal":Landroid/graphics/drawable/Drawable;
    :cond_3
    const v0, 0x7f0202d6

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mListener:Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mAdapter:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mAdapter:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->release()V

    .line 153
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 154
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mSorterInitializedListener:Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/miui/gallery/util/ShareComponentSorter;->getInstance()Lcom/miui/gallery/util/ShareComponentSorter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment;->mSorterInitializedListener:Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/ShareComponentSorter;->removeOnInitializedListener(Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;)V

    .line 145
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 167
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 158
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mPoint:Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->notifyActivePointChanged(I)V

    .line 163
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mAdapter:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    if-eqz v0, :cond_0

    .line 131
    if-eqz p1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mAdapter:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->resume()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mAdapter:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->pause()V

    goto :goto_0
.end method

.method public requery(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mAdapter:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->requery(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setCurrentItem(I)V

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment;->mPoint:Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;

    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment;->mAdapter:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment;->mViewPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->notifyPointCountChanged(II)V

    .line 174
    :cond_0
    return-void
.end method

.method public setOnIntentSelectedListener(Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/miui/gallery/ui/ChooserFragment;->mListener:Lcom/miui/gallery/ui/ChooserFragment$OnIntentSelectedListener;

    .line 127
    return-void
.end method
