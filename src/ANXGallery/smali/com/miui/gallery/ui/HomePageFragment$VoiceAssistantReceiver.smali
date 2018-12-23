.class Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/HomePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceAssistantReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/HomePageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/HomePageFragment;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/HomePageFragment;Lcom/miui/gallery/ui/HomePageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/HomePageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/HomePageFragment$1;

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;-><init>(Lcom/miui/gallery/ui/HomePageFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 756
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/HomePageFragment;->access$900(Lcom/miui/gallery/ui/HomePageFragment;)Lcom/miui/gallery/widget/EditableListViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$VoiceAssistantReceiver;->this$0:Lcom/miui/gallery/ui/HomePageFragment;

    const-string v1, "assistant_target_package"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "assistant_target_class"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/HomePageFragment;->access$1000(Lcom/miui/gallery/ui/HomePageFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :cond_0
    return-void
.end method
