.class Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;
.super Ljava/lang/Object;
.source "ChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PagerPoint"
.end annotation


# instance fields
.field private mActiveDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivePoint:I

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mPointLayout:Landroid/widget/LinearLayout;

.field private mPointMargin:I


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "normal"    # Landroid/graphics/drawable/Drawable;
    .param p3, "active"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mActivePoint:I

    .line 185
    iput-object p1, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointLayout:Landroid/widget/LinearLayout;

    .line 186
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 187
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b01fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointMargin:I

    .line 188
    iput-object p2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 189
    iput-object p3, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    return-void
.end method

.method private generatorPoint()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 218
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 219
    .local v1, "view":Landroid/widget/ImageView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 220
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 221
    iget v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 222
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    return-object v1
.end method

.method private setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "image"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyActivePointChanged(I)V
    .locals 3
    .param p1, "activePoint"    # I

    .prologue
    .line 203
    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 204
    .local v0, "childCount":I
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mActivePoint:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 207
    iput p1, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mActivePoint:I

    .line 209
    :cond_0
    return-void
.end method

.method public notifyPointCountChanged(II)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "current"    # I

    .prologue
    .line 193
    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->generatorPoint()Landroid/widget/ImageView;

    move-result-object v1

    .line 196
    .local v1, "point":Landroid/widget/ImageView;
    if-ne p2, v0, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mPointLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 199
    .end local v1    # "point":Landroid/widget/ImageView;
    :cond_1
    iput p2, p0, Lcom/miui/gallery/ui/ChooserFragment$PagerPoint;->mActivePoint:I

    .line 200
    return-void
.end method
