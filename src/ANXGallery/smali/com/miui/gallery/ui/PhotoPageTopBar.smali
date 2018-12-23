.class public Lcom/miui/gallery/ui/PhotoPageTopBar;
.super Ljava/lang/Object;
.source "PhotoPageTopBar.java"


# instance fields
.field private mLocation:Landroid/widget/TextView;

.field private mRefocusEnterView:Landroid/widget/ImageView;

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTopLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    const v1, 0x7f120220

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    const v1, 0x7f120221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTitle:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    const v1, 0x7f120223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mSubTitle:Landroid/widget/TextView;

    .line 23
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    const v1, 0x7f120224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mLocation:Landroid/widget/TextView;

    .line 24
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    const v1, 0x7f12021f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mRefocusEnterView:Landroid/widget/ImageView;

    .line 25
    return-void
.end method


# virtual methods
.method public getRefocusEnterView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mRefocusEnterView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p2}, Lcom/miui/gallery/data/LocationUtil;->isLocationValidate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mLocation:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mLocation:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    return-void
.end method
