.class public Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;
.super Ljava/lang/Object;
.source "PhotoPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/PhotoPageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoiceMode"
.end annotation


# instance fields
.field private mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

.field private mInAction:Z

.field private mOriginCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

.field private mOriginInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

.field private mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

.field private mRenderState:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

.field private mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

.field private mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

.field private mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;


# direct methods
.method constructor <init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "checkSource"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;
    .param p2, "listener"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mInAction:Z

    .line 539
    new-instance v0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-direct {v0, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;-><init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    .line 540
    new-instance v0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-direct {v0, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;-><init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    .line 541
    new-instance v0, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-direct {v0, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;-><init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderState:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    .line 542
    iput-object p1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    .line 543
    iput-object p2, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mInAction:Z

    .line 545
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->isInAction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderState:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    return-object v0
.end method

.method private isInAction()Z
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mInAction:Z

    return v0
.end method

.method private refreshAllState(Z)V
    .locals 5
    .param p1, "checked"    # Z

    .prologue
    .line 669
    iget-object v4, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->getCount()I

    move-result v0

    .line 670
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 671
    iget-object v4, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v4, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->getItemKey(I)J

    move-result-wide v2

    .line 672
    .local v2, "id":J
    iget-object v4, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v4, v1, v2, v3, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 673
    if-nez p1, :cond_0

    .line 674
    iget-object v4, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v4, v1, v2, v3, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 675
    iget-object v4, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderState:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v4, v1, v2, v3, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 670
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 678
    .end local v2    # "id":J
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->notifyCheckState()V

    .line 679
    return-void
.end method


# virtual methods
.method public appendCheck(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 698
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->appendCheck(IJ)V

    .line 699
    return-void
.end method

.method public chooseAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 655
    invoke-direct {p0, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->refreshAllState(Z)V

    .line 656
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    invoke-interface {v0, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Z)V

    .line 659
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mInAction:Z

    .line 710
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->notifyCheckState()V

    .line 711
    return-void
.end method

.method public finishInit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 702
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->notifyCheckState()V

    .line 703
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    iget-object v1, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v1, v4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->getItemKey(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-interface {v0, v4, v2, v3, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;->onItemCheckedStateChanged(IJZ)V

    .line 706
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->getCount()I

    move-result v0

    return v0
.end method

.method protected getOriginIInstance()Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    if-nez v0, :cond_0

    .line 555
    new-instance v0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$1;-><init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    return-object v0
.end method

.method public getOriginItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->getSelectedPositions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getRenderIInstance()Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    if-nez v0, :cond_0

    .line 613
    new-instance v0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$3;-><init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    return-object v0
.end method

.method public getRenderItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderState:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->getSelectedPositions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectIInstance()Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    if-nez v0, :cond_0

    .line 588
    new-instance v0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode$2;-><init>(Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;)V

    iput-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectInterface:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceModeInterface;

    return-object v0
.end method

.method public getSelectItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->getSelectedPositions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataChanged()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mOriginCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->notifyDataChanged()V

    .line 549
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->notifyDataChanged()V

    .line 550
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderState:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->notifyDataChanged()V

    .line 551
    return-void
.end method

.method public setChecked(IJZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "checked"    # Z

    .prologue
    .line 686
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSelectCheck:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 687
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->notifyCheckState()V

    .line 688
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;->onItemCheckedStateChanged(IJZ)V

    .line 691
    :cond_0
    return-void
.end method

.method public setRenderChecked(IJZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "checked"    # Z

    .prologue
    .line 694
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mRenderState:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState;->setChecked(IJZ)V

    .line 695
    return-void
.end method

.method startAction()V
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mInAction:Z

    .line 651
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mSource:Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;

    invoke-interface {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$CheckState$Source;->notifyCheckState()V

    .line 652
    return-void
.end method

.method public unChooseAll()V
    .locals 2

    .prologue
    .line 662
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->refreshAllState(Z)V

    .line 663
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->mChoiceModeListener:Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Z)V

    .line 666
    :cond_0
    return-void
.end method
