.class public abstract Lcom/miui/gallery/ui/TimeLineGridHeaderItem;
.super Landroid/widget/LinearLayout;
.source "TimeLineGridHeaderItem.java"

# interfaces
.implements Lcom/miui/gallery/ui/CheckableView;


# instance fields
.field protected mDateTime:Landroid/widget/TextView;

.field protected mLocation:Landroid/widget/TextView;

.field private mSelectGroupOrNot:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->setLayoutDirection(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public bindData(JLjava/lang/String;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "location"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mDateTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/miui/gallery/util/GalleryDateUtils;->formatRelativeDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mLocation:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mLocation:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 26
    const v0, 0x7f120085

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mDateTime:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f120298

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mLocation:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f1200f8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lmiui/R$string;->select_all:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    return-void
.end method

.method public setCheckable(Z)V
    .locals 2
    .param p1, "checkable"    # Z

    .prologue
    .line 44
    if-eqz p1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    const v1, 0x7f020258

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCheckableListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_0

    sget v1, Lmiui/R$string;->deselect_all:I

    .line 57
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void

    .line 56
    :cond_0
    sget v1, Lmiui/R$string;->select_all:I

    goto :goto_0
.end method

.method public toggle()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
