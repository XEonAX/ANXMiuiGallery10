.class Lcom/miui/gallery/activity/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/activity/BaseActivity;->startPostponedEnterTransition()V
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
    .line 247
    iput-object p1, p0, Lcom/miui/gallery/activity/BaseActivity$3;->this$0:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/gallery/activity/BaseActivity$3;->this$0:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/activity/BaseActivity;->access$102(Lcom/miui/gallery/activity/BaseActivity;Z)Z

    .line 251
    return-void
.end method
