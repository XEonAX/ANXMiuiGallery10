.class public Lcom/miui/extraphoto/refocus/RefocusView;
.super Landroid/view/SurfaceView;
.source "RefocusView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/refocus/RefocusView$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RefocusVideoView"


# instance fields
.field private mCallback:Lcom/miui/extraphoto/refocus/RefocusView$Callback;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInit:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mPoint:[F

.field private mPosition:[I

.field private mPreventTouch:Z

.field private mRectF:Landroid/graphics/RectF;

.field private mRefocusPopupWindow:Lcom/miui/extraphoto/refocus/RefocusPopupWindow;

.field private mRelightingPopupWindow:Lcom/miui/extraphoto/refocus/RelightingPopupWindow;

.field private mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    .line 25
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPoint:[F

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRectF:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mMatrix:Landroid/graphics/Matrix;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mInit:Z

    .line 30
    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPreventTouch:Z

    .line 74
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusView$1;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/RefocusView$1;-><init>(Lcom/miui/extraphoto/refocus/RefocusView;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 34
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    .line 25
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPoint:[F

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRectF:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mMatrix:Landroid/graphics/Matrix;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mInit:Z

    .line 30
    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPreventTouch:Z

    .line 74
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusView$1;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/RefocusView$1;-><init>(Lcom/miui/extraphoto/refocus/RefocusView;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 39
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    .line 25
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPoint:[F

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRectF:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mMatrix:Landroid/graphics/Matrix;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mInit:Z

    .line 30
    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPreventTouch:Z

    .line 74
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusView$1;

    invoke-direct {v0, p0}, Lcom/miui/extraphoto/refocus/RefocusView$1;-><init>(Lcom/miui/extraphoto/refocus/RefocusView;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 44
    invoke-direct {p0}, Lcom/miui/extraphoto/refocus/RefocusView;->init()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/miui/extraphoto/refocus/RefocusView;)Lcom/miui/extraphoto/refocus/RefocusView$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusView;

    .line 14
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mCallback:Lcom/miui/extraphoto/refocus/RefocusView$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/extraphoto/refocus/RefocusView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/miui/extraphoto/refocus/RefocusView;->showPopupWindow(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/extraphoto/refocus/RefocusView;)Lcom/miui/extraphoto/refocus/RefocusRenderThread;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusView;

    .line 14
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/extraphoto/refocus/RefocusView;)[F
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusView;

    .line 14
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPoint:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/extraphoto/refocus/RefocusView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusView;

    .line 14
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/extraphoto/refocus/RefocusView;FFFF)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/extraphoto/refocus/RefocusView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/extraphoto/refocus/RefocusView;->showRelightingWindow(FFFF)V

    return-void
.end method

.method private init()V
    .locals 3

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusView;->setZOrderOnTop(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 50
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 51
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 52
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 53
    new-instance v0, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;

    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRefocusPopupWindow:Lcom/miui/extraphoto/refocus/RefocusPopupWindow;

    .line 54
    new-instance v0, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;

    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRelightingPopupWindow:Lcom/miui/extraphoto/refocus/RelightingPopupWindow;

    .line 55
    return-void
.end method

.method private showPopupWindow(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 137
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/2addr p1, v0

    .line 138
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr p2, v0

    .line 139
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRefocusPopupWindow:Lcom/miui/extraphoto/refocus/RefocusPopupWindow;

    const v1, 0x800033

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 140
    return-void
.end method

.method private showRelightingWindow(FFFF)V
    .locals 6
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 158
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRelightingPopupWindow:Lcom/miui/extraphoto/refocus/RelightingPopupWindow;

    const/4 v1, 0x0

    const v2, 0x800033

    invoke-virtual {v0, p0, v2, v1, v1}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 159
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRelightingPopupWindow:Lcom/miui/extraphoto/refocus/RelightingPopupWindow;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    aget v2, v2, v1

    int-to-float v2, v2

    add-float/2addr v2, p1

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    add-float/2addr v3, p2

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    aget v1, v5, v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    iget-object v5, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    aget v4, v5, v4

    int-to-float v4, v4

    add-float/2addr v4, p4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->setPosition(FFFF)V

    .line 160
    return-void
.end method


# virtual methods
.method public getCenterXInWindow()I
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getCenterYInWindow()I
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 144
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 145
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusView;->getLocationInWindow([I)V

    .line 146
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRelightingPopupWindow:Lcom/miui/extraphoto/refocus/RelightingPopupWindow;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->setAvailableArea(FFFF)V

    .line 147
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 59
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mInit:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPreventTouch:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRelightingPopupWindow:Lcom/miui/extraphoto/refocus/RelightingPopupWindow;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRelightingPopupWindow:Lcom/miui/extraphoto/refocus/RelightingPopupWindow;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->dismiss()V

    .line 71
    :cond_2
    :goto_0
    return v1

    .line 60
    :cond_3
    :goto_1
    return v1
.end method

.method public setCallback(Lcom/miui/extraphoto/refocus/RefocusView$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/miui/extraphoto/refocus/RefocusView$Callback;

    .line 200
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mCallback:Lcom/miui/extraphoto/refocus/RefocusView$Callback;

    .line 201
    return-void
.end method

.method public setPreventTouch(Z)V
    .locals 0
    .param p1, "preventTouch"    # Z

    .line 170
    iput-boolean p1, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPreventTouch:Z

    .line 171
    return-void
.end method

.method public setRenderThread(Lcom/miui/extraphoto/refocus/RefocusRenderThread;)V
    .locals 0
    .param p1, "renderThread"    # Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    .line 196
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    .line 197
    return-void
.end method

.method public showRelightingWindowByCurrentStatus()V
    .locals 8

    .line 163
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPoint:[F

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getFacePoint([F)V

    .line 164
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->getLightingPointOnView()[F

    move-result-object v0

    .line 165
    .local v0, "currentLightingPoint":[F
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRelightingPopupWindow:Lcom/miui/extraphoto/refocus/RelightingPopupWindow;

    const/4 v2, 0x0

    const v3, 0x800033

    invoke-virtual {v1, p0, v3, v2, v2}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->showAtLocationDelay(Landroid/view/View;III)V

    .line 166
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRelightingPopupWindow:Lcom/miui/extraphoto/refocus/RelightingPopupWindow;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPoint:[F

    aget v3, v3, v2

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    aget v4, v4, v2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPoint:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v6, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    aget v6, v6, v5

    int-to-float v6, v6

    add-float/2addr v4, v6

    aget v6, v0, v2

    iget-object v7, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    aget v2, v7, v2

    int-to-float v2, v2

    add-float/2addr v6, v2

    aget v2, v0, v5

    iget-object v7, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mPosition:[I

    aget v5, v7, v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-virtual {v1, v3, v4, v6, v2}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->setPosition(FFFF)V

    .line 167
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 181
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {v0, p3, p4}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->sendSurfaceChanged(II)V

    .line 182
    iget-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mInit:Z

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mInit:Z

    .line 185
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 175
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mRenderThread:Lcom/miui/extraphoto/refocus/RefocusRenderThread;

    invoke-virtual {v0, p1}, Lcom/miui/extraphoto/refocus/RefocusRenderThread;->sendSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusView;->mInit:Z

    .line 177
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 189
    return-void
.end method
