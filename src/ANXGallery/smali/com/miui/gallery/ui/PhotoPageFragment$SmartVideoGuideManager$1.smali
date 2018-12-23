.class Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->getShowGuidanceRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    .prologue
    .line 3122
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3125
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->access$5200(Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;)Lmiui/widget/GuidePopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    .line 3126
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->access$5300(Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    .line 3127
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->access$5300(Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->access$5400(Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-boolean v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->isExiting:Z

    if-eqz v0, :cond_1

    .line 3132
    :cond_0
    :goto_0
    return-void

    .line 3131
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->access$5500(Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;)V

    goto :goto_0
.end method
