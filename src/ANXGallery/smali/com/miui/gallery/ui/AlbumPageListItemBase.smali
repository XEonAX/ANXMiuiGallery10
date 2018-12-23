.class public abstract Lcom/miui/gallery/ui/AlbumPageListItemBase;
.super Landroid/widget/RelativeLayout;
.source "AlbumPageListItemBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;
    }
.end annotation


# instance fields
.field protected mAlbumName:Landroid/widget/TextView;

.field protected mAlbumPhotoCount:Landroid/widget/TextView;

.field protected mForceTop:Landroid/widget/TextView;

.field protected mShareInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public bindCommonInfo(Ljava/lang/String;I)V
    .locals 5
    .param p1, "albumName"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListItemBase;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListItemBase;->mAlbumPhotoCount:Landroid/widget/TextView;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method public bindForceTopIcon(Z)V
    .locals 4
    .param p1, "forceTopItem"    # Z

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageListItemBase;->mForceTop:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListItemBase;->mShareInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListItemBase;->mForceTop:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumPageListItemBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 64
    :cond_0
    :goto_1
    return-void

    .line 56
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListItemBase;->mForceTop:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public bindType(Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;
    .param p2, "typeInfo"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->NORMAL:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;->SYSTEM:Lcom/miui/gallery/ui/AlbumPageListItemBase$AlbumType;

    if-eq p1, v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListItemBase;->mShareInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListItemBase;->mShareInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListItemBase;->mShareInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 35
    const v0, 0x7f12009b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListItemBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListItemBase;->mAlbumName:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f1200a0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListItemBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListItemBase;->mShareInfo:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f12009f

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListItemBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListItemBase;->mAlbumPhotoCount:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f1200a1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListItemBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListItemBase;->mForceTop:Landroid/widget/TextView;

    .line 39
    return-void
.end method
