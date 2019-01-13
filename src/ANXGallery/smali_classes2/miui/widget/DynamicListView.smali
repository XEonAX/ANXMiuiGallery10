.class public Lmiui/widget/DynamicListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DynamicListView$RearrangeListener;,
        Lmiui/widget/DynamicListView$OnItemRemoveListener;
    }
.end annotation


# static fields
.field private static final Rt:I = 0xff

.field private static final Ru:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final Rv:I = 0x5

.field private static final Rw:I = 0x32


# instance fields
.field private final INVALID_ID:I

.field private final INVALID_POINTER_ID:I

.field private NH:I

.field private RA:I

.field private RB:I

.field private RC:Z

.field private RD:Z

.field private RE:I

.field private RF:I

.field private RG:I

.field private RH:I

.field private RI:J

.field private RJ:J

.field private RK:J

.field private RL:Landroid/graphics/drawable/BitmapDrawable;

.field private RM:Landroid/graphics/Rect;

.field private RN:Landroid/graphics/Rect;

.field private RP:Landroid/graphics/Rect;

.field private RQ:Landroid/graphics/Rect;

.field private RR:Z

.field private RT:Landroid/graphics/drawable/Drawable;

.field private RU:I

.field private RV:Landroid/widget/AbsListView$OnScrollListener;

.field private RX:Landroid/animation/ObjectAnimator;

.field private RY:Landroid/animation/ObjectAnimator;

.field private RZ:Lmiui/widget/DynamicListView$RearrangeListener;

.field private Rx:F

.field private Ry:J

.field private Rz:I

.field private Sa:Lmiui/widget/DynamicListView$OnItemRemoveListener;

.field private Sb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Sc:Landroid/graphics/Bitmap;

.field private Sd:Landroid/animation/AnimatorListenerAdapter;

.field private Se:Ljava/lang/Runnable;

.field private Sf:Landroid/widget/AbsListView$OnScrollListener;

.field private qE:I

.field private rb:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lmiui/widget/DynamicListView$1;

    invoke-direct {v0}, Lmiui/widget/DynamicListView$1;-><init>()V

    sput-object v0, Lmiui/widget/DynamicListView;->Ru:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 302
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    .line 79
    iput v0, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/DynamicListView;->Rx:F

    .line 83
    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->Ry:J

    .line 85
    iput v0, p0, Lmiui/widget/DynamicListView;->Rz:I

    .line 87
    iput v0, p0, Lmiui/widget/DynamicListView;->RA:I

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/DynamicListView;->RB:I

    .line 91
    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->RC:Z

    .line 93
    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->RD:Z

    .line 95
    iput v1, p0, Lmiui/widget/DynamicListView;->RE:I

    .line 101
    iput v1, p0, Lmiui/widget/DynamicListView;->RH:I

    .line 103
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->RI:J

    .line 105
    iput-wide v2, p0, Lmiui/widget/DynamicListView;->RJ:J

    .line 107
    iput-wide v2, p0, Lmiui/widget/DynamicListView;->RK:J

    .line 115
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/DynamicListView;->RP:Landroid/graphics/Rect;

    .line 117
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/DynamicListView;->RQ:Landroid/graphics/Rect;

    .line 119
    iput v0, p0, Lmiui/widget/DynamicListView;->qE:I

    .line 121
    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->RR:Z

    .line 123
    iput v1, p0, Lmiui/widget/DynamicListView;->NH:I

    .line 139
    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Sb:Ljava/util/Map;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->rb:Landroid/graphics/Paint;

    .line 145
    new-instance v0, Lmiui/widget/DynamicListView$2;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$2;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Sd:Landroid/animation/AnimatorListenerAdapter;

    .line 182
    new-instance v0, Lmiui/widget/DynamicListView$3;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$3;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Se:Ljava/lang/Runnable;

    .line 201
    new-instance v0, Lmiui/widget/DynamicListView$4;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$4;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Sf:Landroid/widget/AbsListView$OnScrollListener;

    .line 303
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->d(Landroid/content/Context;)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 320
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const/4 p2, -0x1

    iput p2, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    .line 79
    iput p2, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->Rx:F

    .line 83
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->Ry:J

    .line 85
    iput p2, p0, Lmiui/widget/DynamicListView;->Rz:I

    .line 87
    iput p2, p0, Lmiui/widget/DynamicListView;->RA:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->RB:I

    .line 91
    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->RC:Z

    .line 93
    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->RD:Z

    .line 95
    iput v0, p0, Lmiui/widget/DynamicListView;->RE:I

    .line 101
    iput v0, p0, Lmiui/widget/DynamicListView;->RH:I

    .line 103
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->RI:J

    .line 105
    iput-wide v1, p0, Lmiui/widget/DynamicListView;->RJ:J

    .line 107
    iput-wide v1, p0, Lmiui/widget/DynamicListView;->RK:J

    .line 115
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/widget/DynamicListView;->RP:Landroid/graphics/Rect;

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/widget/DynamicListView;->RQ:Landroid/graphics/Rect;

    .line 119
    iput p2, p0, Lmiui/widget/DynamicListView;->qE:I

    .line 121
    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->RR:Z

    .line 123
    iput v0, p0, Lmiui/widget/DynamicListView;->NH:I

    .line 139
    new-instance p2, Lmiui/util/ArrayMap;

    invoke-direct {p2}, Lmiui/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Sb:Ljava/util/Map;

    .line 141
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->rb:Landroid/graphics/Paint;

    .line 145
    new-instance p2, Lmiui/widget/DynamicListView$2;

    invoke-direct {p2, p0}, Lmiui/widget/DynamicListView$2;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Sd:Landroid/animation/AnimatorListenerAdapter;

    .line 182
    new-instance p2, Lmiui/widget/DynamicListView$3;

    invoke-direct {p2, p0}, Lmiui/widget/DynamicListView$3;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Se:Ljava/lang/Runnable;

    .line 201
    new-instance p2, Lmiui/widget/DynamicListView$4;

    invoke-direct {p2, p0}, Lmiui/widget/DynamicListView$4;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Sf:Landroid/widget/AbsListView$OnScrollListener;

    .line 321
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->d(Landroid/content/Context;)V

    .line 322
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 311
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    const/4 p2, -0x1

    iput p2, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    .line 79
    iput p2, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    .line 81
    const/4 p3, 0x0

    iput p3, p0, Lmiui/widget/DynamicListView;->Rx:F

    .line 83
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->Ry:J

    .line 85
    iput p2, p0, Lmiui/widget/DynamicListView;->Rz:I

    .line 87
    iput p2, p0, Lmiui/widget/DynamicListView;->RA:I

    .line 89
    const/4 p3, 0x0

    iput p3, p0, Lmiui/widget/DynamicListView;->RB:I

    .line 91
    iput-boolean p3, p0, Lmiui/widget/DynamicListView;->RC:Z

    .line 93
    iput-boolean p3, p0, Lmiui/widget/DynamicListView;->RD:Z

    .line 95
    iput p3, p0, Lmiui/widget/DynamicListView;->RE:I

    .line 101
    iput p3, p0, Lmiui/widget/DynamicListView;->RH:I

    .line 103
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->RI:J

    .line 105
    iput-wide v0, p0, Lmiui/widget/DynamicListView;->RJ:J

    .line 107
    iput-wide v0, p0, Lmiui/widget/DynamicListView;->RK:J

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->RP:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->RQ:Landroid/graphics/Rect;

    .line 119
    iput p2, p0, Lmiui/widget/DynamicListView;->qE:I

    .line 121
    iput-boolean p3, p0, Lmiui/widget/DynamicListView;->RR:Z

    .line 123
    iput p3, p0, Lmiui/widget/DynamicListView;->NH:I

    .line 139
    new-instance p2, Lmiui/util/ArrayMap;

    invoke-direct {p2}, Lmiui/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Sb:Ljava/util/Map;

    .line 141
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->rb:Landroid/graphics/Paint;

    .line 145
    new-instance p2, Lmiui/widget/DynamicListView$2;

    invoke-direct {p2, p0}, Lmiui/widget/DynamicListView$2;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Sd:Landroid/animation/AnimatorListenerAdapter;

    .line 182
    new-instance p2, Lmiui/widget/DynamicListView$3;

    invoke-direct {p2, p0}, Lmiui/widget/DynamicListView$3;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Se:Ljava/lang/Runnable;

    .line 201
    new-instance p2, Lmiui/widget/DynamicListView$4;

    invoke-direct {p2, p0}, Lmiui/widget/DynamicListView$4;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Sf:Landroid/widget/AbsListView$OnScrollListener;

    .line 312
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->d(Landroid/content/Context;)V

    .line 313
    return-void
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;I)I
    .registers 2

    .line 44
    iput p1, p0, Lmiui/widget/DynamicListView;->NH:I

    return p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;)J
    .registers 3

    .line 44
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->RJ:J

    return-wide v0
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;J)J
    .registers 3

    .line 44
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->RI:J

    return-wide p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    .line 44
    iput-object p1, p0, Lmiui/widget/DynamicListView;->RY:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 44
    iput-object p1, p0, Lmiui/widget/DynamicListView;->Sc:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    .line 44
    iput-object p1, p0, Lmiui/widget/DynamicListView;->RL:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 537
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 538
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/widget/DynamicListView;->ao(I)Landroid/view/View;

    move-result-object v1

    .line 539
    if-eqz v1, :cond_23

    .line 540
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_23
    goto :goto_a

    .line 543
    :cond_24
    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 945
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 946
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 948
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 949
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lmiui/widget/DynamicListView;->ao(I)Landroid/view/View;

    move-result-object v3

    .line 950
    if-eqz v3, :cond_29

    .line 951
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_29
    goto :goto_10

    .line 954
    :cond_2a
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v2

    .line 955
    iget-object v3, p0, Lmiui/widget/DynamicListView;->Sb:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 956
    const/4 v3, 0x0

    :goto_34
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_62

    .line 957
    invoke-virtual {p0, v3}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 958
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 959
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 960
    add-int v5, v2, v3

    invoke-virtual {v0, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v5

    .line 961
    iget-object v7, p0, Lmiui/widget/DynamicListView;->Sb:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 965
    :cond_62
    iget-object v1, p0, Lmiui/widget/DynamicListView;->Sa:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    invoke-interface {v1, p1}, Lmiui/widget/DynamicListView$OnItemRemoveListener;->onItemRemove(Ljava/util/List;)V

    .line 966
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 967
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lmiui/widget/DynamicListView$12;

    invoke-direct {v1, p0, v0, p2}, Lmiui/widget/DynamicListView$12;-><init>(Lmiui/widget/DynamicListView;Landroid/widget/BaseAdapter;Ljava/util/List;)V

    .line 968
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1038
    return-void
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lmiui/widget/DynamicListView;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private ao(I)Landroid/view/View;
    .registers 4

    .line 520
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v0

    .line 521
    if-lt p1, v0, :cond_12

    .line 522
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_12

    .line 523
    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 525
    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;I)I
    .registers 3

    .line 44
    iget v0, p0, Lmiui/widget/DynamicListView;->RB:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/widget/DynamicListView;->RB:I

    return v0
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;J)J
    .registers 3

    .line 44
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->RJ:J

    return-wide p1
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    .line 44
    iput-object p1, p0, Lmiui/widget/DynamicListView;->RX:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;
    .registers 1

    .line 44
    iget-object p0, p0, Lmiui/widget/DynamicListView;->RZ:Lmiui/widget/DynamicListView$RearrangeListener;

    return-object p0
.end method

.method static synthetic c(Lmiui/widget/DynamicListView;J)J
    .registers 3

    .line 44
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->RK:J

    return-wide p1
.end method

.method static synthetic c(Lmiui/widget/DynamicListView;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lmiui/widget/DynamicListView;->RD:Z

    return p0
.end method

.method static synthetic d(Lmiui/widget/DynamicListView;)I
    .registers 1

    .line 44
    iget p0, p0, Lmiui/widget/DynamicListView;->RE:I

    return p0
.end method

.method private d(Landroid/content/Context;)V
    .registers 5

    .line 325
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Sf:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 326
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 327
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 328
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lmiui/widget/DynamicListView;->RG:I

    .line 330
    iget v1, p0, Lmiui/widget/DynamicListView;->RG:I

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lmiui/widget/DynamicListView;->RF:I

    .line 331
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lmiui/widget/DynamicListView;->RH:I

    .line 332
    sget v0, Lcom/miui/internal/R$drawable;->dynamic_listview_dragging_item_shadow:I

    .line 333
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/DynamicListView;->RT:Landroid/graphics/drawable/Drawable;

    .line 334
    iget-object p1, p0, Lmiui/widget/DynamicListView;->RT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lmiui/widget/DynamicListView;->RU:I

    .line 335
    return-void
.end method

.method static synthetic d(Lmiui/widget/DynamicListView;J)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lmiui/widget/DynamicListView;->i(J)V

    return-void
.end method

.method static synthetic e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;
    .registers 1

    .line 44
    iget-object p0, p0, Lmiui/widget/DynamicListView;->RV:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method private eG()V
    .registers 7

    .line 380
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->RN:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 381
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/DynamicListView;->Rx:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 383
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lmiui/widget/DynamicListView;->Rx:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    float-to-int v2, v3

    .line 385
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 388
    iget-object v1, p0, Lmiui/widget/DynamicListView;->RM:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 389
    iget-object v1, p0, Lmiui/widget/DynamicListView;->RN:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 390
    const-string v1, "HoverCellBounds"

    sget-object v2, Lmiui/widget/DynamicListView;->Ru:Landroid/animation/TypeEvaluator;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 391
    invoke-static {p0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DynamicListView;->RX:Landroid/animation/ObjectAnimator;

    .line 393
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RX:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_50

    iget-wide v1, p0, Lmiui/widget/DynamicListView;->Ry:J

    goto :goto_52

    :cond_50
    const-wide/16 v1, 0x0

    :goto_52
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 394
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RX:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/widget/DynamicListView$5;

    invoke-direct {v1, p0}, Lmiui/widget/DynamicListView$5;-><init>(Lmiui/widget/DynamicListView;)V

    .line 395
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 403
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RX:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/widget/DynamicListView$6;

    invoke-direct {v1, p0}, Lmiui/widget/DynamicListView$6;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 416
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 417
    return-void
.end method

.method private eH()V
    .registers 12

    .line 636
    iget v0, p0, Lmiui/widget/DynamicListView;->Rz:I

    iget v1, p0, Lmiui/widget/DynamicListView;->RA:I

    sub-int v7, v0, v1

    .line 637
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RN:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lmiui/widget/DynamicListView;->RB:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    .line 638
    iget-object v1, p0, Lmiui/widget/DynamicListView;->RM:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 639
    iget-wide v2, p0, Lmiui/widget/DynamicListView;->RK:J

    invoke-virtual {p0, v2, v3}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v2

    .line 640
    iget-wide v3, p0, Lmiui/widget/DynamicListView;->RJ:J

    invoke-virtual {p0, v3, v4}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v3

    .line 641
    iget-wide v4, p0, Lmiui/widget/DynamicListView;->RI:J

    invoke-virtual {p0, v4, v5}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v4

    .line 642
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_36

    add-int v8, v0, v1

    .line 643
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v8, v9, :cond_36

    .line 644
    move v8, v5

    goto :goto_38

    .line 643
    :cond_36
    nop

    .line 644
    move v8, v6

    :goto_38
    if-eqz v4, :cond_42

    sub-int/2addr v0, v1

    .line 645
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v0, v1, :cond_42

    goto :goto_43

    .line 646
    :cond_42
    move v5, v6

    :goto_43
    if-nez v8, :cond_47

    if-eqz v5, :cond_90

    .line 647
    :cond_47
    if-eqz v8, :cond_4c

    iget-wide v0, p0, Lmiui/widget/DynamicListView;->RK:J

    goto :goto_4e

    :cond_4c
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->RI:J

    .line 648
    :goto_4e
    if-eqz v8, :cond_51

    goto :goto_52

    .line 649
    :cond_51
    move-object v2, v4

    :goto_52
    invoke-virtual {p0, v3}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 651
    iget-object v5, p0, Lmiui/widget/DynamicListView;->RZ:Lmiui/widget/DynamicListView$RearrangeListener;

    if-eqz v5, :cond_63

    .line 652
    iget-object v5, p0, Lmiui/widget/DynamicListView;->RZ:Lmiui/widget/DynamicListView$RearrangeListener;

    .line 654
    invoke-virtual {p0, v2}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    .line 653
    invoke-interface {v5, v4, v8}, Lmiui/widget/DynamicListView$RearrangeListener;->onOrderChanged(II)V

    .line 656
    :cond_63
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 657
    iget v4, p0, Lmiui/widget/DynamicListView;->Rz:I

    iput v4, p0, Lmiui/widget/DynamicListView;->RA:I

    .line 658
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    .line 660
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 661
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-wide v2, p0, Lmiui/widget/DynamicListView;->RJ:J

    invoke-direct {p0, v2, v3}, Lmiui/widget/DynamicListView;->i(J)V

    .line 664
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    .line 665
    new-instance v10, Lmiui/widget/DynamicListView$7;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v9

    move-wide v5, v0

    invoke-direct/range {v2 .. v8}, Lmiui/widget/DynamicListView$7;-><init>(Lmiui/widget/DynamicListView;Landroid/view/ViewTreeObserver;JII)V

    invoke-virtual {v9, v10}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 684
    :cond_90
    return-void
.end method

.method private eI()V
    .registers 9

    .line 691
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->RJ:J

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 692
    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->RC:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->RR:Z

    if-eqz v1, :cond_f

    goto :goto_13

    .line 730
    :cond_f
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eJ()V

    goto :goto_85

    .line 693
    :cond_13
    :goto_13
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->RC:Z

    .line 694
    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->RR:Z

    .line 695
    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->RD:Z

    .line 696
    const/4 v2, -0x1

    iput v2, p0, Lmiui/widget/DynamicListView;->qE:I

    .line 702
    iget v2, p0, Lmiui/widget/DynamicListView;->NH:I

    const/4 v3, 0x1

    if-eqz v2, :cond_25

    .line 703
    iput-boolean v3, p0, Lmiui/widget/DynamicListView;->RR:Z

    .line 704
    return-void

    .line 706
    :cond_25
    iget-object v2, p0, Lmiui/widget/DynamicListView;->RM:Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/widget/DynamicListView;->RN:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 707
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 706
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 708
    iget-object v2, p0, Lmiui/widget/DynamicListView;->RM:Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/widget/DynamicListView;->RN:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 709
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lmiui/widget/DynamicListView;->RN:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 711
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 712
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v7, v0

    .line 709
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 713
    const-string v0, "HoverCellBounds"

    sget-object v2, Lmiui/widget/DynamicListView;->Ru:Landroid/animation/TypeEvaluator;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmiui/widget/DynamicListView;->RM:Landroid/graphics/Rect;

    aput-object v4, v3, v1

    .line 714
    invoke-static {p0, v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DynamicListView;->RY:Landroid/animation/ObjectAnimator;

    .line 716
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RY:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_6a

    iget-wide v1, p0, Lmiui/widget/DynamicListView;->Ry:J

    goto :goto_6c

    :cond_6a
    const-wide/16 v1, 0x0

    :goto_6c
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 717
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RY:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/widget/DynamicListView$8;

    invoke-direct {v1, p0}, Lmiui/widget/DynamicListView$8;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 727
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RY:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->Sd:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 728
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 732
    :goto_85
    return-void
.end method

.method private eJ()V
    .registers 6

    .line 738
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->RJ:J

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 739
    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->RC:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 740
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lmiui/widget/DynamicListView;->RI:J

    .line 741
    iput-wide v3, p0, Lmiui/widget/DynamicListView;->RJ:J

    .line 742
    iput-wide v3, p0, Lmiui/widget/DynamicListView;->RK:J

    .line 743
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DynamicListView;->RL:Landroid/graphics/drawable/BitmapDrawable;

    .line 745
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->invalidate()V

    .line 747
    :cond_1c
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->RC:Z

    .line 748
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->RD:Z

    .line 749
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/DynamicListView;->qE:I

    .line 750
    return-void
.end method

.method private eK()V
    .registers 2

    .line 757
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RM:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->handleMobileCellScroll(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->RD:Z

    .line 758
    return-void
.end method

.method static synthetic f(Lmiui/widget/DynamicListView;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lmiui/widget/DynamicListView;->RC:Z

    return p0
.end method

.method static synthetic g(Lmiui/widget/DynamicListView;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eK()V

    return-void
.end method

.method static synthetic h(Lmiui/widget/DynamicListView;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lmiui/widget/DynamicListView;->RR:Z

    return p0
.end method

.method private i(J)V
    .registers 5

    .line 477
    invoke-virtual {p0, p1, p2}, Lmiui/widget/DynamicListView;->getPositionForId(J)I

    move-result p1

    .line 478
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Landroid/widget/BaseAdapter;

    .line 479
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p2, v0}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->RI:J

    .line 480
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide p1

    iput-wide p1, p0, Lmiui/widget/DynamicListView;->RK:J

    .line 481
    return-void
.end method

.method static synthetic i(Lmiui/widget/DynamicListView;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eI()V

    return-void
.end method

.method static synthetic j(Lmiui/widget/DynamicListView;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eH()V

    return-void
.end method

.method static synthetic k(Lmiui/widget/DynamicListView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 44
    iget-object p0, p0, Lmiui/widget/DynamicListView;->RT:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic l(Lmiui/widget/DynamicListView;)J
    .registers 3

    .line 44
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->Ry:J

    return-wide v0
.end method

.method static synthetic m(Lmiui/widget/DynamicListView;)Landroid/graphics/Paint;
    .registers 1

    .line 44
    iget-object p0, p0, Lmiui/widget/DynamicListView;->rb:Landroid/graphics/Paint;

    return-object p0
.end method

.method private n(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 8

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 451
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->o(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 452
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 453
    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-direct {p1, v3, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lmiui/widget/DynamicListView;->RN:Landroid/graphics/Rect;

    .line 454
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lmiui/widget/DynamicListView;->RN:Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lmiui/widget/DynamicListView;->RM:Landroid/graphics/Rect;

    .line 455
    iget-object p1, p0, Lmiui/widget/DynamicListView;->RM:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 456
    return-object v4
.end method

.method static synthetic n(Lmiui/widget/DynamicListView;)Ljava/util/Map;
    .registers 1

    .line 44
    iget-object p0, p0, Lmiui/widget/DynamicListView;->Sb:Ljava/util/Map;

    return-object p0
.end method

.method private o(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 5

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 465
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 466
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 467
    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 553
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 554
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RL:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_11

    .line 555
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 556
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RL:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 558
    :cond_11
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sc:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1d

    .line 559
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sc:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->rb:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 561
    :cond_1d
    return-void
.end method

.method public getHoverCellBounds()Landroid/graphics/Rect;
    .registers 2

    .line 423
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RL:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getLastStateAlpha()I
    .registers 2

    .line 924
    iget-object v0, p0, Lmiui/widget/DynamicListView;->rb:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getPositionForId(J)I
    .registers 3

    .line 504
    invoke-virtual {p0, p1, p2}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object p1

    .line 505
    if-nez p1, :cond_8

    .line 506
    const/4 p1, -0x1

    return p1

    .line 508
    :cond_8
    invoke-virtual {p0, p1}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getViewForId(J)Landroid/view/View;
    .registers 9

    .line 487
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v0

    .line 488
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    .line 489
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 490
    invoke-virtual {p0, v2}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 491
    add-int v4, v0, v2

    .line 492
    invoke-virtual {v1, v4}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    .line 493
    cmp-long v4, v4, p1

    if-nez v4, :cond_20

    .line 494
    return-object v3

    .line 489
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 497
    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleMobileCellScroll(Landroid/graphics/Rect;)Z
    .registers 11

    .line 766
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollOffset()I

    move-result v0

    .line 767
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result v1

    .line 768
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollExtent()I

    move-result v2

    .line 769
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollRange()I

    move-result v3

    .line 770
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 771
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 772
    iget v5, p0, Lmiui/widget/DynamicListView;->RH:I

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    const-wide/16 v7, 0xa

    if-gt v4, v5, :cond_35

    if-lez v0, :cond_35

    .line 774
    iget p1, p0, Lmiui/widget/DynamicListView;->RG:I

    neg-int p1, p1

    iput p1, p0, Lmiui/widget/DynamicListView;->RE:I

    .line 775
    iget p1, p0, Lmiui/widget/DynamicListView;->RH:I

    if-gt v4, p1, :cond_2f

    .line 776
    iget p1, p0, Lmiui/widget/DynamicListView;->RF:I

    neg-int p1, p1

    iput p1, p0, Lmiui/widget/DynamicListView;->RE:I

    .line 778
    :cond_2f
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Se:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v7, v8}, Lmiui/widget/DynamicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 779
    return v6

    .line 781
    :cond_35
    add-int/2addr v4, p1

    iget p1, p0, Lmiui/widget/DynamicListView;->RH:I

    mul-int/lit8 p1, p1, 0x2

    sub-int p1, v1, p1

    if-lt v4, p1, :cond_54

    add-int/2addr v0, v2

    if-ge v0, v3, :cond_54

    .line 784
    iget p1, p0, Lmiui/widget/DynamicListView;->RG:I

    iput p1, p0, Lmiui/widget/DynamicListView;->RE:I

    .line 785
    iget p1, p0, Lmiui/widget/DynamicListView;->RH:I

    sub-int/2addr v1, p1

    if-lt v4, v1, :cond_4e

    .line 786
    iget p1, p0, Lmiui/widget/DynamicListView;->RF:I

    iput p1, p0, Lmiui/widget/DynamicListView;->RE:I

    .line 788
    :cond_4e
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Se:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v7, v8}, Lmiui/widget/DynamicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 789
    return v6

    .line 791
    :cond_54
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Se:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lmiui/widget/DynamicListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 792
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    if-eq v0, v1, :cond_90

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_aa

    goto/16 :goto_a5

    .line 603
    :pswitch_f
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eJ()V

    .line 604
    goto/16 :goto_a5

    .line 571
    :pswitch_14
    iget v0, p0, Lmiui/widget/DynamicListView;->qE:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b

    .line 572
    goto/16 :goto_a5

    .line 574
    :cond_1b
    iget v0, p0, Lmiui/widget/DynamicListView;->qE:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 575
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/DynamicListView;->Rz:I

    .line 576
    iget v0, p0, Lmiui/widget/DynamicListView;->Rz:I

    iget v2, p0, Lmiui/widget/DynamicListView;->RA:I

    sub-int/2addr v0, v2

    .line 577
    iget-boolean v2, p0, Lmiui/widget/DynamicListView;->RC:Z

    if-eqz v2, :cond_a5

    .line 578
    iget-object p1, p0, Lmiui/widget/DynamicListView;->RX:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_42

    iget-object p1, p0, Lmiui/widget/DynamicListView;->RX:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 579
    iget-object p1, p0, Lmiui/widget/DynamicListView;->RX:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->end()V

    .line 582
    :cond_42
    iget-object p1, p0, Lmiui/widget/DynamicListView;->RN:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iget v0, p0, Lmiui/widget/DynamicListView;->RB:I

    add-int/2addr p1, v0

    .line 584
    if-gez p1, :cond_4f

    .line 585
    nop

    .line 590
    move p1, v1

    goto :goto_67

    .line 586
    :cond_4f
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DynamicListView;->RM:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_67

    .line 587
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/DynamicListView;->RM:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p1, v0

    .line 590
    :cond_67
    :goto_67
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RM:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiui/widget/DynamicListView;->RN:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 591
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 592
    iget-object p1, p0, Lmiui/widget/DynamicListView;->RM:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lmiui/widget/DynamicListView;->setHoverCellBounds(Landroid/graphics/Rect;)V

    .line 593
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eH()V

    .line 594
    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->RD:Z

    .line 595
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eK()V

    .line 596
    return v1

    .line 600
    :pswitch_7e
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eI()V

    .line 601
    goto :goto_a5

    .line 567
    :pswitch_82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/DynamicListView;->RA:I

    .line 568
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/DynamicListView;->qE:I

    .line 569
    goto :goto_a5

    .line 612
    :cond_90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 615
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 616
    iget v1, p0, Lmiui/widget/DynamicListView;->qE:I

    if-ne v0, v1, :cond_a5

    .line 617
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eI()V

    .line 623
    :cond_a5
    :goto_a5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7e
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method

.method public removeItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 812
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/widget/DynamicListView;->removeItems(Ljava/util/List;Ljava/util/List;)V

    .line 813
    return-void
.end method

.method public removeItems(Ljava/util/List;Ljava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 823
    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 824
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 825
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 826
    nop

    .line 827
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_52

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 828
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lmiui/widget/DynamicListView;->getPositionForId(J)I

    move-result v10

    .line 829
    const/4 v11, -0x1

    if-eq v10, v11, :cond_4e

    .line 830
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    if-eqz v2, :cond_4d

    .line 832
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 833
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_4d
    goto :goto_1e

    .line 836
    :cond_4e
    nop

    .line 837
    nop

    .line 840
    move v2, v8

    goto :goto_53

    :cond_52
    move v2, v9

    :goto_53
    if-eqz v2, :cond_84

    .line 844
    invoke-direct {v0, v0}, Lmiui/widget/DynamicListView;->o(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lmiui/widget/DynamicListView;->Sc:Landroid/graphics/Bitmap;

    .line 845
    iget-object v2, v0, Lmiui/widget/DynamicListView;->Sa:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    invoke-interface {v2, v1}, Lmiui/widget/DynamicListView$OnItemRemoveListener;->onItemRemove(Ljava/util/List;)V

    .line 846
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 847
    const-string v1, "LastStateAlpha"

    new-array v2, v8, [I

    aput v9, v2, v9

    .line 848
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 849
    iget-wide v2, v0, Lmiui/widget/DynamicListView;->Ry:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 850
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 851
    new-instance v2, Lmiui/widget/DynamicListView$9;

    invoke-direct {v2, v0}, Lmiui/widget/DynamicListView$9;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 859
    return-void

    .line 861
    :cond_84
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 862
    invoke-direct {v0, v4}, Lmiui/widget/DynamicListView;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 863
    invoke-direct {v0, v5}, Lmiui/widget/DynamicListView;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 864
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12a

    .line 865
    invoke-virtual {v0, v9}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 866
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 867
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 868
    new-instance v7, Ljava/util/ArrayList;

    .line 869
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 870
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    .line 872
    move v11, v9

    :goto_b4
    if-ge v11, v10, :cond_103

    .line 873
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 874
    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c8

    .line 875
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v13

    neg-int v13, v13

    goto :goto_cc

    .line 876
    :cond_c8
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 877
    :goto_cc
    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v15, v8, [F

    int-to-float v13, v13

    aput v13, v15, v9

    .line 878
    invoke-static {v12, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 880
    new-instance v14, Lmiui/widget/DynamicListView$10;

    invoke-direct {v14, v0, v12}, Lmiui/widget/DynamicListView$10;-><init>(Lmiui/widget/DynamicListView;Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 899
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    iget-wide v14, v0, Lmiui/widget/DynamicListView;->Ry:J

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 901
    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_12c

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 902
    iget-wide v13, v0, Lmiui/widget/DynamicListView;->Ry:J

    const-wide/16 v15, 0x3

    div-long/2addr v13, v15

    int-to-long v8, v11

    mul-long/2addr v13, v8

    invoke-virtual {v12, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 903
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_b4

    .line 905
    :cond_103
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 906
    const/4 v1, 0x0

    :goto_107
    if-ge v1, v10, :cond_11f

    .line 907
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Animator;

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 906
    add-int/lit8 v1, v1, 0x1

    goto :goto_107

    .line 909
    :cond_11f
    new-instance v1, Lmiui/widget/DynamicListView$11;

    invoke-direct {v1, v0, v3, v4}, Lmiui/widget/DynamicListView$11;-><init>(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 916
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 918
    :cond_12a
    return-void

    nop

    :array_12c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setDuration(J)V
    .registers 3

    .line 343
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->Ry:J

    .line 344
    return-void
.end method

.method public setHoverCellBounds(Landroid/graphics/Rect;)V
    .registers 7

    .line 430
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RQ:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->RP:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 431
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RL:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 432
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RP:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lmiui/widget/DynamicListView;->RU:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lmiui/widget/DynamicListView;->RU:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr p1, v4

    .line 433
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 436
    iget-object p1, p0, Lmiui/widget/DynamicListView;->RT:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmiui/widget/DynamicListView;->RP:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 437
    iget-object p1, p0, Lmiui/widget/DynamicListView;->RQ:Landroid/graphics/Rect;

    iget-object v0, p0, Lmiui/widget/DynamicListView;->RP:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 438
    iget-object p1, p0, Lmiui/widget/DynamicListView;->RQ:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lmiui/widget/DynamicListView;->invalidate(Landroid/graphics/Rect;)V

    .line 439
    return-void
.end method

.method public setLastStateAlpha(I)V
    .registers 3

    .line 931
    iget-object v0, p0, Lmiui/widget/DynamicListView;->rb:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 932
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->invalidate()V

    .line 933
    return-void
.end method

.method public setOnItemRemoveListener(Lmiui/widget/DynamicListView$OnItemRemoveListener;)V
    .registers 2

    .line 1046
    iput-object p1, p0, Lmiui/widget/DynamicListView;->Sa:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    .line 1047
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    .line 803
    iput-object p1, p0, Lmiui/widget/DynamicListView;->RV:Landroid/widget/AbsListView$OnScrollListener;

    .line 804
    return-void
.end method

.method public setRearrangeListener(Lmiui/widget/DynamicListView$RearrangeListener;)V
    .registers 2

    .line 1055
    iput-object p1, p0, Lmiui/widget/DynamicListView;->RZ:Lmiui/widget/DynamicListView$RearrangeListener;

    .line 1056
    return-void
.end method

.method public setScaleFactor(F)V
    .registers 2

    .line 353
    iput p1, p0, Lmiui/widget/DynamicListView;->Rx:F

    .line 354
    return-void
.end method

.method public startDragging(I)V
    .registers 5

    .line 362
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiui/widget/DynamicListView;->RY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 363
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 364
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sd:Landroid/animation/AnimatorListenerAdapter;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->RY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 366
    :cond_18
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->RB:I

    .line 367
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->ao(I)Landroid/view/View;

    move-result-object v0

    .line 368
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->RJ:J

    .line 369
    invoke-direct {p0, v0}, Lmiui/widget/DynamicListView;->n(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/DynamicListView;->RL:Landroid/graphics/drawable/BitmapDrawable;

    .line 370
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eG()V

    .line 371
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/DynamicListView;->RC:Z

    .line 373
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->RJ:J

    invoke-direct {p0, v0, v1}, Lmiui/widget/DynamicListView;->i(J)V

    .line 374
    iget-object p1, p0, Lmiui/widget/DynamicListView;->RZ:Lmiui/widget/DynamicListView$RearrangeListener;

    if-eqz p1, :cond_47

    .line 375
    iget-object p1, p0, Lmiui/widget/DynamicListView;->RZ:Lmiui/widget/DynamicListView$RearrangeListener;

    invoke-interface {p1}, Lmiui/widget/DynamicListView$RearrangeListener;->onDragStart()V

    .line 377
    :cond_47
    return-void
.end method
