.class Lcom/miui/gallery/ui/BackupTitle$TitleItemData;
.super Ljava/lang/Object;
.source "BackupTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BackupTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleItemData"
.end annotation


# instance fields
.field public mBtnBgRes:I

.field public mBtnClickListener:Landroid/view/View$OnClickListener;

.field public mBtnTxt:Ljava/lang/CharSequence;

.field public mDesc:Ljava/lang/CharSequence;

.field public mIconAnim:Landroid/view/animation/Animation;

.field public mIconRes:I

.field public mProgress:F

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/miui/gallery/ui/BackupTitle;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/BackupTitle;)V
    .locals 1

    .prologue
    .line 617
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mProgress:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/BackupTitle;
    .param p2, "x1"    # Lcom/miui/gallery/ui/BackupTitle$1;

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;-><init>(Lcom/miui/gallery/ui/BackupTitle;)V

    return-void
.end method


# virtual methods
.method public setBtnBgRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;
    .locals 0
    .param p1, "btnBgRes"    # I

    .prologue
    .line 650
    iput p1, p0, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mBtnBgRes:I

    .line 651
    return-object p0
.end method

.method public setBtnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;
    .locals 0
    .param p1, "btnClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mBtnClickListener:Landroid/view/View$OnClickListener;

    .line 661
    return-object p0
.end method

.method public setBtnTxt(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;
    .locals 0
    .param p1, "btnTxt"    # Ljava/lang/CharSequence;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mBtnTxt:Ljava/lang/CharSequence;

    .line 646
    return-object p0
.end method

.method public setDesc(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;
    .locals 0
    .param p1, "desc"    # Ljava/lang/CharSequence;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mDesc:Ljava/lang/CharSequence;

    .line 641
    return-object p0
.end method

.method public setIconAnim(Landroid/view/animation/Animation;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;
    .locals 0
    .param p1, "iconAnim"    # Landroid/view/animation/Animation;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mIconAnim:Landroid/view/animation/Animation;

    .line 666
    return-object p0
.end method

.method public setIconRes(I)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;
    .locals 0
    .param p1, "iconRes"    # I

    .prologue
    .line 630
    iput p1, p0, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mIconRes:I

    .line 631
    return-object p0
.end method

.method public setProgress(F)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 670
    iput p1, p0, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mProgress:F

    .line 671
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/BackupTitle$TitleItemData;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupTitle$TitleItemData;->mTitle:Ljava/lang/CharSequence;

    .line 636
    return-object p0
.end method
