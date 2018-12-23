.class Lcom/miui/extraphoto/refocus/utils/BrightnessManager$1;
.super Landroid/database/ContentObserver;
.source "BrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/utils/BrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/utils/BrightnessManager;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/utils/BrightnessManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/utils/BrightnessManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager$1;->this$0:Lcom/miui/extraphoto/refocus/utils/BrightnessManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 37
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 38
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager$1;->this$0:Lcom/miui/extraphoto/refocus/utils/BrightnessManager;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->access$000(Lcom/miui/extraphoto/refocus/utils/BrightnessManager;)Landroid/app/Activity;

    move-result-object v0

    .line 39
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager$1;->this$0:Lcom/miui/extraphoto/refocus/utils/BrightnessManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->access$102(Lcom/miui/extraphoto/refocus/utils/BrightnessManager;Z)Z

    .line 42
    iget-object v1, p0, Lcom/miui/extraphoto/refocus/utils/BrightnessManager$1;->this$0:Lcom/miui/extraphoto/refocus/utils/BrightnessManager;

    invoke-static {v1, v2}, Lcom/miui/extraphoto/refocus/utils/BrightnessManager;->access$200(Lcom/miui/extraphoto/refocus/utils/BrightnessManager;Z)V

    .line 43
    return-void

    .line 40
    :cond_1
    :goto_0
    return-void
.end method
