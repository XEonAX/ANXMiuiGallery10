.class public Lcom/miui/gallery/collage/widget/CollageLayout;
.super Landroid/view/ViewGroup;
.source "CollageLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;,
        Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;,
        Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;,
        Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;,
        Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;,
        Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;
    }
.end annotation


# instance fields
.field private mActivating:Z

.field private mActiveIndex:I

.field private mActiveLineWidth:I

.field private mActiveLineWidthWhite:I

.field private mContext:Landroid/content/Context;

.field private mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

.field private mDensity:F

.field private mDragImageHolder:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

.field private mImageLocationProcessor:Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;

.field private mMargin:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupListener:Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

.field private mReplaceImageListener:Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mStrokeColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureListener:Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    .line 41
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mDragImageHolder:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    .line 43
    new-instance v0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPopupListener:Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPaint:Landroid/graphics/Paint;

    .line 45
    iput v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mMargin:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveIndex:I

    .line 51
    new-instance v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;

    invoke-direct {v0}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mImageLocationProcessor:Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;

    .line 53
    iput-boolean v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActivating:Z

    .line 57
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/collage/widget/CollageLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->doVibrator()V

    return-void
.end method

.method static synthetic access$1500(Landroid/graphics/RectF;Lcom/miui/gallery/collage/widget/CollageImageView;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/RectF;
    .param p1, "x1"    # Lcom/miui/gallery/collage/widget/CollageImageView;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout;->getCollageImageViewRect(Landroid/graphics/RectF;Lcom/miui/gallery/collage/widget/CollageImageView;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mReplaceImageListener:Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/collage/widget/CollageLayout;FF)Lcom/miui/gallery/collage/widget/CollageImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/collage/widget/CollageLayout;->findSingleView(FF)Lcom/miui/gallery/collage/widget/CollageImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/collage/widget/CollageLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActivating:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/collage/widget/CollageLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/collage/widget/CollageLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/collage/widget/CollageLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout;->setActive(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/ControlPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPopupListener:Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mDragImageHolder:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    return-object v0
.end method

.method private doVibrator()V
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->performHapticFeedback(I)Z

    .line 588
    return-void
.end method

.method private findSingleView(FF)Lcom/miui/gallery/collage/widget/CollageImageView;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 301
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 302
    invoke-virtual {p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 303
    .local v0, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;

    .line 304
    .local v2, "layoutParams":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    invoke-virtual {v2, p1, p2}, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    .end local v2    # "layoutParams":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    :goto_1
    return-object v0

    .line 301
    .restart local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    .restart local v2    # "layoutParams":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    .end local v2    # "layoutParams":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getCollageImageViewRect(Landroid/graphics/RectF;Lcom/miui/gallery/collage/widget/CollageImageView;)V
    .locals 2
    .param p0, "dst"    # Landroid/graphics/RectF;
    .param p1, "collageImageView"    # Lcom/miui/gallery/collage/widget/CollageImageView;

    .prologue
    .line 441
    invoke-virtual {p1, p0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getDisplayRect(Landroid/graphics/RectF;)V

    .line 442
    invoke-virtual {p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/miui/gallery/collage/widget/CollageImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 443
    return-void
.end method

.method private getLeftPadding()I
    .locals 2

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getPaddingStart()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getRightPadding()I
    .locals 2

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getPaddingEnd()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureListener:Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 73
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureListener:Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->setWillNotDraw(Z)V

    .line 75
    new-instance v0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-direct {v0, p1}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPopupListener:Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->setControlListener(Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mStrokeColor:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveLineWidth:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveLineWidthWhite:I

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mDensity:F

    .line 83
    return-void
.end method

.method private isChildActivating()Z
    .locals 3

    .prologue
    .line 686
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 687
    invoke-virtual {p0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 688
    .local v0, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->isActivating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 689
    const/4 v2, 0x1

    .line 692
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :goto_1
    return v2

    .line 686
    .restart local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setActive(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveIndex:I

    .line 313
    return-void
.end method


# virtual methods
.method public dismissControlWindow()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mControlPopupWindow:Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->dismiss()V

    .line 319
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, -0x1

    .line 98
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 99
    iget v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveIndex:I

    if-eq v3, v5, :cond_0

    .line 100
    iget v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveIndex:I

    invoke-virtual {p0, v3}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 101
    .local v0, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;

    .line 102
    .local v1, "layoutParams":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    iget-object v3, v1, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getPathForClip()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 105
    iget v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mMargin:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveLineWidth:I

    add-int v2, v3, v4

    .line 106
    .local v2, "strokeWidth":I
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActiveLineWidthWhite:I

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v3, v1, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getPathForChoose()Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 109
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mStrokeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v3, v1, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getPathForChoose()Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    .end local v1    # "layoutParams":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    .end local v2    # "strokeWidth":I
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mDragImageHolder:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-virtual {v3, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->draw(Landroid/graphics/Canvas;)V

    .line 116
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 121
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;

    .line 122
    .local v0, "layoutParams":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    iget-object v2, v0, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v2}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getPathForClip()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 124
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 125
    return v1
.end method

.method public getMargin()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mMargin:I

    return v0
.end method

.method public isActivating()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mActivating:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->isChildActivating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 93
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 94
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getLeftPadding()I

    move-result v11

    .line 131
    .local v11, "paddingLeft":I
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getRightPadding()I

    move-result v12

    .line 132
    .local v12, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getPaddingTop()I

    move-result v13

    .line 133
    .local v13, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getPaddingBottom()I

    move-result v10

    .line 134
    .local v10, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getWidth()I

    move-result v15

    sub-int/2addr v15, v11

    sub-int v14, v15, v12

    .line 135
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getHeight()I

    move-result v15

    sub-int/2addr v15, v13

    sub-int v7, v15, v10

    .line 137
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildCount()I

    move-result v6

    .line 138
    .local v6, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_1

    .line 139
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 141
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;

    .line 142
    .local v9, "lp":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/collage/widget/CollageLayout;->mImageLocationProcessor:Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;

    iget-object v0, v9, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    move-object/from16 v16, v0

    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v7

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/collage/widget/CollageLayout;->mMargin:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocationProcessor;->processorImageLocation(Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;FFF)V

    .line 143
    iget-object v15, v9, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v15}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getLeft()I

    move-result v15

    add-int/2addr v15, v11

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 144
    .local v3, "childLeft":I
    iget-object v15, v9, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v15}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getTop()I

    move-result v15

    add-int/2addr v15, v13

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 145
    .local v5, "childTop":I
    iget-object v15, v9, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v15}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getRight()I

    move-result v15

    add-int/2addr v15, v11

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 146
    .local v4, "childRight":I
    iget-object v15, v9, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v15}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getBottom()I

    move-result v15

    add-int/2addr v15, v13

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 147
    .local v2, "childBottom":I
    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 138
    .end local v2    # "childBottom":I
    .end local v3    # "childLeft":I
    .end local v4    # "childRight":I
    .end local v5    # "childTop":I
    .end local v9    # "lp":Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/collage/widget/CollageLayout;->measureChildren(II)V

    .line 89
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 158
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureListener:Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mGestureListener:Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$CustomGestureListener;->onUp()V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCollageMargin(F)V
    .locals 2
    .param p1, "margin"    # F

    .prologue
    .line 641
    iget v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mDensity:F

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 642
    .local v0, "marginInt":I
    iget v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mMargin:I

    if-eq v1, v0, :cond_0

    .line 643
    iput v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mMargin:I

    .line 644
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->requestLayout()V

    .line 646
    :cond_0
    return-void
.end method

.method public setReplaceImageListener(Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;)V
    .locals 0
    .param p1, "replaceImageListener"    # Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout;->mReplaceImageListener:Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;

    .line 650
    return-void
.end method

.method public setSingleViewBitmap(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 653
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 654
    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 655
    .local v0, "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/collage/widget/CollageImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 657
    .end local v0    # "collageImageView":Lcom/miui/gallery/collage/widget/CollageImageView;
    :cond_0
    return-void
.end method
