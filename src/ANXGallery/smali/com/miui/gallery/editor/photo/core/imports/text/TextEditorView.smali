.class public Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
.super Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;
.source "TextEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;,
        Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEntry;,
        Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;,
        Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;
    }
.end annotation


# instance fields
.field private mAuxiliaryPaint:Landroid/graphics/Paint;

.field private mCanvasOffsetY:F

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCurrentTargetOffsetY:F

.field private mLocation:[I

.field private mOffsetAnimator:Landroid/animation/ObjectAnimator;

.field private mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

.field private mOriginScale:F

.field private mRectFTemp:Landroid/graphics/RectF;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mTextAppendConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectTemp:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mLocation:[I

    .line 45
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCanvasOffsetY:F

    .line 46
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentTargetOffsetY:F

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mAuxiliaryPaint:Landroid/graphics/Paint;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOriginScale:F

    .line 823
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 58
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/view/MotionEvent;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # [F

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/view/MotionEvent;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # [F

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # F

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->convertDistanceX(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # F

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->convertDistanceY(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->findActivationIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->notifyModify()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/graphics/RectF;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getRectOverScrollStatus(Landroid/graphics/RectF;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;FF)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->findItemByEvent(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;FF)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->findTouchAction(FF)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/view/MotionEvent;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # [F

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->notifyItemEdit()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Landroid/view/MotionEvent;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # [F

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->convertPointToViewPortCoordinate(Landroid/view/MotionEvent;[F)V

    return-void
.end method

.method private configOperationDecoration(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V
    .locals 6
    .param p1, "textAppendConfig"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isDialogEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->EDIT:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->configActionPosition(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/content/res/Resources;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->EDIT:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->MIRROR:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->configActionPosition(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method private configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V
    .locals 6
    .param p1, "textAppendConfig"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getOutLineRect(Landroid/graphics/RectF;)V

    .line 102
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v2, v2, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getRotateDegrees()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->configDecorationPositon(Landroid/graphics/RectF;Landroid/graphics/Matrix;FFF)V

    .line 103
    return-void
.end method

.method private countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V
    .locals 2
    .param p1, "textAppendConfig"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    .param p2, "isSection"    # Z
    .param p3, "isTextChange"    # Z

    .prologue
    .line 349
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->countLocation(ZF)V

    .line 350
    if-eqz p2, :cond_0

    .line 351
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getOutLineRect(Landroid/graphics/RectF;)V

    .line 352
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 353
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->invalidate(Landroid/graphics/Rect;)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->invalidate()V

    goto :goto_0
.end method

.method private findActivationIndex()I
    .locals 2

    .prologue
    .line 723
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 724
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isActivation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 723
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 728
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findItemByEvent(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 390
    const/4 v1, -0x1

    .line 391
    .local v1, "currentIndex":I
    const/high16 v0, -0x40800000    # -1.0f

    .line 392
    .local v0, "currentDistance":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 393
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 394
    .local v4, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    invoke-virtual {v4, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_1

    .line 392
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 397
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getOutLineRect(Landroid/graphics/RectF;)V

    .line 398
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-direct {p0, v5, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getDistance(Landroid/graphics/RectF;FF)F

    move-result v2

    .line 399
    .local v2, "distance":F
    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v0, v5

    if-nez v5, :cond_2

    .line 400
    move v0, v2

    .line 401
    move v1, v3

    goto :goto_1

    .line 403
    :cond_2
    cmpg-float v5, v2, v0

    if-gtz v5, :cond_0

    .line 404
    move v1, v3

    goto :goto_1

    .line 408
    .end local v2    # "distance":F
    .end local v4    # "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    :cond_3
    return v1
.end method

.method private findTouchAction(FF)Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 360
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 361
    .local v0, "xI":I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 362
    .local v1, "yI":I
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 363
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->DELETE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    .line 378
    :goto_0
    return-object v2

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 367
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    goto :goto_0

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->MIRROR:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 371
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->MIRROR:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    goto :goto_0

    .line 374
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;->EDIT:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->getDecorationRect(Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable$Action;Landroid/graphics/RectF;)V

    .line 375
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mRectFTemp:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->EDIT:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    goto :goto_0

    .line 378
    :cond_3
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;->NONE:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TouchAction;

    goto :goto_0
.end method

.method private getDistance(Landroid/graphics/RectF;FF)F
    .locals 6
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 413
    .local v0, "rX":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 414
    .local v1, "rY":F
    sub-float v2, v0, p2

    float-to-double v2, v2

    sub-float v4, v1, p3

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 62
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mAuxiliaryPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mAuxiliaryPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mAuxiliaryPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$GesListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$1;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setFeatureGestureListener(Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView$FeatureGesListener;)V

    .line 68
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    .line 69
    return-void
.end method

.method private notifyClear()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;->onClear()V

    .line 131
    :cond_0
    return-void
.end method

.method private notifyItemEdit()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;->onItemEdit()V

    .line 137
    :cond_0
    return-void
.end method

.method private notifyModify()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;->onModify()V

    .line 125
    :cond_0
    return-void
.end method

.method private setCanvasOffsetY(F)V
    .locals 0
    .param p1, "canvasOffsetY"    # F

    .prologue
    .line 801
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCanvasOffsetY:F

    .line 802
    return-void
.end method


# virtual methods
.method public addNewItem()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 768
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;-><init>(Landroid/content/Context;)V

    .line 769
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setDisplaySize(FF)V

    .line 771
    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setShadow(Z)V

    .line 772
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOriginScale:F

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setScaleMultipleOrigin(F)V

    .line 773
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    .line 774
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setLastItemActivation()V

    .line 775
    return-void
.end method

.method public clearActivation(Z)V
    .locals 4
    .param p1, "needInvalidate"    # Z

    .prologue
    .line 732
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 733
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 735
    .local v2, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 736
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 737
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->notifyClear()V

    move v0, v1

    .line 732
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setActivation(Z)V

    goto :goto_1

    .line 742
    .end local v2    # "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    :cond_1
    const/4 v3, -0x1

    iput v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    .line 743
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->disableChildHandleMode()V

    .line 744
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->invalidate()V

    .line 745
    :cond_2
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 75
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 76
    const-string v1, "TextEditorView"

    const-string v2, "drawChild size : %d"

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 78
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isActivation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 82
    .end local v0    # "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 84
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 86
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCanvasOffsetY:F

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 87
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 88
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->draw(Landroid/graphics/Canvas;)V

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 93
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCanvasOffsetY:F

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 95
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 98
    :cond_2
    return-void
.end method

.method public enableStatusForCurrentItem(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;Z)V
    .locals 8
    .param p1, "textStatusData"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;
    .param p2, "isNew"    # Z

    .prologue
    const/4 v7, 0x0

    .line 568
    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 596
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 572
    .local v4, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    iget v5, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->color:I

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setColor(I)V

    .line 573
    iget v5, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->transparentProgress:F

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setTextTransparent(F)V

    .line 574
    iget-object v5, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setTextStyle(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V

    .line 575
    iget-boolean v5, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textBold:Z

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setBoldText(Z)V

    .line 576
    iget-boolean v5, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textShadow:Z

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setShadow(Z)V

    .line 577
    iget-object v5, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 578
    iget v5, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemPositionX:F

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setUserLocationX(F)V

    .line 579
    iget v5, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemPositionY:F

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setUserLocationY(F)V

    .line 580
    iget v5, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemScale:F

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setUserScaleMultiple(F)V

    .line 581
    iget v5, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemDegree:F

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setRotateDegrees(F)V

    .line 583
    if-eqz p2, :cond_1

    .line 584
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 585
    .local v0, "centerOriginX":F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 587
    .local v1, "centerOriginY":F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInsideRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 588
    .local v2, "centerX":F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v5, v5, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayInsideRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 590
    .local v3, "centerY":F
    sub-float v5, v2, v0

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->appendUserLocationX(F)V

    .line 591
    sub-float v5, v3, v1

    invoke-virtual {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->appendUserLocationY(F)V

    .line 594
    .end local v0    # "centerOriginX":F
    .end local v1    # "centerOriginY":F
    .end local v2    # "centerX":F
    .end local v3    # "centerY":F
    :cond_1
    invoke-direct {p0, v4, v7, v7}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    .line 595
    invoke-direct {p0, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V

    goto :goto_0
.end method

.method public export()Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEntry;
    .locals 4

    .prologue
    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->clearActivation(Z)V

    .line 419
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEntry;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEntry;-><init>(Landroid/graphics/RectF;Ljava/util/List;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public getActivationItemBottom()I
    .locals 3

    .prologue
    .line 791
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mLocation:[I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getLocationInWindow([I)V

    .line 792
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mLocation:[I

    const/4 v2, 0x1

    aget v0, v1, v2

    .line 793
    .local v0, "bottom":I
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 794
    int-to-float v1, v0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOperationDrawable:Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/core/imports/doodle/PaintElementOperationDrawable;->findLowerDecorationPosition()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 796
    :cond_0
    return v0
.end method

.method public getCurrentItemStatus(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;)V
    .locals 3
    .param p1, "textStatusData"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;

    .prologue
    .line 550
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->setEmpty()V

    .line 565
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 555
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getColor()I

    move-result v1

    iput v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->color:I

    .line 556
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getTextTransparent()F

    move-result v1

    iput v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->transparentProgress:F

    .line 557
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getTextStyle()Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textStyle:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 558
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isBoldText()Z

    move-result v1

    iput-boolean v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textBold:Z

    .line 559
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isShadow()Z

    move-result v1

    iput-boolean v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textShadow:Z

    .line 560
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v1

    iput-object v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->textAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 561
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getUserLocationX()F

    move-result v1

    iput v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemPositionX:F

    .line 562
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getUserLocationY()F

    move-result v1

    iput v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemPositionY:F

    .line 563
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getUserScaleMultiple()F

    move-result v1

    iput v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemScale:F

    .line 564
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getRotateDegrees()F

    move-result v1

    iput v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$TextStatusData;->itemDegree:F

    goto :goto_0
.end method

.method public getItemAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;
    .locals 2

    .prologue
    .line 543
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 546
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemBold()Z
    .locals 2

    .prologue
    .line 606
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    const/4 v0, 0x0

    .line 609
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isBoldText()Z

    move-result v0

    goto :goto_0
.end method

.method public getItemColor()I
    .locals 2

    .prologue
    .line 514
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    const/4 v0, 0x0

    .line 517
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getColor()I

    move-result v0

    goto :goto_0
.end method

.method public getItemDialogModel()Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;
    .locals 2

    .prologue
    .line 599
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    const/4 v0, 0x0

    .line 602
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getDialogModel()Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemShadow()Z
    .locals 2

    .prologue
    .line 613
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    const/4 v0, 0x0

    .line 616
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isShadow()Z

    move-result v0

    goto :goto_0
.end method

.method public getItemSize()I
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 500
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const-string v0, ""

    .line 503
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemTransparent()F
    .locals 2

    .prologue
    .line 507
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x0

    .line 510
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getTextTransparent()F

    move-result v0

    goto :goto_0
.end method

.method public getItemTypeFace()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 521
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    const/4 v1, 0x0

    .line 525
    :goto_0
    return-object v1

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->getTextStyle()Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    move-result-object v0

    .line 525
    .local v0, "textStyle":Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    if-nez v0, :cond_1

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isIndexValid(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 492
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemActivation()Z
    .locals 2

    .prologue
    .line 496
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offsetWithAnimator(F)V
    .locals 4
    .param p1, "targetOffset"    # F

    .prologue
    .line 805
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentTargetOffsetY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 810
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 815
    :goto_1
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentTargetOffsetY:F

    .line 816
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 817
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    const-string v1, "canvasOffsetY"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCanvasOffsetY:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 819
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 820
    const-string v0, "TextEditorView"

    const-string/jumbo v1, "start targetOffset : %f"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 812
    :cond_2
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    .line 813
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOffsetAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1
.end method

.method protected onBitmapMatrixChanged()V
    .locals 3

    .prologue
    const v2, 0x3e99999a    # 0.3f

    .line 141
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->onBitmapMatrixChanged()V

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayInitRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOriginScale:F

    .line 143
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOriginScale:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 144
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mOriginScale:F

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->addNewItem()V

    .line 147
    return-void
.end method

.method protected onCanvasMatrixChange()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureView;->onCanvasMatrixChange()V

    .line 116
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setActivation(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 748
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->isActivation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    invoke-virtual {p0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->clearActivation(Z)V

    .line 753
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 754
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setActivation(Z)V

    .line 755
    invoke-direct {p0, v0, v3, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    .line 756
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationDecoration(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V

    .line 757
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V

    .line 758
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    .line 759
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->enableChildHandleMode()V

    .line 760
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->invalidate()V

    goto :goto_0
.end method

.method public setItemBold(Z)V
    .locals 4
    .param p1, "bold"    # Z

    .prologue
    const/4 v3, 0x1

    .line 664
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 668
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setBoldText(Z)V

    .line 669
    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setActivation(Z)V

    .line 670
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    goto :goto_0
.end method

.method public setItemDialogModel(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;)V
    .locals 4
    .param p1, "b"    # Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;

    .prologue
    const/4 v3, 0x1

    .line 631
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 635
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setActivation(Z)V

    .line 636
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setDialogModel(Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;Landroid/content/res/Resources;)V

    .line 637
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setUserScaleMultiple(F)V

    .line 638
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    .line 639
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationDecoration(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V

    .line 640
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V

    goto :goto_0
.end method

.method public setItemShadow(Z)V
    .locals 4
    .param p1, "shadow"    # Z

    .prologue
    const/4 v3, 0x1

    .line 674
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 678
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setShadow(Z)V

    .line 679
    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setActivation(Z)V

    .line 680
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    goto :goto_0
.end method

.method public setItemText(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 620
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 628
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 624
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setActivation(Z)V

    .line 625
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setText(Ljava/lang/String;)V

    .line 626
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    .line 627
    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->configOperationPosition(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;)V

    goto :goto_0
.end method

.method public setItemTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V
    .locals 4
    .param p1, "textAlignment"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .prologue
    const/4 v3, 0x0

    .line 684
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 691
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 688
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 689
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setActivation(Z)V

    .line 690
    invoke-direct {p0, v0, v3, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    goto :goto_0
.end method

.method public setItemTextColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x1

    .line 644
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 651
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 648
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setActivation(Z)V

    .line 649
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setColor(I)V

    .line 650
    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    goto :goto_0
.end method

.method public setItemTransparent(F)V
    .locals 4
    .param p1, "transparent"    # F

    .prologue
    const/4 v3, 0x1

    .line 698
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 705
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 702
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setActivation(Z)V

    .line 703
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setTextTransparent(F)V

    .line 704
    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    goto :goto_0
.end method

.method public setItemTypeface(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V
    .locals 4
    .param p1, "textStyle"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .prologue
    const/4 v3, 0x1

    .line 654
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    :goto_0
    return-void

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mCurrentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;

    .line 658
    .local v0, "textAppendConfig":Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setActivation(Z)V

    .line 659
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;->setTextStyle(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V

    .line 660
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->countAndInvalidate(Lcom/miui/gallery/editor/photo/core/imports/text/TextAppendConfig;ZZ)V

    goto :goto_0
.end method

.method public setLastItemActivation()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextAppendConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->setActivation(I)V

    .line 765
    return-void
.end method

.method public setTextEditorListener(Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;)V
    .locals 0
    .param p1, "textEditorListener"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView;->mTextEditorListener:Lcom/miui/gallery/editor/photo/core/imports/text/TextEditorView$TextEditorListener;

    .line 424
    return-void
.end method
