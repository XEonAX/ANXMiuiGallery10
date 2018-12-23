.class Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;
.super Ljava/lang/Object;
.source "NexVideoEditor.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/NexVideoEditor$Change;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaterMark"
.end annotation


# instance fields
.field private Mode_16v9_Height:I

.field private Mode_16v9_Width:I

.field private Mode_1v1_Height:I

.field private Mode_1v1_Width:I

.field private Mode_2v1_Height:I

.field private Mode_2v1_Width:I

.field private Mode_4v3_Height:I

.field private Mode_4v3_Width:I

.field private anchorPoint:I

.field private mAlphaDurationTime:I

.field private mEndTime:I

.field private mStartTime:I

.field private mTemplateId:Ljava/lang/String;

.field private mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

.field private mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

.field scWidth:F

.field scale:F

.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

.field private timeType:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;)V
    .locals 3
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x2d0

    .line 1651
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1629
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    .line 1630
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    .line 1631
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->timeType:I

    .line 1634
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->anchorPoint:I

    .line 1637
    const/16 v0, 0x190

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mAlphaDurationTime:I

    .line 1640
    const/16 v0, 0x500

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_16v9_Width:I

    .line 1641
    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_16v9_Height:I

    .line 1642
    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_1v1_Width:I

    .line 1643
    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_1v1_Height:I

    .line 1644
    const/16 v0, 0x5a0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_2v1_Width:I

    .line 1645
    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_2v1_Height:I

    .line 1646
    const/16 v0, 0x3c0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_4v3_Width:I

    .line 1647
    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_4v3_Height:I

    .line 1648
    iput v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    .line 1649
    iput v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scWidth:F

    .line 1651
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;ILjava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p2, "timeType"    # I
    .param p3, "templateId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x2d0

    .line 1653
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1629
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    .line 1630
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    .line 1631
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->timeType:I

    .line 1634
    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->anchorPoint:I

    .line 1637
    const/16 v0, 0x190

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mAlphaDurationTime:I

    .line 1640
    const/16 v0, 0x500

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_16v9_Width:I

    .line 1641
    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_16v9_Height:I

    .line 1642
    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_1v1_Width:I

    .line 1643
    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_1v1_Height:I

    .line 1644
    const/16 v0, 0x5a0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_2v1_Width:I

    .line 1645
    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_2v1_Height:I

    .line 1646
    const/16 v0, 0x3c0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_4v3_Width:I

    .line 1647
    iput v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_4v3_Height:I

    .line 1648
    iput v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    .line 1649
    iput v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scWidth:F

    .line 1654
    iput p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->timeType:I

    .line 1655
    iput-object p3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mTemplateId:Ljava/lang/String;

    .line 1656
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->initCommon()V

    .line 1657
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->initOther()V

    .line 1658
    return-void
.end method

.method private delete(Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;)V
    .locals 2
    .param p1, "waterMark"    # Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;

    .prologue
    .line 1769
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->removeOverlay(I)Z

    .line 1771
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "edit_type_water_mark"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    :cond_0
    return-void
.end method

.method private initCommon()V
    .locals 3

    .prologue
    const v2, 0x449c4000    # 1250.0f

    const v1, 0x44728000    # 970.0f

    .line 1666
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1705
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2900(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    .line 1706
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$3000(Lcom/miui/gallery/video/editor/NexVideoEditor;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    .line 1707
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_16v9_Width:I

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    .line 1711
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->getProjectTotalTime()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mAlphaDurationTime:I

    if-ge v0, v1, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$200(Lcom/miui/gallery/video/editor/NexVideoEditor;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e054d

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 1715
    :cond_0
    return-void

    .line 1668
    :pswitch_0
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_16v9_Width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    .line 1669
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_16v9_Height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    .line 1670
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_16v9_Width:I

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    goto :goto_0

    .line 1673
    :pswitch_1
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_4v3_Width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    .line 1674
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_4v3_Height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    .line 1675
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_4v3_Width:I

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    goto :goto_0

    .line 1678
    :pswitch_2
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_2v1_Width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    .line 1679
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_2v1_Height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    .line 1680
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_2v1_Width:I

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    goto :goto_0

    .line 1684
    :pswitch_3
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_16v9_Width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    .line 1685
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_16v9_Height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    .line 1686
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_16v9_Height:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scWidth:F

    .line 1687
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_16v9_Height:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    goto :goto_0

    .line 1690
    :pswitch_4
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_4v3_Height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_4v3_Width:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scWidth:F

    .line 1691
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_4v3_Width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    .line 1692
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_4v3_Height:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    goto/16 :goto_0

    .line 1695
    :pswitch_5
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_2v1_Height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_2v1_Width:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scWidth:F

    .line 1696
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_2v1_Width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    .line 1697
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_2v1_Height:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    goto/16 :goto_0

    .line 1700
    :pswitch_6
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_1v1_Width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_1v1_Width:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scWidth:F

    .line 1701
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_1v1_Height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    .line 1702
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->Mode_1v1_Height:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    goto/16 :goto_0

    .line 1666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private initOther()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 1719
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->getProjectTotalTime()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    .line 1720
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mTemplateId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    if-lez v0, :cond_1

    .line 1721
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->timeType:I

    if-nez v0, :cond_2

    .line 1722
    iput v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    .line 1723
    const/16 v11, 0x5dc

    .line 1724
    .local v11, "durationTime":I
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$200(Lcom/miui/gallery/video/editor/NexVideoEditor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayPreset(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayImage(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    .line 1725
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->anchorPoint:I

    iget v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    iget v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    invoke-direct/range {v0 .. v7}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;IZFFII)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 1726
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getDefaultDuration()I

    move-result v0

    add-int/2addr v0, v11

    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mAlphaDurationTime:I

    invoke-static {v0, v1, v13, v12}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getAlpha(IIFF)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v9

    .line 1728
    .local v9, "alphaAnimate":Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v0, v9}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->addAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;)V

    .line 1744
    .end local v9    # "alphaAnimate":Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    .end local v11    # "durationTime":I
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->scale:F

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->setScale(FF)V

    .line 1746
    :cond_1
    return-void

    .line 1730
    :cond_2
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->timeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1731
    iput v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    .line 1732
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$200(Lcom/miui/gallery/video/editor/NexVideoEditor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayPreset(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayImage(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    .line 1733
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->anchorPoint:I

    iget v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    iget v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    invoke-direct/range {v0 .. v7}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;IZFFII)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    goto :goto_0

    .line 1734
    :cond_3
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->timeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1735
    const/16 v10, 0x320

    .line 1736
    .local v10, "alphaTime":I
    const/16 v11, 0x1f4

    .line 1737
    .restart local v11    # "durationTime":I
    const/16 v8, 0x3e8

    .line 1738
    .local v8, "advanceTime":I
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$200(Lcom/miui/gallery/video/editor/NexVideoEditor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayPreset(Landroid/content/Context;)Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayPreset;->getOverlayImage(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    .line 1739
    iget v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    sub-int/2addr v0, v10

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getDefaultDuration()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    .line 1740
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->anchorPoint:I

    iget v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->x:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->y:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mStartTime:I

    iget v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mEndTime:I

    invoke-direct/range {v0 .. v7}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;-><init>(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;IZFFII)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 1741
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlay:Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;->getDefaultDuration()I

    move-result v0

    add-int/2addr v0, v11

    invoke-static {v0, v10, v13, v12}, Lcom/nexstreaming/nexeditorsdk/nexAnimate;->getAlpha(IIFF)Lcom/nexstreaming/nexeditorsdk/nexAnimate;

    move-result-object v9

    .line 1742
    .restart local v9    # "alphaAnimate":Lcom/nexstreaming/nexeditorsdk/nexAnimate;
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v0, v9}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->addAnimate(Lcom/nexstreaming/nexeditorsdk/nexAnimate;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public applyChange()V
    .locals 5

    .prologue
    .line 1750
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "edit_type_water_mark"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;

    .line 1751
    .local v2, "waterMark":Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;
    invoke-direct {p0, v2}, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->delete(Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;)V

    .line 1752
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    if-eqz v3, :cond_0

    .line 1753
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "edit_type_water_mark"

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->mWaterMarkOverlayItem:Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->addOverlay(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)Z

    .line 1756
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "edit_type_smart_effect_template"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;

    .line 1757
    .local v1, "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    if-eqz v1, :cond_1

    .line 1758
    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->applyChange()V

    .line 1759
    const-string v3, "NexVideoEditor"

    const-string v4, "WaterMark change: have  smartEffect;"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$WaterMark;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "bg_audio"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;

    .line 1762
    .local v0, "bgmEdit":Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
    if-eqz v0, :cond_2

    .line 1763
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->applyChange()V

    .line 1764
    const-string v3, "NexVideoEditor"

    const-string v4, "WaterMark change: have  audio;"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    :cond_2
    return-void
.end method
