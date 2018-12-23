.class public Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
.super Lcom/miui/gallery/video/editor/ui/MenuFragment;
.source "WaterMarkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;
    }
.end annotation


# instance fields
.field private final AUTO_TEXT_WATER_MARK_INDEX:I

.field private mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

.field private mAllActionButton:Landroid/widget/TextView;

.field private mAutoText:Landroid/widget/EditText;

.field private mDownloadingTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

.field private mEndActionButton:Landroid/widget/TextView;

.field private mInputText:Ljava/lang/String;

.field private mIsKeyboardShowing:Z

.field private mIvCancel:Landroid/widget/ImageView;

.field private mIvOk:Landroid/widget/ImageView;

.field private mLastSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

.field private mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mPopWindowEnterAnimTime:J

.field private mSavedSelectedWaterMarkIndex:I

.field private mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

.field private mSelectedTextTime:I

.field private mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

.field private mStartActionButton:Landroid/widget/TextView;

.field private mTextAppearAnimator:Landroid/animation/ObjectAnimator;

.field private mTextCancel:Landroid/widget/ImageView;

.field private mTextEditable:Z

.field private mTextPopWindow:Landroid/widget/PopupWindow;

.field private mTextRoot:Landroid/view/View;

.field private mTextSave:Landroid/widget/ImageView;

.field private mTextStyles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/video/editor/TextStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

.field private mWaterMarkManager:Lcom/miui/gallery/video/editor/manager/WaterMarkManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;-><init>()V

    .line 56
    const-wide/16 v0, 0x118

    iput-wide v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mPopWindowEnterAnimTime:J

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->AUTO_TEXT_WATER_MARK_INDEX:I

    .line 59
    iput v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mInputText:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    .line 81
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIsKeyboardShowing:Z

    .line 82
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextEditable:Z

    .line 629
    new-instance v0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$13;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$13;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->refreshData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/TextStyle;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mLastSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/TextStyle;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/TextStyle;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateSelectedItemPosition(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnState()V

    return-void
.end method

.method static synthetic access$1502(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/TextStyle;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mDownloadingTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mInputText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateEffectInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->showEditPopWindow()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->showSoftInput()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIsKeyboardShowing:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIsKeyboardShowing:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->dismissTextPopWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/manager/WaterMarkManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mWaterMarkManager:Lcom/miui/gallery/video/editor/manager/WaterMarkManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSavedSelectedWaterMarkIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->hasOtherItemDownloading()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnTitle(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextEditable:Z

    return v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextEditable:Z

    return p1
.end method

.method private dismissTextPopWindow()V
    .locals 2

    .prologue
    .line 406
    const-string v0, "WaterMarkFragment"

    const-string v1, "dismiss textPopWindow!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 408
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$7;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$7;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 416
    return-void
.end method

.method private hasOtherItemDownloading()Z
    .locals 3

    .prologue
    .line 560
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/TextStyle;

    .line 562
    .local v0, "textStyle":Lcom/miui/gallery/video/editor/TextStyle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isDownloading()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    const/4 v1, 0x1

    .line 567
    .end local v0    # "textStyle":Lcom/miui/gallery/video/editor/TextStyle;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 463
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 467
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 468
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private initEditPopWindow()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 127
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04015d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    const v1, 0x7f1202ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    const v1, 0x7f12029d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextCancel:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    const v1, 0x7f12029f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextSave:Landroid/widget/ImageView;

    .line 131
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    invoke-direct {v0, v1, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 136
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextSave:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method private initEnterAnim()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 425
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    if-nez v3, :cond_0

    .line 460
    :goto_0
    return-void

    .line 428
    :cond_0
    new-instance v3, Landroid/animation/ObjectAnimator;

    invoke-direct {v3}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 429
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 430
    .local v1, "distance":I
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    int-to-float v5, v1

    aput v5, v4, v7

    const/4 v5, 0x0

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 431
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 432
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    new-array v4, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 433
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 434
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x118

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 435
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$8;

    invoke-direct {v4, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$8;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 459
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    .line 431
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mStartActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mEndActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIvCancel:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$1;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIvOk:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$2;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method

.method private initRecylerView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 114
    const v0, 0x7f12029b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    .line 115
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 117
    new-instance v0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->setmItemSelectChangeListener(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$ItemSelectChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b032f

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    iget v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSavedSelectedWaterMarkIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->setSelectedItemPosition(I)V

    .line 123
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSavedSelectedWaterMarkIndex:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnTitle(I)V

    .line 124
    return-void
.end method

.method private refreshData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;>;"
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;->getLocalTemplateEntities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 216
    .local v1, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/LocalResource;>;"
    if-eqz p1, :cond_0

    .line 217
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 220
    new-instance v0, Lcom/miui/gallery/video/editor/model/LocalResource;

    const v3, 0x7f020343

    const-string/jumbo v4, "ve_type_local"

    invoke-direct {v0, v3, v4}, Lcom/miui/gallery/video/editor/model/LocalResource;-><init>(ILjava/lang/String;)V

    .line 221
    .local v0, "localResource":Lcom/miui/gallery/video/editor/model/LocalResource;
    const/4 v3, 0x1

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 223
    .end local v0    # "localResource":Lcom/miui/gallery/video/editor/model/LocalResource;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v2, "styleArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/video/editor/TextStyle;>;"
    invoke-static {v1}, Lcom/miui/gallery/video/editor/model/VedioEditorModuleAdapter;->loadWaterMarks(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 225
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getInstance()Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$4;

    invoke-direct {v4, p0, v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$4;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->loadWaterMarkTemplateList(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadWaterMarkListener;)V

    .line 242
    return-void
.end method

.method private showEditPopWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 419
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 420
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 421
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 422
    return-void
.end method

.method private showSoftInput()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$9;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$9;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateBottomBtnState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mStartActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 143
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mEndActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    if-ne v0, v3, :cond_2

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mStartActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mEndActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 149
    :cond_2
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mStartActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mEndActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method private updateBottomBtnTitle(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 621
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 624
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const v0, 0x7f0e054f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 625
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mEndActionButton:Landroid/widget/TextView;

    if-nez p1, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mStartActionButton:Landroid/widget/TextView;

    if-nez p1, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    return-void

    .line 624
    :cond_1
    const v0, 0x7f0e0541

    goto :goto_0

    .line 625
    :cond_2
    const v0, 0x7f0e0542

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 626
    :cond_3
    const v0, 0x7f0e0547

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private updateEffectInfo()Z
    .locals 4

    .prologue
    .line 514
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    if-eqz v1, :cond_2

    .line 515
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/TextStyle;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mInputText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateWithInputNoText()V

    .line 526
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$10;

    invoke-direct {v2, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$10;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v1

    .line 549
    :goto_1
    return v1

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setWarterMark(ILjava/lang/String;)Z

    .line 520
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mInputText:Ljava/lang/String;

    iget v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setAutoWaterMark(Ljava/lang/String;I)Z

    .line 521
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 522
    .local v0, "index":I
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateSelectedItemPosition(I)V

    .line 523
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnTitle(I)V

    .line 524
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextEditable:Z

    goto :goto_0

    .line 534
    .end local v0    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/TextStyle;->isNone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 535
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    const-string v2, ""

    iget v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setAutoWaterMark(Ljava/lang/String;I)Z

    .line 536
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setWarterMark(ILjava/lang/String;)Z

    .line 549
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 537
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/TextStyle;->isExtra()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/TextStyle;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 538
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/TextStyle;->getTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setWarterMark(ILjava/lang/String;)Z

    .line 539
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v2, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;

    invoke-direct {v2, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v1

    goto :goto_1
.end method

.method private updateSelectedItemPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 553
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->setSelectedItemPosition(I)V

    .line 555
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->clearLastSelectedPostion()V

    .line 557
    :cond_0
    return-void
.end method

.method private updateWithInputNoText()V
    .locals 4

    .prologue
    .line 494
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    if-nez v1, :cond_0

    .line 511
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v0

    .line 498
    .local v0, "index":I
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mLastSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mLastSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/TextStyle;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 499
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateSelectedItemPosition(I)V

    .line 500
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnTitle(I)V

    .line 501
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    const-string v2, ""

    iget v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setAutoWaterMark(Ljava/lang/String;I)Z

    goto :goto_0

    .line 505
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mLastSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    .line 506
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 507
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateSelectedItemPosition(I)V

    .line 508
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnTitle(I)V

    .line 509
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    const-string v2, ""

    iget v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setAutoWaterMark(Ljava/lang/String;I)Z

    .line 510
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/TextStyle;->getTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setWarterMark(ILjava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public doApply()Z
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$5;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v0

    return v0
.end method

.method public doCancel()Z
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->restoreEditState()V

    .line 281
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$6;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$6;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v0

    return v0
.end method

.method public getCurrentEffect()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getTextStyle(I)Lcom/miui/gallery/video/editor/TextStyle;

    move-result-object v1

    .line 256
    .local v1, "textStyle":Lcom/miui/gallery/video/editor/TextStyle;
    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/TextStyle;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "effectName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 261
    .end local v0    # "effectName":Ljava/lang/String;
    .end local v1    # "textStyle":Lcom/miui/gallery/video/editor/TextStyle;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEffectId()I
    .locals 1

    .prologue
    .line 293
    const v0, 0x7f120031

    return v0
.end method

.method public loadResourceData()V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Lcom/miui/gallery/video/editor/factory/WaterMartFactory;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/factory/WaterMartFactory;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    .line 177
    new-instance v0, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->getEffectId()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;-><init>(ILcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->execute(Lcom/miui/gallery/net/base/ResponseListener;)V

    .line 212
    return-void
.end method

.method public notifyDateSetChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 301
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1202af

    if-ne v0, v1, :cond_1

    .line 306
    iput v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    .line 307
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnState()V

    .line 308
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateEffectInfo()Z

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1202b1

    if-ne v0, v1, :cond_2

    .line 310
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    .line 311
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnState()V

    .line 312
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateEffectInfo()Z

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1202b0

    if-ne v0, v1, :cond_3

    .line 314
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    .line 315
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnState()V

    .line 316
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateEffectInfo()Z

    goto :goto_0

    .line 317
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f12029f

    if-ne v0, v1, :cond_4

    .line 318
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIsKeyboardShowing:Z

    .line 319
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mInputText:Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateEffectInfo()Z

    .line 321
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->hideSoftInput()V

    .line 322
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->dismissTextPopWindow()V

    goto :goto_0

    .line 323
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f12029d

    if-ne v0, v1, :cond_0

    .line 324
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIsKeyboardShowing:Z

    .line 325
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateEffectInfo()Z

    .line 326
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->hideSoftInput()V

    .line 327
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->dismissTextPopWindow()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance v0, Lcom/miui/gallery/video/editor/manager/WaterMarkManager;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/manager/WaterMarkManager;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mWaterMarkManager:Lcom/miui/gallery/video/editor/manager/WaterMarkManager;

    .line 89
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->loadResourceData()V

    .line 90
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    const v1, 0x7f04015c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 595
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mDownloadingTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mDownloadingTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mDownloadingTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/TextStyle;->setDownloadState(I)V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->setmItemSelectChangeListener(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$ItemSelectChangeListener;)V

    .line 600
    iput-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    if-eqz v0, :cond_2

    .line 603
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->cancel()V

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 606
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 608
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    .line 609
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 611
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    .line 612
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 613
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 615
    :cond_5
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mInputText:Ljava/lang/String;

    .line 616
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->cancelRequest()V

    .line 617
    invoke-super {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onDestroyView()V

    .line 618
    return-void
.end method

.method public onDownlaodCompleted(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V
    .locals 4
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
    .param p2, "position"    # I

    .prologue
    .line 572
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/video/editor/TextStyle;

    .line 573
    .local v0, "textStyle":Lcom/miui/gallery/video/editor/TextStyle;
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getInstance()Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->getAssetId()I

    move-result v2

    new-instance v3, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$12;

    invoke-direct {v3, p0, v0, p2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$12;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;I)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->installWaterMarkAssetPackageToSdk(ILcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;)V

    .line 591
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onPause()V

    .line 247
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->hideSoftInput()V

    .line 248
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIsKeyboardShowing:Z

    .line 250
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    const v0, 0x7f1202af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mStartActionButton:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f1202b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mEndActionButton:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f1202b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f1202b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIvCancel:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f1202b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIvOk:Landroid/widget/ImageView;

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->initRecylerView(Landroid/view/View;)V

    .line 107
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnState()V

    .line 108
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->initListener()V

    .line 109
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->initEditPopWindow()V

    .line 110
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->initEnterAnim()V

    .line 111
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 489
    invoke-super {p0, p1}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 490
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSavedSelectedWaterMarkIndex:I

    .line 491
    return-void
.end method
