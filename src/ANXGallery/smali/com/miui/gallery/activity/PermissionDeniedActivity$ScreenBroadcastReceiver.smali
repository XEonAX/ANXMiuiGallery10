.class Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PermissionDeniedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/activity/PermissionDeniedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/PermissionDeniedActivity;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/activity/PermissionDeniedActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;->this$0:Lcom/miui/gallery/activity/PermissionDeniedActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/activity/PermissionDeniedActivity;Lcom/miui/gallery/activity/PermissionDeniedActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/activity/PermissionDeniedActivity;
    .param p2, "x1"    # Lcom/miui/gallery/activity/PermissionDeniedActivity$1;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;-><init>(Lcom/miui/gallery/activity/PermissionDeniedActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;->this$0:Lcom/miui/gallery/activity/PermissionDeniedActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/miui/gallery/activity/PermissionDeniedActivity$ScreenBroadcastReceiver;->this$0:Lcom/miui/gallery/activity/PermissionDeniedActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/PermissionDeniedActivity;->finish()V

    .line 160
    :cond_0
    return-void
.end method
