.class public Lcom/miui/gallery/collage/CollageActivity;
.super Landroid/app/Activity;
.source "CollageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;,
        Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;,
        Lcom/miui/gallery/collage/CollageActivity$SaveTask;
    }
.end annotation


# instance fields
.field private mAssistantExtra:Ljava/lang/String;

.field private mBitmaps:[Landroid/graphics/Bitmap;

.field private mCancel:Landroid/widget/TextView;

.field private mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

.field private mCollageResourcesManager:Lcom/miui/gallery/collage/CollageResourcesManager;

.field private mCurrentImageSize:I

.field private mDividingLineList:Landroid/view/View;

.field private mDividingLineTitle:Landroid/view/View;

.field private mIsBitmapLoad:Z

.field private mIsPosterMode:Z

.field private mIsResLoad:Z

.field private mLayoutIndex:I

.field private mLayoutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/LayoutModel;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutMenuAdapter:Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;

.field private mLayoutTitle:Landroid/widget/RadioButton;

.field private mMargin:Lcom/miui/gallery/collage/render/CollageMargin;

.field private mMarginControl:Landroid/widget/ImageView;

.field private mMarginControlLayout:Landroid/view/ViewGroup;

.field private mMarginDividingView:Landroid/view/View;

.field private mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

.field private mPosterIndex:I

.field private mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

.field private mPosterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/PosterModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPosterMenuAdapter:Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;

.field private mPosterTitle:Landroid/widget/RadioButton;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

.field private mReplaceImageListener:Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;

.field private mResourcesUpdateListener:Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;

.field private mSave:Landroid/widget/TextView;

.field private mSaveProgressDialog:Lmiui/app/ProgressDialog;

.field private mSingleChooseIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutList:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterList:Ljava/util/List;

    .line 88
    iput v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    .line 95
    sget-object v0, Lcom/miui/gallery/collage/render/CollageMargin;->NONE:Lcom/miui/gallery/collage/render/CollageMargin;

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mMargin:Lcom/miui/gallery/collage/render/CollageMargin;

    .line 97
    iput v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterIndex:I

    .line 98
    iput v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutIndex:I

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSingleChooseIndex:I

    .line 100
    iput-boolean v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mIsPosterMode:Z

    .line 105
    iput-boolean v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mIsResLoad:Z

    .line 106
    iput-boolean v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mIsBitmapLoad:Z

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRectTemp:Landroid/graphics/Rect;

    .line 421
    new-instance v0, Lcom/miui/gallery/collage/CollageActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/CollageActivity$2;-><init>(Lcom/miui/gallery/collage/CollageActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mResourcesUpdateListener:Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;

    .line 664
    new-instance v0, Lcom/miui/gallery/collage/CollageActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/CollageActivity$5;-><init>(Lcom/miui/gallery/collage/CollageActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 681
    new-instance v0, Lcom/miui/gallery/collage/CollageActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/CollageActivity$6;-><init>(Lcom/miui/gallery/collage/CollageActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mReplaceImageListener:Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/collage/CollageActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/CollageActivity;->gotoPhotoPage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/collage/CollageActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mMarginControl:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/collage/widget/CollageLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/render/CollageMargin;)Lcom/miui/gallery/collage/render/CollageMargin;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p1, "x1"    # Lcom/miui/gallery/collage/render/CollageMargin;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity;->mMargin:Lcom/miui/gallery/collage/render/CollageMargin;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/miui/gallery/collage/CollageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutIndex:I

    return v0
.end method

.method static synthetic access$1302(Lcom/miui/gallery/collage/CollageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutIndex:I

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/LayoutModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p1, "x1"    # Lcom/miui/gallery/collage/LayoutModel;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/CollageActivity;->enableLayoutModel(Lcom/miui/gallery/collage/LayoutModel;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/collage/CollageActivity;)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/LayoutModel;[Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p1, "x1"    # Lcom/miui/gallery/collage/LayoutModel;
    .param p2, "x2"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/collage/CollageActivity;->generateOriginLayout(Lcom/miui/gallery/collage/LayoutModel;[Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutMenuAdapter:Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/miui/gallery/collage/CollageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterIndex:I

    return p1
.end method

.method static synthetic access$1900(Lcom/miui/gallery/collage/CollageActivity;[Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p1, "x1"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/CollageActivity;->generatePosterLayout([Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/collage/CollageActivity;[Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p1, "x1"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/CollageActivity;->onBitmapDecodeFinishAfterChoose([Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterMenuAdapter:Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/collage/widget/PosterLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/collage/CollageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mIsPosterMode:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/PosterModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p1, "x1"    # Lcom/miui/gallery/collage/PosterModel;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/CollageActivity;->enablePosterModel(Lcom/miui/gallery/collage/PosterModel;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/miui/gallery/collage/CollageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/miui/gallery/collage/CollageActivity;->mSingleChooseIndex:I

    return p1
.end method

.method static synthetic access$2600(Lcom/miui/gallery/collage/CollageActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/collage/CollageActivity;->startPicker(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/collage/CollageActivity;[Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;
    .param p1, "x1"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/CollageActivity;->onBitmapDecodeFinishAfterReplace([Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/collage/CollageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->onLoadResFinish()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/collage/CollageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/collage/CollageActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/collage/CollageActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/collage/CollageActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutTitle:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private decodeBitmapAsync([Landroid/net/Uri;)V
    .locals 2
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 373
    new-instance v0, Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;-><init>(Lcom/miui/gallery/collage/CollageActivity;I)V

    invoke-virtual {v0, p1}, Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 374
    return-void
.end method

.method private enableButton()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 453
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterTitle:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutTitle:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSave:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 457
    return-void
.end method

.method private enableLayoutModel(Lcom/miui/gallery/collage/LayoutModel;)V
    .locals 3
    .param p1, "layoutModel"    # Lcom/miui/gallery/collage/LayoutModel;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/PosterLayout;->setRenderData(Lcom/miui/gallery/collage/render/PosterElementRender;)V

    .line 619
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    new-instance v1, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;

    sget-object v2, Lcom/miui/gallery/collage/widget/PosterLayout;->DEFAULT_LAYOUT_PARAMS:[F

    invoke-direct {v1, v2}, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;-><init>([F)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mMargin:Lcom/miui/gallery/collage/render/CollageMargin;

    iget v1, v1, Lcom/miui/gallery/collage/render/CollageMargin;->marginSize:F

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->setCollageMargin(F)V

    .line 621
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/CollageActivity;->refreshCollageLayout(Lcom/miui/gallery/collage/LayoutModel;)V

    .line 622
    :cond_0
    return-void
.end method

.method private enablePosterModel(Lcom/miui/gallery/collage/PosterModel;)V
    .locals 1
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/PosterModel;

    .prologue
    .line 604
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/collage/CollageActivity;->enablePosterModel(Lcom/miui/gallery/collage/PosterModel;Z)V

    .line 605
    return-void
.end method

.method private enablePosterModel(Lcom/miui/gallery/collage/PosterModel;Z)V
    .locals 4
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/PosterModel;
    .param p2, "refreshCollageLayout"    # Z

    .prologue
    .line 608
    iget-object v1, p1, Lcom/miui/gallery/collage/PosterModel;->collagePositions:[Lcom/miui/gallery/collage/CollagePositionModel;

    iget v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    invoke-static {v1, v2}, Lcom/miui/gallery/collage/CollagePositionModel;->getCollagePositionModelByImageSize([Lcom/miui/gallery/collage/CollagePositionModel;I)Lcom/miui/gallery/collage/CollagePositionModel;

    move-result-object v0

    .line 609
    .local v0, "collagePositionModel":Lcom/miui/gallery/collage/CollagePositionModel;
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/CollageActivity;->setPosterModelToPosterLayout(Lcom/miui/gallery/collage/PosterModel;)V

    .line 610
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    new-instance v2, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;

    iget-object v3, v0, Lcom/miui/gallery/collage/CollagePositionModel;->position:[F

    invoke-direct {v2, v3}, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;-><init>([F)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/collage/widget/CollageLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget v2, v0, Lcom/miui/gallery/collage/CollagePositionModel;->margin:F

    invoke-virtual {v1, v2}, Lcom/miui/gallery/collage/widget/CollageLayout;->setCollageMargin(F)V

    .line 612
    if-eqz p2, :cond_0

    .line 613
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageResourcesManager:Lcom/miui/gallery/collage/CollageResourcesManager;

    iget v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    invoke-virtual {v1, p1, v2}, Lcom/miui/gallery/collage/CollageResourcesManager;->getPosterCollageLayout(Lcom/miui/gallery/collage/PosterModel;I)Lcom/miui/gallery/collage/LayoutModel;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/collage/CollageActivity;->refreshCollageLayout(Lcom/miui/gallery/collage/LayoutModel;)V

    .line 615
    :cond_0
    return-void
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 151
    const v0, 0x7f120126

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/PosterLayout;

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

    .line 152
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/widget/CollageLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/PosterLayout;->addView(Landroid/view/View;)V

    .line 154
    const v0, 0x7f12011f

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    .line 155
    const v0, 0x7f120120

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mMarginControl:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f12011d

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mMarginControlLayout:Landroid/view/ViewGroup;

    .line 157
    const v0, 0x7f12011e

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mMarginDividingView:Landroid/view/View;

    .line 158
    const v0, 0x7f120123

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterTitle:Landroid/widget/RadioButton;

    .line 159
    const v0, 0x7f120124

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutTitle:Landroid/widget/RadioButton;

    .line 160
    const v0, 0x7f12011b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSave:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f12011a

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCancel:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f120122

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mDividingLineTitle:Landroid/view/View;

    .line 163
    const v0, 0x7f12011c

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mDividingLineList:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mMarginControlLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterTitle:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutTitle:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSave:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterTitle:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mReplaceImageListener:Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->setReplaceImageListener(Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;)V

    .line 172
    return-void
.end method

.method private generateOriginLayout(Lcom/miui/gallery/collage/LayoutModel;[Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "layoutModel"    # Lcom/miui/gallery/collage/LayoutModel;
    .param p2, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 563
    if-nez p1, :cond_1

    .line 576
    :cond_0
    return-void

    .line 566
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v4}, Lcom/miui/gallery/collage/widget/CollageLayout;->removeAllViews()V

    .line 567
    iget-object v3, p1, Lcom/miui/gallery/collage/LayoutModel;->items:[Lcom/miui/gallery/collage/LayoutItemModel;

    .line 568
    .local v3, "layoutItemModels":[Lcom/miui/gallery/collage/LayoutItemModel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 569
    aget-object v2, v3, v1

    .line 570
    .local v2, "layoutItemModel":Lcom/miui/gallery/collage/LayoutItemModel;
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/widget/CollageImageView;-><init>(Landroid/content/Context;)V

    .line 571
    .local v0, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    iget v4, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    if-ge v1, v4, :cond_2

    .line 572
    aget-object v4, p2, v1

    invoke-virtual {v0, v4}, Lcom/miui/gallery/collage/widget/CollageImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 574
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    new-instance v5, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;

    iget-object v6, v2, Lcom/miui/gallery/collage/LayoutItemModel;->clipType:Lcom/miui/gallery/collage/ClipType;

    iget-object v7, v2, Lcom/miui/gallery/collage/LayoutItemModel;->data:[F

    invoke-direct {v5, v6, v7}, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;-><init>(Lcom/miui/gallery/collage/ClipType;[F)V

    invoke-virtual {v4, v0, v5}, Lcom/miui/gallery/collage/widget/CollageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private generatePosterLayout([Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 554
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterList:Ljava/util/List;

    iget v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/PosterModel;

    .line 555
    .local v1, "posterModel":Lcom/miui/gallery/collage/PosterModel;
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageResourcesManager:Lcom/miui/gallery/collage/CollageResourcesManager;

    iget v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    invoke-virtual {v2, v1, v3}, Lcom/miui/gallery/collage/CollageResourcesManager;->getPosterCollageLayout(Lcom/miui/gallery/collage/PosterModel;I)Lcom/miui/gallery/collage/LayoutModel;

    move-result-object v0

    .line 556
    .local v0, "layoutModel":Lcom/miui/gallery/collage/LayoutModel;
    if-eqz v0, :cond_0

    .line 557
    invoke-direct {p0, v0, p1}, Lcom/miui/gallery/collage/CollageActivity;->generateOriginLayout(Lcom/miui/gallery/collage/LayoutModel;[Landroid/graphics/Bitmap;)V

    .line 559
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/collage/CollageActivity;->enablePosterModel(Lcom/miui/gallery/collage/PosterModel;Z)V

    .line 560
    return-void
.end method

.method private gotoPhotoPage(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 341
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->startActivity(Landroid/content/Intent;)V

    .line 344
    return-void
.end method

.method private initRecycler()V
    .locals 6

    .prologue
    const v5, 0x7f0200b1

    const/4 v4, 0x0

    .line 181
    new-instance v0, Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterList:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterMenuAdapter:Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;

    .line 182
    new-instance v0, Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutList:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutMenuAdapter:Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    invoke-direct {v1, p0, v4, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterMenuAdapter:Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b010a

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterMenuAdapter:Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutMenuAdapter:Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mOnItemClickListener:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 189
    return-void
.end method

.method private loadLocalResources()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/miui/gallery/collage/CollageResourcesManager;

    invoke-direct {v0}, Lcom/miui/gallery/collage/CollageResourcesManager;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageResourcesManager:Lcom/miui/gallery/collage/CollageResourcesManager;

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageResourcesManager:Lcom/miui/gallery/collage/CollageResourcesManager;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mResourcesUpdateListener:Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/CollageResourcesManager;->setResourcesUpdateListener(Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;)V

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageResourcesManager:Lcom/miui/gallery/collage/CollageResourcesManager;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/CollageResourcesManager;->loadLocalResAsync(Landroid/content/res/AssetManager;)V

    .line 178
    return-void
.end method

.method private onBitmapDecodeFinishAfterChoose([Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 377
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 378
    array-length v0, p1

    iput v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    .line 379
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 380
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->onLoadBitmapFinish()V

    .line 382
    :cond_0
    return-void
.end method

.method private onBitmapDecodeFinishAfterReplace([Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mSingleChooseIndex:I

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/collage/widget/CollageLayout;->setSingleViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 386
    return-void
.end method

.method private onLoadBitmapFinish()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mIsBitmapLoad:Z

    .line 437
    iget-boolean v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mIsResLoad:Z

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->onResAndBitmapLoad()V

    .line 440
    :cond_0
    return-void
.end method

.method private onLoadResFinish()V
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mIsResLoad:Z

    .line 430
    iget-boolean v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mIsBitmapLoad:Z

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->onResAndBitmapLoad()V

    .line 433
    :cond_0
    return-void
.end method

.method private onResAndBitmapLoad()V
    .locals 4

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->updateDataAndAdapter()V

    .line 444
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mAssistantExtra:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;-><init>(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/CollageActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mAssistantExtra:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/CollageActivity$ResolveAssistantExtraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 449
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->enableButton()V

    .line 450
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->generatePosterLayout([Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private onSave()V
    .locals 6

    .prologue
    .line 259
    const-string v0, "CollageActivity"

    const-string/jumbo v3, "user click save button"

    invoke-static {v0, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->isActivating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSave:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 264
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->showProgressDialog()V

    .line 265
    const/4 v1, 0x0

    .line 267
    .local v1, "posterModel":Lcom/miui/gallery/collage/PosterModel;
    iget-boolean v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mIsPosterMode:Z

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterList:Ljava/util/List;

    iget v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "posterModel":Lcom/miui/gallery/collage/PosterModel;
    check-cast v1, Lcom/miui/gallery/collage/PosterModel;

    .line 269
    .restart local v1    # "posterModel":Lcom/miui/gallery/collage/PosterModel;
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageResourcesManager:Lcom/miui/gallery/collage/CollageResourcesManager;

    iget v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    invoke-virtual {v0, v1, v3}, Lcom/miui/gallery/collage/CollageResourcesManager;->getPosterCollageLayout(Lcom/miui/gallery/collage/PosterModel;I)Lcom/miui/gallery/collage/LayoutModel;

    move-result-object v2

    .line 273
    .local v2, "layoutModel":Lcom/miui/gallery/collage/LayoutModel;
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget-object v4, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

    new-instance v5, Lcom/miui/gallery/collage/CollageActivity$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/collage/CollageActivity$1;-><init>(Lcom/miui/gallery/collage/CollageActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/collage/render/CollageRender;->generateRenderData(Landroid/content/Context;Lcom/miui/gallery/collage/PosterModel;Lcom/miui/gallery/collage/LayoutModel;Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/PosterLayout;Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;)V

    goto :goto_0

    .line 271
    .end local v2    # "layoutModel":Lcom/miui/gallery/collage/LayoutModel;
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutList:Ljava/util/List;

    iget v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/collage/LayoutModel;

    .restart local v2    # "layoutModel":Lcom/miui/gallery/collage/LayoutModel;
    goto :goto_1
.end method

.method private receiveImages(Landroid/content/ClipData;)V
    .locals 5
    .param p1, "clipData"    # Landroid/content/ClipData;

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 348
    .local v0, "count":I
    const/4 v4, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 349
    new-array v3, v0, [Landroid/net/Uri;

    .line 350
    .local v3, "uris":[Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 351
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 352
    .local v2, "uri":Landroid/net/Uri;
    aput-object v2, v3, v1

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    iput v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    .line 355
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->updateDataAndAdapter()V

    .line 356
    invoke-direct {p0, v3}, Lcom/miui/gallery/collage/CollageActivity;->decodeBitmapAsync([Landroid/net/Uri;)V

    .line 357
    return-void
.end method

.method private receiveImages([Ljava/lang/String;)V
    .locals 6
    .param p1, "bitmapPaths"    # [Ljava/lang/String;

    .prologue
    .line 360
    array-length v0, p1

    .line 361
    .local v0, "count":I
    const/4 v4, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 362
    new-array v3, v0, [Landroid/net/Uri;

    .line 363
    .local v3, "uris":[Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 364
    new-instance v4, Ljava/io/File;

    aget-object v5, p1, v1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 365
    .local v2, "uri":Landroid/net/Uri;
    aput-object v2, v3, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    iput v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    .line 368
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->updateDataAndAdapter()V

    .line 369
    invoke-direct {p0, v3}, Lcom/miui/gallery/collage/CollageActivity;->decodeBitmapAsync([Landroid/net/Uri;)V

    .line 370
    return-void
.end method

.method private refreshCollageLayout(Lcom/miui/gallery/collage/LayoutModel;)V
    .locals 8
    .param p1, "layoutModel"    # Lcom/miui/gallery/collage/LayoutModel;

    .prologue
    .line 655
    iget-object v4, p1, Lcom/miui/gallery/collage/LayoutModel;->items:[Lcom/miui/gallery/collage/LayoutItemModel;

    .line 656
    .local v4, "viewModels":[Lcom/miui/gallery/collage/LayoutItemModel;
    iget-object v5, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v5}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildCount()I

    move-result v1

    .line 657
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 658
    aget-object v3, v4, v2

    .line 659
    .local v3, "layoutItemModel":Lcom/miui/gallery/collage/LayoutItemModel;
    iget-object v5, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v5, v2}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 660
    .local v0, "child":Landroid/view/View;
    new-instance v5, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;

    iget-object v6, v3, Lcom/miui/gallery/collage/LayoutItemModel;->clipType:Lcom/miui/gallery/collage/ClipType;

    iget-object v7, v3, Lcom/miui/gallery/collage/LayoutItemModel;->data:[F

    invoke-direct {v5, v6, v7}, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;-><init>(Lcom/miui/gallery/collage/ClipType;[F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 662
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "layoutItemModel":Lcom/miui/gallery/collage/LayoutItemModel;
    :cond_0
    return-void
.end method

.method private resolveIntent()V
    .locals 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 134
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 135
    const-string v3, "extra_assistant"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "extra":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    invoke-virtual {v2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/collage/CollageActivity;->receiveImages(Landroid/content/ClipData;)V

    .line 148
    .end local v1    # "extra":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local v1    # "extra":Ljava/lang/String;
    :cond_1
    const-string v3, "extra_bitmaps"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "bitmaps":[Ljava/lang/String;
    iput-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mAssistantExtra:Ljava/lang/String;

    .line 141
    if-eqz v0, :cond_2

    array-length v3, v0

    if-eqz v3, :cond_2

    .line 142
    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->receiveImages([Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/collage/CollageActivity;->receiveImages(Landroid/content/ClipData;)V

    goto :goto_0
.end method

.method private setPosterModelToPosterLayout(Lcom/miui/gallery/collage/PosterModel;)V
    .locals 8
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/PosterModel;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/PosterLayout;->getWidth()I

    move-result v3

    .line 626
    .local v3, "width":I
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/PosterLayout;->getHeight()I

    move-result v4

    .line 627
    .local v4, "height":I
    new-instance v2, Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-direct {v2}, Lcom/miui/gallery/collage/render/PosterElementRender;-><init>()V

    .line 628
    .local v2, "posterElementRender":Lcom/miui/gallery/collage/render/PosterElementRender;
    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 629
    :cond_0
    iget-object v7, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterLayout:Lcom/miui/gallery/collage/widget/PosterLayout;

    new-instance v0, Lcom/miui/gallery/collage/CollageActivity$3;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/collage/CollageActivity$3;-><init>(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/render/PosterElementRender;IILcom/miui/gallery/collage/PosterModel;)V

    invoke-virtual {v7, v0}, Lcom/miui/gallery/collage/widget/PosterLayout;->post(Ljava/lang/Runnable;)Z

    .line 652
    :goto_0
    return-void

    .line 643
    :cond_1
    new-instance v6, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;

    invoke-direct {v6, v2, v3, v4, p0}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;-><init>(Lcom/miui/gallery/collage/render/PosterElementRender;IILandroid/content/Context;)V

    .line 644
    .local v6, "readPosterDataTask":Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;
    new-instance v0, Lcom/miui/gallery/collage/CollageActivity$4;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/collage/CollageActivity$4;-><init>(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/render/PosterElementRender;)V

    invoke-virtual {v6, v0}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->setLoadDataListener(Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask$LoadDataListener;)V

    .line 650
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/miui/gallery/collage/PosterModel;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {v6, v0}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    .line 283
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    const v1, 0x7f0e034f

    invoke-virtual {p0, v1}, Lcom/miui/gallery/collage/CollageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 285
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 286
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 287
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    .line 288
    return-void
.end method

.method private startPicker(II)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "max"    # I

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v1, "pick-upper-bound"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/collage/CollageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    return-void
.end method

.method public static startPicker(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 702
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    const-string v1, "pick-upper-bound"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    const-string v1, "pick_intent"

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/gallery/collage/CollageActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 706
    const-string v1, "pick_close_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 709
    return-void
.end method

.method private toLayoutMode()V
    .locals 3

    .prologue
    .line 587
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mIsPosterMode:Z

    .line 588
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutMenuAdapter:Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 589
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/gallery/collage/CollageActivity;->toggleViewVisible(Z)V

    .line 590
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutList:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/LayoutModel;

    .line 591
    .local v0, "layoutModel":Lcom/miui/gallery/collage/LayoutModel;
    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->enableLayoutModel(Lcom/miui/gallery/collage/LayoutModel;)V

    .line 592
    return-void
.end method

.method private toPosterMode()V
    .locals 3

    .prologue
    .line 579
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mIsPosterMode:Z

    .line 580
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mRecyclerView:Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterMenuAdapter:Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 581
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/collage/CollageActivity;->toggleViewVisible(Z)V

    .line 582
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterList:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/PosterModel;

    .line 583
    .local v0, "posterModel":Lcom/miui/gallery/collage/PosterModel;
    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->enablePosterModel(Lcom/miui/gallery/collage/PosterModel;)V

    .line 584
    return-void
.end method

.method private toggleViewVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 595
    if-eqz p1, :cond_0

    move v0, v1

    .line 596
    .local v0, "visibleFlagGone":I
    :goto_0
    if-eqz p1, :cond_1

    .line 597
    .local v1, "visibleFlagInvisible":I
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mMarginControlLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 598
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mMarginDividingView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mDividingLineTitle:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mDividingLineList:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 601
    return-void

    .line 595
    .end local v0    # "visibleFlagGone":I
    .end local v1    # "visibleFlagInvisible":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 596
    .restart local v0    # "visibleFlagGone":I
    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method private updateDataAndAdapter()V
    .locals 4

    .prologue
    .line 526
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterMenuAdapter:Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;

    iget v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    invoke-virtual {v2, v3}, Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;->setImageCount(I)V

    .line 528
    iget v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 529
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutTitle:Landroid/widget/RadioButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 534
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 535
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageResourcesManager:Lcom/miui/gallery/collage/CollageResourcesManager;

    iget v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    invoke-virtual {v2, v3}, Lcom/miui/gallery/collage/CollageResourcesManager;->getLayoutListBySize(I)Ljava/util/List;

    move-result-object v0

    .line 536
    .local v0, "layoutList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/LayoutModel;>;"
    if-eqz v0, :cond_0

    .line 537
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 540
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 541
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageResourcesManager:Lcom/miui/gallery/collage/CollageResourcesManager;

    iget v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mCurrentImageSize:I

    invoke-virtual {v2, v3}, Lcom/miui/gallery/collage/CollageResourcesManager;->getPosterListBySize(I)Ljava/util/List;

    move-result-object v1

    .line 542
    .local v1, "posterList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/PosterModel;>;"
    if-eqz v1, :cond_1

    .line 543
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 546
    :cond_1
    iget-boolean v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mIsPosterMode:Z

    if-eqz v2, :cond_3

    .line 547
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterMenuAdapter:Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/collage/adapter/PosterMenuAdapter;->notifyDataSetChanged()V

    .line 551
    :goto_1
    return-void

    .line 531
    .end local v0    # "layoutList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/LayoutModel;>;"
    .end local v1    # "posterList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/PosterModel;>;"
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutTitle:Landroid/widget/RadioButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    .line 549
    .restart local v0    # "layoutList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/LayoutModel;>;"
    .restart local v1    # "posterList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/PosterModel;>;"
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutMenuAdapter:Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/collage/adapter/LayoutMenuAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 691
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 694
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->dismissControlWindow()V

    .line 698
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 200
    const-string v1, "CollageActivity"

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    packed-switch p1, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 203
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 209
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->finish()V

    goto :goto_0

    .line 205
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/collage/CollageActivity;->receiveImages(Landroid/content/ClipData;)V

    goto :goto_0

    .line 214
    :pswitch_2
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 216
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 217
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;

    invoke-direct {v1, p0, v3}, Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;-><init>(Lcom/miui/gallery/collage/CollageActivity;I)V

    new-array v2, v3, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 203
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
    .end packed-switch

    .line 214
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_3
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/internal/WindowCompat;->isNotch(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SystemUiUtil;->extendToStatusBar(Landroid/view/View;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 256
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 228
    :pswitch_1
    invoke-static {}, Lcom/miui/gallery/collage/render/CollageMargin;->values()[Lcom/miui/gallery/collage/render/CollageMargin;

    move-result-object v0

    .line 229
    .local v0, "margins":[Lcom/miui/gallery/collage/render/CollageMargin;
    iget-object v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mMargin:Lcom/miui/gallery/collage/render/CollageMargin;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/render/CollageMargin;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    array-length v4, v0

    rem-int v2, v3, v4

    .line 230
    .local v2, "nextId":I
    aget-object v1, v0, v2

    .line 231
    .local v1, "next":Lcom/miui/gallery/collage/render/CollageMargin;
    iget-object v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mMarginControl:Landroid/widget/ImageView;

    iget v4, v1, Lcom/miui/gallery/collage/render/CollageMargin;->iconRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iget-object v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mCollageLayout:Lcom/miui/gallery/collage/widget/CollageLayout;

    iget v4, v1, Lcom/miui/gallery/collage/render/CollageMargin;->marginSize:F

    invoke-virtual {v3, v4}, Lcom/miui/gallery/collage/widget/CollageLayout;->setCollageMargin(F)V

    .line 233
    iput-object v1, p0, Lcom/miui/gallery/collage/CollageActivity;->mMargin:Lcom/miui/gallery/collage/render/CollageMargin;

    goto :goto_0

    .line 236
    .end local v0    # "margins":[Lcom/miui/gallery/collage/render/CollageMargin;
    .end local v1    # "next":Lcom/miui/gallery/collage/render/CollageMargin;
    .end local v2    # "nextId":I
    :pswitch_2
    iget-object v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mPosterTitle:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 237
    iget-boolean v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mIsPosterMode:Z

    if-nez v3, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->toPosterMode()V

    goto :goto_0

    .line 243
    :pswitch_3
    iget-object v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mLayoutTitle:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 244
    iget-boolean v3, p0, Lcom/miui/gallery/collage/CollageActivity;->mIsPosterMode:Z

    if-eqz v3, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->toLayoutMode()V

    goto :goto_0

    .line 250
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->onSave()V

    goto :goto_0

    .line 253
    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->finish()V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x7f12011a
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/WindowCompat;->setCutoutModeShortEdges(Landroid/view/Window;)V

    .line 116
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 117
    invoke-virtual {p0}, Lcom/miui/gallery/collage/CollageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/SystemUiUtil;->setDrawSystemBarBackground(Landroid/view/Window;)V

    .line 118
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->loadLocalResources()V

    .line 119
    const v0, 0x7f040053

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/CollageActivity;->setContentView(I)V

    .line 120
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->findViews()V

    .line 121
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->initRecycler()V

    .line 122
    invoke-direct {p0}, Lcom/miui/gallery/collage/CollageActivity;->resolveIntent()V

    .line 123
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity;->mSaveProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 716
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 717
    return-void
.end method
