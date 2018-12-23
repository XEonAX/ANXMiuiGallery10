.class Lcom/miui/extraphoto/refocus/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    const/high16 v0, 0x7f080000

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/refocus/LoadingDialog;->setCancelable(Z)V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 19
    .local v0, "size":I
    iput v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialog;->mWidth:I

    .line 20
    iput v0, p0, Lcom/miui/extraphoto/refocus/LoadingDialog;->mHeight:I

    .line 21
    new-instance v1, Lcom/miui/extraphoto/refocus/LoadingDialogView;

    invoke-direct {v1, p1}, Lcom/miui/extraphoto/refocus/LoadingDialogView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/miui/extraphoto/refocus/LoadingDialog;->mWidth:I

    iget v4, p0, Lcom/miui/extraphoto/refocus/LoadingDialog;->mHeight:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/miui/extraphoto/refocus/LoadingDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    return-void
.end method


# virtual methods
.method public setLayoutParams()V
    .locals 0

    .line 26
    return-void
.end method

.method public show(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 29
    invoke-virtual {p0}, Lcom/miui/extraphoto/refocus/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 30
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 31
    iget v1, p0, Lcom/miui/extraphoto/refocus/LoadingDialog;->mWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 32
    iget v1, p0, Lcom/miui/extraphoto/refocus/LoadingDialog;->mHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 33
    iget v1, p0, Lcom/miui/extraphoto/refocus/LoadingDialog;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 34
    iget v1, p0, Lcom/miui/extraphoto/refocus/LoadingDialog;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 35
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 36
    return-void
.end method
