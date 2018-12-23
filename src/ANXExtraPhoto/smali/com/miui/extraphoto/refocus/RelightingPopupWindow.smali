.class public Lcom/miui/extraphoto/refocus/RelightingPopupWindow;
.super Landroid/widget/PopupWindow;
.source "RelightingPopupWindow.java"


# static fields
.field private static final DISAPPEAR_TIME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "RelightingPopupWindow"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRelightingAdjustView:Lcom/miui/extraphoto/refocus/RelightingAdjustView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;

    invoke-direct {v0, p1}, Lcom/miui/extraphoto/refocus/RelightingAdjustView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->mHandler:Landroid/os/Handler;

    .line 20
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->setWidth(I)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->setHeight(I)V

    .line 23
    invoke-virtual {p0, v1}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->setTouchable(Z)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->setClippingEnabled(Z)V

    .line 25
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/extraphoto/refocus/RelightingAdjustView;

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->mRelightingAdjustView:Lcom/miui/extraphoto/refocus/RelightingAdjustView;

    .line 26
    return-void
.end method


# virtual methods
.method public getRadius()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->mRelightingAdjustView:Lcom/miui/extraphoto/refocus/RelightingAdjustView;

    invoke-virtual {v0}, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->getRadius()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public setAvailableArea(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 51
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->mRelightingAdjustView:Lcom/miui/extraphoto/refocus/RelightingAdjustView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->setAvailableArea(FFFF)V

    .line 52
    return-void
.end method

.method public setPosition(FFFF)V
    .locals 1
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 47
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->mRelightingAdjustView:Lcom/miui/extraphoto/refocus/RelightingAdjustView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/extraphoto/refocus/RelightingAdjustView;->setPosition(FFFF)V

    .line 48
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 30
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 34
    :cond_0
    return-void
.end method

.method public showAtLocationDelay(Landroid/view/View;III)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 37
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 38
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RelightingPopupWindow;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extraphoto/refocus/RelightingPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RelightingPopupWindow$1;-><init>(Lcom/miui/extraphoto/refocus/RelightingPopupWindow;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    return-void
.end method
