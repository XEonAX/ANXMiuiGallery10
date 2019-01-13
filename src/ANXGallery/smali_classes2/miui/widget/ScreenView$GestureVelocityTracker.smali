.class Lmiui/widget/ScreenView$GestureVelocityTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureVelocityTracker"
.end annotation


# static fields
.field private static final Zm:F = 3.0f


# instance fields
.field final synthetic Zl:Lmiui/widget/ScreenView;

.field private Zn:I

.field private Zo:F

.field private Zp:F

.field private qS:Landroid/view/VelocityTracker;


# direct methods
.method private constructor <init>(Lmiui/widget/ScreenView;)V
    .registers 2

    .line 2052
    iput-object p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zl:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2058
    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zn:I

    .line 2060
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zo:F

    .line 2062
    iput p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zp:F

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V
    .registers 3

    .line 2052
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;)V

    return-void
.end method

.method private reset()V
    .registers 2

    .line 2098
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zn:I

    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zo:F

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zp:F

    .line 2099
    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 5

    .line 2073
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->qS:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 2074
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->qS:Landroid/view/VelocityTracker;

    .line 2076
    :cond_a
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2077
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2078
    iget v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zn:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    .line 2079
    iget v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zn:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2080
    if-eq v1, v2, :cond_25

    .line 2081
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    goto :goto_27

    .line 2083
    :cond_25
    iput v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zn:I

    .line 2086
    :cond_27
    :goto_27
    iget p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zo:F

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_31

    .line 2087
    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zo:F

    .line 2088
    return-void

    .line 2090
    :cond_31
    iget p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zp:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3a

    .line 2091
    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zp:F

    .line 2092
    return-void

    .line 2094
    :cond_3a
    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zp:F

    .line 2095
    return-void
.end method

.method public e(F)I
    .registers 3

    .line 2117
    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_28

    .line 2118
    iget p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zp:F

    iget v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zo:F

    sub-float/2addr p1, v0

    .line 2119
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zl:Lmiui/widget/ScreenView;

    invoke-static {v0}, Lmiui/widget/ScreenView;->c(Lmiui/widget/ScreenView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_26

    iget p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zp:F

    iget v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zo:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_24

    const/4 p1, 0x1

    goto :goto_27

    :cond_24
    const/4 p1, 0x2

    goto :goto_27

    .line 2120
    :cond_26
    const/4 p1, 0x3

    .line 2119
    :goto_27
    return p1

    .line 2122
    :cond_28
    const/4 p1, 0x4

    return p1
.end method

.method public init(I)V
    .registers 3

    .line 2102
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->qS:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 2103
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->qS:Landroid/view/VelocityTracker;

    goto :goto_10

    .line 2105
    :cond_b
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2107
    :goto_10
    invoke-direct {p0}, Lmiui/widget/ScreenView$GestureVelocityTracker;->reset()V

    .line 2108
    iput p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->Zn:I

    .line 2109
    return-void
.end method

.method public j(III)F
    .registers 5

    .line 2112
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->qS:Landroid/view/VelocityTracker;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2113
    iget-object p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    return p1
.end method

.method public recycle()V
    .registers 2

    .line 2065
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->qS:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 2066
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2067
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->qS:Landroid/view/VelocityTracker;

    .line 2069
    :cond_c
    invoke-direct {p0}, Lmiui/widget/ScreenView$GestureVelocityTracker;->reset()V

    .line 2070
    return-void
.end method
