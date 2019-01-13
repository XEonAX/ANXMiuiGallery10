.class Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenViewOvershootInterpolator"
.end annotation


# instance fields
.field final synthetic Zl:Lmiui/widget/ScreenView;

.field private Zv:F


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;)V
    .registers 2

    .line 2130
    iput-object p1, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->Zl:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2131
    invoke-static {p1}, Lmiui/widget/ScreenView;->d(Lmiui/widget/ScreenView;)F

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->Zv:F

    .line 2132
    return-void
.end method

.method static synthetic a(Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;F)F
    .registers 2

    .line 2126
    iput p1, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->Zv:F

    return p1
.end method


# virtual methods
.method public fH()V
    .registers 2

    .line 2141
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->Zv:F

    .line 2142
    return-void
.end method

.method public getInterpolation(F)F
    .registers 5

    .line 2145
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 2146
    mul-float v1, p1, p1

    iget v2, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->Zv:F

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    iget p1, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->Zv:F

    add-float/2addr v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public q(II)V
    .registers 3

    .line 2135
    if-lez p1, :cond_b

    .line 2136
    iget-object p2, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->Zl:Lmiui/widget/ScreenView;

    invoke-static {p2}, Lmiui/widget/ScreenView;->d(Lmiui/widget/ScreenView;)F

    move-result p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    goto :goto_11

    .line 2137
    :cond_b
    iget-object p1, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->Zl:Lmiui/widget/ScreenView;

    invoke-static {p1}, Lmiui/widget/ScreenView;->d(Lmiui/widget/ScreenView;)F

    move-result p2

    :goto_11
    iput p2, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->Zv:F

    .line 2138
    return-void
.end method
