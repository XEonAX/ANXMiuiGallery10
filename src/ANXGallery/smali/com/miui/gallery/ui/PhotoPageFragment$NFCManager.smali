.class Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NFCManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;
    }
.end annotation


# instance fields
.field private mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2668
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;

    invoke-direct {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;

    .line 2669
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;

    if-eqz v0, :cond_0

    .line 2679
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->release()V

    .line 2680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;

    .line 2682
    :cond_0
    return-void
.end method

.method public settleItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;

    if-eqz v0, :cond_0

    .line 2673
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->updateItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 2675
    :cond_0
    return-void
.end method
