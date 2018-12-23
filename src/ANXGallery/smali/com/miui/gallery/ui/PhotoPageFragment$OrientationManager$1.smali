.class Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->dismissLockDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    .prologue
    .line 2299
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 2303
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->access$4100(Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;)V

    .line 2305
    :cond_0
    return-void
.end method
