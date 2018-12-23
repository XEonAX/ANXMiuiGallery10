.class public Lcom/miui/gallery/ui/CleanerFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "CleanerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;,
        Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;,
        Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;,
        Lcom/miui/gallery/ui/CleanerFragment$ScanResultLayoutManager;
    }
.end annotation


# instance fields
.field private mActionLayout:Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

.field private mAdapter:Lcom/miui/gallery/cleaner/ScanResultAdapter;

.field private mExitConfirmDialog:Landroid/app/Dialog;

.field private mExpandHeight:I

.field private mIsAttachedTowindow:Z

.field private mIsScanStarted:Z

.field private mProgressBar:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRetractHeight:I

.field private mScanLayout:Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

.field private mScanObserver:Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;

.field private mScannerManager:Lcom/miui/gallery/cleaner/ScannerManager;

.field private mScreenHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 241
    new-instance v0, Lcom/miui/gallery/ui/CleanerFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/CleanerFragment$4;-><init>(Lcom/miui/gallery/ui/CleanerFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScanObserver:Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;

    .line 480
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/CleanerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/CleanerFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/ui/CleanerFragment;->onExitCancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/CleanerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/CleanerFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/ui/CleanerFragment;->onExit()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/CleanerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CleanerFragment;

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mExpandHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/CleanerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CleanerFragment;

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mRetractHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CleanerFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mActionLayout:Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CleanerFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScanLayout:Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/CleanerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CleanerFragment;

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/ui/CleanerRotateProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CleanerFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mProgressBar:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/CleanerFragment;)Lcom/miui/gallery/cleaner/ScannerManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/CleanerFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScannerManager:Lcom/miui/gallery/cleaner/ScannerManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/CleanerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/CleanerFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/ui/CleanerFragment;->updateScanResult()V

    return-void
.end method

.method private initLayoutHeight(I)V
    .locals 4
    .param p1, "height"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScreenHeight:I

    .line 170
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CleanerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 171
    .local v0, "expandPercent":I
    iget v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScreenHeight:I

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mExpandHeight:I

    .line 172
    iget v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScreenHeight:I

    iget v2, p0, Lcom/miui/gallery/ui/CleanerFragment;->mExpandHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mRetractHeight:I

    .line 173
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScanLayout:Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    iget v2, p0, Lcom/miui/gallery/ui/CleanerFragment;->mExpandHeight:I

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->access$200(Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;I)V

    .line 174
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mActionLayout:Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    iget v2, p0, Lcom/miui/gallery/ui/CleanerFragment;->mExpandHeight:I

    iget v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mRetractHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->setHeight(II)V

    .line 175
    return-void
.end method

.method private onExit()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScannerManager:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/ScannerManager;->resetScan()V

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 131
    return-void
.end method

.method private onExitCancel()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "cleaner"

    const-string v1, "cleaner_scan_exit_cancel"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private setLayoutByScanResult()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x12c

    const/4 v1, 0x0

    .line 179
    iget-boolean v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mIsScanStarted:Z

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScannerManager:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/ScannerManager;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mActionLayout:Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->show(Z)V

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScanLayout:Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->expand(Z)V

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mProgressBar:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->showRingCircle(Z)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScannerManager:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/ScannerManager;->isScanResultEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScanLayout:Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    invoke-virtual {v0, v4, v2, v3}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->expand(ZJ)V

    .line 189
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mActionLayout:Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    invoke-virtual {v0, v4, v2, v3}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->show(ZJ)V

    .line 190
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mProgressBar:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->showEmptyAnim(J)V

    .line 191
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mActionLayout:Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    invoke-static {v0}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->access$300(Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScanLayout:Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->retract(Z)V

    .line 194
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mProgressBar:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->hideRingCircle(Z)V

    .line 195
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mActionLayout:Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;->hide(Z)V

    .line 196
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mProgressBar:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScannerManager:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/ScannerManager;->getScanSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->setNumber(J)V

    .line 197
    invoke-direct {p0}, Lcom/miui/gallery/ui/CleanerFragment;->updateScanResult()V

    goto :goto_0
.end method

.method private updateScanResult()V
    .locals 4

    .prologue
    .line 217
    iget-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mAdapter:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/cleaner/ScanResultAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    .line 218
    .local v1, "oldResult":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cleaner/ScanResult;>;"
    iget-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScannerManager:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-virtual {v3}, Lcom/miui/gallery/cleaner/ScannerManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 219
    .local v0, "newResult":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cleaner/ScanResult;>;"
    new-instance v3, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;

    invoke-direct {v3, p0, v1, v0}, Lcom/miui/gallery/ui/CleanerFragment$ScanResultDiffCallback;-><init>(Lcom/miui/gallery/ui/CleanerFragment;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v3}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v2

    .line 220
    .local v2, "result":Landroid/support/v7/util/DiffUtil$DiffResult;
    iget-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mAdapter:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 221
    iget-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mAdapter:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/cleaner/ScanResultAdapter;->updateDataList(Ljava/util/List;)V

    .line 222
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "cleaner"

    return-object v0
.end method

.method protected getThemeRes()I
    .locals 1

    .prologue
    .line 477
    const v0, 0x7f0f00a3

    return v0
.end method

.method public onActivityAttachedToWindow()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mIsAttachedTowindow:Z

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/util/ScreenUtils;->getExactScreenHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/CleanerFragment;->initLayoutHeight(I)V

    .line 165
    invoke-direct {p0}, Lcom/miui/gallery/ui/CleanerFragment;->setLayoutByScanResult()V

    .line 166
    return-void
.end method

.method public onBackPressed()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 89
    iget-object v2, p0, Lcom/miui/gallery/ui/CleanerFragment;->mProgressBar:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;->isRotating()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScannerManager:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-virtual {v2}, Lcom/miui/gallery/cleaner/ScannerManager;->isScanning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/miui/gallery/ui/CleanerFragment;->onExit()V

    .line 125
    :goto_0
    return v6

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/CleanerFragment;->mExitConfirmDialog:Landroid/app/Dialog;

    if-nez v2, :cond_1

    .line 94
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e00d4

    new-instance v4, Lcom/miui/gallery/ui/CleanerFragment$3;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/CleanerFragment$3;-><init>(Lcom/miui/gallery/ui/CleanerFragment;)V

    .line 95
    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/miui/gallery/ui/CleanerFragment$2;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/CleanerFragment$2;-><init>(Lcom/miui/gallery/ui/CleanerFragment;)V

    .line 103
    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/ui/CleanerFragment$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/CleanerFragment$1;-><init>(Lcom/miui/gallery/ui/CleanerFragment;)V

    .line 109
    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e00d5

    .line 115
    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e00d3

    .line 116
    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/CleanerFragment;->mExitConfirmDialog:Landroid/app/Dialog;

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/CleanerFragment;->mExitConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScannerManager:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-virtual {v4}, Lcom/miui/gallery/cleaner/ScannerManager;->getStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 122
    .local v1, "time":I
    const-string v2, "durationBeforeExit"

    int-to-float v3, v1

    sget-object v4, Lcom/miui/gallery/cleaner/ScannerManager;->TIME_COST_STAGE:[I

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->formatValueStage(F[I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v2, "cleaner"

    const-string v3, "cleaner_scan_exit"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onDestroy()V

    .line 211
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mExitConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mExitConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mExitConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 214
    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 60
    const v3, 0x7f040047

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 62
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f1200b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 63
    iget-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/miui/gallery/ui/CleanerFragment$ScanResultLayoutManager;

    iget-object v5, p0, Lcom/miui/gallery/ui/CleanerFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v4, p0, v5}, Lcom/miui/gallery/ui/CleanerFragment$ScanResultLayoutManager;-><init>(Lcom/miui/gallery/ui/CleanerFragment;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 64
    invoke-virtual {p0}, Lcom/miui/gallery/ui/CleanerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 65
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/miui/gallery/util/DividerItemDecoration;

    invoke-direct {v4, v1, v7, v7}, Lcom/miui/gallery/util/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 67
    new-instance v3, Lcom/miui/gallery/cleaner/ScanResultAdapter;

    iget-object v4, p0, Lcom/miui/gallery/ui/CleanerFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v3, v4}, Lcom/miui/gallery/cleaner/ScanResultAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mAdapter:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    .line 68
    iget-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/miui/gallery/ui/CleanerFragment;->mAdapter:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 70
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;

    invoke-direct {v0}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;-><init>()V

    .line 71
    .local v0, "animator":Landroid/support/v7/widget/SimpleItemAnimator;
    invoke-virtual {v0, v6}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 72
    iget-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 74
    new-instance v3, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    const v4, 0x7f1200f5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;-><init>(Lcom/miui/gallery/ui/CleanerFragment;Landroid/view/View;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mActionLayout:Lcom/miui/gallery/ui/CleanerFragment$ActionLayout;

    .line 75
    new-instance v3, Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    iget-object v4, p0, Lcom/miui/gallery/ui/CleanerFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v3, v4}, Lcom/miui/gallery/ui/CleanerRotateProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mProgressBar:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    .line 76
    new-instance v3, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    iget-object v4, p0, Lcom/miui/gallery/ui/CleanerFragment;->mProgressBar:Lcom/miui/gallery/ui/CleanerRotateProgressBar;

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;-><init>(Lcom/miui/gallery/ui/CleanerFragment;Landroid/view/View;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScanLayout:Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    .line 77
    iget-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mAdapter:Lcom/miui/gallery/cleaner/ScanResultAdapter;

    iget-object v4, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScanLayout:Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;

    iget-object v4, v4, Lcom/miui/gallery/ui/CleanerFragment$ScanLayout;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/cleaner/ScanResultAdapter;->setHeader(Landroid/view/View;)V

    .line 79
    invoke-static {}, Lcom/miui/gallery/cleaner/ScannerManager;->getInstance()Lcom/miui/gallery/cleaner/ScannerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScannerManager:Lcom/miui/gallery/cleaner/ScannerManager;

    .line 80
    return-object v2
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStart()V

    .line 141
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScannerManager:Lcom/miui/gallery/cleaner/ScannerManager;

    iget-object v2, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScanObserver:Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/cleaner/ScannerManager;->registerObserver(Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;)V

    .line 143
    iget-boolean v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mIsAttachedTowindow:Z

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Lcom/miui/gallery/util/ScreenUtils;->getExactScreenHeight(Landroid/app/Activity;)I

    move-result v0

    .line 145
    .local v0, "screenHeight":I
    iget v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScreenHeight:I

    if-eq v0, v1, :cond_0

    .line 146
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/CleanerFragment;->initLayoutHeight(I)V

    .line 151
    .end local v0    # "screenHeight":I
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScannerManager:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/ScannerManager;->isReset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScannerManager:Lcom/miui/gallery/cleaner/ScannerManager;

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/ScannerManager;->startScan()V

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mIsScanStarted:Z

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mIsScanStarted:Z

    .line 156
    iget-boolean v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mIsAttachedTowindow:Z

    if-eqz v1, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/miui/gallery/ui/CleanerFragment;->setLayoutByScanResult()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStop()V

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScannerManager:Lcom/miui/gallery/cleaner/ScannerManager;

    iget-object v1, p0, Lcom/miui/gallery/ui/CleanerFragment;->mScanObserver:Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cleaner/ScannerManager;->unregisterObserver(Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;)V

    .line 206
    return-void
.end method
