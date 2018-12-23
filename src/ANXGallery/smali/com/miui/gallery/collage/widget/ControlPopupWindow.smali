.class Lcom/miui/gallery/collage/widget/ControlPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ControlPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mControlListener:Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

.field private mHeight:I

.field private mMargin:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/miui/gallery/collage/widget/ControlPopupWindow$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow$2;-><init>(Lcom/miui/gallery/collage/widget/ControlPopupWindow;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/collage/widget/ControlPopupWindow;)Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/ControlPopupWindow;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mControlListener:Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 27
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mContext:Landroid/content/Context;

    .line 28
    const v4, 0x7f040052

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->setContentView(Landroid/view/View;)V

    .line 30
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual {p0, v6}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->setOutsideTouchable(Z)V

    .line 32
    invoke-virtual {p0, v6}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->setFocusable(Z)V

    .line 33
    const v4, 0x7f0f000e

    invoke-virtual {p0, v4}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->setAnimationStyle(I)V

    .line 34
    new-instance v4, Lcom/miui/gallery/collage/widget/ControlPopupWindow$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow$1;-><init>(Lcom/miui/gallery/collage/widget/ControlPopupWindow;)V

    invoke-virtual {p0, v4}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mWidth:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mHeight:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mMargin:I

    .line 47
    iget v4, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mWidth:I

    invoke-virtual {p0, v4}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->setWidth(I)V

    .line 48
    iget v4, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mHeight:I

    invoke-virtual {p0, v4}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->setHeight(I)V

    .line 50
    const v4, 0x7f120117

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 51
    .local v2, "replace":Landroid/widget/ImageView;
    const v4, 0x7f120072

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 52
    .local v3, "rotate":Landroid/widget/ImageView;
    const v4, 0x7f120118

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 54
    .local v1, "mirror":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v4, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method setControlListener(Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;)V
    .locals 0
    .param p1, "controlListener"    # Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mControlListener:Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;

    .line 94
    return-void
.end method

.method public showAtLocation(Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "relativeView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    .line 97
    new-array v3, v6, [I

    .line 98
    .local v3, "relativeLocation":[I
    new-array v2, v6, [I

    .line 99
    .local v2, "parentLocation":[I
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 100
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 103
    aget v6, v3, v9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v0, v6

    .line 104
    .local v0, "centerY":F
    aget v6, v2, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v1, v6

    .line 105
    .local v1, "parentCenterY":F
    cmpg-float v6, v0, v1

    if-gez v6, :cond_2

    .line 106
    aget v6, v3, v9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mMargin:I

    add-int v5, v6, v7

    .line 110
    .local v5, "y":I
    :goto_0
    if-gez v5, :cond_0

    .line 111
    aget v6, v3, v9

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mHeight:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 113
    :cond_0
    if-gez v5, :cond_1

    .line 114
    aget v6, v3, v9

    iget v7, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mMargin:I

    add-int v5, v6, v7

    .line 116
    :cond_1
    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v4, v6, v7

    .line 117
    .local v4, "x":I
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    iget v6, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mWidth:I

    iget v7, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mHeight:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->update(IIII)V

    .line 122
    :goto_1
    return-void

    .line 108
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_2
    aget v6, v3, v9

    iget v7, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mHeight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/miui/gallery/collage/widget/ControlPopupWindow;->mMargin:I

    sub-int v5, v6, v7

    .restart local v5    # "y":I
    goto :goto_0

    .line 120
    .restart local v4    # "x":I
    :cond_3
    const v6, 0x800033

    invoke-super {p0, p1, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method
