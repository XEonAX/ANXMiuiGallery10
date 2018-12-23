.class Lcom/miui/gallery/activity/PermissionDeniedActivity$1;
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
    .line 135
    iput-object p1, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity$1;->this$0:Lcom/miui/gallery/activity/PermissionDeniedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity$1;->this$0:Lcom/miui/gallery/activity/PermissionDeniedActivity;

    invoke-static {v0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->access$100(Lcom/miui/gallery/activity/PermissionDeniedActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity$1;->this$0:Lcom/miui/gallery/activity/PermissionDeniedActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity$1;->this$0:Lcom/miui/gallery/activity/PermissionDeniedActivity;

    invoke-static {v0}, Lcom/miui/gallery/util/IntentUtil;->enterGalleryAppSetting(Landroid/content/Context;)V

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity$1;->this$0:Lcom/miui/gallery/activity/PermissionDeniedActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->finish()V

    .line 143
    return-void
.end method
