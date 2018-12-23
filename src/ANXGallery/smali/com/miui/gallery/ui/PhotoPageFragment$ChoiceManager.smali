.class Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;
.super Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChoiceManager"
.end annotation


# instance fields
.field private mBarsVisibleBeforeSlip:Z

.field private mChoiceModeTitle:Landroid/widget/TextView;

.field private mIsInMultiWindow:Z

.field private mLastOrientation:I

.field private mShareTargetIntent:Landroid/content/Intent;

.field private mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

.field private mSlipPending:Z

.field private mSlipRunnable:Ljava/lang/Runnable;

.field private mSlipState:I

.field private mSlipped:Z

.field private mSupportSend:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2757
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V

    .line 2747
    iput v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mLastOrientation:I

    .line 2755
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mShareTargetIntent:Landroid/content/Intent;

    .line 2758
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f120212

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .line 2759
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setOnSlipListener(Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;)V

    .line 2760
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f120213

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceModeTitle:Landroid/widget/TextView;

    .line 2761
    iget-object v1, p1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Lcom/miui/gallery/compat/app/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mIsInMultiWindow:Z

    .line 2762
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onUiOrientationChanged(Landroid/content/res/Configuration;)V

    .line 2763
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.miui.gallery.extra.photo_enter_choice_mode"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2764
    .local v0, "isEnterInChoiceMode":Z
    if-eqz v0, :cond_0

    .line 2765
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setSlippedWhenEnter(Z)V

    .line 2766
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.miui.gallery.extra.photo_enter_choice_mode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2768
    :cond_0
    invoke-virtual {p0, v3, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setUpChooserFragment(IZ)V

    .line 2769
    return-void
.end method

.method private setChoiceTitleVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2794
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2795
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceModeTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2796
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceModeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2798
    :cond_0
    return-void

    .line 2794
    .end local v0    # "visibility":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected getChoiceTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceModeTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getContainerId()I
    .locals 1

    .prologue
    .line 2960
    const v0, 0x7f120001

    return v0
.end method

.method public initSelected(Lcom/miui/gallery/model/BaseDataSet;)V
    .locals 6
    .param p1, "set"    # Lcom/miui/gallery/model/BaseDataSet;

    .prologue
    .line 2772
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->isSlipped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2773
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataSet;->getInitPosition()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/miui/gallery/model/BaseDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 2774
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_0

    .line 2775
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataSet;->getInitPosition()I

    move-result v2

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->setChecked(IJZ)V

    .line 2778
    .end local v0    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_0
    return-void
.end method

.method public isPendingSlipped()Z
    .locals 1

    .prologue
    .line 2947
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipState:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->isSlipped()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipPending:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mBarsVisibleBeforeSlip:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->isFlingToSlipped()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlipped()Z
    .locals 1

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->isSlipped()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2951
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->isSlipped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2952
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setUnSlipped(Z)V

    .line 2955
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2
    .param p1, "isInMultiWindow"    # Z

    .prologue
    .line 2975
    if-eqz p1, :cond_0

    .line 2976
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setDraggable(Z)V

    .line 2978
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mIsInMultiWindow:Z

    .line 2979
    return-void
.end method

.method public onPhotoScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 2790
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSupportSend:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->trySetSlippable(Z)V

    .line 2791
    return-void

    .line 2790
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShared()V
    .locals 1

    .prologue
    .line 2970
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->onShared()V

    .line 2971
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setUnSlipped(Z)V

    .line 2972
    return-void
.end method

.method public onSlipEnd(Z)V
    .locals 10
    .param p1, "slipped"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2888
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipped:Z

    .line 2889
    if-nez p1, :cond_4

    .line 2890
    invoke-virtual {p0, v8}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onVisibilityChanged(Z)V

    .line 2891
    invoke-direct {p0, v8}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setChoiceTitleVisible(Z)V

    .line 2892
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->unChooseAll()V

    .line 2893
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->finish()V

    .line 2894
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2895
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->setSensorEnable(Z)V

    .line 2896
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->tryRestoreOrientation()V

    .line 2898
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.miui.gallery.extra.show_menu_after_choice_mode"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2899
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3, v9}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$200(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V

    .line 2901
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2000(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2902
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2000(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->tryChangeStereoBtnVisible(Z)V

    .line 2904
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-boolean v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mBarsVisibleBeforeSlip:Z

    invoke-static {v3, v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$200(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V

    .line 2905
    iput-boolean v8, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mBarsVisibleBeforeSlip:Z

    .line 2906
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    const v5, 0x7f0e01bc

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/PhotoPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/TalkBackUtil;->requestAnnouncementEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 2908
    const-string v3, "photo"

    const-string v4, "fast_share_mode_exit"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    :cond_3
    :goto_0
    return-void

    .line 2910
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2911
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->setSensorEnable(Z)V

    .line 2913
    :cond_5
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3, v9}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 2914
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v2

    .line 2915
    .local v2, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v2, :cond_6

    .line 2916
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7, v9}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->setChecked(IJZ)V

    .line 2918
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2000(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2919
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2000(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->tryChangeStereoBtnVisible(Z)V

    .line 2921
    :cond_7
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    const v5, 0x7f0e017c

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/PhotoPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/TalkBackUtil;->requestAnnouncementEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 2923
    const-string v3, "photo"

    const-string v4, "fast_share_mode_enter"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mShareTargetIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 2925
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mShareTargetIntent:Landroid/content/Intent;

    const-string v4, "assistant_need_beauty"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2926
    .local v0, "beauty":Z
    if-eqz v0, :cond_8

    .line 2927
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v1

    .line 2928
    .local v1, "currentItem":Lcom/miui/gallery/ui/PhotoPageItem;
    instance-of v3, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;

    if-eqz v3, :cond_8

    .line 2929
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7, v9}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->setRenderChecked(IJZ)V

    .line 2932
    .end local v1    # "currentItem":Lcom/miui/gallery/ui/PhotoPageItem;
    :cond_8
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1600(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mShareTargetIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onIntentSelected(Landroid/content/Intent;)V

    .line 2933
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mShareTargetIntent:Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public onSlipStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2866
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipped:Z

    if-nez v0, :cond_2

    .line 2867
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onVisibilityChanged(Z)V

    .line 2868
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mBarsVisibleBeforeSlip:Z

    .line 2869
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$200(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V

    .line 2870
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->startActionMode(Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;)Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .line 2871
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setChoiceTitleVisible(Z)V

    .line 2872
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2000(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2873
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2000(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->tryChangeStereoBtnVisible(Z)V

    .line 2875
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2876
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->access$4900(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V

    .line 2878
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    const v2, 0x7f0e017c

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/TalkBackUtil;->requestAnnouncementEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 2880
    :cond_2
    return-void
.end method

.method public onSlipStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    .line 2940
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipState:I

    .line 2941
    if-eq p1, v1, :cond_0

    .line 2942
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$5000(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V

    .line 2944
    :cond_0
    return-void
.end method

.method public onSlipping(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 2884
    return-void
.end method

.method public onUiOrientationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2836
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mLastOrientation:I

    if-eq v0, v1, :cond_2

    .line 2837
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mIsInMultiWindow:Z

    if-nez v0, :cond_1

    .line 2838
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setUnSlipped(Z)V

    .line 2839
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_3

    .line 2840
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setDraggable(Z)V

    .line 2841
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipPending:Z

    if-eqz v0, :cond_1

    .line 2842
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipPending:Z

    .line 2843
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2844
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipRunnable:Ljava/lang/Runnable;

    .line 2853
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2854
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2860
    :cond_1
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mLastOrientation:I

    .line 2862
    :cond_2
    return-void

    .line 2857
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setDraggable(Z)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2983
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2985
    :cond_0
    return-void
.end method

.method sendCurrentToShare(Landroid/content/Intent;)V
    .locals 2
    .param p1, "target"    # Landroid/content/Intent;

    .prologue
    .line 2988
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mShareTargetIntent:Landroid/content/Intent;

    .line 2989
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setSlipped(Z)V

    .line 2990
    return-void
.end method

.method public setSlipped(Z)V
    .locals 2
    .param p1, "smooth"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2801
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mIsInMultiWindow:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 2802
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 2803
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipPending:Z

    .line 2804
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2805
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->setSensorEnable(Z)V

    .line 2813
    :cond_0
    :goto_0
    return-void

    .line 2809
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSupportSend:Z

    if-eqz v0, :cond_2

    .line 2810
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setDraggable(Z)V

    .line 2812
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setSlipped(Z)V

    goto :goto_0
.end method

.method public setUnSlipped(Z)V
    .locals 1
    .param p1, "smooth"    # Z

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setUnSlipped(Z)V

    .line 2825
    return-void
.end method

.method public settleItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    const/4 v0, 0x1

    .line 2781
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mIsInMultiWindow:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mLastOrientation:I

    if-ne v1, v0, :cond_1

    .line 2782
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$3900(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1400(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2783
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getSupportOperations()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSupportSend:Z

    .line 2784
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSupportSend:Z

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setDraggable(Z)V

    .line 2786
    :cond_1
    return-void

    .line 2783
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public trySetSlippable(Z)V
    .locals 2
    .param p1, "slippable"    # Z

    .prologue
    .line 2828
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mIsInMultiWindow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2829
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setDraggable(Z)V

    .line 2833
    :goto_0
    return-void

    .line 2831
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setDraggable(Z)V

    goto :goto_0
.end method
