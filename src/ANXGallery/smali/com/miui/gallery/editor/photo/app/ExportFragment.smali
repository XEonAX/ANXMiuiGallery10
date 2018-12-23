.class public Lcom/miui/gallery/editor/photo/app/ExportFragment;
.super Landroid/app/DialogFragment;
.source "ExportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;,
        Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;
    }
.end annotation


# instance fields
.field mCallbacks:Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;

.field private mExportResult:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/ExportFragment;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/ExportFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/ExportFragment;->publishResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method private publishResult(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/ExportFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/ExportFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/ExportFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;->onCancelled(Z)V

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/ExportFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/ExportFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;->onExported(Z)V

    goto :goto_0

    .line 64
    :cond_2
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/ExportFragment;->mExportResult:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    new-instance v0, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/ExportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, "dialog":Lmiui/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/ExportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e034f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 25
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 26
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 27
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    new-instance v0, Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;-><init>(Lcom/miui/gallery/editor/photo/app/ExportFragment;Lcom/miui/gallery/editor/photo/app/ExportFragment$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 33
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/ExportFragment;->mExportResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/ExportFragment;->mExportResult:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/app/ExportFragment;->publishResult(Ljava/lang/Boolean;)V

    .line 43
    :cond_0
    return-void
.end method
