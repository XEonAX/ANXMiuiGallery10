.class Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->a(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jP:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

.field final synthetic jT:Lcom/miui/internal/app/AlertControllerImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Lcom/miui/internal/app/AlertControllerImpl;)V
    .registers 3

    .line 305
    iput-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;->jP:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;->jT:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 307
    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;->jP:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p1, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;->jT:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p2}, Lcom/miui/internal/app/AlertControllerImpl;->getDialogInterface()Landroid/content/DialogInterface;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 308
    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;->jP:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-boolean p1, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsSingleChoice:Z

    if-nez p1, :cond_1c

    .line 309
    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;->jT:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p1}, Lcom/miui/internal/app/AlertControllerImpl;->getDialogInterface()Landroid/content/DialogInterface;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 311
    :cond_1c
    return-void
.end method
