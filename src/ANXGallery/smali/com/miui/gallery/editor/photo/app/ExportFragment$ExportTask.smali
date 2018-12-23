.class Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;
.super Landroid/os/AsyncTask;
.source "ExportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/ExportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/ExportFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/app/ExportFragment;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;->this$0:Lcom/miui/gallery/editor/photo/app/ExportFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/app/ExportFragment;Lcom/miui/gallery/editor/photo/app/ExportFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/app/ExportFragment;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/app/ExportFragment$1;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;-><init>(Lcom/miui/gallery/editor/photo/app/ExportFragment;)V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;->this$0:Lcom/miui/gallery/editor/photo/app/ExportFragment;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/app/ExportFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/ExportFragment$Callbacks;->doExport()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;->this$0:Lcom/miui/gallery/editor/photo/app/ExportFragment;

    invoke-static {v0, p1}, Lcom/miui/gallery/editor/photo/app/ExportFragment;->access$100(Lcom/miui/gallery/editor/photo/app/ExportFragment;Ljava/lang/Boolean;)V

    .line 55
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/ExportFragment$ExportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
