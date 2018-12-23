.class public Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;
.super Ljava/lang/Object;
.source "nexEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverlayPreviewBuilder"
.end annotation


# instance fields
.field private mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

.field final synthetic this$0:Lcom/nexstreaming/nexeditorsdk/nexEngine;


# direct methods
.method private constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;I)V
    .locals 3

    .prologue
    .line 3713
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->this$0:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3715
    invoke-static {p1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getOverlayItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 3716
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 3717
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    goto :goto_0

    .line 3720
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;ILcom/nexstreaming/nexeditorsdk/nexEngine$1;)V
    .locals 0

    .prologue
    .line 3710
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3901
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v0, :cond_0

    .line 3902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 3904
    :cond_0
    return-void
.end method

.method public display()V
    .locals 3

    .prologue
    .line 3889
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v0, :cond_0

    .line 3890
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->this$0:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;->normal:Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->fastPreview(Lcom/nexstreaming/nexeditorsdk/nexEngine$FastPreviewOption;I)V

    .line 3892
    :cond_0
    return-void
.end method

.method public setAlpha(F)Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;
    .locals 1

    .prologue
    .line 3872
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v0, :cond_0

    .line 3873
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setAlpha(F)V

    .line 3875
    :cond_0
    return-object p0
.end method

.method public setOutline(Z)Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;
    .locals 1

    .prologue
    .line 3735
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v0, :cond_0

    .line 3736
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->showOutline(Z)V

    .line 3738
    :cond_0
    return-object p0
.end method

.method public setPositionX(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;
    .locals 2

    .prologue
    .line 3751
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v0, :cond_0

    .line 3752
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getPositionY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setPosition(II)V

    .line 3754
    :cond_0
    return-object p0
.end method

.method public setPositionY(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;
    .locals 2

    .prologue
    .line 3767
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v0, :cond_0

    .line 3768
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getPositionX()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setPosition(II)V

    .line 3770
    :cond_0
    return-object p0
.end method

.method public setRotateX(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;
    .locals 3

    .prologue
    .line 3787
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v0, :cond_0

    .line 3788
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getRotateY()I

    move-result v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getRotateZ()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setRotate(III)V

    .line 3790
    :cond_0
    return-object p0
.end method

.method public setRotateY(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;
    .locals 3

    .prologue
    .line 3804
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v0, :cond_0

    .line 3805
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getRotateX()I

    move-result v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getRotateZ()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setRotate(III)V

    .line 3807
    :cond_0
    return-object p0
.end method

.method public setRotateZ(I)Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;
    .locals 3

    .prologue
    .line 3822
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v0, :cond_0

    .line 3823
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getRotateX()I

    move-result v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getRotateY()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setRotate(III)V

    .line 3825
    :cond_0
    return-object p0
.end method

.method public setScaleX(F)Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;
    .locals 2

    .prologue
    .line 3840
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v0, :cond_0

    .line 3841
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getScaledY()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setScale(FF)V

    .line 3843
    :cond_0
    return-object p0
.end method

.method public setScaleY(F)Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;
    .locals 2

    .prologue
    .line 3856
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v0, :cond_0

    .line 3857
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$OverlayPreviewBuilder;->mItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getScaledX()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setScale(FF)V

    .line 3859
    :cond_0
    return-object p0
.end method
