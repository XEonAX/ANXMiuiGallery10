.class public Lcom/miui/gallery/ui/PeoplePageGridItem;
.super Lcom/miui/gallery/ui/FaceDisplayItemPreferFromThumbnailSource;
.source "PeoplePageGridItem.java"

# interfaces
.implements Lcom/miui/gallery/ui/Checkable;
.implements Lcom/miui/gallery/widget/EditableListViewWrapper$PickAnimationHelper$BackgroundImageViewable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PeoplePageGridItem$IdHolder;
    }
.end annotation


# instance fields
.field protected mCheckBox:Landroid/widget/CheckBox;

.field private mName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/FaceDisplayItemPreferFromThumbnailSource;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getBackgroundImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageGridItem;->mCover:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageGridItem;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleLocalId()J
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeoplePageGridItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PeoplePageGridItem$IdHolder;

    iget-wide v0, v0, Lcom/miui/gallery/ui/PeoplePageGridItem$IdHolder;->id:J

    return-wide v0
.end method

.method public getPeopleServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeoplePageGridItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PeoplePageGridItem$IdHolder;

    iget-object v0, v0, Lcom/miui/gallery/ui/PeoplePageGridItem$IdHolder;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageGridItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/miui/gallery/ui/FaceDisplayItemPreferFromThumbnailSource;->onFinishInflate()V

    .line 33
    const v0, 0x7f1200c4

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PeoplePageGridItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageGridItem;->mCover:Landroid/widget/ImageView;

    .line 34
    const v0, 0x7f120088

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PeoplePageGridItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageGridItem;->mName:Landroid/widget/TextView;

    .line 35
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PeoplePageGridItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/gallery/ui/PeoplePageGridItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 36
    return-void
.end method

.method public saveIds2Tag(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "serverId"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Lcom/miui/gallery/ui/PeoplePageGridItem$IdHolder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/gallery/ui/PeoplePageGridItem$IdHolder;-><init>(Lcom/miui/gallery/ui/PeoplePageGridItem;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PeoplePageGridItem;->setTag(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public setCheckable(Z)V
    .locals 2
    .param p1, "checkable"    # Z

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageGridItem;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageGridItem;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageGridItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageGridItem;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageGridItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 80
    return-void
.end method
