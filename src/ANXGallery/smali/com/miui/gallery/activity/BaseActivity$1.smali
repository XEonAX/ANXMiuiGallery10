.class Lcom/miui/gallery/activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/BaseActivity;->onCheckPermissionSucceed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/BaseActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/miui/gallery/activity/BaseActivity$1;->this$0:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity$1;->this$0:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/BaseActivity;->onCtaChecked(Z)V

    .line 157
    return-void
.end method
