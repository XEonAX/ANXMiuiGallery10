.class public final Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "EmptyView"
.end annotation


# instance fields
.field private mEmptyBackground:I

.field private mEmptyView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageItem;


# direct methods
.method protected constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageItem;

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 1742
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 1743
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyView:Landroid/widget/TextView;

    .line 1744
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1745
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0235

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1746
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1747
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0234

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1748
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1749
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1750
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v5, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1752
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyBackground:I

    .line 1754
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 1768
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1773
    :goto_0
    return-void

    .line 1771
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->initView()V

    .line 1772
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setTip(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "ss"    # Ljava/lang/CharSequence;

    .prologue
    .line 1776
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1781
    :goto_0
    return-void

    .line 1779
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->initView()V

    .line 1780
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1757
    if-eqz p1, :cond_1

    .line 1758
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->initView()V

    .line 1759
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1760
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyBackground:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->setBackgroundColor(I)V

    .line 1765
    :cond_0
    :goto_0
    return-void

    .line 1761
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1763
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
