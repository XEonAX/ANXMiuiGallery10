.class Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter$BeautifyAdapterItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BeautifyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BeautifyAdapterItemHolder"
.end annotation


# instance fields
.field private mIconView:Landroid/widget/ImageView;

.field private mLabelView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 79
    const v0, 0x7f12007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter$BeautifyAdapterItemHolder;->mLabelView:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f12007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter$BeautifyAdapterItemHolder;->mIconView:Landroid/widget/ImageView;

    .line 81
    return-void
.end method


# virtual methods
.method bind(Lcom/miui/gallery/editor/photo/core/common/model/BeautifyData;)V
    .locals 2
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/common/model/BeautifyData;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter$BeautifyAdapterItemHolder;->mIconView:Landroid/widget/ImageView;

    iget v1, p1, Lcom/miui/gallery/editor/photo/core/common/model/BeautifyData;->icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter$BeautifyAdapterItemHolder;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/gallery/editor/photo/core/common/model/BeautifyData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method
