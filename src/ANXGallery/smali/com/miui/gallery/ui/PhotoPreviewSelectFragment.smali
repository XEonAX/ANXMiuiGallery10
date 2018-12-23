.class public Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;
.super Lcom/miui/gallery/ui/PhotoPageFragmentBase;
.source "PhotoPreviewSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;
    }
.end annotation


# instance fields
.field private mChoiceManager:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;-><init>()V

    .line 120
    return-void
.end method

.method public static newInstance(Landroid/net/Uri;Landroid/os/Bundle;)Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "uri is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_0
    if-nez p1, :cond_1

    .line 38
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "data":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 40
    .restart local p1    # "data":Landroid/os/Bundle;
    :cond_1
    const-string v1, "photo_uri"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;-><init>()V

    .line 42
    .local v0, "fragment":Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v0
.end method


# virtual methods
.method protected getLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    const v0, 0x7f0400e7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "PhotoPreviewSelectFragment"

    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "PhotoPreviewSelectFragment"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    new-instance v0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;-><init>(Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;

    .line 59
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    return-void
.end method

.method protected onDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V
    .locals 12
    .param p1, "dataSet"    # Lcom/miui/gallery/model/BaseDataSet;
    .param p2, "firstLoad"    # Z

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V

    .line 89
    if-eqz p2, :cond_0

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 91
    .local v4, "start":J
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;

    invoke-virtual {v7, p1}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->initSelected(Lcom/miui/gallery/model/BaseDataSet;)V

    .line 92
    const-string v7, "PhotoPreviewSelectFragment"

    const-string v8, "initialize selection costs %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    .end local v4    # "start":J
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "assistant_target_package"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "targetPackage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "assistant_target_class"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "targetClass":Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;

    iget-object v7, v7, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v7}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->getSelectItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 97
    .local v2, "selectedSize":I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    if-lez v2, :cond_1

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;

    invoke-virtual {v7, v2, v0}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->configTargetIntentBySelected(ILandroid/content/Intent;)V

    .line 100
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v6, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/miui/gallery/activity/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x10000

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 102
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 103
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 104
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;

    invoke-virtual {v7, v0}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->onIntentSelected(Landroid/content/Intent;)V

    .line 108
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    return-void
.end method

.method protected onItemSettled(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onItemSettled(I)V

    .line 114
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 115
    .local v0, "dataItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/model/BaseDataItem;->getContentDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/TalkBackUtil;->requestAnnouncementEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method protected onShared()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPreviewSelectFragment$ChoiceManager;->onShared()V

    .line 69
    return-void
.end method

.method protected onViewInflated(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onViewInflated(Landroid/view/View;)V

    .line 51
    const v1, 0x7f120212

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .line 52
    .local v0, "slipLayout":Lcom/miui/gallery/widget/slip/VerticalSlipLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setDraggable(Z)V

    .line 53
    return-void
.end method
