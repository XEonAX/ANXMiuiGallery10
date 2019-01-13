.class public Lmiui/util/ViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "ViewUtils"

.field private static final js:Lcom/miui/internal/variable/Android_View_View_class;

.field private static final jt:Lcom/miui/internal/variable/Android_View_ViewGroup_class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    sput-object v0, Lmiui/util/ViewUtils;->js:Lcom/miui/internal/variable/Android_View_View_class;

    .line 24
    invoke-static {}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->get()Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    move-result-object v0

    sput-object v0, Lmiui/util/ViewUtils;->jt:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static containsPoint(Landroid/view/View;II)Z
    .registers 4

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le p1, v0, :cond_1a

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge p1, v0, :cond_1a

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    if-le p2, p1, :cond_1a

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    if-ge p2, p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 72
    :goto_1b
    return p0
.end method

.method public static getBackgroundHeight(Landroid/view/View;)I
    .registers 1

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 87
    if-eqz p0, :cond_b

    .line 88
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0

    .line 90
    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method public static getBackgroundWidth(Landroid/view/View;)I
    .registers 1

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 102
    if-eqz p0, :cond_b

    .line 103
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0

    .line 105
    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method public static getContentRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    iget p0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 44
    return-void
.end method

.method public static getHorizontalState(Landroid/view/View;)I
    .registers 2

    .line 115
    sget-object v0, Lmiui/util/ViewUtils;->js:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getHorizontalState(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getTagChildrenSequenceState(Landroid/view/ViewGroup;)Z
    .registers 2

    .line 160
    sget-object v0, Lmiui/util/ViewUtils;->jt:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->getTagChildrenSequenceState(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method

.method public static getVerticalState(Landroid/view/View;)I
    .registers 2

    .line 125
    sget-object v0, Lmiui/util/ViewUtils;->js:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getVerticalState(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static intersectsWith(Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 4

    .line 56
    if-eqz p1, :cond_24

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_24

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_24

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_24

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-le p0, p1, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    .line 56
    :goto_25
    return p0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .registers 2

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V
    .registers 8

    .line 198
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 199
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    .line 200
    if-eqz v0, :cond_d

    sub-int v1, p0, p4

    goto :goto_e

    .line 201
    :cond_d
    move v1, p2

    :goto_e
    if-eqz v0, :cond_12

    sub-int p4, p0, p2

    .line 202
    :cond_12
    invoke-virtual {p1, v1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 203
    return-void
.end method

.method public static setHorizontalState(Landroid/view/View;I)V
    .registers 3

    .line 138
    sget-object v0, Lmiui/util/ViewUtils;->js:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setHorizontalState(Landroid/view/View;I)V

    .line 139
    return-void
.end method

.method public static setTagChildrenSequenceState(Landroid/view/ViewGroup;Z)V
    .registers 3

    .line 173
    sget-object v0, Lmiui/util/ViewUtils;->jt:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->setTagChildrenSequenceState(Landroid/view/ViewGroup;Z)V

    .line 174
    return-void
.end method

.method public static setVerticalState(Landroid/view/View;I)V
    .registers 3

    .line 151
    sget-object v0, Lmiui/util/ViewUtils;->js:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setVerticalState(Landroid/view/View;I)V

    .line 152
    return-void
.end method
