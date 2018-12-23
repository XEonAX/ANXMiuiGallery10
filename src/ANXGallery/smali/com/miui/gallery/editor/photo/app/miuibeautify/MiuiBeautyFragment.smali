.class public Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;
.super Lcom/miui/gallery/editor/photo/app/MenuFragment;
.source "MiuiBeautyFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/app/RenderRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$DetectFaceTask;,
        Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/app/MenuFragment",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
        ">;>;",
        "Lcom/miui/gallery/editor/photo/app/RenderRecord;"
    }
.end annotation


# static fields
.field public static BEAUTY_RECORDS_MAX:I


# instance fields
.field private mAnimAppearDelay:I

.field private mAnimAppearDuration:I

.field private mAnimDisappearDuration:I

.field private mAnimOffset:I

.field private mAnimalLayout:Landroid/view/View;

.field private mBeautyParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

.field private mChildMenuCallback:Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;

.field private mCurrentDataIndex:I

.field private mDetectFace:Z

.field private mDetectTaskDone:Z

.field private mFragmentData:[Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;

.field private mIcons:[I

.field private mInMainLayout:Z

.field private mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mProgressDialog:Lmiui/app/ProgressDialog;

.field private mRecordCurr:I

.field private mRecordHead:I

.field private mRecordTail:I

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xa

    sput v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->BEAUTY_RECORDS_MAX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 78
    sget-object v2, Lcom/miui/gallery/editor/photo/core/Effect;->MIUIBEAUTIFY:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-direct {p0, v2}, Lcom/miui/gallery/editor/photo/app/MenuFragment;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 54
    iput v6, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordHead:I

    .line 56
    iput v6, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    .line 69
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mInMainLayout:Z

    .line 226
    new-instance v2, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 265
    new-instance v2, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mChildMenuCallback:Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;

    .line 79
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;

    .line 80
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;

    new-instance v3, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;

    const-class v4, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;)V

    aput-object v3, v2, v6

    .line 81
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyManager;->getBeautyEffects()[Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    move-result-object v1

    .line 82
    .local v1, "values":[Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 83
    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mBeautyType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    sget-object v3, Lcom/miui/filtersdk/beauty/BeautyParameterType;->WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    if-ne v2, v3, :cond_0

    .line 84
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;

    add-int/lit8 v3, v0, 0x1

    new-instance v4, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;

    const-class v5, Lcom/miui/gallery/editor/photo/app/miuibeautify/DoubleParameterBeautyFragment;

    aget-object v6, v1, v0

    invoke-direct {v4, v5, v6}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;)V

    aput-object v4, v2, v3

    .line 82
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mBeautyType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    sget-object v3, Lcom/miui/filtersdk/beauty/BeautyParameterType;->DEBLEMISH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    if-ne v2, v3, :cond_1

    .line 86
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;

    add-int/lit8 v3, v0, 0x1

    new-instance v4, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;

    const-class v5, Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment;

    aget-object v6, v1, v0

    invoke-direct {v4, v5, v6}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;)V

    aput-object v4, v2, v3

    goto :goto_1

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;

    add-int/lit8 v3, v0, 0x1

    new-instance v4, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;

    const-class v5, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;

    aget-object v6, v1, v0

    invoke-direct {v4, v5, v6}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;-><init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;)V

    aput-object v4, v2, v3

    goto :goto_1

    .line 91
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)[Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mFragmentData:[Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$ChildFragmentData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mChildMenuCallback:Lcom/miui/gallery/editor/photo/app/miuibeautify/ChildMenuFragment$Callbacks;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mInMainLayout:Z

    return v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mInMainLayout:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mDetectTaskDone:Z

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mDetectFace:Z

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->showAnimal(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mCurrentDataIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mCurrentDataIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBeautyParameters:Ljava/util/List;

    return-object v0
.end method

.method private backToMainMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 337
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->isShowTitle()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->updateBottomBar(Z)V

    .line 338
    iput-boolean v5, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mInMainLayout:Z

    .line 339
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 340
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const v3, 0x7f1201ab

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 341
    .local v0, "childMenuFragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 342
    invoke-direct {p0, v5}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->showAnimal(Z)V

    .line 343
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 344
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 346
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0e0333

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 347
    return-void
.end method

.method private hasChildFragment()Z
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 332
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const v2, 0x7f1201ab

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 333
    .local v0, "childMenuFragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initAnimal()V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0222

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mAnimOffset:I

    .line 111
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mAnimAppearDuration:I

    .line 112
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mAnimDisappearDuration:I

    .line 113
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mAnimAppearDelay:I

    .line 114
    return-void
.end method

.method private showAnimal(Z)V
    .locals 10
    .param p1, "enter"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 143
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 144
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_0

    .line 145
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    iget v5, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mAnimOffset:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    aput v9, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 146
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 147
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 148
    iget v3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mAnimAppearDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 149
    iget v3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mAnimAppearDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 150
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 158
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mAnimalLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 160
    return-void

    .line 152
    .end local v0    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_0
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    aput v9, v4, v7

    iget v5, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mAnimOffset:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 153
    .restart local v2    # "y":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 154
    .restart local v0    # "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 155
    iget v3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mAnimDisappearDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 156
    new-instance v3, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 146
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 153
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public detectFaceNum()I
    .locals 3

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->detectFaceNum(Landroid/graphics/Bitmap;II)I

    move-result v0

    return v0
.end method

.method protected hideProcessDialog()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 224
    :cond_0
    return-void
.end method

.method public nextRecord()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    add-int/lit8 v1, v1, 0x1

    sget v4, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->BEAUTY_RECORDS_MAX:I

    rem-int/2addr v1, v4

    iput v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    .line 190
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    .line 191
    .local v0, "fragment":Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    instance-of v1, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    if-eqz v1, :cond_0

    .line 192
    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .end local v0    # "fragment":Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->nextRecord()V

    .line 194
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    iget v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    iget v5, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordHead:I

    if-eq v1, v5, :cond_1

    move v1, v2

    :goto_0
    iget v5, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    iget v6, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordTail:I

    if-eq v5, v6, :cond_2

    :goto_1
    invoke-virtual {v4, v1, v2}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->onMenuUpdated(ZZ)V

    .line 195
    return-void

    :cond_1
    move v1, v3

    .line 194
    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method protected notifyDiscard()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 289
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->hasChildFragment()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    .line 291
    .local v0, "fragment":Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    invoke-virtual {v0, v3, v3}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->add(Lcom/miui/gallery/editor/photo/core/Metadata;Ljava/lang/Object;)V

    .line 292
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;->render()V

    .line 293
    instance-of v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 294
    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .line 295
    .local v1, "miuiBeautyRenderFragment":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->setCompareOrigin(Z)V

    .line 296
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->enableComparison(Z)V

    .line 300
    .end local v1    # "miuiBeautyRenderFragment":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->backToMainMenu()V

    .line 304
    .end local v0    # "fragment":Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->notifyDiscard()V

    goto :goto_0
.end method

.method protected notifySave()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 308
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->hasChildFragment()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    .line 310
    .local v1, "fragment":Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    instance-of v3, v1, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 311
    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .line 312
    .local v0, "beautyRenderFragment":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->isBeautyParamWorked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->recordCurrent()V

    .line 314
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->recordCurrent()V

    .line 315
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    iget v3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    iget v7, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordHead:I

    if-eq v3, v7, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3, v5}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->onMenuUpdated(ZZ)V

    .line 316
    invoke-virtual {v0, v4}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->setCompareOrigin(Z)V

    .line 318
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "name"

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBeautyParameters:Ljava/util/List;

    iget v5, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mCurrentDataIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v3, "_miuibeautify"

    const-string v4, "miui_beauty_item_save"

    invoke-static {v3, v4, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 324
    .end local v0    # "beautyRenderFragment":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;
    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->backToMainMenu()V

    .line 328
    .end local v1    # "fragment":Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    :goto_1
    return-void

    .restart local v0    # "beautyRenderFragment":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;
    .restart local v1    # "fragment":Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    :cond_1
    move v3, v5

    .line 315
    goto :goto_0

    .line 326
    .end local v0    # "beautyRenderFragment":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;
    .end local v1    # "fragment":Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    :cond_2
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->notifySave()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mSdkProvider:Lcom/miui/gallery/editor/photo/core/SdkProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/SdkProvider;->list()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBeautyParameters:Ljava/util/List;

    .line 98
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBeautyParameters:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyData;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e033f

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyData;-><init>(SLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBeautyParameters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    const/16 v1, 0xb

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mIcons:[I

    .line 102
    return-void

    .line 101
    :array_0
    .array-data 4
        0x7f0201a4
        0x7f020186
        0x7f02018a
        0x7f02018b
        0x7f020185
        0x7f020184
        0x7f020183
        0x7f020182
        0x7f020189
        0x7f020188
        0x7f020187
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    const v0, 0x7f0400aa

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onDetach()V

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 208
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    new-instance v0, Lcom/miui/gallery/editor/photo/app/miuibeautify/BeautyParameterAdapter;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBeautyParameters:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mIcons:[I

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/editor/photo/app/miuibeautify/BeautyParameterAdapter;-><init>(Ljava/util/List;[I)V

    .line 122
    .local v0, "adapter":Lcom/miui/gallery/editor/photo/app/miuibeautify/BeautyParameterAdapter;
    const v2, 0x7f1201aa

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 123
    .local v1, "recyclerView":Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;
    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 124
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/editor/photo/app/miuibeautify/BeautyParameterAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 125
    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;

    .line 127
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0038

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    .line 125
    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 128
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 130
    const v2, 0x7f12007c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    .line 131
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    const v3, 0x7f0e0333

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->setTitle(I)V

    .line 132
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    invoke-virtual {v2, p0}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->setRenderRecordListener(Lcom/miui/gallery/editor/photo/app/RenderRecord;)V

    .line 133
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->updateBottomBar(Z)V

    .line 135
    const v2, 0x7f1201a9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mAnimalLayout:Landroid/view/View;

    .line 136
    const v2, 0x7f120076

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mTitle:Landroid/widget/TextView;

    .line 137
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->initAnimal()V

    .line 139
    new-instance v2, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$DetectFaceTask;

    invoke-direct {v2, p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$DetectFaceTask;-><init>(Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment$DetectFaceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    return-void
.end method

.method public previousRecord()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 175
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    add-int/lit8 v1, v1, -0x1

    sget v4, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->BEAUTY_RECORDS_MAX:I

    rem-int/2addr v1, v4

    iput v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    .line 176
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    if-gez v1, :cond_0

    .line 178
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getRenderFragment()Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;

    .line 181
    .local v0, "fragment":Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    instance-of v1, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    if-eqz v1, :cond_1

    .line 182
    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;

    .end local v0    # "fragment":Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderFragment;->previousRecord()V

    .line 184
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mBottomMenuPanel:Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;

    iget v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    iget v5, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordHead:I

    if-eq v1, v5, :cond_2

    move v1, v2

    :goto_0
    iget v5, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    iget v6, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordTail:I

    if-eq v5, v6, :cond_3

    :goto_1
    invoke-virtual {v4, v1, v2}, Lcom/miui/gallery/editor/photo/widgets/CommonBottomMenuWithUndo;->onMenuUpdated(ZZ)V

    .line 185
    return-void

    :cond_2
    move v1, v3

    .line 184
    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public recordCurrent()V
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->BEAUTY_RECORDS_MAX:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    .line 165
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordTail:I

    .line 168
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordHead:I

    if-ne v0, v1, :cond_0

    .line 169
    iget v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordCurr:I

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->BEAUTY_RECORDS_MAX:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mRecordHead:I

    .line 171
    :cond_0
    return-void
.end method

.method public setDetectFace(Z)V
    .locals 0
    .param p1, "detectFace"    # Z

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mDetectFace:Z

    .line 381
    return-void
.end method

.method public setDetectTaskDone(Z)V
    .locals 0
    .param p1, "detectTaskDone"    # Z

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mDetectTaskDone:Z

    .line 385
    return-void
.end method

.method protected showProcessDialog()V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 213
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e034f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 215
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 216
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 217
    return-void
.end method
