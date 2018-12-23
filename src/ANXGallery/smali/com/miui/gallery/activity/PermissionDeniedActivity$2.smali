.class Lcom/miui/gallery/activity/PermissionDeniedActivity$2;
.super Ljava/lang/Object;
.source "PermissionDeniedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/PermissionDeniedActivity;->showDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/PermissionDeniedActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/PermissionDeniedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/PermissionDeniedActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity$2;->this$0:Lcom/miui/gallery/activity/PermissionDeniedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity$2;->this$0:Lcom/miui/gallery/activity/PermissionDeniedActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->finish()V

    .line 148
    return-void
.end method
