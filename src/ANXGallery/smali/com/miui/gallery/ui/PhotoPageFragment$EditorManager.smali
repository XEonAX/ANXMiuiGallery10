.class Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditorManager"
.end annotation


# instance fields
.field private mEverStartedEditor:Z

.field private mOnLoadTimeOut:Ljava/lang/Runnable;

.field private mResultHandled:Z

.field private mStartTransition:J

.field private mTargetFilePath:Ljava/lang/String;

.field private mTargetId:J

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 1

    .prologue
    .line 3756
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mTargetFilePath:Ljava/lang/String;

    .line 3765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mEverStartedEditor:Z

    .line 3824
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mOnLoadTimeOut:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFragment$1;

    .prologue
    .line 3756
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    .prologue
    .line 3756
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->finishTransition()V

    return-void
.end method

.method private finishTransition()V
    .locals 6

    .prologue
    .line 3815
    const-string v0, "PhotoPageFragment"

    const-string v1, "editor transition delay %s"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mStartTransition:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3816
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mOnLoadTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3817
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 3818
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/compat/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 3820
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mTargetFilePath:Ljava/lang/String;

    .line 3821
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mTargetId:J

    .line 3822
    return-void
.end method

.method private handleEditorResult(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x0

    .line 3887
    const/4 v1, 0x0

    .line 3888
    .local v1, "handled":Z
    if-eqz p1, :cond_1

    .line 3889
    const-string v6, "photo_secret_id"

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3890
    .local v2, "id":J
    cmp-long v6, v2, v8

    if-lez v6, :cond_2

    .line 3892
    iput-wide v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mTargetId:J

    .line 3893
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "photo_focused_id"

    invoke-virtual {v6, v7, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3894
    const/4 v1, 0x1

    .line 3912
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 3913
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/PhotoPageFragment;->onContentChanged()V

    .line 3916
    .end local v2    # "id":J
    :cond_1
    return v1

    .line 3897
    .restart local v2    # "id":J
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 3898
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 3899
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 3900
    .local v4, "path":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/ui/PhotoPagerSamplingStatHelper;->onEditorSaved(Landroid/net/Uri;)V

    .line 3901
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3902
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v6}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataSet()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    .line 3903
    .local v0, "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    if-eqz v0, :cond_3

    .line 3904
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v6, v6, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v6}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v4, v6}, Lcom/miui/gallery/model/BaseDataSet;->addNewFile(Ljava/lang/String;I)Z

    .line 3907
    .end local v0    # "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    :cond_3
    iput-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mTargetFilePath:Ljava/lang/String;

    .line 3908
    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "photo_focused_path"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3909
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isCurrentImageOverDisplayArea()Z
    .locals 3

    .prologue
    .line 3850
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    if-eqz v1, :cond_0

    .line 3851
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurItemDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 3852
    .local v0, "rectF":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 3853
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->isImageOverDisplayArea(FF)Z

    move-result v1

    .line 3856
    .end local v0    # "rectF":Landroid/graphics/RectF;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isExportedImageOverDisplayArea(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 3860
    if-nez p1, :cond_0

    .line 3865
    :goto_0
    return v2

    .line 3863
    :cond_0
    const-string v3, "photo_edit_exported_width"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3864
    .local v1, "imageWidth":I
    const-string v3, "photo_edit_exported_height"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3865
    .local v0, "imageHeight":I
    int-to-float v2, v1

    int-to-float v3, v0

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->isImageOverDisplayArea(FF)Z

    move-result v2

    goto :goto_0
.end method

.method private isImageOverDisplayArea(FF)Z
    .locals 8
    .param p1, "imageWidth"    # F
    .param p2, "imageHeight"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 3869
    cmpg-float v4, p1, v7

    if-lez v4, :cond_0

    cmpg-float v4, p2, v7

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    if-nez v4, :cond_1

    .line 3883
    :cond_0
    :goto_0
    return v3

    .line 3873
    :cond_1
    div-float v2, p2, p1

    .line 3874
    .local v2, "imageRatio":F
    const v4, 0x3fab851f    # 1.34f

    cmpg-float v4, v2, v4

    if-lez v4, :cond_0

    .line 3878
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v4

    int-to-float v1, v4

    .line 3879
    .local v1, "displayWidth":F
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->getSplitBarHeight()I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v6}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->getTopBarHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v0, v4

    .line 3880
    .local v0, "displayHeight":F
    cmpl-float v4, v1, v7

    if-lez v4, :cond_0

    cmpl-float v4, v0, v7

    if-lez v4, :cond_0

    .line 3881
    div-float v4, v0, v1

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityReenter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 3776
    const-string v0, "PhotoPageFragment"

    const-string v1, "Transition onActivityReenter %s"

    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mEverStartedEditor:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3777
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->isExportedImageOverDisplayArea(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3778
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$6800(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 3783
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mTargetFilePath:Ljava/lang/String;

    .line 3784
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mTargetId:J

    .line 3785
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 3786
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->handleEditorResult(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mResultHandled:Z

    .line 3788
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mEverStartedEditor:Z

    if-nez v0, :cond_2

    .line 3789
    const-string v0, "PhotoPageFragment"

    const-string v1, "Transition stop, because activity restart."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3797
    :cond_0
    :goto_1
    return-void

    .line 3780
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$6900(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    goto :goto_0

    .line 3792
    :cond_2
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mResultHandled:Z

    if-eqz v0, :cond_0

    .line 3793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mStartTransition:J

    .line 3794
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/compat/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 3795
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mOnLoadTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 3837
    const-string v0, "PhotoPageFragment"

    const-string v1, "EditorManager.onActivityResult"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3838
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$6900(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 3839
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 3840
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mResultHandled:Z

    if-nez v0, :cond_0

    .line 3841
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->handleEditorResult(Landroid/content/Intent;)Z

    .line 3842
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mTargetFilePath:Ljava/lang/String;

    .line 3843
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mTargetId:J

    .line 3845
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mResultHandled:Z

    .line 3847
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 3833
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mOnLoadTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3834
    return-void
.end method

.method public onImageLoadFinish(Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 3800
    iget-wide v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mTargetId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 3801
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->finishTransition()V

    .line 3812
    :cond_0
    :goto_0
    return-void

    .line 3804
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mTargetFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3808
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3809
    .local v0, "filePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mTargetFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3810
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->finishTransition()V

    goto :goto_0
.end method

.method public onStartEditor()V
    .locals 2

    .prologue
    .line 3768
    const-string v0, "PhotoPageFragment"

    const-string v1, "EditorManager.onStartEditor"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->mEverStartedEditor:Z

    .line 3770
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->isCurrentImageOverDisplayArea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3771
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$6800(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 3773
    :cond_0
    return-void
.end method
