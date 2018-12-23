.class public Lcom/miui/gallery/util/SystemUiUtil;
.super Ljava/lang/Object;
.source "SystemUiUtil.java"


# direct methods
.method public static extendToStatusBar(Landroid/view/View;)V
    .locals 1
    .param p0, "decorView"    # Landroid/view/View;

    .prologue
    .line 96
    const/16 v0, 0x500

    .line 98
    .local v0, "flag":I
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 99
    return-void
.end method

.method public static hideSystemBars(Landroid/view/View;)V
    .locals 2
    .param p0, "decorView"    # Landroid/view/View;

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 36
    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 55
    :goto_0
    return-void

    .line 45
    :cond_0
    const/16 v0, 0x3706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public static setDrawSystemBarBackground(Landroid/view/Window;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    if-eqz p0, :cond_0

    .line 78
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public static setLayoutFullScreen(Landroid/view/View;Z)V
    .locals 3
    .param p0, "decorView"    # Landroid/view/View;
    .param p1, "showBars"    # Z

    .prologue
    .line 58
    const/16 v0, 0x700

    .line 61
    .local v0, "flag":I
    if-nez p1, :cond_0

    .line 62
    or-int/lit16 v0, v0, 0x1006

    .line 66
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_1

    .line 67
    or-int/lit16 v0, v0, 0x2000

    .line 69
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 70
    return-void
.end method

.method public static setSystemBarsVisibility(ZLandroid/view/View;)V
    .locals 0
    .param p0, "visibility"    # Z
    .param p1, "decorView"    # Landroid/view/View;

    .prologue
    .line 83
    if-eqz p0, :cond_0

    .line 84
    invoke-static {p1}, Lcom/miui/gallery/util/SystemUiUtil;->showSystemBars(Landroid/view/View;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/util/SystemUiUtil;->hideSystemBars(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static showSystemBars(Landroid/view/View;)V
    .locals 2
    .param p0, "decorView"    # Landroid/view/View;

    .prologue
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 19
    const/16 v0, 0x700

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 32
    :goto_0
    return-void

    .line 25
    :cond_0
    const/16 v0, 0x2700

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
