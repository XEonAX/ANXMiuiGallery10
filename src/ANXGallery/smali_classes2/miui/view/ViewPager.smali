.class public Lmiui/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/ViewPager$LayoutParams;,
        Lmiui/view/ViewPager$PagerObserver;,
        Lmiui/view/ViewPager$SavedState;,
        Lmiui/view/ViewPager$Decor;,
        Lmiui/view/ViewPager$OnAdapterChangeListener;,
        Lmiui/view/ViewPager$SimpleOnPageChangeListener;,
        Lmiui/view/ViewPager$OnPageChangeListener;,
        Lmiui/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final Mi:Z = false

.field private static final Mj:I = 0x3

.field private static final Mk:I = 0x19

.field private static final Ml:I = 0xfa

.field private static final Mm:I = 0x10

.field private static final Mn:[I

.field private static final Mo:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmiui/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final NF:F = 0.05f

.field private static final No:I = 0x2

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final wb:I = 0x320

.field private static final wu:Landroid/view/animation/Interpolator;


# instance fields
.field private MF:F

.field private MI:F

.field private MJ:I

.field private final Mp:Lmiui/view/ViewPager$ItemInfo;

.field private final Mq:Landroid/graphics/Rect;

.field private Mr:Lmiui/view/PagerAdapter;

.field private Ms:I

.field private Mt:I

.field private Mu:Landroid/os/Parcelable;

.field private Mv:Lmiui/view/ViewPager$PagerObserver;

.field private Mw:I

.field private Mx:Landroid/graphics/drawable/Drawable;

.field private My:I

.field private Mz:I

.field NB:Z

.field ND:F

.field private NH:I

.field private Na:I

.field private Nb:Z

.field private Nc:Z

.field private Nd:Z

.field private Ne:I

.field private Nf:Z

.field private Ng:Z

.field private Nh:I

.field private Ni:I

.field private Nj:F

.field private Nk:F

.field private Nl:Z

.field private Nm:I

.field private Nn:I

.field private Np:Z

.field private Nq:J

.field private Nr:Landroid/widget/EdgeEffect;

.field private Ns:Landroid/widget/EdgeEffect;

.field private Nt:Z

.field private Nu:Z

.field private Nv:Z

.field private Nw:I

.field private Nx:Lmiui/view/ViewPager$OnPageChangeListener;

.field private Ny:Lmiui/view/ViewPager$OnPageChangeListener;

.field private Nz:Lmiui/view/ViewPager$OnAdapterChangeListener;

.field private fE:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final nS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private qE:I

.field private qF:Z

.field private qI:I

.field private qJ:I

.field private qS:Landroid/view/VelocityTracker;

.field private wp:Landroid/widget/Scroller;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lmiui/view/ViewPager;->Mn:[I

    .line 98
    new-instance v0, Lmiui/view/ViewPager$1;

    invoke-direct {v0}, Lmiui/view/ViewPager$1;-><init>()V

    sput-object v0, Lmiui/view/ViewPager;->Mo:Ljava/util/Comparator;

    .line 105
    new-instance v0, Lmiui/view/ViewPager$2;

    invoke-direct {v0}, Lmiui/view/ViewPager$2;-><init>()V

    sput-object v0, Lmiui/view/ViewPager;->wu:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 296
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    .line 113
    new-instance p1, Lmiui/view/ViewPager$ItemInfo;

    invoke-direct {p1}, Lmiui/view/ViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Lmiui/view/ViewPager;->Mp:Lmiui/view/ViewPager$ItemInfo;

    .line 115
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/view/ViewPager;->Mq:Landroid/graphics/Rect;

    .line 119
    const/4 p1, -0x1

    iput p1, p0, Lmiui/view/ViewPager;->Mt:I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/ViewPager;->Mu:Landroid/os/Parcelable;

    .line 132
    const v0, -0x800001

    iput v0, p0, Lmiui/view/ViewPager;->MF:F

    .line 133
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/view/ViewPager;->MI:F

    .line 142
    const/4 v0, 0x3

    iput v0, p0, Lmiui/view/ViewPager;->Ne:I

    .line 162
    iput p1, p0, Lmiui/view/ViewPager;->qE:I

    .line 189
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/view/ViewPager;->Nt:Z

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->Nu:Z

    .line 199
    iput-boolean p1, p0, Lmiui/view/ViewPager;->NB:Z

    .line 201
    const/4 p1, 0x0

    iput p1, p0, Lmiui/view/ViewPager;->ND:F

    .line 221
    iput v0, p0, Lmiui/view/ViewPager;->NH:I

    .line 297
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dO()V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 301
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    .line 113
    new-instance p1, Lmiui/view/ViewPager$ItemInfo;

    invoke-direct {p1}, Lmiui/view/ViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Lmiui/view/ViewPager;->Mp:Lmiui/view/ViewPager$ItemInfo;

    .line 115
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/view/ViewPager;->Mq:Landroid/graphics/Rect;

    .line 119
    const/4 p1, -0x1

    iput p1, p0, Lmiui/view/ViewPager;->Mt:I

    .line 120
    const/4 p2, 0x0

    iput-object p2, p0, Lmiui/view/ViewPager;->Mu:Landroid/os/Parcelable;

    .line 132
    const p2, -0x800001

    iput p2, p0, Lmiui/view/ViewPager;->MF:F

    .line 133
    const p2, 0x7f7fffff    # Float.MAX_VALUE

    iput p2, p0, Lmiui/view/ViewPager;->MI:F

    .line 142
    const/4 p2, 0x3

    iput p2, p0, Lmiui/view/ViewPager;->Ne:I

    .line 162
    iput p1, p0, Lmiui/view/ViewPager;->qE:I

    .line 189
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/view/ViewPager;->Nt:Z

    .line 190
    const/4 p2, 0x0

    iput-boolean p2, p0, Lmiui/view/ViewPager;->Nu:Z

    .line 199
    iput-boolean p1, p0, Lmiui/view/ViewPager;->NB:Z

    .line 201
    const/4 p1, 0x0

    iput p1, p0, Lmiui/view/ViewPager;->ND:F

    .line 221
    iput p2, p0, Lmiui/view/ViewPager;->NH:I

    .line 302
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dO()V

    .line 303
    return-void
.end method

.method private a(IFII)I
    .registers 6

    .line 1979
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lmiui/view/ViewPager;->Nm:I

    if-le p4, v0, :cond_16

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lmiui/view/ViewPager;->qI:I

    if-le p4, v0, :cond_16

    .line 1980
    if-lez p3, :cond_13

    goto :goto_1c

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 1982
    :cond_16
    int-to-float p1, p1

    add-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 1985
    :goto_1c
    iget-object p2, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_49

    .line 1986
    iget-object p2, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/view/ViewPager$ItemInfo;

    .line 1987
    iget-object p3, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    iget-object p4, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmiui/view/ViewPager$ItemInfo;

    .line 1990
    iget p2, p2, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget p3, p3, Lmiui/view/ViewPager$ItemInfo;->position:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1993
    :cond_49
    return p1
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 5

    .line 2368
    if-nez p1, :cond_7

    .line 2369
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2371
    :cond_7
    if-nez p2, :cond_e

    .line 2372
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2373
    return-object p1

    .line 2375
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2376
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2377
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2378
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2380
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2381
    :goto_2a
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5b

    if-eq p2, p0, :cond_5b

    .line 2382
    check-cast p2, Landroid/view/ViewGroup;

    .line 2383
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2384
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2385
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2386
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2388
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2389
    goto :goto_2a

    .line 2390
    :cond_5b
    return-object p1
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5

    .line 2211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2212
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2213
    iget v2, p0, Lmiui/view/ViewPager;->qE:I

    if-ne v1, v2, :cond_26

    .line 2216
    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 2217
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 2218
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiui/view/ViewPager;->qE:I

    .line 2219
    iget-object p1, p0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_26

    .line 2220
    iget-object p1, p0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 2223
    :cond_26
    return-void
.end method

.method private a(Lmiui/view/ViewPager$ItemInfo;ILmiui/view/ViewPager$ItemInfo;)V
    .registers 14

    .line 948
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    .line 949
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v1

    .line 950
    if-lez v1, :cond_12

    iget v2, p0, Lmiui/view/ViewPager;->Mw:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 952
    :goto_13
    const/4 v1, 0x0

    if-eqz p3, :cond_b3

    .line 953
    iget v3, p3, Lmiui/view/ViewPager$ItemInfo;->position:I

    .line 955
    iget v4, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_6c

    .line 956
    nop

    .line 958
    iget v4, p3, Lmiui/view/ViewPager$ItemInfo;->NM:F

    iget p3, p3, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    .line 959
    add-int/lit8 v3, v3, 0x1

    .line 960
    move p3, v1

    :goto_26
    iget v5, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-gt v3, v5, :cond_6b

    iget-object v5, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6b

    .line 961
    iget-object v5, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    .line 962
    :goto_3a
    iget v6, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_53

    iget-object v6, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_53

    .line 963
    add-int/lit8 p3, p3, 0x1

    .line 964
    iget-object v5, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_3a

    .line 966
    :cond_53
    :goto_53
    iget v6, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_62

    .line 969
    iget-object v6, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v6, v3}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    .line 970
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 972
    :cond_62
    iput v4, v5, Lmiui/view/ViewPager$ItemInfo;->NM:F

    .line 973
    iget v5, v5, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 960
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 975
    :cond_6b
    goto :goto_b3

    :cond_6c
    iget v4, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_b3

    .line 976
    iget-object v4, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 978
    iget p3, p3, Lmiui/view/ViewPager$ItemInfo;->NM:F

    .line 979
    add-int/lit8 v3, v3, -0x1

    .line 980
    :goto_7c
    iget v5, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-lt v3, v5, :cond_b3

    if-ltz v4, :cond_b3

    .line 981
    iget-object v5, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    .line 982
    :goto_8a
    iget v6, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_9b

    if-lez v4, :cond_9b

    .line 983
    add-int/lit8 v4, v4, -0x1

    .line 984
    iget-object v5, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_8a

    .line 986
    :cond_9b
    :goto_9b
    iget v6, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_aa

    .line 989
    iget-object v6, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v6, v3}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 990
    add-int/lit8 v3, v3, -0x1

    goto :goto_9b

    .line 992
    :cond_aa
    iget v6, v5, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 993
    iput p3, v5, Lmiui/view/ViewPager$ItemInfo;->NM:F

    .line 980
    add-int/lit8 v3, v3, -0x1

    goto :goto_7c

    .line 999
    :cond_b3
    :goto_b3
    iget-object p3, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1000
    iget v3, p1, Lmiui/view/ViewPager$ItemInfo;->NM:F

    .line 1001
    iget v4, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, -0x1

    .line 1002
    iget v5, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-nez v5, :cond_c6

    iget v5, p1, Lmiui/view/ViewPager$ItemInfo;->NM:F

    goto :goto_c9

    :cond_c6
    const v5, -0x800001

    :goto_c9
    iput v5, p0, Lmiui/view/ViewPager;->MF:F

    .line 1003
    iget v5, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v5, v0, :cond_da

    .line 1004
    iget v5, p1, Lmiui/view/ViewPager$ItemInfo;->NM:F

    iget v7, p1, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v6

    goto :goto_dd

    :cond_da
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :goto_dd
    iput v5, p0, Lmiui/view/ViewPager;->MI:F

    .line 1006
    add-int/lit8 v5, p2, -0x1

    :goto_e1
    if-ltz v5, :cond_10c

    .line 1007
    iget-object v7, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    .line 1008
    :goto_eb
    iget v8, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-le v4, v8, :cond_fb

    .line 1009
    iget-object v8, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v4}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v3, v4

    .line 1008
    move v4, v9

    goto :goto_eb

    .line 1011
    :cond_fb
    iget v8, v7, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v3, v8

    .line 1012
    iput v3, v7, Lmiui/view/ViewPager$ItemInfo;->NM:F

    .line 1013
    iget v7, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-nez v7, :cond_107

    iput v3, p0, Lmiui/view/ViewPager;->MF:F

    .line 1006
    :cond_107
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_e1

    .line 1015
    :cond_10c
    iget v3, p1, Lmiui/view/ViewPager$ItemInfo;->NM:F

    iget v4, p1, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 1016
    iget p1, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 p1, p1, 0x1

    .line 1018
    add-int/lit8 p2, p2, 0x1

    :goto_118
    if-ge p2, p3, :cond_147

    .line 1019
    iget-object v4, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/view/ViewPager$ItemInfo;

    .line 1020
    :goto_122
    iget v5, v4, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ge p1, v5, :cond_132

    .line 1021
    iget-object v5, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    .line 1020
    move p1, v7

    goto :goto_122

    .line 1023
    :cond_132
    iget v5, v4, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v5, v0, :cond_13c

    .line 1024
    iget v5, v4, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Lmiui/view/ViewPager;->MI:F

    .line 1026
    :cond_13c
    iput v3, v4, Lmiui/view/ViewPager$ItemInfo;->NM:F

    .line 1027
    iget v4, v4, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    .line 1018
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_118

    .line 1030
    :cond_147
    iput-boolean v1, p0, Lmiui/view/ViewPager;->Nu:Z

    .line 1031
    return-void
.end method

.method private ab(I)V
    .registers 3

    .line 329
    iget v0, p0, Lmiui/view/ViewPager;->NH:I

    if-ne v0, p1, :cond_5

    .line 330
    return-void

    .line 333
    :cond_5
    iput p1, p0, Lmiui/view/ViewPager;->NH:I

    .line 334
    iget-object v0, p0, Lmiui/view/ViewPager;->Nx:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_10

    .line 335
    iget-object v0, p0, Lmiui/view/ViewPager;->Nx:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 338
    :cond_10
    iget-object v0, p0, Lmiui/view/ViewPager;->Ny:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_19

    .line 339
    iget-object v0, p0, Lmiui/view/ViewPager;->Ny:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 341
    :cond_19
    return-void
.end method

.method private b(F)Z
    .registers 11

    .line 1883
    nop

    .line 1885
    iget v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 1886
    iput p1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 1888
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    .line 1889
    add-float/2addr p1, v0

    .line 1890
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v0

    .line 1892
    int-to-float v0, v0

    iget v1, p0, Lmiui/view/ViewPager;->MF:F

    mul-float/2addr v1, v0

    .line 1893
    iget v2, p0, Lmiui/view/ViewPager;->MI:F

    mul-float/2addr v2, v0

    .line 1894
    nop

    .line 1895
    nop

    .line 1897
    iget-object v3, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/ViewPager$ItemInfo;

    .line 1898
    iget-object v5, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    iget-object v6, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    .line 1899
    iget v6, v3, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_3c

    .line 1900
    nop

    .line 1901
    iget v1, v3, Lmiui/view/ViewPager$ItemInfo;->NM:F

    mul-float/2addr v1, v0

    .line 1903
    move v3, v4

    goto :goto_3d

    :cond_3c
    move v3, v7

    :goto_3d
    iget v6, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v8, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v8}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_4e

    .line 1904
    nop

    .line 1905
    iget v2, v5, Lmiui/view/ViewPager$ItemInfo;->NM:F

    mul-float/2addr v2, v0

    .line 1908
    move v5, v4

    goto :goto_4f

    :cond_4e
    move v5, v7

    :goto_4f
    cmpg-float v6, p1, v1

    if-gez v6, :cond_65

    .line 1909
    if-eqz v3, :cond_63

    .line 1910
    sub-float p1, v1, p1

    .line 1911
    iget-object v2, p0, Lmiui/view/ViewPager;->Nr:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1912
    nop

    .line 1914
    move v4, v7

    .line 1924
    :cond_63
    move p1, v1

    goto :goto_79

    .line 1915
    :cond_65
    cmpl-float v1, p1, v2

    if-lez v1, :cond_79

    .line 1916
    if-eqz v5, :cond_78

    .line 1917
    sub-float/2addr p1, v2

    .line 1918
    iget-object v1, p0, Lmiui/view/ViewPager;->Ns:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1919
    nop

    .line 1921
    move v4, v7

    .line 1924
    :cond_78
    move p1, v2

    :cond_79
    :goto_79
    iget v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 1925
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 1926
    invoke-direct {p0, v1, v7}, Lmiui/view/ViewPager;->g(IZ)Z

    .line 1928
    return v4
.end method

.method private b(FF)Z
    .registers 6

    .line 1609
    iget v0, p0, Lmiui/view/ViewPager;->Ni:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lmiui/view/ViewPager;->Ni:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1e

    cmpg-float p1, p2, v1

    if-gez p1, :cond_1e

    :cond_1c
    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private d(IIII)V
    .registers 11

    .line 1288
    if-lez p2, :cond_46

    iget-object v0, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 1289
    add-int/2addr p3, p1

    .line 1290
    add-int/2addr p2, p4

    .line 1291
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result p4

    .line 1292
    int-to-float p4, p4

    int-to-float p2, p2

    div-float/2addr p4, p2

    .line 1293
    int-to-float p2, p3

    mul-float/2addr p4, p2

    float-to-int v1, p4

    .line 1295
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 1296
    iget-object p2, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_45

    .line 1298
    iget-object p2, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    move-result p2

    iget-object p3, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    sub-int v5, p2, p3

    .line 1299
    iget p2, p0, Lmiui/view/ViewPager;->Ms:I

    invoke-virtual {p0, p2}, Lmiui/view/ViewPager;->ad(I)Lmiui/view/ViewPager$ItemInfo;

    move-result-object p2

    .line 1300
    iget-object v0, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget p2, p2, Lmiui/view/ViewPager$ItemInfo;->NM:F

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int v3, p2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1303
    :cond_45
    goto :goto_6b

    .line 1304
    :cond_46
    iget p2, p0, Lmiui/view/ViewPager;->Ms:I

    invoke-virtual {p0, p2}, Lmiui/view/ViewPager;->ad(I)Lmiui/view/ViewPager$ItemInfo;

    move-result-object p2

    .line 1305
    if-eqz p2, :cond_57

    iget p2, p2, Lmiui/view/ViewPager$ItemInfo;->NM:F

    iget p3, p0, Lmiui/view/ViewPager;->MI:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_58

    :cond_57
    const/4 p2, 0x0

    .line 1306
    :goto_58
    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 1307
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_6b

    .line 1308
    invoke-direct {p0}, Lmiui/view/ViewPager;->dS()V

    .line 1309
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 1312
    :cond_6b
    :goto_6b
    return-void
.end method

.method private dP()V
    .registers 3

    .line 388
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 389
    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 390
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$LayoutParams;

    .line 391
    iget-boolean v1, v1, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1a

    .line 392
    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->removeViewAt(I)V

    .line 393
    add-int/lit8 v0, v0, -0x1

    .line 388
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 396
    :cond_1d
    return-void
.end method

.method private dS()V
    .registers 8

    .line 1582
    iget v0, p0, Lmiui/view/ViewPager;->NH:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    .line 1583
    move v0, v1

    goto :goto_b

    .line 1582
    :cond_9
    nop

    .line 1583
    move v0, v2

    :goto_b
    if-eqz v0, :cond_33

    .line 1585
    invoke-direct {p0, v2}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1586
    iget-object v3, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1587
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1588
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1589
    iget-object v5, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1590
    iget-object v6, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1591
    if-ne v3, v5, :cond_2d

    if-eq v4, v6, :cond_30

    .line 1592
    :cond_2d
    invoke-virtual {p0, v5, v6}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 1594
    :cond_30
    invoke-direct {p0, v2}, Lmiui/view/ViewPager;->ab(I)V

    .line 1596
    :cond_33
    iput-boolean v2, p0, Lmiui/view/ViewPager;->Nd:Z

    .line 1597
    iget-object v3, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/view/ViewPager$ItemInfo;

    .line 1598
    iget-boolean v5, v4, Lmiui/view/ViewPager$ItemInfo;->NK:Z

    if-eqz v5, :cond_4f

    .line 1599
    nop

    .line 1600
    iput-boolean v2, v4, Lmiui/view/ViewPager$ItemInfo;->NK:Z

    .line 1602
    move v0, v1

    :cond_4f
    goto :goto_3b

    .line 1603
    :cond_50
    if-eqz v0, :cond_55

    .line 1604
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dR()V

    .line 1606
    :cond_55
    return-void
.end method

.method private dT()Z
    .registers 3

    .line 1875
    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/ViewPager;->qE:I

    .line 1876
    invoke-direct {p0}, Lmiui/view/ViewPager;->dV()V

    .line 1877
    iget-object v0, p0, Lmiui/view/ViewPager;->Nr:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1878
    iget-object v0, p0, Lmiui/view/ViewPager;->Ns:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1879
    iget-object v0, p0, Lmiui/view/ViewPager;->Nr:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    iget-object v1, p0, Lmiui/view/ViewPager;->Ns:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private dU()Lmiui/view/ViewPager$ItemInfo;
    .registers 13

    .line 1936
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v0

    .line 1937
    const/4 v1, 0x0

    if-lez v0, :cond_f

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_10

    .line 1938
    :cond_f
    move v2, v1

    :goto_10
    if-lez v0, :cond_19

    iget v3, p0, Lmiui/view/ViewPager;->Mw:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    goto :goto_1a

    .line 1939
    :cond_19
    move v0, v1

    .line 1940
    :goto_1a
    nop

    .line 1941
    nop

    .line 1942
    nop

    .line 1944
    const/4 v3, 0x0

    .line 1945
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v8, v1

    move v9, v8

    move v1, v4

    move v7, v5

    move-object v5, v3

    move v3, v6

    :goto_27
    iget-object v10, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_7c

    .line 1946
    iget-object v10, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/view/ViewPager$ItemInfo;

    .line 1948
    if-nez v3, :cond_52

    iget v11, v10, Lmiui/view/ViewPager$ItemInfo;->position:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_52

    .line 1950
    iget-object v10, p0, Lmiui/view/ViewPager;->Mp:Lmiui/view/ViewPager$ItemInfo;

    .line 1951
    add-float/2addr v8, v9

    add-float/2addr v8, v0

    iput v8, v10, Lmiui/view/ViewPager$ItemInfo;->NM:F

    .line 1952
    iput v7, v10, Lmiui/view/ViewPager$ItemInfo;->position:I

    .line 1953
    iget-object v7, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget v8, v10, Lmiui/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v7, v8}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v7

    iput v7, v10, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1954
    add-int/lit8 v1, v1, -0x1

    .line 1956
    :cond_52
    iget v8, v10, Lmiui/view/ViewPager$ItemInfo;->NM:F

    .line 1958
    nop

    .line 1959
    iget v7, v10, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v8

    add-float/2addr v7, v0

    .line 1960
    if-nez v3, :cond_61

    cmpl-float v3, v2, v8

    if-ltz v3, :cond_60

    goto :goto_61

    .line 1965
    :cond_60
    return-object v5

    .line 1961
    :cond_61
    :goto_61
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_7b

    iget-object v3, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v1, v3, :cond_6f

    goto :goto_7b

    .line 1967
    :cond_6f
    nop

    .line 1968
    iget v7, v10, Lmiui/view/ViewPager$ItemInfo;->position:I

    .line 1969
    nop

    .line 1970
    iget v9, v10, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1971
    nop

    .line 1945
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    move-object v5, v10

    goto :goto_27

    .line 1962
    :cond_7b
    :goto_7b
    return-object v10

    .line 1974
    :cond_7c
    return-object v5
.end method

.method private dV()V
    .registers 2

    .line 2226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->qF:Z

    .line 2227
    iput-boolean v0, p0, Lmiui/view/ViewPager;->Nf:Z

    .line 2229
    iget-object v0, p0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    .line 2230
    iget-object v0, p0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2231
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    .line 2233
    :cond_11
    return-void
.end method

.method static synthetic dZ()[I
    .registers 1

    .line 72
    sget-object v0, Lmiui/view/ViewPager;->Mn:[I

    return-object v0
.end method

.method private g(IZ)Z
    .registers 9

    .line 1458
    iget-object v0, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 1459
    iput-boolean v1, p0, Lmiui/view/ViewPager;->Nv:Z

    .line 1460
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1, v1}, Lmiui/view/ViewPager;->onPageScrolled(IFI)V

    .line 1461
    iget-boolean p1, p0, Lmiui/view/ViewPager;->Nv:Z

    if-eqz p1, :cond_14

    .line 1465
    return v1

    .line 1462
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "onPageScrolled did not call superclass implementation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1467
    :cond_1c
    invoke-direct {p0}, Lmiui/view/ViewPager;->dU()Lmiui/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 1468
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v2

    .line 1469
    iget v3, p0, Lmiui/view/ViewPager;->Mw:I

    add-int/2addr v3, v2

    .line 1470
    iget v4, p0, Lmiui/view/ViewPager;->Mw:I

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    .line 1471
    iget v5, v0, Lmiui/view/ViewPager$ItemInfo;->position:I

    .line 1472
    int-to-float p1, p1

    div-float/2addr p1, v2

    iget v2, v0, Lmiui/view/ViewPager$ItemInfo;->NM:F

    sub-float/2addr p1, v2

    iget v0, v0, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    .line 1474
    int-to-float v0, v3

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1477
    const/4 v2, 0x1

    if-eqz p2, :cond_98

    .line 1478
    nop

    .line 1479
    nop

    .line 1480
    iget p2, p0, Lmiui/view/ViewPager;->ND:F

    cmpg-float p2, p2, p1

    if-gez p2, :cond_52

    const p2, 0x3f0ccccd    # 0.55f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_52

    .line 1481
    nop

    .line 1482
    add-int/lit8 p2, v5, 0x1

    .line 1487
    move v3, p2

    move p2, v2

    goto :goto_65

    .line 1483
    :cond_52
    iget p2, p0, Lmiui/view/ViewPager;->ND:F

    cmpl-float p2, p2, p1

    if-lez p2, :cond_63

    const p2, 0x3ee66666    # 0.45f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_63

    .line 1484
    nop

    .line 1485
    nop

    .line 1487
    move p2, v2

    goto :goto_64

    :cond_63
    move p2, v1

    :goto_64
    move v3, v5

    :goto_65
    iput p1, p0, Lmiui/view/ViewPager;->ND:F

    .line 1489
    if-eqz p2, :cond_98

    .line 1490
    if-gez v3, :cond_6e

    .line 1491
    nop

    .line 1496
    move p2, v1

    goto :goto_7f

    .line 1492
    :cond_6e
    iget-object p2, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {p2}, Lmiui/view/PagerAdapter;->getCount()I

    move-result p2

    if-lt v3, p2, :cond_7e

    .line 1493
    iget-object p2, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {p2}, Lmiui/view/PagerAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v2

    goto :goto_7f

    .line 1496
    :cond_7e
    move p2, v3

    :goto_7f
    iget v3, p0, Lmiui/view/ViewPager;->Ms:I

    if-eq p2, v3, :cond_98

    .line 1497
    invoke-virtual {p0, p2}, Lmiui/view/ViewPager;->ac(I)V

    .line 1498
    iget-object v3, p0, Lmiui/view/ViewPager;->Nx:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_8f

    .line 1499
    iget-object v3, p0, Lmiui/view/ViewPager;->Nx:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p2}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1501
    :cond_8f
    iget-object v3, p0, Lmiui/view/ViewPager;->Ny:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_98

    .line 1502
    iget-object v3, p0, Lmiui/view/ViewPager;->Ny:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p2}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1508
    :cond_98
    iput-boolean v1, p0, Lmiui/view/ViewPager;->Nv:Z

    .line 1509
    invoke-virtual {p0, v5, p1, v0}, Lmiui/view/ViewPager;->onPageScrolled(IFI)V

    .line 1510
    iget-boolean p1, p0, Lmiui/view/ViewPager;->Nv:Z

    if-eqz p1, :cond_a2

    .line 1515
    return v2

    .line 1511
    :cond_a2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "onPageScrolled did not call superclass implementation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    .line 2236
    iget-boolean v0, p0, Lmiui/view/ViewPager;->Nc:Z

    if-eq v0, p1, :cond_6

    .line 2237
    iput-boolean p1, p0, Lmiui/view/ViewPager;->Nc:Z

    .line 2248
    :cond_6
    return-void
.end method


# virtual methods
.method a(F)F
    .registers 6

    .line 625
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 626
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 627
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method a(IZZ)V
    .registers 5

    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/view/ViewPager;->a(IZZI)V

    .line 440
    return-void
.end method

.method a(IZZI)V
    .registers 10

    .line 443
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_f

    goto/16 :goto_b7

    .line 447
    :cond_f
    if-nez p3, :cond_21

    iget p3, p0, Lmiui/view/ViewPager;->Ms:I

    if-ne p3, p1, :cond_21

    iget-object p3, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_21

    .line 448
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 449
    return-void

    .line 452
    :cond_21
    const/4 p3, 0x1

    if-gez p1, :cond_27

    .line 453
    nop

    .line 457
    move p1, v1

    goto :goto_36

    .line 454
    :cond_27
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_36

    .line 455
    iget-object p1, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {p1}, Lmiui/view/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 457
    :cond_36
    :goto_36
    iget v0, p0, Lmiui/view/ViewPager;->Ne:I

    .line 458
    iget v2, p0, Lmiui/view/ViewPager;->Ms:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_42

    iget v2, p0, Lmiui/view/ViewPager;->Ms:I

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_57

    .line 462
    :cond_42
    iget-object v0, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/view/ViewPager$ItemInfo;

    .line 463
    iput-boolean p3, v2, Lmiui/view/ViewPager$ItemInfo;->NK:Z

    .line 464
    goto :goto_48

    .line 466
    :cond_57
    iget v0, p0, Lmiui/view/ViewPager;->Ms:I

    if-eq v0, p1, :cond_5c

    goto :goto_5d

    .line 467
    :cond_5c
    move p3, v1

    :goto_5d
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->ac(I)V

    .line 468
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->ad(I)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 469
    nop

    .line 470
    if-eqz v0, :cond_7d

    .line 471
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v2

    .line 472
    int-to-float v2, v2

    iget v3, p0, Lmiui/view/ViewPager;->MF:F

    iget v0, v0, Lmiui/view/ViewPager$ItemInfo;->NM:F

    iget v4, p0, Lmiui/view/ViewPager;->MI:F

    .line 473
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 472
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_7e

    .line 475
    :cond_7d
    move v0, v1

    :goto_7e
    if-eqz p2, :cond_9a

    .line 476
    invoke-virtual {p0, v0, v1, p4}, Lmiui/view/ViewPager;->f(III)V

    .line 477
    if-eqz p3, :cond_8e

    iget-object p2, p0, Lmiui/view/ViewPager;->Nx:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_8e

    .line 478
    iget-object p2, p0, Lmiui/view/ViewPager;->Nx:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {p2, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 480
    :cond_8e
    if-eqz p3, :cond_b6

    iget-object p2, p0, Lmiui/view/ViewPager;->Ny:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_b6

    .line 481
    iget-object p2, p0, Lmiui/view/ViewPager;->Ny:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {p2, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_b6

    .line 484
    :cond_9a
    if-eqz p3, :cond_a5

    iget-object p2, p0, Lmiui/view/ViewPager;->Nx:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_a5

    .line 485
    iget-object p2, p0, Lmiui/view/ViewPager;->Nx:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {p2, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 487
    :cond_a5
    if-eqz p3, :cond_b0

    iget-object p2, p0, Lmiui/view/ViewPager;->Ny:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_b0

    .line 488
    iget-object p2, p0, Lmiui/view/ViewPager;->Ny:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {p2, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 490
    :cond_b0
    invoke-direct {p0}, Lmiui/view/ViewPager;->dS()V

    .line 491
    invoke-virtual {p0, v0, v1}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 493
    :cond_b6
    :goto_b6
    return-void

    .line 444
    :cond_b7
    :goto_b7
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 445
    return-void
.end method

.method a(Lmiui/view/ViewPager$OnAdapterChangeListener;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lmiui/view/ViewPager;->Nz:Lmiui/view/ViewPager$OnAdapterChangeListener;

    .line 409
    return-void
.end method

.method ac(I)V
    .registers 20

    move-object/from16 v0, p0

    .line 795
    move/from16 v1, p1

    .line 796
    iget v2, v0, Lmiui/view/ViewPager;->Ms:I

    if-eq v2, v1, :cond_11

    .line 797
    iget v2, v0, Lmiui/view/ViewPager;->Ms:I

    invoke-virtual {v0, v2}, Lmiui/view/ViewPager;->ad(I)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 798
    iput v1, v0, Lmiui/view/ViewPager;->Ms:I

    goto :goto_12

    .line 801
    :cond_11
    const/4 v2, 0x0

    :goto_12
    iget-object v1, v0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    if-nez v1, :cond_17

    .line 802
    return-void

    .line 809
    :cond_17
    iget-boolean v1, v0, Lmiui/view/ViewPager;->Nd:Z

    if-eqz v1, :cond_1c

    .line 811
    return-void

    .line 817
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_23

    .line 818
    return-void

    .line 821
    :cond_23
    iget-object v1, v0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, v0}, Lmiui/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 823
    iget v1, v0, Lmiui/view/ViewPager;->Ne:I

    .line 824
    iget v4, v0, Lmiui/view/ViewPager;->Ms:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 825
    iget-object v6, v0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v6}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v6

    .line 826
    add-int/lit8 v7, v6, -0x1

    iget v8, v0, Lmiui/view/ViewPager;->Ms:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 830
    nop

    .line 831
    move v7, v5

    :goto_43
    iget-object v8, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_63

    .line 832
    iget-object v8, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/view/ViewPager$ItemInfo;

    .line 833
    iget v9, v8, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v10, v0, Lmiui/view/ViewPager;->Ms:I

    if-lt v9, v10, :cond_60

    .line 834
    iget v9, v8, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v10, v0, Lmiui/view/ViewPager;->Ms:I

    if-ne v9, v10, :cond_63

    goto :goto_64

    .line 831
    :cond_60
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 839
    :cond_63
    const/4 v8, 0x0

    :goto_64
    if-nez v8, :cond_6e

    if-lez v6, :cond_6e

    .line 840
    iget v8, v0, Lmiui/view/ViewPager;->Ms:I

    invoke-virtual {v0, v8, v7}, Lmiui/view/ViewPager;->m(II)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v8

    .line 846
    :cond_6e
    const/4 v9, 0x0

    if-eqz v8, :cond_179

    .line 847
    nop

    .line 848
    add-int/lit8 v10, v7, -0x1

    .line 849
    if-ltz v10, :cond_7f

    iget-object v11, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_80

    .line 850
    :cond_7f
    const/4 v11, 0x0

    :goto_80
    iget v12, v8, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    const/high16 v13, 0x40000000    # 2.0f

    sub-float v12, v13, v12

    .line 851
    iget v14, v0, Lmiui/view/ViewPager;->Ms:I

    add-int/lit8 v14, v14, -0x1

    move v15, v7

    move v7, v9

    :goto_8c
    if-ltz v14, :cond_ed

    .line 852
    cmpl-float v16, v7, v12

    if-ltz v16, :cond_bb

    if-ge v14, v4, :cond_bb

    .line 853
    if-nez v11, :cond_97

    .line 854
    goto :goto_ed

    .line 856
    :cond_97
    iget v3, v11, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v14, v3, :cond_ea

    iget-boolean v3, v11, Lmiui/view/ViewPager$ItemInfo;->NK:Z

    if-nez v3, :cond_ea

    .line 857
    iget-object v3, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 858
    iget-object v3, v0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget-object v11, v11, Lmiui/view/ViewPager$ItemInfo;->NJ:Ljava/lang/Object;

    invoke-virtual {v3, v0, v14, v11}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 859
    add-int/lit8 v10, v10, -0x1

    .line 860
    add-int/lit8 v15, v15, -0x1

    .line 861
    if-ltz v10, :cond_ba

    iget-object v3, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_e9

    :cond_ba
    goto :goto_e8

    .line 863
    :cond_bb
    if-eqz v11, :cond_d2

    iget v3, v11, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v14, v3, :cond_d2

    .line 864
    iget v3, v11, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v3

    .line 865
    add-int/lit8 v10, v10, -0x1

    .line 866
    if-ltz v10, :cond_d1

    iget-object v3, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_e9

    :cond_d1
    goto :goto_e8

    .line 868
    :cond_d2
    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v0, v14, v3}, Lmiui/view/ViewPager;->m(II)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 869
    iget v3, v3, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v3

    .line 870
    add-int/lit8 v15, v15, 0x1

    .line 871
    if-ltz v10, :cond_e8

    iget-object v3, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_e9

    .line 851
    :cond_e8
    :goto_e8
    const/4 v3, 0x0

    :goto_e9
    move-object v11, v3

    :cond_ea
    add-int/lit8 v14, v14, -0x1

    goto :goto_8c

    .line 875
    :cond_ed
    :goto_ed
    iget v3, v8, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    .line 876
    add-int/lit8 v4, v15, 0x1

    .line 877
    cmpg-float v7, v3, v13

    if-gez v7, :cond_176

    .line 878
    iget-object v7, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_106

    iget-object v7, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_107

    .line 879
    :cond_106
    const/4 v7, 0x0

    :goto_107
    iget v10, v0, Lmiui/view/ViewPager;->Ms:I

    :goto_109
    add-int/lit8 v10, v10, 0x1

    if-ge v10, v6, :cond_176

    .line 880
    cmpl-float v11, v3, v13

    if-ltz v11, :cond_13d

    if-le v10, v1, :cond_13d

    .line 881
    if-nez v7, :cond_116

    .line 882
    goto :goto_176

    .line 884
    :cond_116
    iget v11, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v10, v11, :cond_175

    iget-boolean v11, v7, Lmiui/view/ViewPager$ItemInfo;->NK:Z

    if-nez v11, :cond_175

    .line 885
    iget-object v11, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 886
    iget-object v11, v0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget-object v7, v7, Lmiui/view/ViewPager$ItemInfo;->NJ:Ljava/lang/Object;

    invoke-virtual {v11, v0, v10, v7}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 887
    iget-object v7, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_13b

    iget-object v7, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_175

    .line 879
    :cond_13b
    :goto_13b
    const/4 v7, 0x0

    goto :goto_175

    .line 889
    :cond_13d
    if-eqz v7, :cond_15a

    iget v11, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v10, v11, :cond_15a

    .line 890
    iget v7, v7, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v7

    .line 891
    add-int/lit8 v4, v4, 0x1

    .line 892
    iget-object v7, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_159

    iget-object v7, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_175

    :cond_159
    goto :goto_13b

    .line 894
    :cond_15a
    invoke-virtual {v0, v10, v4}, Lmiui/view/ViewPager;->m(II)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v7

    .line 895
    add-int/lit8 v4, v4, 0x1

    .line 896
    iget v7, v7, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v7

    .line 897
    iget-object v7, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_174

    iget-object v7, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_175

    :cond_174
    goto :goto_13b

    .line 879
    :cond_175
    :goto_175
    goto :goto_109

    .line 902
    :cond_176
    :goto_176
    invoke-direct {v0, v8, v15, v2}, Lmiui/view/ViewPager;->a(Lmiui/view/ViewPager$ItemInfo;ILmiui/view/ViewPager$ItemInfo;)V

    .line 912
    :cond_179
    iget-object v1, v0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget v2, v0, Lmiui/view/ViewPager;->Ms:I

    if-eqz v8, :cond_182

    iget-object v3, v8, Lmiui/view/ViewPager$ItemInfo;->NJ:Ljava/lang/Object;

    goto :goto_183

    :cond_182
    const/4 v3, 0x0

    :goto_183
    invoke-virtual {v1, v0, v2, v3}, Lmiui/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 914
    iget-object v1, v0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, v0}, Lmiui/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 917
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v1

    .line 918
    move v2, v5

    :goto_190
    if-ge v2, v1, :cond_1b3

    .line 919
    invoke-virtual {v0, v2}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 920
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lmiui/view/ViewPager$LayoutParams;

    .line 921
    iget-boolean v6, v4, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_1b0

    iget v6, v4, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_1b0

    .line 923
    invoke-virtual {v0, v3}, Lmiui/view/ViewPager;->k(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 924
    if-eqz v3, :cond_1b0

    .line 925
    iget v3, v3, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    iput v3, v4, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    .line 918
    :cond_1b0
    add-int/lit8 v2, v2, 0x1

    goto :goto_190

    .line 930
    :cond_1b3
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1ee

    .line 931
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 932
    if-eqz v1, :cond_1c4

    invoke-virtual {v0, v1}, Lmiui/view/ViewPager;->l(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v3

    goto :goto_1c5

    .line 933
    :cond_1c4
    const/4 v3, 0x0

    :goto_1c5
    if-eqz v3, :cond_1cd

    iget v1, v3, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v2, v0, Lmiui/view/ViewPager;->Ms:I

    if-eq v1, v2, :cond_1ee

    .line 934
    :cond_1cd
    :goto_1cd
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v5, v1, :cond_1ee

    .line 935
    invoke-virtual {v0, v5}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 936
    invoke-virtual {v0, v1}, Lmiui/view/ViewPager;->k(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 937
    if-eqz v2, :cond_1eb

    iget v2, v2, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v3, v0, Lmiui/view/ViewPager;->Ms:I

    if-ne v2, v3, :cond_1eb

    .line 938
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1eb

    .line 939
    goto :goto_1ee

    .line 934
    :cond_1eb
    add-int/lit8 v5, v5, 0x1

    goto :goto_1cd

    .line 945
    :cond_1ee
    :goto_1ee
    return-void
.end method

.method ad(I)Lmiui/view/ViewPager$ItemInfo;
    .registers 5

    .line 1157
    iget-object v0, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$ItemInfo;

    .line 1158
    iget v2, v1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_17

    .line 1159
    return-object v1

    .line 1161
    :cond_17
    goto :goto_6

    .line 1162
    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2414
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2416
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2418
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2f

    .line 2419
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 2420
    invoke-virtual {p0, v2}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2421
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 2422
    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->k(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2423
    if-eqz v4, :cond_2c

    iget v4, v4, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lmiui/view/ViewPager;->Ms:I

    if-ne v4, v5, :cond_2c

    .line 2424
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2419
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2434
    :cond_2f
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_3b

    if-eqz p1, :cond_58

    .line 2437
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_58

    .line 2440
    :cond_3b
    invoke-virtual {p0}, Lmiui/view/ViewPager;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_42

    .line 2441
    return-void

    .line 2443
    :cond_42
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_53

    .line 2444
    invoke-virtual {p0}, Lmiui/view/ViewPager;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_53

    invoke-virtual {p0}, Lmiui/view/ViewPager;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_53

    .line 2445
    return-void

    .line 2447
    :cond_53
    if-eqz p1, :cond_58

    .line 2448
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2451
    :cond_58
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2461
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2462
    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2463
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    .line 2464
    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->k(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 2465
    if-eqz v2, :cond_20

    iget v2, v2, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v3, p0, Lmiui/view/ViewPager;->Ms:I

    if-ne v2, v3, :cond_20

    .line 2466
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2461
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2470
    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    .line 1112
    invoke-virtual {p0, p3}, Lmiui/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1113
    invoke-virtual {p0, p3}, Lmiui/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1115
    :cond_a
    move-object v0, p3

    check-cast v0, Lmiui/view/ViewPager$LayoutParams;

    .line 1116
    iget-boolean v1, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lmiui/view/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    .line 1117
    iget-boolean v1, p0, Lmiui/view/ViewPager;->Nb:Z

    if-eqz v1, :cond_2b

    .line 1118
    iget-boolean v1, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_23

    .line 1121
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1122
    invoke-virtual {p0, p1, p2, p3}, Lmiui/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_2e

    .line 1119
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1124
    :cond_2b
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    :goto_2e
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 7

    .line 2325
    invoke-virtual {p0}, Lmiui/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2326
    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    .line 2328
    :cond_7
    const/4 v1, 0x0

    .line 2330
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2332
    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_5a

    if-eq v2, v0, :cond_5a

    .line 2333
    if-ne p1, v4, :cond_39

    .line 2336
    iget-object v1, p0, Lmiui/view/ViewPager;->Mq:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lmiui/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2337
    iget-object v3, p0, Lmiui/view/ViewPager;->Mq:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lmiui/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2338
    if-eqz v0, :cond_33

    if-lt v1, v3, :cond_33

    .line 2339
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dW()Z

    move-result v0

    goto :goto_37

    .line 2341
    :cond_33
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 2343
    :goto_37
    move v1, v0

    goto :goto_6e

    :cond_39
    if-ne p1, v3, :cond_6e

    .line 2346
    iget-object v1, p0, Lmiui/view/ViewPager;->Mq:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lmiui/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2347
    iget-object v3, p0, Lmiui/view/ViewPager;->Mq:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lmiui/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2348
    if-eqz v0, :cond_54

    if-gt v1, v3, :cond_54

    .line 2349
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dX()Z

    move-result v0

    goto :goto_58

    .line 2351
    :cond_54
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 2353
    :goto_58
    move v1, v0

    goto :goto_6e

    .line 2354
    :cond_5a
    if-eq p1, v4, :cond_6a

    const/4 v0, 0x1

    if-ne p1, v0, :cond_60

    goto :goto_6a

    .line 2357
    :cond_60
    if-eq p1, v3, :cond_65

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6e

    .line 2359
    :cond_65
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dX()Z

    move-result v1

    goto :goto_6e

    .line 2356
    :cond_6a
    :goto_6a
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dW()Z

    move-result v1

    .line 2361
    :cond_6e
    :goto_6e
    if-eqz v1, :cond_77

    .line 2362
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->playSoundEffect(I)V

    .line 2364
    :cond_77
    return v1
.end method

.method public beginFakeDrag()Z
    .registers 13

    .line 2101
    iget-boolean v0, p0, Lmiui/view/ViewPager;->qF:Z

    if-eqz v0, :cond_6

    .line 2102
    const/4 v0, 0x0

    return v0

    .line 2104
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ViewPager;->Np:Z

    .line 2105
    invoke-direct {p0, v0}, Lmiui/view/ViewPager;->ab(I)V

    .line 2106
    const/4 v1, 0x0

    iput v1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    iput v1, p0, Lmiui/view/ViewPager;->Nj:F

    .line 2107
    iget-object v1, p0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1c

    .line 2108
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    goto :goto_21

    .line 2110
    :cond_1c
    iget-object v1, p0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 2112
    :goto_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2113
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2114
    iget-object v2, p0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2115
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2116
    iput-wide v10, p0, Lmiui/view/ViewPager;->Nq:J

    .line 2117
    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 19

    move-object v0, p1

    .line 2262
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_53

    .line 2263
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2264
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2265
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2266
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 2268
    sub-int/2addr v5, v2

    :goto_16
    if-ltz v5, :cond_53

    .line 2271
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2272
    add-int v6, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_50

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_50

    add-int v8, p5, v4

    .line 2273
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_50

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_50

    const/4 v9, 0x1

    .line 2274
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 2275
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    .line 2274
    move-object v6, p0

    move v8, v9

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Lmiui/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 2276
    return v2

    .line 2268
    :cond_50
    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    .line 2281
    :cond_53
    if-eqz p2, :cond_5f

    move/from16 v1, p3

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v2, 0x0

    :goto_60
    return v2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .line 2539
    instance-of v0, p1, Lmiui/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public computeScroll()V
    .registers 5

    .line 1433
    iget-object v0, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1434
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1435
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1436
    iget-object v2, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1437
    iget-object v3, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1439
    if-ne v0, v2, :cond_28

    if-eq v1, v3, :cond_3a

    .line 1440
    :cond_28
    invoke-virtual {p0, v2, v3}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 1441
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lmiui/view/ViewPager;->g(IZ)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1442
    iget-object v1, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1443
    invoke-virtual {p0, v0, v3}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 1448
    :cond_3a
    invoke-virtual {p0}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    .line 1449
    return-void

    .line 1453
    :cond_3e
    invoke-direct {p0}, Lmiui/view/ViewPager;->dS()V

    .line 1454
    return-void
.end method

.method dO()V
    .registers 5

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setWillNotDraw(Z)V

    .line 307
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setDescendantFocusability(I)V

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setFocusable(Z)V

    .line 309
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 310
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lmiui/view/ViewPager;->wu:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    .line 311
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 312
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lmiui/view/ViewPager;->fE:I

    .line 313
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lmiui/view/ViewPager;->qI:I

    .line 314
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lmiui/view/ViewPager;->qJ:I

    .line 315
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/view/ViewPager;->Nr:Landroid/widget/EdgeEffect;

    .line 316
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/view/ViewPager;->Ns:Landroid/widget/EdgeEffect;

    .line 318
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 319
    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lmiui/view/ViewPager;->Nm:I

    .line 320
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lmiui/view/ViewPager;->Nn:I

    .line 321
    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lmiui/view/ViewPager;->Nh:I

    .line 323
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_63

    .line 324
    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setImportantForAccessibility(I)V

    .line 326
    :cond_63
    return-void
.end method

.method dQ()V
    .registers 12

    .line 705
    iget-object v0, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lmiui/view/ViewPager;->Ne:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1f

    iget-object v0, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    .line 706
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v1}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 707
    move v0, v2

    goto :goto_21

    .line 706
    :cond_1f
    nop

    .line 707
    move v0, v3

    :goto_21
    iget v1, p0, Lmiui/view/ViewPager;->Ms:I

    .line 708
    nop

    .line 710
    nop

    .line 711
    move v4, v0

    move v6, v1

    move v0, v3

    move v1, v0

    move v5, v1

    :goto_2a
    iget-object v7, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_b6

    .line 712
    iget-object v7, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    .line 713
    iget-object v8, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget-object v9, v7, Lmiui/view/ViewPager$ItemInfo;->NJ:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lmiui/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 715
    const/4 v9, -0x1

    if-ne v8, v9, :cond_59

    .line 717
    iget-boolean v8, v7, Lmiui/view/ViewPager$ItemInfo;->cT:Z

    iget-object v9, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget v10, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v9, v10}, Lmiui/view/PagerAdapter;->hasActionMenu(I)Z

    move-result v9

    if-eq v8, v9, :cond_b3

    .line 718
    iget-boolean v5, v7, Lmiui/view/ViewPager$ItemInfo;->cT:Z

    xor-int/2addr v5, v2

    iput-boolean v5, v7, Lmiui/view/ViewPager$ItemInfo;->cT:Z

    .line 719
    nop

    .line 711
    :goto_57
    move v5, v2

    goto :goto_b3

    .line 725
    :cond_59
    const/4 v9, -0x2

    if-ne v8, v9, :cond_91

    .line 726
    iget-object v4, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 727
    add-int/lit8 v0, v0, -0x1

    .line 729
    if-nez v1, :cond_6c

    .line 730
    iget-object v1, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, p0}, Lmiui/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 731
    nop

    .line 734
    move v1, v2

    :cond_6c
    iget-object v4, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget v8, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v9, v7, Lmiui/view/ViewPager$ItemInfo;->NJ:Ljava/lang/Object;

    invoke-virtual {v4, p0, v8, v9}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 735
    nop

    .line 737
    iget v4, p0, Lmiui/view/ViewPager;->Ms:I

    iget v7, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v4, v7, :cond_8f

    .line 739
    iget v4, p0, Lmiui/view/ViewPager;->Ms:I

    iget-object v6, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v6}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 740
    nop

    .line 711
    move v6, v4

    :cond_8f
    move v4, v2

    goto :goto_b3

    .line 745
    :cond_91
    iget v9, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_a1

    .line 746
    iget v4, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v9, p0, Lmiui/view/ViewPager;->Ms:I

    if-ne v4, v9, :cond_9d

    .line 748
    nop

    .line 751
    move v6, v8

    :cond_9d
    iput v8, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    .line 752
    nop

    .line 756
    move v4, v2

    :cond_a1
    iget-boolean v8, v7, Lmiui/view/ViewPager$ItemInfo;->cT:Z

    iget-object v9, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget v10, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v9, v10}, Lmiui/view/PagerAdapter;->hasActionMenu(I)Z

    move-result v9

    if-eq v8, v9, :cond_b3

    .line 757
    iget-boolean v5, v7, Lmiui/view/ViewPager$ItemInfo;->cT:Z

    xor-int/2addr v5, v2

    iput-boolean v5, v7, Lmiui/view/ViewPager$ItemInfo;->cT:Z

    .line 758
    goto :goto_57

    .line 711
    :cond_b3
    :goto_b3
    add-int/2addr v0, v2

    goto/16 :goto_2a

    .line 762
    :cond_b6
    if-eqz v1, :cond_bd

    .line 763
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lmiui/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 766
    :cond_bd
    iget-object v0, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    sget-object v1, Lmiui/view/ViewPager;->Mo:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 768
    if-eqz v4, :cond_e8

    .line 770
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v0

    .line 771
    move v1, v3

    :goto_cb
    if-ge v1, v0, :cond_e1

    .line 772
    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 773
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lmiui/view/ViewPager$LayoutParams;

    .line 774
    iget-boolean v5, v4, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_de

    .line 775
    const/4 v5, 0x0

    iput v5, v4, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    .line 771
    :cond_de
    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    .line 779
    :cond_e1
    invoke-virtual {p0, v6, v3, v2}, Lmiui/view/ViewPager;->a(IZZ)V

    .line 780
    invoke-virtual {p0}, Lmiui/view/ViewPager;->requestLayout()V

    .line 781
    goto :goto_e9

    .line 785
    :cond_e8
    move v3, v5

    :goto_e9
    if-eqz v3, :cond_ee

    .line 786
    invoke-virtual {p0}, Lmiui/view/ViewPager;->requestLayout()V

    .line 788
    :cond_ee
    return-void
.end method

.method dR()V
    .registers 2

    .line 791
    iget v0, p0, Lmiui/view/ViewPager;->Ms:I

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->ac(I)V

    .line 792
    return-void
.end method

.method dW()Z
    .registers 3

    .line 2394
    iget v0, p0, Lmiui/view/ViewPager;->Ms:I

    if-lez v0, :cond_c

    .line 2395
    iget v0, p0, Lmiui/view/ViewPager;->Ms:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lmiui/view/ViewPager;->setCurrentItem(IZ)V

    .line 2396
    return v1

    .line 2398
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method dX()Z
    .registers 4

    .line 2402
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_17

    iget v0, p0, Lmiui/view/ViewPager;->Ms:I

    iget-object v1, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v1}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_17

    .line 2403
    iget v0, p0, Lmiui/view/ViewPager;->Ms:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lmiui/view/ViewPager;->setCurrentItem(IZ)V

    .line 2404
    return v2

    .line 2406
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method dY()I
    .registers 3

    .line 2594
    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 2595
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarView()Lcom/miui/internal/widget/ActionBarView;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2596
    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarView()Lcom/miui/internal/widget/ActionBarView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->getSplitActionBarHeight(Z)I

    move-result v0

    goto :goto_19

    .line 2598
    :cond_18
    const/4 v0, 0x0

    .line 2601
    :goto_19
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 2287
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    .line 2512
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v0

    .line 2513
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_29

    .line 2514
    invoke-virtual {p0, v2}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2515
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_26

    .line 2516
    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->k(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2517
    if-eqz v4, :cond_26

    iget v4, v4, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lmiui/view/ViewPager;->Ms:I

    if-ne v4, v5, :cond_26

    .line 2518
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2519
    const/4 p1, 0x1

    return p1

    .line 2513
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2524
    :cond_29
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1998
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1999
    nop

    .line 2001
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getOverScrollMode()I

    move-result v0

    .line 2002
    const/4 v1, 0x0

    if-eqz v0, :cond_27

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1b

    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    .line 2004
    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_1b

    goto :goto_27

    .line 2029
    :cond_1b
    iget-object p1, p0, Lmiui/view/ViewPager;->Nr:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 2030
    iget-object p1, p0, Lmiui/view/ViewPager;->Ns:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_aa

    .line 2005
    :cond_27
    :goto_27
    iget-object v0, p0, Lmiui/view/ViewPager;->Nr:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_66

    .line 2006
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2007
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2008
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v2

    .line 2010
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2011
    neg-int v3, v1

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lmiui/view/ViewPager;->MF:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2012
    iget-object v3, p0, Lmiui/view/ViewPager;->Nr:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2013
    iget-object v1, p0, Lmiui/view/ViewPager;->Nr:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 2014
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2017
    :cond_66
    iget-object v0, p0, Lmiui/view/ViewPager;->Ns:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 2018
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2019
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v2

    .line 2020
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2022
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2023
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lmiui/view/ViewPager;->MI:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2024
    iget-object v4, p0, Lmiui/view/ViewPager;->Ns:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2025
    iget-object v2, p0, Lmiui/view/ViewPager;->Ns:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2026
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2027
    nop

    .line 2033
    :cond_aa
    :goto_aa
    if-eqz v1, :cond_af

    .line 2035
    invoke-virtual {p0}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    .line 2037
    :cond_af
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 613
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 614
    iget-object v0, p0, Lmiui/view/ViewPager;->Mx:Landroid/graphics/drawable/Drawable;

    .line 615
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 616
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 618
    :cond_14
    return-void
.end method

.method public endFakeDrag()V
    .registers 7

    .line 2127
    iget-boolean v0, p0, Lmiui/view/ViewPager;->Np:Z

    if-eqz v0, :cond_43

    .line 2131
    iget-object v0, p0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    .line 2132
    const/16 v1, 0x3e8

    iget v2, p0, Lmiui/view/ViewPager;->qJ:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2133
    iget v1, p0, Lmiui/view/ViewPager;->qE:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 2134
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/view/ViewPager;->Nd:Z

    .line 2135
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v2

    .line 2136
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v3

    .line 2137
    invoke-direct {p0}, Lmiui/view/ViewPager;->dU()Lmiui/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2138
    iget v5, v4, Lmiui/view/ViewPager$ItemInfo;->position:I

    .line 2139
    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget v2, v4, Lmiui/view/ViewPager$ItemInfo;->NM:F

    sub-float/2addr v3, v2

    iget v2, v4, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v3, v2

    .line 2140
    iget v2, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    iget v4, p0, Lmiui/view/ViewPager;->Nj:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 2141
    invoke-direct {p0, v5, v3, v0, v2}, Lmiui/view/ViewPager;->a(IFII)I

    move-result v2

    .line 2143
    invoke-virtual {p0, v2, v1, v1, v0}, Lmiui/view/ViewPager;->a(IZZI)V

    .line 2144
    invoke-direct {p0}, Lmiui/view/ViewPager;->dV()V

    .line 2146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->Np:Z

    .line 2147
    return-void

    .line 2128
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 2299
    nop

    .line 2300
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3f

    .line 2301
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_21

    packed-switch v0, :pswitch_data_42

    goto :goto_3f

    .line 2306
    :pswitch_13
    const/16 p1, 0x42

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->arrowScroll(I)Z

    move-result p1

    .line 2307
    goto :goto_40

    .line 2303
    :pswitch_1a
    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->arrowScroll(I)Z

    move-result p1

    .line 2304
    goto :goto_40

    .line 2309
    :cond_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3f

    .line 2312
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2313
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_40

    .line 2314
    :cond_33
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 2315
    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_40

    .line 2321
    :cond_3f
    :goto_3f
    const/4 p1, 0x0

    :goto_40
    return p1

    nop

    :pswitch_data_42
    .packed-switch 0x15
        :pswitch_1a
        :pswitch_13
    .end packed-switch
.end method

.method f(III)V
    .registers 12

    .line 648
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 650
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 651
    return-void

    .line 653
    :cond_b
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v3

    .line 654
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v4

    .line 655
    sub-int v5, p1, v3

    .line 656
    sub-int v6, p2, v4

    .line 657
    if-nez v5, :cond_25

    if-nez v6, :cond_25

    .line 658
    invoke-direct {p0}, Lmiui/view/ViewPager;->dS()V

    .line 659
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dR()V

    .line 660
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->ab(I)V

    .line 661
    return-void

    .line 664
    :cond_25
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 665
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lmiui/view/ViewPager;->ab(I)V

    .line 667
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result p1

    .line 668
    div-int/lit8 p2, p1, 0x2

    .line 669
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 670
    int-to-float p2, p2

    .line 671
    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->a(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr p2, v0

    .line 674
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 675
    if-lez p3, :cond_5e

    .line 676
    const/4 p1, 0x4

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/2addr p1, p2

    goto :goto_76

    .line 678
    :cond_5e
    iget-object p2, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget p3, p0, Lmiui/view/ViewPager;->Ms:I

    invoke-virtual {p2, p3}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result p2

    mul-float/2addr p1, p2

    .line 679
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lmiui/view/ViewPager;->Mw:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    .line 680
    add-float/2addr p2, v1

    const/high16 p1, 0x437a0000    # 250.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 682
    :goto_76
    const/16 p2, 0x320

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 684
    iget-object v2, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 685
    invoke-virtual {p0}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    .line 686
    return-void
.end method

.method public fakeDragBy(F)V
    .registers 19

    move-object/from16 v0, p0

    .line 2157
    iget-boolean v2, v0, Lmiui/view/ViewPager;->Np:Z

    if-eqz v2, :cond_84

    .line 2161
    iget v2, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    add-float v2, v2, p1

    iput v2, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 2163
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    .line 2164
    sub-float v2, v2, p1

    .line 2165
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v1

    .line 2167
    int-to-float v1, v1

    iget v3, v0, Lmiui/view/ViewPager;->MF:F

    mul-float/2addr v3, v1

    .line 2168
    iget v4, v0, Lmiui/view/ViewPager;->MI:F

    mul-float/2addr v4, v1

    .line 2170
    iget-object v5, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    .line 2171
    iget-object v6, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    iget-object v7, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/view/ViewPager$ItemInfo;

    .line 2172
    iget v7, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-eqz v7, :cond_3e

    .line 2173
    iget v3, v5, Lmiui/view/ViewPager$ItemInfo;->NM:F

    mul-float/2addr v3, v1

    .line 2175
    :cond_3e
    iget v5, v6, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v7, v0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v7}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v7

    sub-int/2addr v7, v8

    if-eq v5, v7, :cond_4c

    .line 2176
    iget v4, v6, Lmiui/view/ViewPager$ItemInfo;->NM:F

    mul-float/2addr v4, v1

    .line 2179
    :cond_4c
    cmpg-float v1, v2, v3

    if-gez v1, :cond_53

    .line 2180
    nop

    .line 2185
    move v2, v3

    goto :goto_59

    .line 2181
    :cond_53
    cmpl-float v1, v2, v4

    if-lez v1, :cond_59

    .line 2182
    nop

    .line 2185
    move v2, v4

    :cond_59
    :goto_59
    iget v1, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    float-to-int v3, v2

    int-to-float v4, v3

    sub-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 2186
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 2187
    invoke-direct {v0, v3, v8}, Lmiui/view/ViewPager;->g(IZ)Z

    .line 2190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 2191
    iget-wide v9, v0, Lmiui/view/ViewPager;->Nq:J

    const/4 v13, 0x2

    iget v14, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2193
    iget-object v0, v0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2194
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2195
    return-void

    .line 2158
    :cond_84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 2529
    new-instance v0, Lmiui/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Lmiui/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 2544
    new-instance v0, Lmiui/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 2534
    invoke-virtual {p0}, Lmiui/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Lmiui/view/PagerAdapter;
    .registers 2

    .line 404
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .registers 2

    .line 435
    iget v0, p0, Lmiui/view/ViewPager;->Ms:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    .line 526
    iget v0, p0, Lmiui/view/ViewPager;->Ne:I

    return v0
.end method

.method public getPageMargin()I
    .registers 2

    .line 582
    iget v0, p0, Lmiui/view/ViewPager;->Mw:I

    return v0
.end method

.method public isFakeDragging()Z
    .registers 2

    .line 2207
    iget-boolean v0, p0, Lmiui/view/ViewPager;->Np:Z

    return v0
.end method

.method k(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;
    .registers 6

    .line 1137
    iget-object v0, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$ItemInfo;

    .line 1138
    iget-object v2, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget-object v3, v1, Lmiui/view/ViewPager$ItemInfo;->NJ:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lmiui/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1139
    return-object v1

    .line 1141
    :cond_1d
    goto :goto_6

    .line 1142
    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method l(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;
    .registers 3

    .line 1147
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_10

    .line 1148
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_c

    .line 1149
    const/4 p1, 0x0

    return-object p1

    .line 1151
    :cond_c
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1153
    :cond_10
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->k(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method m(II)Lmiui/view/ViewPager$ItemInfo;
    .registers 5

    .line 689
    new-instance v0, Lmiui/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Lmiui/view/ViewPager$ItemInfo;-><init>()V

    .line 690
    iput p1, v0, Lmiui/view/ViewPager$ItemInfo;->position:I

    .line 691
    iget-object v1, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lmiui/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lmiui/view/ViewPager$ItemInfo;->NJ:Ljava/lang/Object;

    .line 692
    iget-object v1, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, p1}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    .line 693
    iget-object v1, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, p1}, Lmiui/view/PagerAdapter;->hasActionMenu(I)Z

    move-result p1

    iput-boolean p1, v0, Lmiui/view/ViewPager$ItemInfo;->cT:Z

    .line 694
    if-ltz p2, :cond_30

    iget-object p1, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_2a

    goto :goto_30

    .line 697
    :cond_2a
    iget-object p1, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_35

    .line 695
    :cond_30
    :goto_30
    iget-object p1, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :goto_35
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 1167
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ViewPager;->Nt:Z

    .line 1169
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v0, p0

    .line 2041
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2044
    iget v1, v0, Lmiui/view/ViewPager;->Mw:I

    if-lez v1, :cond_ae

    iget-object v1, v0, Lmiui/view/ViewPager;->Mx:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_ae

    iget-object v1, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_ae

    iget-object v1, v0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    if-eqz v1, :cond_ae

    .line 2045
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v1

    .line 2046
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v2

    .line 2048
    iget v3, v0, Lmiui/view/ViewPager;->Mw:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2049
    nop

    .line 2050
    iget-object v5, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    .line 2051
    iget v7, v5, Lmiui/view/ViewPager$ItemInfo;->NM:F

    .line 2052
    iget-object v8, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2053
    iget v9, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    .line 2054
    iget-object v10, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/view/ViewPager$ItemInfo;

    iget v10, v10, Lmiui/view/ViewPager$ItemInfo;->position:I

    .line 2055
    :goto_46
    if-ge v9, v10, :cond_ae

    .line 2056
    :goto_48
    iget v11, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-le v9, v11, :cond_59

    if-ge v6, v8, :cond_59

    .line 2057
    iget-object v5, v0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_48

    .line 2061
    :cond_59
    iget v11, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v11, :cond_6c

    .line 2062
    iget v7, v5, Lmiui/view/ViewPager$ItemInfo;->NM:F

    iget v11, v5, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v11

    mul-float/2addr v7, v4

    .line 2063
    iget v11, v5, Lmiui/view/ViewPager$ItemInfo;->NM:F

    iget v12, v5, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v12

    add-float/2addr v11, v3

    .line 2070
    move v12, v7

    move v7, v11

    goto :goto_77

    .line 2065
    :cond_6c
    iget-object v11, v0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v11, v9}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    .line 2066
    add-float v12, v7, v11

    mul-float/2addr v12, v4

    .line 2067
    add-float/2addr v11, v3

    add-float/2addr v7, v11

    .line 2070
    :goto_77
    iget v11, v0, Lmiui/view/ViewPager;->Mw:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    int-to-float v13, v1

    cmpl-float v11, v11, v13

    if-lez v11, :cond_9d

    .line 2071
    iget-object v11, v0, Lmiui/view/ViewPager;->Mx:Landroid/graphics/drawable/Drawable;

    float-to-int v13, v12

    iget v14, v0, Lmiui/view/ViewPager;->My:I

    iget v15, v0, Lmiui/view/ViewPager;->Mw:I

    int-to-float v15, v15

    add-float/2addr v15, v12

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    move/from16 v17, v3

    iget v3, v0, Lmiui/view/ViewPager;->Mz:I

    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2073
    iget-object v3, v0, Lmiui/view/ViewPager;->Mx:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a1

    .line 2076
    :cond_9d
    move-object/from16 v11, p1

    move/from16 v17, v3

    :goto_a1
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_a9

    .line 2077
    goto :goto_ae

    .line 2055
    :cond_a9
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v17

    goto :goto_46

    .line 2081
    :cond_ae
    :goto_ae
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 2549
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2550
    const-class v0, Lmiui/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2551
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 2555
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2556
    const-class v0, Lmiui/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2557
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2558
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_37

    iget v0, p0, Lmiui/view/ViewPager;->Ms:I

    if-ltz v0, :cond_37

    iget v0, p0, Lmiui/view/ViewPager;->Ms:I

    iget-object v2, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v2}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_37

    .line 2559
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2561
    :cond_37
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_4e

    iget v0, p0, Lmiui/view/ViewPager;->Ms:I

    if-lez v0, :cond_4e

    iget v0, p0, Lmiui/view/ViewPager;->Ms:I

    iget-object v1, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v1}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 2562
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2564
    :cond_4e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 17

    move-object v6, p0

    .line 1615
    move-object/from16 v7, p1

    iget-boolean v0, v6, Lmiui/view/ViewPager;->NB:Z

    const/4 v8, 0x0

    if-nez v0, :cond_9

    .line 1616
    return v8

    .line 1625
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1628
    const/4 v1, 0x3

    if-eq v0, v1, :cond_119

    const/4 v9, 0x1

    if-ne v0, v9, :cond_17

    goto/16 :goto_119

    .line 1637
    :cond_17
    if-eqz v0, :cond_23

    .line 1638
    iget-boolean v1, v6, Lmiui/view/ViewPager;->qF:Z

    if-eqz v1, :cond_1e

    .line 1640
    return v9

    .line 1642
    :cond_1e
    iget-boolean v1, v6, Lmiui/view/ViewPager;->Nf:Z

    if-eqz v1, :cond_23

    .line 1644
    return v8

    .line 1648
    :cond_23
    const/4 v1, 0x2

    if-eqz v0, :cond_bd

    if-eq v0, v1, :cond_32

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2d

    goto/16 :goto_107

    .line 1744
    :cond_2d
    invoke-direct/range {p0 .. p1}, Lmiui/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_107

    .line 1659
    :cond_32
    iget v0, v6, Lmiui/view/ViewPager;->qE:I

    .line 1660
    const/4 v1, -0x1

    if-ne v0, v1, :cond_39

    .line 1662
    goto/16 :goto_107

    .line 1665
    :cond_39
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1668
    if-ltz v0, :cond_107

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v1, :cond_47

    .line 1669
    goto/16 :goto_107

    .line 1672
    :cond_47
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 1673
    iget v1, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    sub-float v1, v10, v1

    .line 1674
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1675
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 1676
    iget v0, v6, Lmiui/view/ViewPager;->mLastMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1679
    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_81

    iget v0, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-direct {v6, v0, v1}, Lmiui/view/ViewPager;->b(FF)Z

    move-result v0

    if-nez v0, :cond_81

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    .line 1680
    move-object v0, v6

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lmiui/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1682
    iput v10, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    iput v10, v6, Lmiui/view/ViewPager;->Nj:F

    .line 1683
    iput v12, v6, Lmiui/view/ViewPager;->mLastMotionY:F

    .line 1684
    iput-boolean v9, v6, Lmiui/view/ViewPager;->Nf:Z

    .line 1685
    return v8

    .line 1687
    :cond_81
    iget v0, v6, Lmiui/view/ViewPager;->fE:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a6

    cmpl-float v0, v11, v13

    if-lez v0, :cond_a6

    .line 1689
    iput-boolean v9, v6, Lmiui/view/ViewPager;->qF:Z

    .line 1690
    invoke-direct {v6, v9}, Lmiui/view/ViewPager;->ab(I)V

    .line 1691
    if-lez v14, :cond_9a

    iget v0, v6, Lmiui/view/ViewPager;->Nj:F

    iget v1, v6, Lmiui/view/ViewPager;->fE:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_a0

    .line 1692
    :cond_9a
    iget v0, v6, Lmiui/view/ViewPager;->Nj:F

    iget v1, v6, Lmiui/view/ViewPager;->fE:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_a0
    iput v0, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 1693
    invoke-direct {v6, v9}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_af

    .line 1695
    :cond_a6
    iget v0, v6, Lmiui/view/ViewPager;->fE:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_af

    .line 1701
    iput-boolean v9, v6, Lmiui/view/ViewPager;->Nf:Z

    .line 1704
    :cond_af
    :goto_af
    iget-boolean v0, v6, Lmiui/view/ViewPager;->qF:Z

    if-eqz v0, :cond_107

    .line 1706
    invoke-direct {v6, v10}, Lmiui/view/ViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 1707
    invoke-virtual {v6}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    goto :goto_107

    .line 1718
    :cond_bd
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lmiui/view/ViewPager;->Nj:F

    iput v0, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 1719
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lmiui/view/ViewPager;->mLastMotionY:F

    .line 1720
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lmiui/view/ViewPager;->qE:I

    .line 1721
    iput-boolean v8, v6, Lmiui/view/ViewPager;->Nf:Z

    .line 1723
    iget-object v0, v6, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1724
    iget v0, v6, Lmiui/view/ViewPager;->NH:I

    if-ne v0, v1, :cond_101

    iget-object v0, v6, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    .line 1725
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lmiui/view/ViewPager;->Nn:I

    if-le v0, v1, :cond_101

    .line 1727
    iget-object v0, v6, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1728
    iput-boolean v8, v6, Lmiui/view/ViewPager;->Nd:Z

    .line 1729
    invoke-virtual {v6}, Lmiui/view/ViewPager;->dR()V

    .line 1730
    iput-boolean v9, v6, Lmiui/view/ViewPager;->qF:Z

    .line 1731
    invoke-direct {v6, v9}, Lmiui/view/ViewPager;->ab(I)V

    goto :goto_107

    .line 1733
    :cond_101
    invoke-direct {v6}, Lmiui/view/ViewPager;->dS()V

    .line 1734
    iput-boolean v8, v6, Lmiui/view/ViewPager;->qF:Z

    .line 1740
    nop

    .line 1748
    :cond_107
    :goto_107
    iget-object v0, v6, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    if-nez v0, :cond_111

    .line 1749
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    .line 1751
    :cond_111
    iget-object v0, v6, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1757
    iget-boolean v0, v6, Lmiui/view/ViewPager;->qF:Z

    return v0

    .line 1631
    :cond_119
    :goto_119
    invoke-direct {v6}, Lmiui/view/ViewPager;->dT()Z

    .line 1632
    return v8
.end method

.method protected onLayout(ZIIII)V
    .registers 25

    move-object/from16 v0, p0

    .line 1316
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/view/ViewPager;->Nb:Z

    .line 1317
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->dR()V

    .line 1318
    const/4 v2, 0x0

    iput-boolean v2, v0, Lmiui/view/ViewPager;->Nb:Z

    .line 1320
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v3

    .line 1321
    sub-int v4, p4, p2

    .line 1322
    sub-int v5, p5, p3

    .line 1323
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingLeft()I

    move-result v6

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v7

    .line 1325
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingRight()I

    move-result v8

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingBottom()I

    move-result v9

    .line 1327
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v10

    .line 1329
    nop

    .line 1333
    move v12, v2

    move v11, v9

    move v9, v7

    move v7, v6

    move v6, v12

    :goto_2d
    const/16 v13, 0x8

    if-ge v6, v3, :cond_d7

    .line 1334
    invoke-virtual {v0, v6}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1335
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v13, :cond_d1

    .line 1336
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lmiui/view/ViewPager$LayoutParams;

    .line 1339
    iget-boolean v15, v13, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_d1

    .line 1340
    iget v15, v13, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getLayoutDirection()I

    move-result v2

    invoke-static {v15, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    .line 1342
    iget v13, v13, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x70

    .line 1343
    if-eq v2, v1, :cond_7b

    const/4 v15, 0x3

    if-eq v2, v15, :cond_6e

    const/4 v15, 0x5

    if-eq v2, v15, :cond_61

    .line 1345
    nop

    .line 1346
    nop

    .line 1360
    move v2, v7

    goto :goto_88

    .line 1356
    :cond_61
    sub-int v2, v4, v8

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v2, v15

    .line 1357
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v8, v15

    goto :goto_88

    .line 1348
    :cond_6e
    nop

    .line 1349
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v7

    .line 1350
    nop

    .line 1360
    move/from16 v18, v7

    move v7, v2

    move/from16 v2, v18

    goto :goto_88

    .line 1352
    :cond_7b
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1354
    nop

    .line 1360
    :goto_88
    const/16 v15, 0x10

    if-eq v13, v15, :cond_ac

    const/16 v15, 0x30

    if-eq v13, v15, :cond_a5

    const/16 v15, 0x50

    if-eq v13, v15, :cond_98

    .line 1362
    nop

    .line 1363
    nop

    .line 1377
    move v13, v9

    goto :goto_be

    .line 1373
    :cond_98
    sub-int v13, v5, v11

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v13, v15

    .line 1374
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v11, v15

    goto :goto_b9

    .line 1365
    :cond_a5
    nop

    .line 1366
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v9

    .line 1367
    goto :goto_be

    .line 1369
    :cond_ac
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v13, v5, v13

    div-int/lit8 v13, v13, 0x2

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1371
    nop

    .line 1377
    :goto_b9
    move/from16 v18, v13

    move v13, v9

    move/from16 v9, v18

    :goto_be
    add-int/2addr v2, v10

    .line 1378
    nop

    .line 1379
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v2

    .line 1380
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v1, v9, v17

    .line 1378
    invoke-virtual {v14, v2, v9, v15, v1}, Landroid/view/View;->layout(IIII)V

    .line 1381
    add-int/lit8 v12, v12, 0x1

    .line 1333
    move v9, v13

    :cond_d1
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_2d

    .line 1387
    :cond_d7
    const/4 v1, 0x0

    :goto_d8
    if-ge v1, v3, :cond_14c

    .line 1388
    invoke-virtual {v0, v1}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1389
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v13, :cond_147

    .line 1390
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lmiui/view/ViewPager$LayoutParams;

    .line 1392
    iget-boolean v10, v6, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_147

    invoke-virtual {v0, v2}, Lmiui/view/ViewPager;->k(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v10

    if-eqz v10, :cond_147

    .line 1393
    int-to-float v14, v4

    iget v15, v10, Lmiui/view/ViewPager$ItemInfo;->NM:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    .line 1394
    add-int/2addr v14, v7

    .line 1395
    iget-boolean v15, v0, Lmiui/view/ViewPager;->Nl:Z

    if-nez v15, :cond_102

    iget-boolean v15, v6, Lmiui/view/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v15, :cond_139

    .line 1398
    :cond_102
    const/4 v15, 0x0

    iput-boolean v15, v6, Lmiui/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1399
    sub-int v16, v4, v7

    sub-int v13, v16, v8

    int-to-float v13, v13

    iget v6, v6, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v13, v6

    float-to-int v6, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v6, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1403
    iput-boolean v15, v0, Lmiui/view/ViewPager;->Nl:Z

    .line 1406
    nop

    .line 1407
    iget-boolean v10, v10, Lmiui/view/ViewPager$ItemInfo;->cT:Z

    if-eqz v10, :cond_120

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->dY()I

    move-result v10

    goto :goto_121

    .line 1411
    :cond_120
    const/4 v10, 0x0

    :goto_121
    sub-int v15, v5, v9

    sub-int/2addr v15, v11

    int-to-float v15, v15

    int-to-float v10, v10

    const/high16 v17, 0x3f800000    # 1.0f

    iget v13, v0, Lmiui/view/ViewPager;->Nk:F

    sub-float v17, v17, v13

    mul-float v10, v10, v17

    sub-float/2addr v15, v10

    float-to-int v10, v15

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1414
    invoke-virtual {v2, v6, v10}, Landroid/view/View;->measure(II)V

    .line 1419
    :cond_139
    nop

    .line 1420
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v14

    .line 1421
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v9

    .line 1419
    invoke-virtual {v2, v14, v9, v6, v10}, Landroid/view/View;->layout(IIII)V

    .line 1387
    :cond_147
    add-int/lit8 v1, v1, 0x1

    const/16 v13, 0x8

    goto :goto_d8

    .line 1425
    :cond_14c
    iput v9, v0, Lmiui/view/ViewPager;->My:I

    .line 1426
    sub-int/2addr v5, v11

    iput v5, v0, Lmiui/view/ViewPager;->Mz:I

    .line 1427
    iput v12, v0, Lmiui/view/ViewPager;->Nw:I

    .line 1428
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/view/ViewPager;->Nt:Z

    .line 1429
    return-void
.end method

.method protected onMeasure(II)V
    .registers 20

    move-object/from16 v0, p0

    .line 1178
    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Lmiui/view/ViewPager;->getDefaultSize(II)I

    move-result v2

    .line 1179
    move/from16 v3, p2

    invoke-static {v1, v3}, Lmiui/view/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1178
    invoke-virtual {v0, v2, v3}, Lmiui/view/ViewPager;->setMeasuredDimension(II)V

    .line 1181
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getMeasuredWidth()I

    move-result v2

    .line 1182
    div-int/lit8 v3, v2, 0xa

    .line 1183
    iget v4, v0, Lmiui/view/ViewPager;->Nh:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lmiui/view/ViewPager;->Ni:I

    .line 1186
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1187
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v4

    .line 1195
    move v5, v3

    move v3, v2

    move v2, v1

    :goto_3f
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v2, v4, :cond_d6

    .line 1196
    invoke-virtual {v0, v2}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1197
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_d1

    .line 1198
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lmiui/view/ViewPager$LayoutParams;

    .line 1199
    if-eqz v6, :cond_d1

    iget-boolean v10, v6, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v10, :cond_d1

    .line 1200
    iget v10, v6, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getLayoutDirection()I

    move-result v11

    invoke-static {v10, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    .line 1202
    iget v11, v6, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v11, v11, 0x70

    .line 1203
    nop

    .line 1204
    nop

    .line 1205
    const/16 v12, 0x30

    if-eq v11, v12, :cond_79

    const/16 v12, 0x50

    if-ne v11, v12, :cond_77

    goto :goto_79

    .line 1206
    :cond_77
    move v11, v1

    goto :goto_7b

    .line 1205
    :cond_79
    :goto_79
    nop

    .line 1206
    move v11, v7

    :goto_7b
    const/4 v12, 0x3

    if-eq v10, v12, :cond_84

    const/4 v12, 0x5

    if-ne v10, v12, :cond_82

    goto :goto_84

    .line 1208
    :cond_82
    move v7, v1

    goto :goto_85

    .line 1206
    :cond_84
    :goto_84
    nop

    .line 1208
    :goto_85
    const/high16 v10, -0x80000000

    if-eqz v11, :cond_8d

    .line 1209
    nop

    .line 1214
    move v12, v10

    move v10, v8

    goto :goto_93

    .line 1210
    :cond_8d
    if-eqz v7, :cond_92

    .line 1211
    nop

    .line 1214
    move v12, v8

    goto :goto_93

    :cond_92
    move v12, v10

    .line 1215
    :goto_93
    nop

    .line 1217
    iget v13, v6, Lmiui/view/ViewPager$LayoutParams;->width:I

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v13, v15, :cond_a6

    .line 1218
    nop

    .line 1219
    iget v10, v6, Lmiui/view/ViewPager$LayoutParams;->width:I

    if-eq v10, v14, :cond_a3

    .line 1220
    iget v10, v6, Lmiui/view/ViewPager$LayoutParams;->width:I

    .line 1223
    move v13, v10

    goto :goto_a4

    :cond_a3
    move v13, v3

    :goto_a4
    move v10, v8

    goto :goto_a7

    :cond_a6
    move v13, v3

    :goto_a7
    iget v1, v6, Lmiui/view/ViewPager$LayoutParams;->height:I

    if-eq v1, v15, :cond_b5

    .line 1224
    nop

    .line 1225
    iget v1, v6, Lmiui/view/ViewPager$LayoutParams;->height:I

    if-eq v1, v14, :cond_b3

    .line 1226
    iget v1, v6, Lmiui/view/ViewPager$LayoutParams;->height:I

    goto :goto_b7

    .line 1229
    :cond_b3
    move v1, v5

    goto :goto_b7

    :cond_b5
    move v1, v5

    move v8, v12

    :goto_b7
    invoke-static {v13, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1230
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1231
    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    .line 1233
    if-eqz v11, :cond_ca

    .line 1234
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v5, v1

    goto :goto_d1

    .line 1235
    :cond_ca
    if-eqz v7, :cond_d1

    .line 1236
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    .line 1195
    :cond_d1
    :goto_d1
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_3f

    .line 1242
    :cond_d6
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lmiui/view/ViewPager;->MJ:I

    .line 1243
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lmiui/view/ViewPager;->Na:I

    .line 1246
    iput-boolean v7, v0, Lmiui/view/ViewPager;->Nb:Z

    .line 1247
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->dR()V

    .line 1248
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/view/ViewPager;->Nb:Z

    .line 1251
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1252
    :goto_ee
    if-ge v1, v2, :cond_132

    .line 1253
    invoke-virtual {v0, v1}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1254
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v6, :cond_12f

    .line 1258
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$LayoutParams;

    .line 1259
    iget-boolean v9, v7, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_12f

    .line 1260
    int-to-float v9, v3

    iget v7, v7, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v9, v7

    float-to-int v7, v9

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1264
    nop

    .line 1265
    invoke-virtual {v0, v4}, Lmiui/view/ViewPager;->k(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v9

    .line 1266
    if-eqz v9, :cond_127

    iget-boolean v9, v9, Lmiui/view/ViewPager$ItemInfo;->cT:Z

    if-eqz v9, :cond_127

    .line 1267
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->dY()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    iget v11, v0, Lmiui/view/ViewPager;->Nk:F

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    float-to-int v9, v9

    sub-int v9, v5, v9

    goto :goto_128

    .line 1269
    :cond_127
    move v9, v5

    :goto_128
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1271
    invoke-virtual {v4, v7, v9}, Landroid/view/View;->measure(II)V

    .line 1252
    :cond_12f
    add-int/lit8 v1, v1, 0x1

    goto :goto_ee

    .line 1275
    :cond_132
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .registers 15

    .line 1532
    iget v0, p0, Lmiui/view/ViewPager;->Nw:I

    const/4 v1, 0x1

    if-lez v0, :cond_76

    .line 1533
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1534
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingLeft()I

    move-result v2

    .line 1535
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingRight()I

    move-result v3

    .line 1536
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v4

    .line 1537
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v5

    .line 1538
    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v5, :cond_76

    .line 1539
    invoke-virtual {p0, v6}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1540
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lmiui/view/ViewPager$LayoutParams;

    .line 1541
    iget-boolean v9, v8, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_2b

    goto :goto_73

    .line 1543
    :cond_2b
    iget v8, v8, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getLayoutDirection()I

    move-result v9

    invoke-static {v8, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    .line 1546
    if-eq v8, v1, :cond_57

    const/4 v9, 0x3

    if-eq v8, v9, :cond_50

    const/4 v9, 0x5

    if-eq v8, v9, :cond_43

    .line 1548
    nop

    .line 1549
    nop

    .line 1563
    move v8, v2

    goto :goto_67

    .line 1559
    :cond_43
    sub-int v8, v4, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    .line 1560
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    goto :goto_64

    .line 1551
    :cond_50
    nop

    .line 1552
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    .line 1553
    goto :goto_67

    .line 1555
    :cond_57
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v4, v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1557
    nop

    .line 1563
    :goto_64
    move v10, v8

    move v8, v2

    move v2, v10

    :goto_67
    add-int/2addr v2, v0

    .line 1565
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v2, v9

    .line 1566
    if-eqz v2, :cond_72

    .line 1567
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1538
    :cond_72
    move v2, v8

    :goto_73
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 1572
    :cond_76
    iget-object v0, p0, Lmiui/view/ViewPager;->Nx:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7f

    .line 1573
    iget-object v0, p0, Lmiui/view/ViewPager;->Nx:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1575
    :cond_7f
    iget-object v0, p0, Lmiui/view/ViewPager;->Ny:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_88

    .line 1576
    iget-object v0, p0, Lmiui/view/ViewPager;->Ny:Lmiui/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1578
    :cond_88
    iput-boolean v1, p0, Lmiui/view/ViewPager;->Nv:Z

    .line 1579
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    .line 2481
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v0

    .line 2482
    and-int/lit8 v1, p1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_12

    .line 2483
    nop

    .line 2484
    nop

    .line 2485
    nop

    .line 2491
    move v2, v0

    move v0, v3

    move v1, v4

    goto :goto_17

    .line 2487
    :cond_12
    add-int/lit8 v0, v0, -0x1

    .line 2488
    nop

    .line 2489
    nop

    .line 2491
    move v1, v2

    :goto_17
    if-eq v0, v2, :cond_38

    .line 2492
    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2493
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_36

    .line 2494
    invoke-virtual {p0, v5}, Lmiui/view/ViewPager;->k(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 2495
    if-eqz v6, :cond_36

    iget v6, v6, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v7, p0, Lmiui/view/ViewPager;->Ms:I

    if-ne v6, v7, :cond_36

    .line 2496
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 2497
    return v4

    .line 2491
    :cond_36
    add-int/2addr v0, v1

    goto :goto_17

    .line 2502
    :cond_38
    return v3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    .line 1093
    instance-of v0, p1, Lmiui/view/ViewPager$SavedState;

    if-nez v0, :cond_8

    .line 1094
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1095
    return-void

    .line 1098
    :cond_8
    check-cast p1, Lmiui/view/ViewPager$SavedState;

    .line 1099
    invoke-virtual {p1}, Lmiui/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1101
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_25

    .line 1102
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget-object v1, p1, Lmiui/view/ViewPager$SavedState;->NQ:Landroid/os/Parcelable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1103
    iget p1, p1, Lmiui/view/ViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lmiui/view/ViewPager;->a(IZZ)V

    goto :goto_2d

    .line 1105
    :cond_25
    iget v0, p1, Lmiui/view/ViewPager$SavedState;->position:I

    iput v0, p0, Lmiui/view/ViewPager;->Mt:I

    .line 1106
    iget-object p1, p1, Lmiui/view/ViewPager$SavedState;->NQ:Landroid/os/Parcelable;

    iput-object p1, p0, Lmiui/view/ViewPager;->Mu:Landroid/os/Parcelable;

    .line 1108
    :goto_2d
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1082
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1083
    new-instance v1, Lmiui/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lmiui/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1084
    iget v0, p0, Lmiui/view/ViewPager;->Ms:I

    iput v0, v1, Lmiui/view/ViewPager$SavedState;->position:I

    .line 1085
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_19

    .line 1086
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lmiui/view/ViewPager$SavedState;->NQ:Landroid/os/Parcelable;

    .line 1088
    :cond_19
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 1279
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1282
    if-eq p1, p3, :cond_c

    .line 1283
    iget p2, p0, Lmiui/view/ViewPager;->Mw:I

    iget p4, p0, Lmiui/view/ViewPager;->Mw:I

    invoke-direct {p0, p1, p3, p2, p4}, Lmiui/view/ViewPager;->d(IIII)V

    .line 1285
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1762
    iget-boolean v0, p0, Lmiui/view/ViewPager;->Np:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1766
    return v1

    .line 1769
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_14

    .line 1772
    return v2

    .line 1775
    :cond_14
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_142

    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_142

    .line 1780
    :cond_22
    iget-object v0, p0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2c

    .line 1781
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    .line 1783
    :cond_2c
    iget-object v0, p0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1785
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1786
    nop

    .line 1788
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_144

    :pswitch_3b
    goto/16 :goto_13c

    .line 1864
    :pswitch_3d
    invoke-direct {p0, p1}, Lmiui/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    .line 1865
    iget v0, p0, Lmiui/view/ViewPager;->qE:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_13c

    .line 1858
    :pswitch_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1859
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 1860
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiui/view/ViewPager;->qE:I

    .line 1861
    goto/16 :goto_13c

    .line 1852
    :pswitch_60
    iget-boolean p1, p0, Lmiui/view/ViewPager;->qF:Z

    if-eqz p1, :cond_13c

    .line 1853
    iget p1, p0, Lmiui/view/ViewPager;->Ms:I

    invoke-virtual {p0, p1, v1, v1}, Lmiui/view/ViewPager;->a(IZZ)V

    .line 1854
    invoke-direct {p0}, Lmiui/view/ViewPager;->dT()Z

    move-result v2

    goto/16 :goto_13c

    .line 1802
    :pswitch_6f
    iget-boolean v0, p0, Lmiui/view/ViewPager;->qF:Z

    if-nez v0, :cond_c3

    .line 1803
    iget v0, p0, Lmiui/view/ViewPager;->qE:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1804
    const/4 v3, -0x1

    if-ne v0, v3, :cond_82

    .line 1805
    invoke-direct {p0}, Lmiui/view/ViewPager;->dT()Z

    move-result v2

    .line 1806
    goto/16 :goto_13c

    .line 1808
    :cond_82
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1809
    iget v4, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1810
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1811
    iget v5, p0, Lmiui/view/ViewPager;->mLastMotionY:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1813
    iget v5, p0, Lmiui/view/ViewPager;->fE:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_c3

    cmpl-float v0, v4, v0

    if-lez v0, :cond_c3

    .line 1815
    iput-boolean v1, p0, Lmiui/view/ViewPager;->qF:Z

    .line 1816
    iget v0, p0, Lmiui/view/ViewPager;->Nj:F

    sub-float/2addr v3, v0

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_b5

    iget v0, p0, Lmiui/view/ViewPager;->Nj:F

    iget v3, p0, Lmiui/view/ViewPager;->fE:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    goto :goto_bb

    .line 1817
    :cond_b5
    iget v0, p0, Lmiui/view/ViewPager;->Nj:F

    iget v3, p0, Lmiui/view/ViewPager;->fE:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    :goto_bb
    iput v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 1818
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->ab(I)V

    .line 1819
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1823
    :cond_c3
    iget-boolean v0, p0, Lmiui/view/ViewPager;->qF:Z

    if-eqz v0, :cond_13c

    .line 1825
    iget v0, p0, Lmiui/view/ViewPager;->qE:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1826
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 1827
    invoke-direct {p0, p1}, Lmiui/view/ViewPager;->b(F)Z

    move-result v2

    .line 1828
    goto :goto_13c

    .line 1831
    :pswitch_d6
    iget-boolean v0, p0, Lmiui/view/ViewPager;->qF:Z

    if-eqz v0, :cond_13c

    .line 1832
    iget-object v0, p0, Lmiui/view/ViewPager;->qS:Landroid/view/VelocityTracker;

    .line 1833
    const/16 v2, 0x3e8

    iget v3, p0, Lmiui/view/ViewPager;->qJ:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1834
    iget v2, p0, Lmiui/view/ViewPager;->qE:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 1835
    iput-boolean v1, p0, Lmiui/view/ViewPager;->Nd:Z

    .line 1836
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v2

    .line 1837
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1838
    invoke-direct {p0}, Lmiui/view/ViewPager;->dU()Lmiui/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 1839
    iget v5, v4, Lmiui/view/ViewPager$ItemInfo;->position:I

    .line 1840
    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget v2, v4, Lmiui/view/ViewPager$ItemInfo;->NM:F

    sub-float/2addr v3, v2

    iget v2, v4, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v3, v2

    .line 1841
    iget v2, p0, Lmiui/view/ViewPager;->qE:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1842
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 1843
    iget v2, p0, Lmiui/view/ViewPager;->Nj:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 1844
    invoke-direct {p0, v5, v3, v0, p1}, Lmiui/view/ViewPager;->a(IFII)I

    move-result p1

    .line 1846
    invoke-virtual {p0, p1, v1, v1, v0}, Lmiui/view/ViewPager;->a(IZZI)V

    .line 1848
    invoke-direct {p0}, Lmiui/view/ViewPager;->dT()Z

    move-result v2

    .line 1849
    goto :goto_13c

    .line 1790
    :pswitch_11e
    iget-object v0, p0, Lmiui/view/ViewPager;->wp:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1791
    iput-boolean v2, p0, Lmiui/view/ViewPager;->Nd:Z

    .line 1792
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dR()V

    .line 1793
    iput-boolean v1, p0, Lmiui/view/ViewPager;->qF:Z

    .line 1794
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->ab(I)V

    .line 1797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiui/view/ViewPager;->Nj:F

    iput v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    .line 1798
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiui/view/ViewPager;->qE:I

    .line 1799
    nop

    .line 1868
    :cond_13c
    :goto_13c
    if-eqz v2, :cond_141

    .line 1869
    invoke-virtual {p0}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    .line 1871
    :cond_141
    return v1

    .line 1777
    :cond_142
    :goto_142
    return v2

    nop

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_11e
        :pswitch_d6
        :pswitch_6f
        :pswitch_60
        :pswitch_3b
        :pswitch_4e
        :pswitch_3d
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 5

    .line 2568
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 2569
    return v0

    .line 2571
    :cond_8
    const/16 p2, 0x1000

    const/4 v1, 0x0

    if-eq p1, p2, :cond_2c

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_12

    .line 2585
    return v1

    .line 2579
    :cond_12
    iget-object p1, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    if-eqz p1, :cond_2b

    iget p1, p0, Lmiui/view/ViewPager;->Ms:I

    if-lez p1, :cond_2b

    iget p1, p0, Lmiui/view/ViewPager;->Ms:I

    iget-object p2, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {p2}, Lmiui/view/PagerAdapter;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_2b

    .line 2580
    iget p1, p0, Lmiui/view/ViewPager;->Ms:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->setCurrentItem(I)V

    .line 2581
    return v0

    .line 2583
    :cond_2b
    return v1

    .line 2573
    :cond_2c
    iget-object p1, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    if-eqz p1, :cond_46

    iget p1, p0, Lmiui/view/ViewPager;->Ms:I

    if-ltz p1, :cond_46

    iget p1, p0, Lmiui/view/ViewPager;->Ms:I

    iget-object p2, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {p2}, Lmiui/view/PagerAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_46

    .line 2574
    iget p1, p0, Lmiui/view/ViewPager;->Ms:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->setCurrentItem(I)V

    .line 2575
    return v0

    .line 2577
    :cond_46
    return v1
.end method

.method public setAdapter(Lmiui/view/PagerAdapter;)V
    .registers 8

    .line 349
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 350
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget-object v2, p0, Lmiui/view/ViewPager;->Mv:Lmiui/view/ViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Lmiui/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 351
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lmiui/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 352
    iget-object v0, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/view/ViewPager$ItemInfo;

    .line 353
    iget-object v3, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget v4, v2, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v2, v2, Lmiui/view/ViewPager$ItemInfo;->NJ:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 354
    goto :goto_17

    .line 355
    :cond_2d
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lmiui/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 356
    iget-object v0, p0, Lmiui/view/ViewPager;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    invoke-direct {p0}, Lmiui/view/ViewPager;->dP()V

    .line 358
    iput v1, p0, Lmiui/view/ViewPager;->Ms:I

    .line 359
    invoke-virtual {p0, v1, v1}, Lmiui/view/ViewPager;->scrollTo(II)V

    .line 362
    :cond_3f
    iget-object v0, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    .line 363
    iput-object p1, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    .line 365
    iget-object v2, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    if-eqz v2, :cond_78

    .line 366
    iget-object v2, p0, Lmiui/view/ViewPager;->Mv:Lmiui/view/ViewPager$PagerObserver;

    const/4 v3, 0x0

    if-nez v2, :cond_53

    .line 367
    new-instance v2, Lmiui/view/ViewPager$PagerObserver;

    invoke-direct {v2, p0, v3}, Lmiui/view/ViewPager$PagerObserver;-><init>(Lmiui/view/ViewPager;Lmiui/view/ViewPager$1;)V

    iput-object v2, p0, Lmiui/view/ViewPager;->Mv:Lmiui/view/ViewPager$PagerObserver;

    .line 369
    :cond_53
    iget-object v2, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget-object v4, p0, Lmiui/view/ViewPager;->Mv:Lmiui/view/ViewPager$PagerObserver;

    invoke-virtual {v2, v4}, Lmiui/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 370
    iput-boolean v1, p0, Lmiui/view/ViewPager;->Nd:Z

    .line 371
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/view/ViewPager;->Nt:Z

    .line 372
    iget v4, p0, Lmiui/view/ViewPager;->Mt:I

    if-ltz v4, :cond_75

    .line 373
    iget-object v4, p0, Lmiui/view/ViewPager;->Mr:Lmiui/view/PagerAdapter;

    iget-object v5, p0, Lmiui/view/ViewPager;->Mu:Landroid/os/Parcelable;

    invoke-virtual {v4, v5, v3}, Lmiui/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 374
    iget v4, p0, Lmiui/view/ViewPager;->Mt:I

    invoke-virtual {p0, v4, v1, v2}, Lmiui/view/ViewPager;->a(IZZ)V

    .line 375
    const/4 v1, -0x1

    iput v1, p0, Lmiui/view/ViewPager;->Mt:I

    .line 376
    iput-object v3, p0, Lmiui/view/ViewPager;->Mu:Landroid/os/Parcelable;

    goto :goto_78

    .line 378
    :cond_75
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dR()V

    .line 382
    :cond_78
    :goto_78
    iget-object v1, p0, Lmiui/view/ViewPager;->Nz:Lmiui/view/ViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_83

    if-eq v0, p1, :cond_83

    .line 383
    iget-object v1, p0, Lmiui/view/ViewPager;->Nz:Lmiui/view/ViewPager$OnAdapterChangeListener;

    invoke-interface {v1, v0, p1}, Lmiui/view/ViewPager$OnAdapterChangeListener;->a(Lmiui/view/PagerAdapter;Lmiui/view/PagerAdapter;)V

    .line 385
    :cond_83
    return-void
.end method

.method public setBottomMarginProgress(F)V
    .registers 2

    .line 2620
    iput p1, p0, Lmiui/view/ViewPager;->Nk:F

    .line 2621
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/view/ViewPager;->Nl:Z

    .line 2622
    invoke-virtual {p0}, Lmiui/view/ViewPager;->requestLayout()V

    .line 2623
    invoke-virtual {p0}, Lmiui/view/ViewPager;->invalidate()V

    .line 2624
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->Nd:Z

    .line 420
    iget-boolean v1, p0, Lmiui/view/ViewPager;->Nt:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lmiui/view/ViewPager;->a(IZZ)V

    .line 421
    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->Nd:Z

    .line 431
    invoke-virtual {p0, p1, p2, v0}, Lmiui/view/ViewPager;->a(IZZ)V

    .line 432
    return-void
.end method

.method public setDraggable(Z)V
    .registers 2

    .line 2589
    iput-boolean p1, p0, Lmiui/view/ViewPager;->NB:Z

    .line 2590
    return-void
.end method

.method public setInternalPageChangeListener(Lmiui/view/ViewPager$OnPageChangeListener;)Lmiui/view/ViewPager$OnPageChangeListener;
    .registers 3

    .line 513
    iget-object v0, p0, Lmiui/view/ViewPager;->Ny:Lmiui/view/ViewPager$OnPageChangeListener;

    .line 514
    iput-object p1, p0, Lmiui/view/ViewPager;->Ny:Lmiui/view/ViewPager$OnPageChangeListener;

    .line 515
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .registers 6

    .line 547
    const/4 v0, 0x3

    if-ge p1, v0, :cond_23

    .line 548
    const-string v1, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    nop

    .line 552
    move p1, v0

    :cond_23
    iget v0, p0, Lmiui/view/ViewPager;->Ne:I

    if-eq p1, v0, :cond_2c

    .line 553
    iput p1, p0, Lmiui/view/ViewPager;->Ne:I

    .line 554
    invoke-virtual {p0}, Lmiui/view/ViewPager;->dR()V

    .line 556
    :cond_2c
    return-void
.end method

.method public setOnPageChangeListener(Lmiui/view/ViewPager$OnPageChangeListener;)V
    .registers 2

    .line 502
    iput-object p1, p0, Lmiui/view/ViewPager;->Nx:Lmiui/view/ViewPager$OnPageChangeListener;

    .line 503
    return-void
.end method

.method public setPageMargin(I)V
    .registers 4

    .line 567
    iget v0, p0, Lmiui/view/ViewPager;->Mw:I

    .line 568
    iput p1, p0, Lmiui/view/ViewPager;->Mw:I

    .line 570
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v1

    .line 571
    invoke-direct {p0, v1, v1, p1, v0}, Lmiui/view/ViewPager;->d(IIII)V

    .line 573
    invoke-virtual {p0}, Lmiui/view/ViewPager;->requestLayout()V

    .line 574
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3

    .line 603
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 591
    iput-object p1, p0, Lmiui/view/ViewPager;->Mx:Landroid/graphics/drawable/Drawable;

    .line 592
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lmiui/view/ViewPager;->refreshDrawableState()V

    .line 593
    :cond_7
    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->setWillNotDraw(Z)V

    .line 594
    invoke-virtual {p0}, Lmiui/view/ViewPager;->invalidate()V

    .line 595
    return-void
.end method

.method smoothScrollTo(II)V
    .registers 4

    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/view/ViewPager;->f(III)V

    .line 638
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 608
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lmiui/view/ViewPager;->Mx:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
