.class public Lcom/miui/gallery/ui/AlbumPageListLocalItem;
.super Lcom/miui/gallery/ui/AlbumPageListItemBase;
.source "AlbumPageListLocalItem.java"


# instance fields
.field protected mAlbumNameDesc:Landroid/widget/TextView;

.field protected mMoreAlbumHint:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumPageListItemBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public bindAlbumNameDesc(Ljava/lang/String;)V
    .locals 1
    .param p1, "albumNameDesc"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->mAlbumNameDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/miui/gallery/ui/AlbumPageListItemBase;->onFinishInflate()V

    .line 20
    const v0, 0x7f1200a8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->mMoreAlbumHint:Landroid/widget/TextView;

    .line 21
    const v0, 0x7f1200a7

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->mAlbumNameDesc:Landroid/widget/TextView;

    .line 22
    return-void
.end method
