.class public Lcom/miui/internal/widget/SingleCenterTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private vY:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 3

    .line 38
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 39
    iget-boolean p1, p0, Lcom/miui/internal/widget/SingleCenterTextView;->vY:Z

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/miui/internal/widget/SingleCenterTextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1b

    invoke-virtual {p0}, Lcom/miui/internal/widget/SingleCenterTextView;->getGravity()I

    move-result p1

    if-eq p1, p2, :cond_1b

    .line 40
    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/SingleCenterTextView;->setGravity(I)V

    .line 42
    :cond_1b
    return-void
.end method

.method public setEnableSingleCenter(Z)V
    .registers 2

    .line 33
    iput-boolean p1, p0, Lcom/miui/internal/widget/SingleCenterTextView;->vY:Z

    .line 34
    return-void
.end method
