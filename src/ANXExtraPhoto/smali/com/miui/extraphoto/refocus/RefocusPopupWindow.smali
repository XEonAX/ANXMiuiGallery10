.class Lcom/miui/extraphoto/refocus/RefocusPopupWindow;
.super Landroid/widget/PopupWindow;
.source "RefocusPopupWindow.java"


# instance fields
.field private final mHeight:I

.field private mRefocusGestureView:Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;

.field private final mWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;

    invoke-direct {v0, p1}, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->getCustomWidth(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->getCustomHeight(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 20
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    invoke-virtual {p0, v1}, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->setTouchable(Z)V

    .line 22
    invoke-virtual {p0, v1}, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->setClippingEnabled(Z)V

    .line 23
    invoke-static {p1}, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->getCustomWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->mWidth:I

    .line 24
    invoke-static {p1}, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->getCustomHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->mHeight:I

    .line 25
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->mRefocusGestureView:Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;

    .line 26
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->mRefocusGestureView:Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RefocusPopupWindow$1;-><init>(Lcom/miui/extraphoto/refocus/RefocusPopupWindow;)V

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    return-void
.end method

.method private static getCustomHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static getCustomWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 59
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->mRefocusGestureView:Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->cancel()V

    .line 60
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    .line 61
    iget v0, p0, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    .line 62
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, -0x1

    invoke-virtual {p0, p3, p4, v0, v0}, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->update(IIII)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusPopupWindow;->mRefocusGestureView:Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/widget/RefocusGestureView;->start()V

    .line 68
    return-void
.end method
