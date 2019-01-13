.class public Lmiui/widget/ScreenView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ScreenView$ScaleDetectorListener;,
        Lmiui/widget/ScreenView$SliderTouchListener;,
        Lmiui/widget/ScreenView$SlideBar;,
        Lmiui/widget/ScreenView$SeekBarIndicator;,
        Lmiui/widget/ScreenView$ArrowIndicator;,
        Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;,
        Lmiui/widget/ScreenView$GestureVelocityTracker;,
        Lmiui/widget/ScreenView$SavedState;,
        Lmiui/widget/ScreenView$Indicator;,
        Lmiui/widget/ScreenView$SnapScreenOnceNotification;
    }
.end annotation


# static fields
.field public static final FLING_ALIGN:I = 0x4

.field public static final FLING_CANCEL:I = 0x3

.field public static final FLING_LEFT:I = 0x1

.field public static final FLING_RIGHT:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field public static final SCREEN_ALIGN_CENTER:I = 0x2

.field public static final SCREEN_ALIGN_CUSTOMIZED:I = 0x0

.field public static final SCREEN_ALIGN_LEFT:I = 0x1

.field public static final SCREEN_ALIGN_RIGHT:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC:I = 0x0

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC_NO_OVER_SHOOT:I = 0x1

.field public static final SCREEN_TRANSITION_TYPE_CROSSFADE:I = 0x2

.field public static final SCREEN_TRANSITION_TYPE_CUBE:I = 0x4

.field public static final SCREEN_TRANSITION_TYPE_CUSTOM:I = 0x9

.field public static final SCREEN_TRANSITION_TYPE_FALLDOWN:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_LEFTPAGE:I = 0x5

.field public static final SCREEN_TRANSITION_TYPE_RIGHTPAGE:I = 0x6

.field public static final SCREEN_TRANSITION_TYPE_ROTATE:I = 0x8

.field public static final SCREEN_TRANSITION_TYPE_STACK:I = 0x7

.field private static final TAG:Ljava/lang/String; = "ScreenView"

.field protected static final TOUCH_STATE_PINCHING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final TOUCH_STATE_SLIDING:I = 0x3

.field private static final Yh:I = -0x1

.field private static final Yi:I = 0x30

.field private static final Yj:Landroid/widget/LinearLayout$LayoutParams;

.field private static final Yk:I = 0x3e8

.field private static final Yl:I = 0x1f4

.field private static final Ym:I = 0x12c

.field private static final Yn:F = 1.0E9f

.field private static final Yo:F = 0.75f

.field private static final Yp:F

.field private static final Yq:I = 0x12c

.field private static final Yr:F = 2500.0f

.field private static final Ys:F = 0.4f

.field private static final Yt:F = 1.3f

.field private static final js:Lcom/miui/internal/variable/Android_View_View_class;


# instance fields
.field private Nt:Z

.field private YA:I

.field private YB:Lmiui/widget/ScreenView$ArrowIndicator;

.field private YC:Lmiui/widget/ScreenView$ArrowIndicator;

.field private YD:Lmiui/widget/ScreenView$SeekBarIndicator;

.field private YF:Lmiui/widget/ScreenView$SlideBar;

.field private YG:Z

.field private YH:Ljava/lang/Runnable;

.field private YI:I

.field private YJ:I

.field private YK:I

.field private YL:I

.field private YM:I

.field private YN:I

.field private YO:I

.field private YP:I

.field private YQ:I

.field private YR:I

.field private YS:I

.field private YT:F

.field private YU:Z

.field private YV:F

.field private YW:I

.field private YX:Landroid/view/ScaleGestureDetector;

.field private YY:I

.field private YZ:Z

.field private final Yu:F

.field private Yv:I

.field private Yw:I

.field private Yx:I

.field private Yy:I

.field private Yz:I

.field private Za:Z

.field private Zb:Z

.field private Zc:F

.field private Zd:F

.field private Ze:F

.field private Zf:I

.field private Zg:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

.field private Zh:I

.field private Zi:F

.field private Zj:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

.field private Zk:Lmiui/widget/ScreenView$GestureVelocityTracker;

.field private fE:I

.field protected mChildScreenWidth:I

.field protected mCurrentScreen:I

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mScreenOffset:I

.field protected mVisibleRange:I

.field private qE:I

.field private qJ:I

.field private wp:Landroid/widget/Scroller;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 60
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    sput-object v0, Lmiui/widget/ScreenView;->js:Lcom/miui/internal/variable/Android_View_View_class;

    .line 163
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lmiui/widget/ScreenView;->Yj:Landroid/widget/LinearLayout$LayoutParams;

    .line 192
    nop

    .line 193
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f90624dd2f1a9fcL    # 0.016

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lmiui/widget/ScreenView;->Yp:F

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 335
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 203
    nop

    .line 204
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x44a00000    # 1280.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lmiui/widget/ScreenView;->Yu:F

    .line 209
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->Nt:Z

    .line 213
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_left:I

    iput v0, p0, Lmiui/widget/ScreenView;->Yw:I

    .line 215
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_left_gray:I

    iput v0, p0, Lmiui/widget/ScreenView;->Yx:I

    .line 217
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_right:I

    iput v0, p0, Lmiui/widget/ScreenView;->Yy:I

    .line 219
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_right_gray:I

    iput v0, p0, Lmiui/widget/ScreenView;->Yz:I

    .line 221
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_seek_point_selector:I

    iput v0, p0, Lmiui/widget/ScreenView;->YA:I

    .line 239
    new-instance v0, Lmiui/widget/ScreenView$1;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$1;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->YH:Ljava/lang/Runnable;

    .line 257
    iput p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->YM:I

    .line 264
    iput v0, p0, Lmiui/widget/ScreenView;->YN:I

    .line 273
    const/4 v1, -0x1

    iput v1, p0, Lmiui/widget/ScreenView;->YQ:I

    .line 279
    const v2, 0x3eaaaaab

    iput v2, p0, Lmiui/widget/ScreenView;->YT:F

    .line 285
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lmiui/widget/ScreenView;->YV:F

    .line 287
    iput v0, p0, Lmiui/widget/ScreenView;->YW:I

    .line 296
    iput v0, p0, Lmiui/widget/ScreenView;->YY:I

    .line 302
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->Zb:Z

    .line 308
    iput v1, p0, Lmiui/widget/ScreenView;->qE:I

    .line 314
    iput v2, p0, Lmiui/widget/ScreenView;->Ze:F

    .line 316
    const/16 p1, 0x12c

    iput p1, p0, Lmiui/widget/ScreenView;->Zf:I

    .line 320
    iput v0, p0, Lmiui/widget/ScreenView;->Zh:I

    .line 322
    const p1, 0x3fa66666    # 1.3f

    iput p1, p0, Lmiui/widget/ScreenView;->Zi:F

    .line 326
    new-instance p1, Lmiui/widget/ScreenView$GestureVelocityTracker;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    iput-object p1, p0, Lmiui/widget/ScreenView;->Zk:Lmiui/widget/ScreenView$GestureVelocityTracker;

    .line 336
    invoke-direct {p0}, Lmiui/widget/ScreenView;->fz()V

    .line 337
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 348
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 359
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    nop

    .line 204
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x44a00000    # 1280.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lmiui/widget/ScreenView;->Yu:F

    .line 209
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->Nt:Z

    .line 213
    sget p2, Lcom/miui/internal/R$drawable;->screen_view_arrow_left:I

    iput p2, p0, Lmiui/widget/ScreenView;->Yw:I

    .line 215
    sget p2, Lcom/miui/internal/R$drawable;->screen_view_arrow_left_gray:I

    iput p2, p0, Lmiui/widget/ScreenView;->Yx:I

    .line 217
    sget p2, Lcom/miui/internal/R$drawable;->screen_view_arrow_right:I

    iput p2, p0, Lmiui/widget/ScreenView;->Yy:I

    .line 219
    sget p2, Lcom/miui/internal/R$drawable;->screen_view_arrow_right_gray:I

    iput p2, p0, Lmiui/widget/ScreenView;->Yz:I

    .line 221
    sget p2, Lcom/miui/internal/R$drawable;->screen_view_seek_point_selector:I

    iput p2, p0, Lmiui/widget/ScreenView;->YA:I

    .line 239
    new-instance p2, Lmiui/widget/ScreenView$1;

    invoke-direct {p2, p0}, Lmiui/widget/ScreenView$1;-><init>(Lmiui/widget/ScreenView;)V

    iput-object p2, p0, Lmiui/widget/ScreenView;->YH:Ljava/lang/Runnable;

    .line 257
    iput p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 262
    const/4 p2, 0x0

    iput p2, p0, Lmiui/widget/ScreenView;->YM:I

    .line 264
    iput p2, p0, Lmiui/widget/ScreenView;->YN:I

    .line 273
    const/4 p3, -0x1

    iput p3, p0, Lmiui/widget/ScreenView;->YQ:I

    .line 279
    const v0, 0x3eaaaaab

    iput v0, p0, Lmiui/widget/ScreenView;->YT:F

    .line 285
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lmiui/widget/ScreenView;->YV:F

    .line 287
    iput p2, p0, Lmiui/widget/ScreenView;->YW:I

    .line 296
    iput p2, p0, Lmiui/widget/ScreenView;->YY:I

    .line 302
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->Zb:Z

    .line 308
    iput p3, p0, Lmiui/widget/ScreenView;->qE:I

    .line 314
    iput v0, p0, Lmiui/widget/ScreenView;->Ze:F

    .line 316
    const/16 p1, 0x12c

    iput p1, p0, Lmiui/widget/ScreenView;->Zf:I

    .line 320
    iput p2, p0, Lmiui/widget/ScreenView;->Zh:I

    .line 322
    const p1, 0x3fa66666    # 1.3f

    iput p1, p0, Lmiui/widget/ScreenView;->Zi:F

    .line 326
    new-instance p1, Lmiui/widget/ScreenView$GestureVelocityTracker;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    iput-object p1, p0, Lmiui/widget/ScreenView;->Zk:Lmiui/widget/ScreenView$GestureVelocityTracker;

    .line 360
    invoke-direct {p0}, Lmiui/widget/ScreenView;->fz()V

    .line 361
    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)V
    .registers 6

    .line 1053
    iput p2, p0, Lmiui/widget/ScreenView;->YY:I

    .line 1054
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    iget v0, p0, Lmiui/widget/ScreenView;->YY:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1056
    iget p2, p0, Lmiui/widget/ScreenView;->YY:I

    if-nez p2, :cond_21

    .line 1057
    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/ScreenView;->qE:I

    .line 1058
    iput-boolean v2, p0, Lmiui/widget/ScreenView;->Zb:Z

    .line 1059
    iget-object p1, p0, Lmiui/widget/ScreenView;->Zk:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->recycle()V

    goto :goto_5c

    .line 1061
    :cond_21
    if-eqz p1, :cond_35

    .line 1062
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Lmiui/widget/ScreenView;->qE:I

    .line 1063
    iget p2, p0, Lmiui/widget/ScreenView;->qE:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1066
    :cond_35
    iget-boolean p1, p0, Lmiui/widget/ScreenView;->Zb:Z

    if-eqz p1, :cond_46

    .line 1067
    iput-boolean v2, p0, Lmiui/widget/ScreenView;->Zb:Z

    .line 1071
    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1072
    if-eqz p1, :cond_46

    .line 1073
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1076
    :cond_46
    iget p1, p0, Lmiui/widget/ScreenView;->YY:I

    if-ne p1, v1, :cond_5c

    .line 1077
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiui/widget/ScreenView;->Zd:F

    .line 1078
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    iput p1, p0, Lmiui/widget/ScreenView;->Zc:F

    .line 1081
    :cond_5c
    :goto_5c
    invoke-direct {p0}, Lmiui/widget/ScreenView;->fB()V

    .line 1082
    return-void
.end method

.method private a(Landroid/view/View;F)V
    .registers 4

    .line 1990
    invoke-virtual {p1}, Landroid/view/View;->getCameraDistance()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_9

    .line 1991
    return-void

    .line 1993
    :cond_9
    invoke-virtual {p1, p2}, Landroid/view/View;->setCameraDistance(F)V

    .line 1994
    return-void
.end method

.method static synthetic a(Lmiui/widget/ScreenView;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lmiui/widget/ScreenView;->fC()V

    return-void
.end method

.method static synthetic a(Lmiui/widget/ScreenView;I)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->aG(I)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/ScreenView;II)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->p(II)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/ScreenView;Landroid/view/MotionEvent;I)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private aB(I)V
    .registers 6

    .line 768
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 769
    iget-object v1, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v1, :cond_39

    if-lez v0, :cond_39

    .line 770
    iget-object v1, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v1}, Lmiui/widget/ScreenView$SlideBar;->fI()I

    move-result v1

    .line 771
    div-int v2, v1, v0

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    mul-int/2addr v2, v3

    const/16 v3, 0x30

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 774
    iget v3, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v3, v0

    .line 776
    if-gt v3, v1, :cond_22

    .line 777
    const/4 p1, 0x0

    goto :goto_28

    .line 779
    :cond_22
    sub-int v0, v1, v2

    mul-int/2addr v0, p1

    sub-int/2addr v3, v1

    div-int p1, v0, v3

    .line 780
    :goto_28
    iget-object v0, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    add-int/2addr v2, p1

    invoke-virtual {v0, p1, v2}, Lmiui/widget/ScreenView$SlideBar;->setPosition(II)V

    .line 781
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 782
    iget-object p1, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p1}, Lmiui/widget/ScreenView$SlideBar;->invalidate()V

    .line 785
    :cond_39
    return-void
.end method

.method private aC(I)V
    .registers 5

    .line 788
    iget-object v0, p0, Lmiui/widget/ScreenView;->YB:Lmiui/widget/ScreenView$ArrowIndicator;

    if-eqz v0, :cond_29

    .line 789
    iget-object v0, p0, Lmiui/widget/ScreenView;->YB:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 790
    if-gtz p1, :cond_b

    .line 791
    iget v1, p0, Lmiui/widget/ScreenView;->Yx:I

    goto :goto_d

    .line 792
    :cond_b
    iget v1, p0, Lmiui/widget/ScreenView;->Yw:I

    .line 789
    :goto_d
    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 793
    iget-object v0, p0, Lmiui/widget/ScreenView;->YC:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 794
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/ScreenView;->YN:I

    sub-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/ScreenView;->YL:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_24

    .line 796
    iget p1, p0, Lmiui/widget/ScreenView;->Yz:I

    goto :goto_26

    .line 797
    :cond_24
    iget p1, p0, Lmiui/widget/ScreenView;->Yy:I

    .line 793
    :goto_26
    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 799
    :cond_29
    return-void
.end method

.method private aD(I)V
    .registers 5

    .line 1205
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v0, :cond_25

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_25

    .line 1208
    :cond_b
    iget-object v0, p0, Lmiui/widget/ScreenView;->Zk:Lmiui/widget/ScreenView$GestureVelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lmiui/widget/ScreenView;->qJ:I

    .line 1209
    invoke-virtual {v0, v1, v2, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->j(III)F

    move-result p1

    float-to-int p1, p1

    .line 1210
    iget-object v0, p0, Lmiui/widget/ScreenView;->Zk:Lmiui/widget/ScreenView$GestureVelocityTracker;

    .line 1211
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->e(F)I

    move-result v0

    .line 1212
    invoke-virtual {p0, p1, v0}, Lmiui/widget/ScreenView;->snapByVelocity(II)V

    .line 1213
    return-void

    .line 1206
    :cond_25
    :goto_25
    return-void
.end method

.method private aE(I)I
    .registers 3

    .line 1368
    invoke-direct {p0}, Lmiui/widget/ScreenView;->fA()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->aF(I)I

    move-result p1

    :cond_a
    return p1
.end method

.method private aF(I)I
    .registers 3

    .line 1372
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private aG(I)V
    .registers 3

    .line 1396
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lmiui/widget/ScreenView;->p(II)V

    .line 1397
    iput p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    .line 1398
    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/ScreenView;->YQ:I

    .line 1399
    return-void
.end method

.method static synthetic b(Lmiui/widget/ScreenView;)Lmiui/widget/ScreenView$SlideBar;
    .registers 1

    .line 58
    iget-object p0, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    return-object p0
.end method

.method static synthetic c(Lmiui/widget/ScreenView;)I
    .registers 1

    .line 58
    iget p0, p0, Lmiui/widget/ScreenView;->fE:I

    return p0
.end method

.method static synthetic d(Lmiui/widget/ScreenView;)F
    .registers 1

    .line 58
    iget p0, p0, Lmiui/widget/ScreenView;->Zi:F

    return p0
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1131
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v2, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1132
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1133
    iget v3, p0, Lmiui/widget/ScreenView;->Ze:F

    mul-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2c

    iget v2, p0, Lmiui/widget/ScreenView;->fE:I

    .line 1134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    mul-int/2addr v2, p1

    int-to-float p1, v2

    cmpl-float p1, v1, p1

    if-lez p1, :cond_2c

    const/4 v0, 0x1

    nop

    .line 1133
    :cond_2c
    return v0
.end method

.method static synthetic e(Lmiui/widget/ScreenView;)Landroid/widget/Scroller;
    .registers 1

    .line 58
    iget-object p0, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    return-object p0
.end method

.method private e(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1138
    iget-object v0, p0, Lmiui/widget/ScreenView;->Zk:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1139
    iget v0, p0, Lmiui/widget/ScreenView;->YY:I

    if-eqz v0, :cond_e

    const/4 v0, 0x4

    iget v1, p0, Lmiui/widget/ScreenView;->YY:I

    if-ne v0, v1, :cond_13

    .line 1141
    :cond_e
    iget-object v0, p0, Lmiui/widget/ScreenView;->YX:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1143
    :cond_13
    return-void
.end method

.method static synthetic f(Lmiui/widget/ScreenView;)I
    .registers 1

    .line 58
    iget p0, p0, Lmiui/widget/ScreenView;->YQ:I

    return p0
.end method

.method private fA()Z
    .registers 3

    .line 485
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private fB()V
    .registers 4

    .line 577
    iget-object v0, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->YG:Z

    if-nez v0, :cond_9

    goto :goto_30

    .line 580
    :cond_9
    iget-object v0, p0, Lmiui/widget/ScreenView;->YH:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 581
    iget-object v0, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 582
    iget-object v0, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setAlpha(F)V

    .line 583
    iget-object v0, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setVisibility(I)V

    .line 584
    iget v0, p0, Lmiui/widget/ScreenView;->YY:I

    if-nez v0, :cond_2f

    .line 585
    iget-object v0, p0, Lmiui/widget/ScreenView;->YH:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lmiui/widget/ScreenView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 587
    :cond_2f
    return-void

    .line 578
    :cond_30
    :goto_30
    return-void
.end method

.method private fC()V
    .registers 4

    .line 590
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->YG:Z

    if-nez v0, :cond_5

    .line 591
    return-void

    .line 593
    :cond_5
    iget-object v0, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 594
    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_12

    const-wide/16 v1, 0x1f4

    goto :goto_14

    :cond_12
    const-wide/16 v1, 0x0

    :goto_14
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 595
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/widget/ScreenView$2;

    invoke-direct {v1, p0}, Lmiui/widget/ScreenView$2;-><init>(Lmiui/widget/ScreenView;)V

    .line 596
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 601
    return-void
.end method

.method private fD()V
    .registers 3

    .line 689
    iget v0, p0, Lmiui/widget/ScreenView;->YK:I

    packed-switch v0, :pswitch_data_2c

    goto :goto_21

    .line 700
    :pswitch_6
    iget v0, p0, Lmiui/widget/ScreenView;->YN:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->YL:I

    goto :goto_21

    .line 697
    :pswitch_e
    iget v0, p0, Lmiui/widget/ScreenView;->YN:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiui/widget/ScreenView;->YL:I

    .line 698
    goto :goto_21

    .line 694
    :pswitch_18
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->YL:I

    .line 695
    goto :goto_21

    .line 691
    :pswitch_1c
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    iput v0, p0, Lmiui/widget/ScreenView;->YL:I

    .line 692
    nop

    .line 703
    :goto_21
    iget v0, p0, Lmiui/widget/ScreenView;->YL:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->YL:I

    .line 704
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_18
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method private fE()V
    .registers 4

    .line 824
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->YT:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->YL:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->YS:I

    .line 826
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->YU:Z

    if-nez v0, :cond_28

    .line 827
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->YT:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->YN:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->YL:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->YR:I

    goto :goto_40

    .line 831
    :cond_28
    nop

    .line 832
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->YN:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->YT:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->YR:I

    .line 835
    :goto_40
    return-void
.end method

.method private fF()Landroid/widget/ImageView;
    .registers 3

    .line 1664
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1665
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1666
    iget v1, p0, Lmiui/widget/ScreenView;->YA:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1667
    return-object v0
.end method

.method static synthetic fG()Lcom/miui/internal/variable/Android_View_View_class;
    .registers 1

    .line 58
    sget-object v0, Lmiui/widget/ScreenView;->js:Lcom/miui/internal/variable/Android_View_View_class;

    return-object v0
.end method

.method private fz()V
    .registers 5

    .line 428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 429
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setClipToPadding(Z)V

    .line 430
    new-instance v0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->Zg:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    .line 431
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/ScreenView;->Zg:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->aG(I)V

    .line 433
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->fE:I

    .line 435
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setMaximumSnapVelocity(I)V

    .line 436
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lmiui/widget/ScreenView$ScaleDetectorListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$ScaleDetectorListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->YX:Landroid/view/ScaleGestureDetector;

    .line 438
    return-void
.end method

.method static synthetic g(Lmiui/widget/ScreenView;)I
    .registers 1

    .line 58
    iget p0, p0, Lmiui/widget/ScreenView;->YY:I

    return p0
.end method

.method private j(IZ)V
    .registers 15

    .line 707
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v0

    if-lez v0, :cond_a3

    .line 708
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 709
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v1

    .line 710
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getHeight()I

    move-result v2

    .line 711
    const/4 v3, 0x0

    move v4, v3

    :goto_14
    iget v5, p0, Lmiui/widget/ScreenView;->Yv:I

    if-ge v4, v5, :cond_a3

    .line 712
    add-int v5, v4, v0

    invoke-virtual {p0, v5}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 713
    nop

    .line 715
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 716
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 717
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 718
    nop

    .line 719
    nop

    .line 720
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 721
    const/4 v10, -0x1

    if-eq v9, v10, :cond_85

    .line 722
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getLayoutDirection()I

    move-result v10

    invoke-static {v9, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    .line 724
    and-int/lit8 v9, v9, 0x70

    .line 726
    const/4 v11, 0x1

    if-eq v10, v11, :cond_55

    const/4 v11, 0x3

    if-eq v10, v11, :cond_52

    const/4 v11, 0x5

    if-eq v10, v11, :cond_4c

    .line 739
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_60

    .line 735
    :cond_4c
    sub-int v10, v1, v7

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v11

    .line 737
    goto :goto_60

    .line 728
    :cond_52
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 729
    goto :goto_60

    .line 731
    :cond_55
    sub-int v10, v1, v7

    div-int/lit8 v10, v10, 0x2

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v11

    .line 733
    nop

    .line 741
    :goto_60
    const/16 v11, 0x10

    if-eq v9, v11, :cond_79

    const/16 v11, 0x30

    if-eq v9, v11, :cond_76

    const/16 v11, 0x50

    if-eq v9, v11, :cond_6f

    .line 754
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_87

    .line 750
    :cond_6f
    sub-int v9, v2, v8

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v6, v9, v6

    .line 752
    goto :goto_87

    .line 743
    :cond_76
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 744
    goto :goto_87

    .line 746
    :cond_79
    sub-int v9, v2, v8

    div-int/lit8 v9, v9, 0x2

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v11

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v6, v9, v6

    .line 748
    goto :goto_87

    .line 757
    :cond_85
    move v6, v3

    move v10, v6

    :goto_87
    if-nez p2, :cond_9a

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    if-lez v9, :cond_9a

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    if-lez v9, :cond_9a

    .line 758
    int-to-float v6, p1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_9f

    .line 760
    :cond_9a
    add-int/2addr v7, v10

    add-int/2addr v8, v6

    invoke-virtual {v5, v10, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 711
    :goto_9f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_14

    .line 764
    :cond_a3
    return-void
.end method

.method private k(IZ)V
    .registers 4

    .line 847
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->l(IZ)I

    move-result p1

    .line 848
    iget-boolean p2, p0, Lmiui/widget/ScreenView;->YU:Z

    if-eqz p2, :cond_d

    .line 849
    iget p2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int p2, p1, p2

    sub-int/2addr p1, p2

    .line 851
    :cond_d
    iget p2, p0, Lmiui/widget/ScreenView;->YO:I

    iget v0, p0, Lmiui/widget/ScreenView;->YP:I

    invoke-virtual {p0, p2, v0}, Lmiui/widget/ScreenView;->measure(II)V

    .line 852
    iget p2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr p2, p1

    iget p1, p0, Lmiui/widget/ScreenView;->YL:I

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lmiui/widget/ScreenView;->scrollTo(II)V

    .line 853
    return-void
.end method

.method private l(IZ)I
    .registers 3

    .line 1364
    if-nez p2, :cond_d

    invoke-direct {p0}, Lmiui/widget/ScreenView;->fA()Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_d

    :cond_9
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->aF(I)I

    move-result p1

    :cond_d
    :goto_d
    return p1
.end method

.method private m(IZ)V
    .registers 7

    .line 1376
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->YU:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 1377
    nop

    .line 1378
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1379
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    goto :goto_2a

    .line 1381
    :cond_1a
    nop

    .line 1382
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1381
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1384
    :goto_2a
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->l(IZ)I

    move-result p1

    .line 1385
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->aG(I)V

    .line 1386
    iget-boolean p1, p0, Lmiui/widget/ScreenView;->Nt:Z

    if-nez p1, :cond_4a

    .line 1387
    iget-object p1, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_42

    .line 1388
    iget-object p1, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1390
    :cond_42
    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->k(IZ)V

    .line 1391
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    .line 1393
    :cond_4a
    return-void
.end method

.method private n(IZ)Landroid/view/View;
    .registers 4

    .line 1413
    if-ltz p1, :cond_12

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_12

    .line 1416
    :cond_9
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->l(IZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1414
    :cond_12
    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

.method private p(II)V
    .registers 8

    .line 1671
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_35

    .line 1672
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1673
    const/4 v1, 0x0

    if-ltz p1, :cond_20

    .line 1674
    move v2, v1

    :goto_c
    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v2, v3, :cond_20

    add-int v3, p1, v2

    if-ge v3, v0, :cond_20

    .line 1675
    iget-object v4, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v4, v3}, Lmiui/widget/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1674
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1680
    :cond_20
    :goto_20
    iget p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v1, p1, :cond_35

    add-int p1, p2, v1

    if-ge p1, v0, :cond_35

    .line 1681
    iget-object v2, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v2, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1680
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1684
    :cond_35
    return-void
.end method

.method private r(Landroid/view/View;)V
    .registers 12

    .line 1802
    instance-of v0, p1, Lmiui/widget/ScreenView$Indicator;

    if-eqz v0, :cond_5

    .line 1803
    return-void

    .line 1805
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1806
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1807
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 1808
    div-float v4, v0, v3

    .line 1809
    div-float v3, v1, v3

    .line 1810
    nop

    .line 1811
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v5, v2

    sub-float/2addr v5, v4

    div-float/2addr v5, v0

    .line 1813
    iget v2, p0, Lmiui/widget/ScreenView;->Zh:I

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x459c4000    # 5000.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_1cc

    goto/16 :goto_1ca

    .line 1928
    :pswitch_3a
    invoke-virtual {p0, p1, v5}, Lmiui/widget/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_1ca

    .line 1911
    :pswitch_3f
    cmpl-float v1, v5, v9

    if-eqz v1, :cond_7a

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_4c

    goto :goto_7a

    .line 1915
    :cond_4c
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v8, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1916
    mul-float/2addr v0, v5

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1917
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1918
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1919
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1920
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1921
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1922
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1923
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    .line 1924
    const/high16 v0, 0x42b40000    # 90.0f

    neg-float v1, v5

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1925
    invoke-direct {p0, p1, v7}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    .line 1926
    goto/16 :goto_1ca

    .line 1912
    :cond_7a
    :goto_7a
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1913
    goto/16 :goto_1ca

    .line 1893
    :pswitch_7f
    cmpg-float v2, v5, v9

    if-gtz v2, :cond_88

    .line 1894
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1895
    goto/16 :goto_1ca

    .line 1897
    :cond_88
    sub-float v2, v8, v5

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1898
    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    .line 1899
    sub-float/2addr v8, v3

    mul-float/2addr v0, v8

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1900
    mul-float/2addr v1, v8

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1901
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1902
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1903
    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    .line 1904
    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotY(F)V

    .line 1905
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1906
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    .line 1907
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    .line 1908
    iget v0, p0, Lmiui/widget/ScreenView;->Yu:F

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    .line 1909
    goto/16 :goto_1ca

    .line 1891
    :pswitch_c0
    goto/16 :goto_1ca

    .line 1872
    :pswitch_c2
    cmpl-float v1, v5, v9

    if-eqz v1, :cond_107

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_cf

    goto :goto_107

    .line 1876
    :cond_cf
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v8, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1877
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1878
    mul-float v1, v0, v5

    .line 1879
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v0, v2

    mul-float/2addr v0, v6

    sub-float/2addr v1, v0

    .line 1878
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1880
    mul-float/2addr v6, v5

    add-float/2addr v8, v6

    .line 1881
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1882
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1883
    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    .line 1884
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1885
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1886
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    .line 1887
    const/high16 v0, 0x42340000    # 45.0f

    neg-float v1, v5

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1888
    invoke-direct {p0, p1, v7}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    .line 1889
    goto/16 :goto_1ca

    .line 1873
    :cond_107
    :goto_107
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1874
    goto/16 :goto_1ca

    .line 1855
    :pswitch_10c
    cmpl-float v1, v5, v9

    if-eqz v1, :cond_144

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_119

    goto :goto_144

    .line 1859
    :cond_119
    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1860
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1861
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1862
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1863
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1864
    cmpg-float v1, v5, v9

    if-gez v1, :cond_12d

    move v0, v9

    :cond_12d
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1865
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1866
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1867
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    .line 1868
    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr v0, v5

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1869
    invoke-direct {p0, p1, v7}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    .line 1870
    goto/16 :goto_1ca

    .line 1856
    :cond_144
    :goto_144
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1857
    goto/16 :goto_1ca

    .line 1838
    :pswitch_149
    cmpl-float v0, v5, v9

    if-eqz v0, :cond_17e

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_156

    goto :goto_17e

    .line 1842
    :cond_156
    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1843
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1844
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1845
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1846
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1847
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1848
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1849
    neg-float v0, v5

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1850
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    .line 1851
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    .line 1852
    iget v0, p0, Lmiui/widget/ScreenView;->Yu:F

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    .line 1853
    goto :goto_1ca

    .line 1839
    :cond_17e
    :goto_17e
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1840
    goto :goto_1ca

    .line 1821
    :pswitch_182
    cmpl-float v0, v5, v9

    if-eqz v0, :cond_1be

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_18f

    goto :goto_1be

    .line 1825
    :cond_18f
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v8, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1826
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1827
    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1828
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1829
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1830
    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    .line 1831
    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotY(F)V

    .line 1832
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1833
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    .line 1834
    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    .line 1835
    iget v0, p0, Lmiui/widget/ScreenView;->Yu:F

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    .line 1836
    goto :goto_1ca

    .line 1822
    :cond_1be
    :goto_1be
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1823
    goto :goto_1ca

    .line 1818
    :pswitch_1c2
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1819
    goto :goto_1ca

    .line 1815
    :pswitch_1c6
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1816
    nop

    .line 1931
    :goto_1ca
    return-void

    nop

    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_1c6
        :pswitch_1c2
        :pswitch_182
        :pswitch_149
        :pswitch_10c
        :pswitch_c2
        :pswitch_c0
        :pswitch_7f
        :pswitch_3f
        :pswitch_3a
    .end packed-switch
.end method


# virtual methods
.method protected addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    .line 1526
    iget v0, p0, Lmiui/widget/ScreenView;->Yv:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->Yv:I

    .line 1527
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1528
    return-void
.end method

.method protected addIndicatorAt(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;I)V
    .registers 5

    .line 1540
    iget v0, p0, Lmiui/widget/ScreenView;->Yv:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, -0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1541
    if-ltz p3, :cond_12

    .line 1542
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/2addr p3, v0

    .line 1544
    :cond_12
    iget v0, p0, Lmiui/widget/ScreenView;->Yv:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->Yv:I

    .line 1545
    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1546
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    .line 1439
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1440
    invoke-direct {p0}, Lmiui/widget/ScreenView;->fA()Z

    move-result v1

    .line 1441
    nop

    .line 1442
    const/4 v2, 0x0

    if-gez p2, :cond_10

    .line 1443
    if-eqz v1, :cond_f

    .line 1444
    nop

    .line 1446
    :cond_f
    goto :goto_18

    .line 1448
    :cond_10
    if-eqz v1, :cond_14

    .line 1449
    sub-int v2, v0, p2

    .line 1451
    :cond_14
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1453
    :goto_18
    if-eqz v1, :cond_1b

    .line 1454
    move v0, v2

    :cond_1b
    iget-object p2, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz p2, :cond_2a

    .line 1455
    iget-object p2, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->fF()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lmiui/widget/ScreenView;->Yj:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, v1, v0, v2}, Lmiui/widget/ScreenView$SeekBarIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1457
    :cond_2a
    iget p2, p0, Lmiui/widget/ScreenView;->YW:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lmiui/widget/ScreenView;->YW:I

    .line 1458
    invoke-direct {p0}, Lmiui/widget/ScreenView;->fE()V

    .line 1459
    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1460
    return-void
.end method

.method public allowLongPress()Z
    .registers 2

    .line 1627
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Zb:Z

    return v0
.end method

.method public computeScroll()V
    .registers 7

    .line 865
    iget-object v0, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x4e6e6b28    # 1.0E9f

    if-eqz v0, :cond_34

    .line 866
    iget-object v0, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->Zd:F

    .line 867
    sget-object v0, Lmiui/widget/ScreenView;->js:Lcom/miui/internal/variable/Android_View_View_class;

    iget v3, p0, Lmiui/widget/ScreenView;->Zd:F

    float-to-int v3, v3

    invoke-virtual {v0, p0, v3}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollXDirectly(Landroid/view/View;I)V

    .line 868
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v0, v3

    div-float/2addr v0, v2

    iput v0, p0, Lmiui/widget/ScreenView;->Zc:F

    .line 869
    sget-object v0, Lmiui/widget/ScreenView;->js:Lcom/miui/internal/variable/Android_View_View_class;

    iget-object v2, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, p0, v2}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollYDirectly(Landroid/view/View;I)V

    .line 870
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->postInvalidateOnAnimation()V

    goto :goto_98

    .line 871
    :cond_34
    iget v0, p0, Lmiui/widget/ScreenView;->YQ:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_5b

    .line 872
    iget v0, p0, Lmiui/widget/ScreenView;->YQ:I

    .line 873
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 872
    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->aG(I)V

    .line 874
    iput v4, p0, Lmiui/widget/ScreenView;->YQ:I

    .line 875
    iget-object v0, p0, Lmiui/widget/ScreenView;->Zj:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v0, :cond_98

    .line 876
    iget-object v0, p0, Lmiui/widget/ScreenView;->Zj:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    invoke-interface {v0, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapEnd(Lmiui/widget/ScreenView;)V

    .line 877
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView;->Zj:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    goto :goto_98

    .line 879
    :cond_5b
    iget v0, p0, Lmiui/widget/ScreenView;->YY:I

    if-ne v0, v3, :cond_98

    .line 880
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v0, v3

    div-float/2addr v0, v2

    .line 881
    iget v2, p0, Lmiui/widget/ScreenView;->Zc:F

    sub-float v2, v0, v2

    sget v3, Lmiui/widget/ScreenView;->Yp:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 882
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 883
    iget v3, p0, Lmiui/widget/ScreenView;->Zd:F

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 884
    sget-object v4, Lmiui/widget/ScreenView;->js:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v3

    add-float/2addr v5, v2

    float-to-int v2, v5

    invoke-virtual {v4, p0, v2}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollXDirectly(Landroid/view/View;I)V

    .line 885
    iput v0, p0, Lmiui/widget/ScreenView;->Zc:F

    .line 887
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v3, v0

    if-gtz v0, :cond_95

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_98

    .line 888
    :cond_95
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->postInvalidate()V

    .line 891
    :cond_98
    :goto_98
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->j(IZ)V

    .line 892
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->aB(I)V

    .line 893
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->aC(I)V

    .line 894
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 7

    .line 1033
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-ne p2, v2, :cond_11

    .line 1034
    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v2, :cond_25

    .line 1035
    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    .line 1036
    return v1

    .line 1038
    :cond_11
    const/16 v2, 0x42

    if-ne p2, v2, :cond_25

    .line 1039
    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_25

    .line 1040
    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    add-int/2addr p1, v1

    invoke-virtual {p0, p1, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    .line 1041
    return v1

    .line 1044
    :cond_25
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 5

    .line 1013
    invoke-direct {p0, p2}, Lmiui/widget/ScreenView;->r(Landroid/view/View;)V

    .line 1014
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected finishCurrentGesture()V
    .registers 3

    .line 1965
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ScreenView;->Za:Z

    .line 1966
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    .line 1967
    return-void
.end method

.method public getCurrentScreen()Landroid/view/View;
    .registers 3

    .line 1353
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->n(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenIndex()I
    .registers 3

    .line 1339
    iget v0, p0, Lmiui/widget/ScreenView;->YQ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1340
    iget v0, p0, Lmiui/widget/ScreenView;->YQ:I

    goto :goto_a

    .line 1342
    :cond_8
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    .line 1344
    :goto_a
    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->aE(I)I

    move-result v0

    return v0
.end method

.method public getScreen(I)Landroid/view/View;
    .registers 3

    .line 1409
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->n(IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getScreenCount()I
    .registers 2

    .line 1329
    iget v0, p0, Lmiui/widget/ScreenView;->YW:I

    return v0
.end method

.method public getScreenTransitionType()I
    .registers 2

    .line 1713
    iget v0, p0, Lmiui/widget/ScreenView;->Zh:I

    return v0
.end method

.method public getSeekPointView(I)Landroid/widget/ImageView;
    .registers 4

    .line 1660
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->l(IZ)I

    move-result p1

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method

.method protected getTouchState()I
    .registers 2

    .line 1049
    iget v0, p0, Lmiui/widget/ScreenView;->YY:I

    return v0
.end method

.method public getVisibleRange()I
    .registers 2

    .line 1428
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 898
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 899
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->computeScroll()V

    .line 900
    invoke-direct {p0}, Lmiui/widget/ScreenView;->fB()V

    .line 901
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1086
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_6e

    goto :goto_51

    .line 1088
    :pswitch_d
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->e(Landroid/view/MotionEvent;)V

    .line 1089
    iget v0, p0, Lmiui/widget/ScreenView;->YY:I

    if-nez v0, :cond_51

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1090
    invoke-direct {p0, p1, v2}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    goto :goto_51

    .line 1118
    :pswitch_1e
    invoke-direct {p0, p1, v3}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    goto :goto_51

    .line 1095
    :pswitch_22
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1096
    iget-object v0, p0, Lmiui/widget/ScreenView;->YX:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1097
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1098
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->Za:Z

    .line 1099
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->YZ:Z

    .line 1101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    .line 1103
    iget-object v0, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1104
    iput-boolean v2, p0, Lmiui/widget/ScreenView;->Zb:Z

    goto :goto_51

    .line 1111
    :cond_48
    iget-object v0, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1112
    invoke-direct {p0, p1, v2}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    .line 1114
    nop

    .line 1121
    :cond_51
    :goto_51
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    if-eq v0, v4, :cond_5d

    .line 1123
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->e(Landroid/view/MotionEvent;)V

    .line 1125
    :cond_5d
    iget-boolean p1, p0, Lmiui/widget/ScreenView;->Za:Z

    if-nez p1, :cond_6c

    iget p1, p0, Lmiui/widget/ScreenView;->YY:I

    if-eqz p1, :cond_6a

    iget p1, p0, Lmiui/widget/ScreenView;->YY:I

    if-eq p1, v1, :cond_6a

    goto :goto_6c

    :cond_6a
    move v2, v3

    nop

    :cond_6c
    :goto_6c
    return v2

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1e
        :pswitch_d
        :pswitch_1e
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    .line 986
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->j(IZ)V

    .line 988
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result p1

    .line 989
    nop

    .line 990
    const/4 p3, 0x0

    move p4, p3

    :goto_f
    if-ge p3, p1, :cond_41

    .line 991
    invoke-virtual {p0, p3}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 992
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3e

    .line 993
    nop

    .line 995
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->YI:I

    add-int/2addr v0, v1

    .line 996
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p4

    .line 997
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView;->YI:I

    add-int/2addr v2, v3

    .line 998
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 993
    invoke-virtual {p5, p4, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 999
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    .line 990
    :cond_3e
    add-int/lit8 p3, p3, 0x1

    goto :goto_f

    .line 1002
    :cond_41
    iget-boolean p1, p0, Lmiui/widget/ScreenView;->YU:Z

    if-eqz p1, :cond_58

    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget p3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr p1, p3

    if-lez p1, :cond_58

    .line 1003
    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget p3, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget p4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr p3, p4

    sub-int/2addr p1, p3

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->m(IZ)V

    goto :goto_67

    .line 1004
    :cond_58
    iget p1, p0, Lmiui/widget/ScreenView;->YM:I

    if-lez p1, :cond_67

    iget p1, p0, Lmiui/widget/ScreenView;->YM:I

    iget p3, p0, Lmiui/widget/ScreenView;->YN:I

    if-eq p1, p3, :cond_67

    .line 1006
    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->m(IZ)V

    .line 1008
    :cond_67
    :goto_67
    iget p1, p0, Lmiui/widget/ScreenView;->YN:I

    iput p1, p0, Lmiui/widget/ScreenView;->YM:I

    .line 1009
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15

    .line 913
    iput p1, p0, Lmiui/widget/ScreenView;->YO:I

    .line 914
    iput p2, p0, Lmiui/widget/ScreenView;->YP:I

    .line 915
    nop

    .line 916
    nop

    .line 917
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 919
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_e
    iget v5, p0, Lmiui/widget/ScreenView;->Yv:I

    if-ge v2, v5, :cond_58

    .line 920
    add-int v5, v2, v0

    invoke-virtual {p0, v5}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 921
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 922
    nop

    .line 924
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 922
    invoke-static {p1, v7, v8}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v7

    .line 925
    nop

    .line 927
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v8

    iget v9, p0, Lmiui/widget/ScreenView;->YI:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lmiui/widget/ScreenView;->YJ:I

    add-int/2addr v8, v9

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 925
    invoke-static {p2, v8, v6}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v6

    .line 930
    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    .line 931
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 932
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 919
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 935
    :cond_58
    nop

    .line 936
    nop

    .line 937
    move v2, v1

    move v5, v2

    move v6, v5

    :goto_5d
    if-ge v2, v0, :cond_a4

    .line 938
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 939
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 940
    nop

    .line 942
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 940
    invoke-static {p1, v9, v10}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v9

    .line 943
    nop

    .line 945
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v10

    iget v11, p0, Lmiui/widget/ScreenView;->YI:I

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->YJ:I

    add-int/2addr v10, v11

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 943
    invoke-static {p2, v10, v8}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v8

    .line 948
    invoke-virtual {v7, v9, v8}, Landroid/view/View;->measure(II)V

    .line 949
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 950
    nop

    .line 951
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 937
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 953
    :cond_a4
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 954
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 956
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    .line 957
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v4

    iget v6, p0, Lmiui/widget/ScreenView;->YI:I

    add-int/2addr v4, v6

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, p0, Lmiui/widget/ScreenView;->YJ:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    .line 959
    nop

    .line 960
    invoke-static {v2, p1}, Lmiui/widget/ScreenView;->resolveSize(II)I

    move-result v2

    .line 961
    invoke-static {v3, p2}, Lmiui/widget/ScreenView;->resolveSize(II)I

    move-result p2

    .line 959
    invoke-virtual {p0, v2, p2}, Lmiui/widget/ScreenView;->setMeasuredDimension(II)V

    .line 962
    const/4 p2, 0x1

    if-lez v0, :cond_106

    .line 963
    iput v5, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    .line 964
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    .line 965
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lmiui/widget/ScreenView;->YN:I

    .line 966
    invoke-direct {p0}, Lmiui/widget/ScreenView;->fD()V

    .line 967
    iget p1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez p1, :cond_101

    .line 968
    iget p1, p0, Lmiui/widget/ScreenView;->YN:I

    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v0, v0

    iget v2, p0, Lmiui/widget/ScreenView;->YV:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr p1, v0

    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr p1, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 972
    :cond_101
    iget p1, p0, Lmiui/widget/ScreenView;->YT:F

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setOverScrollRatio(F)V

    .line 974
    :cond_106
    iget-boolean p1, p0, Lmiui/widget/ScreenView;->Nt:Z

    if-eqz p1, :cond_11b

    iget p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-lez p1, :cond_11b

    .line 975
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->Nt:Z

    .line 976
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 978
    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 979
    invoke-virtual {p0, p2}, Lmiui/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 981
    :cond_11b
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1698
    iget-object v0, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1699
    iget-object v0, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    .line 1700
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    .line 1699
    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->m(IZ)V

    .line 1702
    iget-object v0, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1704
    :cond_25
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    .line 1950
    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    .line 1959
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1977
    check-cast p1, Lmiui/widget/ScreenView$SavedState;

    .line 1978
    invoke-virtual {p1}, Lmiui/widget/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1979
    iget v0, p1, Lmiui/widget/ScreenView$SavedState;->Zq:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 1980
    iget p1, p1, Lmiui/widget/ScreenView$SavedState;->Zq:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->m(IZ)V

    .line 1982
    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 1691
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1970
    new-instance v0, Lmiui/widget/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1971
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iput v1, v0, Lmiui/widget/ScreenView$SavedState;->Zq:I

    .line 1972
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1147
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Za:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1148
    return v1

    .line 1150
    :cond_6
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->YZ:Z

    if-eqz v0, :cond_d

    .line 1151
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->e(Landroid/view/MotionEvent;)V

    .line 1153
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6a

    packed-switch v0, :pswitch_data_98

    goto/16 :goto_95

    .line 1157
    :pswitch_1c
    iget v0, p0, Lmiui/widget/ScreenView;->YY:I

    if-nez v0, :cond_29

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1158
    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    .line 1160
    :cond_29
    iget v0, p0, Lmiui/widget/ScreenView;->YY:I

    if-ne v0, v1, :cond_95

    .line 1162
    iget v0, p0, Lmiui/widget/ScreenView;->qE:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1163
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3f

    .line 1164
    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    .line 1165
    iget v0, p0, Lmiui/widget/ScreenView;->qE:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1167
    :cond_3f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 1168
    iget v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 1169
    iput p1, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1170
    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_58

    .line 1171
    iget p1, p0, Lmiui/widget/ScreenView;->Zd:F

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lmiui/widget/ScreenView;->scrollTo(II)V

    goto :goto_5b

    .line 1173
    :cond_58
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->awakenScrollBars()Z

    .line 1175
    :goto_5b
    goto :goto_95

    .line 1179
    :pswitch_5c
    iget v0, p0, Lmiui/widget/ScreenView;->YY:I

    if-ne v0, v1, :cond_65

    .line 1180
    iget v0, p0, Lmiui/widget/ScreenView;->qE:I

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->aD(I)V

    .line 1182
    :cond_65
    invoke-direct {p0, p1, v3}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    .line 1183
    goto :goto_95

    .line 1155
    :pswitch_69
    goto :goto_95

    .line 1185
    :cond_6a
    nop

    .line 1186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    .line 1188
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1189
    iget v4, p0, Lmiui/widget/ScreenView;->qE:I

    if-ne v2, v4, :cond_95

    .line 1193
    if-nez v0, :cond_81

    .line 1194
    move v3, v1

    goto :goto_82

    .line 1193
    :cond_81
    nop

    .line 1194
    :goto_82
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1195
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView;->qE:I

    .line 1196
    iget-object p1, p0, Lmiui/widget/ScreenView;->Zk:Lmiui/widget/ScreenView$GestureVelocityTracker;

    iget v0, p0, Lmiui/widget/ScreenView;->qE:I

    invoke-virtual {p1, v0}, Lmiui/widget/ScreenView$GestureVelocityTracker;->init(I)V

    .line 1200
    :cond_95
    :goto_95
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->YZ:Z

    .line 1201
    return v1

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_69
        :pswitch_5c
        :pswitch_1c
        :pswitch_5c
    .end packed-switch
.end method

.method public removeAllScreens()V
    .registers 3

    .line 1598
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lmiui/widget/ScreenView;->removeScreensInLayout(II)V

    .line 1599
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 1600
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    .line 1601
    return-void
.end method

.method public removeAllViewsInLayout()V
    .registers 2

    .line 1514
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->Yv:I

    iput v0, p0, Lmiui/widget/ScreenView;->YW:I

    .line 1515
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1516
    return-void
.end method

.method protected removeIndicator(Landroid/view/View;)V
    .registers 3

    .line 1555
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 1556
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_14

    .line 1560
    iget v0, p0, Lmiui/widget/ScreenView;->Yv:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->Yv:I

    .line 1561
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1562
    return-void

    .line 1557
    :cond_14
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "The view passed through the parameter must be indicator."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeScreen(I)V
    .registers 6

    .line 1571
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_3c

    .line 1575
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->l(IZ)I

    move-result v1

    .line 1576
    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2a

    .line 1577
    iget-boolean v2, p0, Lmiui/widget/ScreenView;->YU:Z

    if-nez v2, :cond_1d

    .line 1578
    const/4 p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1, v3}, Lmiui/widget/ScreenView;->m(IZ)V

    goto :goto_2a

    .line 1581
    :cond_1d
    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_2a

    .line 1583
    sub-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    .line 1587
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz p1, :cond_33

    .line 1588
    iget-object p1, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p1, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;->removeViewAt(I)V

    .line 1590
    :cond_33
    iget p1, p0, Lmiui/widget/ScreenView;->YW:I

    sub-int/2addr p1, v3

    iput p1, p0, Lmiui/widget/ScreenView;->YW:I

    .line 1591
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1592
    return-void

    .line 1572
    :cond_3c
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "The view specified by the index must be a screen."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeScreensInLayout(II)V
    .registers 5

    .line 1611
    invoke-direct {p0}, Lmiui/widget/ScreenView;->fA()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->l(IZ)I

    move-result p1

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    .line 1612
    :cond_e
    if-ltz p1, :cond_2f

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_17

    goto :goto_2f

    .line 1615
    :cond_17
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1616
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_29

    .line 1617
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/ScreenView$SeekBarIndicator;->removeViewsInLayout(II)V

    .line 1619
    :cond_29
    iput v1, p0, Lmiui/widget/ScreenView;->YW:I

    .line 1620
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 1621
    return-void

    .line 1613
    :cond_2f
    :goto_2f
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    .line 1468
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeViewAt(I)V
    .registers 3

    .line 1498
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 3

    .line 1478
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeViews(II)V
    .registers 3

    .line 1508
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeViewsInLayout(II)V
    .registers 3

    .line 1488
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    .line 1020
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1021
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1022
    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-ne v0, p1, :cond_19

    iget-object p1, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_19

    .line 1026
    :cond_17
    const/4 p1, 0x0

    return p1

    .line 1023
    :cond_19
    :goto_19
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    .line 1024
    const/4 p1, 0x1

    return p1

    .line 1028
    :cond_1e
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method protected resetTransformation(Landroid/view/View;)V
    .registers 4

    .line 1783
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1784
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1785
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1786
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1787
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1788
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1789
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1790
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 1791
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1792
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1793
    iget v0, p0, Lmiui/widget/ScreenView;->Yu:F

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    .line 1794
    return-void
.end method

.method public scrollTo(II)V
    .registers 5

    .line 857
    iget v0, p0, Lmiui/widget/ScreenView;->YS:I

    iget v1, p0, Lmiui/widget/ScreenView;->YR:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 858
    int-to-float p1, p1

    iput p1, p0, Lmiui/widget/ScreenView;->Zd:F

    .line 859
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float p1, v0

    const v0, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, v0

    iput p1, p0, Lmiui/widget/ScreenView;->Zc:F

    .line 860
    iget p1, p0, Lmiui/widget/ScreenView;->Zd:F

    float-to-int p1, p1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 861
    return-void
.end method

.method public scrollToScreen(I)V
    .registers 3

    .line 843
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->k(IZ)V

    .line 844
    return-void
.end method

.method public setAllowLongPress(Z)V
    .registers 2

    .line 1635
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->Zb:Z

    .line 1636
    return-void
.end method

.method public setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V
    .registers 8

    .line 448
    if-eqz p1, :cond_68

    .line 451
    iget-object v0, p0, Lmiui/widget/ScreenView;->YB:Lmiui/widget/ScreenView$ArrowIndicator;

    if-nez v0, :cond_44

    .line 452
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x13

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 456
    new-instance v1, Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lmiui/widget/ScreenView$ArrowIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->YB:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 457
    iget-object v1, p0, Lmiui/widget/ScreenView;->YB:Lmiui/widget/ScreenView$ArrowIndicator;

    iget v3, p0, Lmiui/widget/ScreenView;->Yw:I

    invoke-virtual {v1, v3}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 458
    iget-object v1, p0, Lmiui/widget/ScreenView;->YB:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v1, v0}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 459
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 463
    new-instance v2, Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$ArrowIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/ScreenView;->YC:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 464
    iget-object v2, p0, Lmiui/widget/ScreenView;->YC:Lmiui/widget/ScreenView$ArrowIndicator;

    iget v3, p0, Lmiui/widget/ScreenView;->Yy:I

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 465
    iget-object v2, p0, Lmiui/widget/ScreenView;->YC:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2, v1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_54

    .line 467
    :cond_44
    iget-object v0, p0, Lmiui/widget/ScreenView;->YB:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 468
    invoke-virtual {v0}, Lmiui/widget/ScreenView$ArrowIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 469
    iget-object v1, p0, Lmiui/widget/ScreenView;->YC:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 470
    invoke-virtual {v1}, Lmiui/widget/ScreenView$ArrowIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 472
    :goto_54
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 473
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 474
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 475
    invoke-virtual {v1, v5, v0, v2, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 476
    goto :goto_7b

    :cond_68
    iget-object p1, p0, Lmiui/widget/ScreenView;->YB:Lmiui/widget/ScreenView$ArrowIndicator;

    if-eqz p1, :cond_7b

    .line 477
    iget-object p1, p0, Lmiui/widget/ScreenView;->YB:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 478
    iget-object p1, p0, Lmiui/widget/ScreenView;->YC:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 479
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/ScreenView;->YB:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 480
    iput-object p1, p0, Lmiui/widget/ScreenView;->YC:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 482
    :cond_7b
    :goto_7b
    return-void
.end method

.method public setArrowIndicatorResource(IIII)V
    .registers 5

    .line 496
    iput p1, p0, Lmiui/widget/ScreenView;->Yw:I

    .line 497
    iput p2, p0, Lmiui/widget/ScreenView;->Yx:I

    .line 498
    iput p3, p0, Lmiui/widget/ScreenView;->Yy:I

    .line 499
    iput p4, p0, Lmiui/widget/ScreenView;->Yz:I

    .line 500
    return-void
.end method

.method public setConfirmHorizontalScrollRatio(F)V
    .registers 2

    .line 392
    iput p1, p0, Lmiui/widget/ScreenView;->Ze:F

    .line 393
    return-void
.end method

.method public setCurrentScreen(I)V
    .registers 3

    .line 1360
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->m(IZ)V

    .line 1361
    return-void
.end method

.method public setIndicatorBarVisibility(I)V
    .registers 2

    .line 612
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    .line 613
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSlideBarVisibility(I)V

    .line 614
    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .registers 2

    .line 411
    iput p1, p0, Lmiui/widget/ScreenView;->qJ:I

    .line 412
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5

    .line 1646
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1647
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 1648
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1647
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1650
    :cond_11
    return-void
.end method

.method public setOverScrollRatio(F)V
    .registers 2

    .line 809
    iput p1, p0, Lmiui/widget/ScreenView;->YT:F

    .line 810
    invoke-direct {p0}, Lmiui/widget/ScreenView;->fE()V

    .line 811
    return-void
.end method

.method public setOvershootTension(F)V
    .registers 3

    .line 369
    iput p1, p0, Lmiui/widget/ScreenView;->Zi:F

    .line 370
    iget-object v0, p0, Lmiui/widget/ScreenView;->Zg:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    if-eqz v0, :cond_b

    .line 371
    iget-object v0, p0, Lmiui/widget/ScreenView;->Zg:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-static {v0, p1}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->a(Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;F)F

    .line 373
    :cond_b
    return-void
.end method

.method public setScreenAlignment(I)V
    .registers 2

    .line 671
    iput p1, p0, Lmiui/widget/ScreenView;->YK:I

    .line 672
    return-void
.end method

.method public setScreenOffset(I)V
    .registers 2

    .line 683
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    .line 684
    const/4 p1, 0x0

    iput p1, p0, Lmiui/widget/ScreenView;->YK:I

    .line 685
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 686
    return-void
.end method

.method public setScreenPadding(Landroid/graphics/Rect;)V
    .registers 4

    .line 652
    if-eqz p1, :cond_13

    .line 656
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lmiui/widget/ScreenView;->YI:I

    .line 657
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lmiui/widget/ScreenView;->YJ:I

    .line 658
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Lmiui/widget/ScreenView;->setPadding(IIII)V

    .line 659
    return-void

    .line 653
    :cond_13
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "The padding parameter can not be null."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScreenSnapDuration(I)V
    .registers 2

    .line 401
    iput p1, p0, Lmiui/widget/ScreenView;->Zf:I

    .line 402
    return-void
.end method

.method public setScreenTransitionType(I)V
    .registers 7

    .line 1732
    iget v0, p0, Lmiui/widget/ScreenView;->Zh:I

    if-eq p1, v0, :cond_48

    .line 1733
    iput p1, p0, Lmiui/widget/ScreenView;->Zh:I

    .line 1734
    iget p1, p0, Lmiui/widget/ScreenView;->Zh:I

    const/16 v0, 0x12c

    const/16 v1, 0x10e

    const/16 v2, 0x14a

    const v3, 0x3fa66666    # 1.3f

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_4a

    goto :goto_48

    .line 1767
    :pswitch_16
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1768
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    .line 1770
    goto :goto_48

    .line 1762
    :pswitch_1d
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1763
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    .line 1765
    goto :goto_48

    .line 1760
    :pswitch_24
    goto :goto_48

    .line 1755
    :pswitch_25
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1756
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    .line 1758
    goto :goto_48

    .line 1750
    :pswitch_2c
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1751
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    .line 1753
    goto :goto_48

    .line 1746
    :pswitch_33
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1747
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    .line 1748
    goto :goto_48

    .line 1741
    :pswitch_3a
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1742
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    .line 1744
    goto :goto_48

    .line 1736
    :pswitch_41
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1737
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    .line 1738
    nop

    .line 1775
    :cond_48
    :goto_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3a
        :pswitch_3a
        :pswitch_33
        :pswitch_2c
        :pswitch_25
        :pswitch_24
        :pswitch_1d
        :pswitch_16
    .end packed-switch
.end method

.method public setScrollWholeScreen(Z)V
    .registers 2

    .line 421
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->YU:Z

    .line 422
    return-void
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 6

    .line 517
    if-eqz p1, :cond_51

    .line 518
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-nez v0, :cond_3d

    .line 519
    new-instance v0, Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    .line 520
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setLayoutDirection(I)V

    .line 521
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lmiui/widget/ScreenView$SeekBarIndicator;->setGravity(I)V

    .line 522
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setAnimationCacheEnabled(Z)V

    .line 523
    :goto_23
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_37

    .line 524
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->fF()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lmiui/widget/ScreenView;->Yj:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Lmiui/widget/ScreenView$SeekBarIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 526
    :cond_37
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_5d

    .line 528
    :cond_3d
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$SeekBarIndicator;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 529
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5d

    .line 531
    :cond_4b
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_5d

    .line 534
    :cond_51
    iget-object p1, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz p1, :cond_5d

    .line 535
    iget-object p1, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 536
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    .line 538
    :cond_5d
    :goto_5d
    return-void
.end method

.method public setSeekBarVisibility(I)V
    .registers 3

    .line 625
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-nez v0, :cond_5

    .line 626
    return-void

    .line 628
    :cond_5
    iget-object v0, p0, Lmiui/widget/ScreenView;->YD:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setVisibility(I)V

    .line 629
    return-void
.end method

.method public setSeekPointResource(I)V
    .registers 2

    .line 507
    iput p1, p0, Lmiui/widget/ScreenView;->YA:I

    .line 508
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 5

    .line 547
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_slide_bar:I

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_slide_bar_bg:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/widget/ScreenView;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V

    .line 549
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V
    .registers 7

    .line 559
    iput-boolean p4, p0, Lmiui/widget/ScreenView;->YG:Z

    .line 560
    const/4 p4, 0x0

    if-eqz p1, :cond_30

    .line 561
    iget-object v0, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    if-nez v0, :cond_2a

    .line 562
    new-instance v0, Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p3}, Lmiui/widget/ScreenView$SlideBar;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;II)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    .line 564
    iget-object p2, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    new-instance p3, Lmiui/widget/ScreenView$SliderTouchListener;

    invoke-direct {p3, p0, p4}, Lmiui/widget/ScreenView$SliderTouchListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-virtual {p2, p3}, Lmiui/widget/ScreenView$SlideBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 565
    iget-object p2, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lmiui/widget/ScreenView$SlideBar;->setAnimationCacheEnabled(Z)V

    .line 566
    iget-object p2, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0, p2, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_3b

    .line 568
    :cond_2a
    iget-object p2, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p2, p1}, Lmiui/widget/ScreenView$SlideBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3b

    .line 570
    :cond_30
    iget-object p1, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    if-eqz p1, :cond_3b

    .line 571
    iget-object p1, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 572
    iput-object p4, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    .line 574
    :cond_3b
    :goto_3b
    return-void
.end method

.method public setSlideBarVisibility(I)V
    .registers 3

    .line 640
    iget-object v0, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    if-nez v0, :cond_5

    .line 641
    return-void

    .line 643
    :cond_5
    iget-object v0, p0, Lmiui/widget/ScreenView;->YF:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SlideBar;->setVisibility(I)V

    .line 644
    return-void
.end method

.method public setTouchSlop(I)V
    .registers 2

    .line 382
    iput p1, p0, Lmiui/widget/ScreenView;->fE:I

    .line 383
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 905
    if-nez p1, :cond_5

    .line 906
    invoke-direct {p0}, Lmiui/widget/ScreenView;->fB()V

    .line 908
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 909
    return-void
.end method

.method public setVisibleExtentionRatio(F)V
    .registers 2

    .line 820
    iput p1, p0, Lmiui/widget/ScreenView;->YV:F

    .line 821
    return-void
.end method

.method protected snapByVelocity(II)V
    .registers 6

    .line 1222
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v1, :cond_10

    .line 1223
    iget p2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr p2, v1

    invoke-virtual {p0, p2, p1, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_46

    .line 1224
    :cond_10
    const/4 v1, 0x2

    if-ne p2, v1, :cond_25

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    .line 1225
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_25

    .line 1226
    iget p2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    add-int/2addr p2, v1

    invoke-virtual {p0, p2, p1, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_46

    .line 1227
    :cond_25
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2e

    .line 1228
    iget p2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, p2, p1, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_46

    .line 1230
    :cond_2e
    iget p1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    iget-boolean p2, p0, Lmiui/widget/ScreenView;->YU:Z

    if-eqz p2, :cond_37

    .line 1231
    iget p2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    goto :goto_38

    :cond_37
    move p2, v0

    :goto_38
    mul-int/2addr p1, p2

    .line 1232
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result p2

    shr-int/2addr p1, v0

    add-int/2addr p2, p1

    iget p1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr p2, p1

    .line 1234
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    .line 1236
    :goto_46
    return-void
.end method

.method public snapToScreen(I)V
    .registers 3

    .line 1244
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->l(IZ)I

    move-result p1

    invoke-virtual {p0, p1, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    .line 1245
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .registers 5

    .line 1320
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    .line 1321
    return-void
.end method

.method protected snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .registers 14

    .line 1268
    iget v0, p0, Lmiui/widget/ScreenView;->YN:I

    if-gtz v0, :cond_5

    .line 1269
    return-void

    .line 1271
    :cond_5
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->YU:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    .line 1272
    nop

    .line 1273
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView;->YQ:I

    .line 1274
    iget p1, p0, Lmiui/widget/ScreenView;->YQ:I

    iget v0, p0, Lmiui/widget/ScreenView;->YQ:I

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lmiui/widget/ScreenView;->YQ:I

    goto :goto_38

    .line 1276
    :cond_26
    nop

    .line 1277
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1276
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView;->YQ:I

    .line 1279
    :goto_38
    iget p1, p0, Lmiui/widget/ScreenView;->YQ:I

    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr p1, v0

    .line 1280
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1281
    iget-object v0, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1282
    iget-object v0, p0, Lmiui/widget/ScreenView;->Zj:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v0, :cond_56

    .line 1283
    iget-object v0, p0, Lmiui/widget/ScreenView;->Zj:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    invoke-interface {v0, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapCancelled(Lmiui/widget/ScreenView;)V

    .line 1285
    :cond_56
    iget-object v0, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1287
    :cond_5b
    iput-object p4, p0, Lmiui/widget/ScreenView;->Zj:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    .line 1288
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1289
    if-eqz p3, :cond_69

    .line 1290
    iget-object p3, p0, Lmiui/widget/ScreenView;->Zg:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {p3, p1, p2}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->q(II)V

    goto :goto_6e

    .line 1292
    :cond_69
    iget-object p3, p0, Lmiui/widget/ScreenView;->Zg:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {p3}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->fH()V

    .line 1294
    :goto_6e
    iget p3, p0, Lmiui/widget/ScreenView;->YQ:I

    iget p4, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr p3, p4

    iget p4, p0, Lmiui/widget/ScreenView;->YL:I

    sub-int/2addr p3, p4

    .line 1295
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result p4

    sub-int v6, p3, p4

    .line 1296
    if-nez v6, :cond_7f

    .line 1297
    return-void

    .line 1299
    :cond_7f
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p4, p0, Lmiui/widget/ScreenView;->Zf:I

    mul-int/2addr p3, p4

    iget p4, p0, Lmiui/widget/ScreenView;->YN:I

    div-int/2addr p3, p4

    .line 1300
    if-lez p2, :cond_98

    .line 1301
    int-to-float p4, p3

    int-to-float p2, p2

    const v0, 0x451c4000    # 2500.0f

    div-float/2addr p2, v0

    div-float/2addr p4, p2

    const p2, 0x3ecccccd    # 0.4f

    mul-float/2addr p4, p2

    float-to-int p2, p4

    add-int/2addr p3, p2

    .line 1304
    :cond_98
    iget p2, p0, Lmiui/widget/ScreenView;->Zf:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1305
    if-gt p1, v2, :cond_aa

    .line 1306
    iget p1, p0, Lmiui/widget/ScreenView;->Zf:I

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1308
    move v8, p1

    goto :goto_ab

    :cond_aa
    move v8, p2

    :goto_ab
    iget-object v3, p0, Lmiui/widget/ScreenView;->wp:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1309
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    .line 1310
    return-void
.end method

.method public snapToScreen(ILmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .registers 4

    .line 1255
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->l(IZ)I

    move-result p1

    invoke-virtual {p0, p1, v0, v0, p2}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    .line 1256
    return-void
.end method

.method protected updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .registers 3

    .line 1941
    return-void
.end method
