.class Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;
.super Ljava/lang/Object;
.source "RefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransitionManager"
.end annotation


# instance fields
.field private mActivityPause:Z

.field private mDoTransition:Z

.field private mDuringTransition:Z

.field private mHeight:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMenuOffset:I

.field private mTransitionPostponed:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;


# direct methods
.method private constructor <init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V
    .locals 1

    .line 702
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mDoTransition:Z

    .line 707
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mMatrix:Landroid/graphics/Matrix;

    .line 709
    iput-boolean p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mDuringTransition:Z

    .line 710
    iput-boolean p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mActivityPause:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p2, "x1"    # Lcom/miui/extraphoto/refocus/RefocusActivity$1;

    .line 702
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;

    .line 702
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->onEnterEnd()V

    return-void
.end method

.method static synthetic access$4002(Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;
    .param p1, "x1"    # Z

    .line 702
    iput-boolean p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mDuringTransition:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;
    .param p1, "x1"    # Z

    .line 702
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->configureExitTransition(Z)V

    return-void
.end method

.method private configureEnterTransition()V
    .locals 9

    .line 773
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 774
    .local v0, "enter":Landroid/transition/TransitionSet;
    new-instance v1, Lcom/miui/extraphoto/refocus/compat/ImageTransition;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mWidth:I

    iget v4, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mHeight:I

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/miui/extraphoto/refocus/compat/ImageTransition;-><init>(ZLandroid/graphics/Matrix;II)V

    .line 775
    .local v1, "imageEnter":Lcom/miui/extraphoto/refocus/compat/ImageTransition;
    new-instance v2, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/miui/extraphoto/refocus/compat/ImageTransition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 776
    const-string v2, "tag_transition_view"

    invoke-static {v1, v2}, Lcom/miui/extraphoto/refocus/compat/TransitionCompat;->addTarget(Landroid/transition/Transition;Ljava/lang/String;)V

    .line 778
    new-instance v2, Lcom/miui/extraphoto/refocus/compat/MenuTransition;

    iget v3, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mMenuOffset:I

    int-to-float v4, v3

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v3}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3600(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v8

    const/16 v6, 0x12c

    const/16 v7, 0xc8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/miui/extraphoto/refocus/compat/MenuTransition;-><init>(FZIIF)V

    .line 779
    .local v2, "menuEnter":Lcom/miui/extraphoto/refocus/compat/MenuTransition;
    new-instance v3, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 780
    const-string v3, "tag_transition_view_menu"

    invoke-static {v2, v3}, Lcom/miui/extraphoto/refocus/compat/TransitionCompat;->addTarget(Landroid/transition/Transition;Ljava/lang/String;)V

    .line 782
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    .line 783
    invoke-virtual {v3, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    .line 784
    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v4, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$1;

    invoke-direct {v4, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$1;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;)V

    .line 785
    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 809
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v3}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/extraphoto/refocus/compat/WindowCompat;->setSharedElementEnterTransition(Landroid/view/Window;Landroid/transition/Transition;)V

    .line 810
    return-void
.end method

.method private configureExitTransition(Z)V
    .locals 9
    .param p1, "exported"    # Z

    .line 833
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 834
    .local v0, "exit":Landroid/transition/TransitionSet;
    if-eqz p1, :cond_0

    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/miui/extraphoto/refocus/compat/ImageTransition;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mWidth:I

    iget v5, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mHeight:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/extraphoto/refocus/compat/ImageTransition;-><init>(ZLandroid/graphics/Matrix;II)V

    .line 835
    .local v1, "imageExit":Landroid/transition/Transition;
    :goto_0
    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 836
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 837
    const-string v2, "tag_transition_view"

    invoke-static {v1, v2}, Lcom/miui/extraphoto/refocus/compat/TransitionCompat;->addTarget(Landroid/transition/Transition;Ljava/lang/String;)V

    .line 839
    new-instance v2, Lcom/miui/extraphoto/refocus/compat/MenuTransition;

    iget v3, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mMenuOffset:I

    int-to-float v4, v3

    const/4 v5, 0x0

    const/16 v6, 0x12c

    const/16 v7, 0xc8

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v3}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3600(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/miui/extraphoto/refocus/compat/MenuTransition;-><init>(FZIIF)V

    .line 840
    .local v2, "menuExit":Lcom/miui/extraphoto/refocus/compat/MenuTransition;
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/miui/extraphoto/refocus/compat/MenuTransition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 841
    const-string v3, "tag_transition_view_menu"

    invoke-static {v2, v3}, Lcom/miui/extraphoto/refocus/compat/TransitionCompat;->addTarget(Landroid/transition/Transition;Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    .line 844
    invoke-virtual {v3, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v4, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$3;

    invoke-direct {v4, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$3;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;)V

    .line 845
    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 873
    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v3}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/extraphoto/refocus/compat/WindowCompat;->setSharedElementReturnTransition(Landroid/view/Window;Landroid/transition/Transition;)V

    .line 874
    return-void
.end method

.method private onEnterEnd()V
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$4300(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3800(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    .line 880
    :cond_0
    return-void
.end method


# virtual methods
.method onActivityCreated()V
    .locals 3

    .line 720
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mDoTransition:Z

    if-nez v0, :cond_0

    .line 721
    return-void

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "tag_transition_view"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3600(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/view/View;

    move-result-object v0

    const-string v1, "tag_transition_view_menu"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_preview_image_width"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mWidth:I

    .line 727
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_preview_image_height"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mHeight:I

    .line 728
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mMenuOffset:I

    .line 729
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_preview_image_matrix"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object v0

    .line 730
    .local v0, "matrixValue":[F
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 732
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->configureEnterTransition()V

    .line 733
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/compat/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 734
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mTransitionPostponed:Z

    .line 735
    iput-boolean v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mDuringTransition:Z

    .line 736
    return-void
.end method

.method onActivityPause()V
    .locals 2

    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mActivityPause:Z

    .line 761
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mDuringTransition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mDoTransition:Z

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/compat/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 764
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/compat/ActivityCompat;->setEnterTransition(Landroid/app/Activity;Landroid/transition/Transition;)V

    .line 765
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/compat/WindowCompat;->setSharedElementEnterTransition(Landroid/view/Window;Landroid/transition/Transition;)V

    .line 766
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mDuringTransition:Z

    .line 767
    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mTransitionPostponed:Z

    .line 768
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->onEnterEnd()V

    .line 770
    :cond_0
    return-void
.end method

.method onActivityResume()V
    .locals 3

    .line 752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mActivityPause:Z

    .line 753
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mDuringTransition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mDoTransition:Z

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 757
    :cond_0
    return-void
.end method

.method onExit(ZLandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "exported"    # Z
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 813
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mDoTransition:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mActivityPause:Z

    if-nez v0, :cond_1

    .line 814
    if-eqz p2, :cond_0

    .line 815
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager$2;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->finish()V

    .line 830
    :goto_0
    return-void
.end method

.method onImageLoad(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 739
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 740
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mDoTransition:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mTransitionPostponed:Z

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$2200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/compat/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 743
    iput-boolean v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mTransitionPostponed:Z

    .line 744
    iput-boolean v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mDuringTransition:Z

    goto :goto_0

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3700(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 747
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$3800(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    .line 749
    :goto_0
    return-void
.end method

.method tryConfigTransitionMode(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 713
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/compat/SystemUiUtil;->setDrawSystemBarBackground(Landroid/view/Window;)V

    .line 714
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 715
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/compat/WindowCompat;->requestActivityTransition(Landroid/view/Window;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 716
    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_has_transition"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    iput-boolean v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$TransitionManager;->mDoTransition:Z

    .line 717
    return-void
.end method
