.class public Lmiui/widget/BubbleBgView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/BubbleBgView$Bubble;
    }
.end annotation


# static fields
.field private static final OP:I = 0x8

.field private static final OQ:I = 0x0

.field private static final OR:I = 0x1

.field private static final OS:I = 0x2

.field private static final OT:I = 0x3

.field private static final OU:I = 0x4

.field private static final OV:I = 0x5

.field private static final OW:I = 0x6

.field private static final OX:I = 0x7

.field private static final OY:[I

.field private static final Pa:I = 0x1


# instance fields
.field private OZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/widget/BubbleBgView$Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private rb:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_e

    .line 38
    const/16 v0, 0x28

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lmiui/widget/BubbleBgView;->OY:[I

    goto :goto_17

    .line 46
    :cond_e
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lmiui/widget/BubbleBgView;->OY:[I

    .line 55
    :goto_17
    return-void

    :array_18
    .array-data 4
        0x6e
        0xc5
        0xc6
        0x0
        0x1e
        -0x50
        0x14
        -0x25e7
        0xa0
        -0x20
        0xe6
        0x0
        0x1e
        0x0
        0x64
        0x33ff2200
        0x24f
        0x18
        0x16f
        0x0
        0x1e
        -0x32
        0x32
        -0x19000900
        0x325
        0x111
        0xad
        -0x1e
        0xa
        -0x50
        0x14
        0x7302c730
        0x146
        -0x44
        0x1a1
        0x0
        0x1e
        0x0
        0x32
        -0x2600a600
    .end array-data

    :array_6c
    .array-data 4
        0x27
        0xa1
        0x67
        0x0
        0x1e
        -0x50
        0x14
        -0x25e7
        0x67
        0x27
        0x72
        0x0
        0x1e
        0x0
        0x64
        0x33ff2200
        0x12e
        0x29
        0xd3
        0x0
        0x1e
        -0x32
        0x32
        -0x19000900
        0x19b
        0xa6
        0x77
        -0x1e
        0xa
        -0x50
        0x14
        0x7302c730
        0xab
        0xe2
        0xb5
        -0xf
        0xf
        -0x14
        0x1e
        0x4cf8f8f8
        0x87
        0x21
        0xc3
        0x0
        0x1e
        0x0
        0x32
        -0x2600a600
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/BubbleBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/BubbleBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiui/widget/BubbleBgView;->OZ:Ljava/util/ArrayList;

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lmiui/widget/BubbleBgView;->rb:Landroid/graphics/Paint;

    .line 61
    new-instance p1, Lmiui/widget/BubbleBgView$1;

    invoke-direct {p1, p0}, Lmiui/widget/BubbleBgView$1;-><init>(Lmiui/widget/BubbleBgView;)V

    iput-object p1, p0, Lmiui/widget/BubbleBgView;->mHandler:Landroid/os/Handler;

    .line 84
    invoke-direct {p0}, Lmiui/widget/BubbleBgView;->ei()V

    .line 85
    iget-object p1, p0, Lmiui/widget/BubbleBgView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    return-void
.end method

.method static synthetic a(Lmiui/widget/BubbleBgView;)Landroid/os/Handler;
    .registers 1

    .line 24
    iget-object p0, p0, Lmiui/widget/BubbleBgView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private ei()V
    .registers 14

    .line 89
    invoke-virtual {p0}, Lmiui/widget/BubbleBgView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 90
    const/4 v1, 0x0

    :goto_b
    sget-object v2, Lmiui/widget/BubbleBgView;->OY:[I

    array-length v2, v2

    if-ge v1, v2, :cond_57

    .line 91
    sget-object v2, Lmiui/widget/BubbleBgView;->OY:[I

    add-int/lit8 v3, v1, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v4, v2

    .line 92
    sget-object v2, Lmiui/widget/BubbleBgView;->OY:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v5, v2

    .line 93
    sget-object v2, Lmiui/widget/BubbleBgView;->OY:[I

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v6, v2

    .line 94
    sget-object v2, Lmiui/widget/BubbleBgView;->OY:[I

    add-int/lit8 v3, v1, 0x3

    aget v7, v2, v3

    .line 95
    sget-object v2, Lmiui/widget/BubbleBgView;->OY:[I

    add-int/lit8 v3, v1, 0x4

    aget v8, v2, v3

    .line 96
    sget-object v2, Lmiui/widget/BubbleBgView;->OY:[I

    add-int/lit8 v3, v1, 0x5

    aget v9, v2, v3

    .line 97
    sget-object v2, Lmiui/widget/BubbleBgView;->OY:[I

    add-int/lit8 v3, v1, 0x6

    aget v10, v2, v3

    .line 98
    sget-object v2, Lmiui/widget/BubbleBgView;->OY:[I

    add-int/lit8 v3, v1, 0x7

    aget v11, v2, v3

    .line 99
    iget-object v2, p0, Lmiui/widget/BubbleBgView;->OZ:Ljava/util/ArrayList;

    new-instance v12, Lmiui/widget/BubbleBgView$Bubble;

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lmiui/widget/BubbleBgView$Bubble;-><init>(IIIIIIII)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v1, v1, 0x8

    goto :goto_b

    .line 101
    :cond_57
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 105
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v0, p0, Lmiui/widget/BubbleBgView;->OZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/widget/BubbleBgView$Bubble;

    .line 107
    iget-object v2, p0, Lmiui/widget/BubbleBgView;->rb:Landroid/graphics/Paint;

    invoke-static {v1}, Lmiui/widget/BubbleBgView$Bubble;->a(Lmiui/widget/BubbleBgView$Bubble;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    invoke-static {v1}, Lmiui/widget/BubbleBgView$Bubble;->b(Lmiui/widget/BubbleBgView$Bubble;)F

    move-result v2

    invoke-static {v1}, Lmiui/widget/BubbleBgView$Bubble;->c(Lmiui/widget/BubbleBgView$Bubble;)F

    move-result v3

    invoke-static {v1}, Lmiui/widget/BubbleBgView$Bubble;->d(Lmiui/widget/BubbleBgView$Bubble;)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lmiui/widget/BubbleBgView;->rb:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 109
    goto :goto_9

    .line 110
    :cond_31
    return-void
.end method
