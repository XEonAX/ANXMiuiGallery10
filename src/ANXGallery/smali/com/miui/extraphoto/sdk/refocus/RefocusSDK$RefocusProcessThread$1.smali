.class Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$1;
.super Ljava/lang/Object;
.source "RefocusSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->notifyRecognize(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

.field final synthetic val$canRefocus:Z

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$1;->this$0:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    iput-boolean p2, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$1;->val$canRefocus:Z

    iput-object p3, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$1;->this$0:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    iget-object v0, v0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mListener:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$1;->this$0:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    iget-object v0, v0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mListener:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;

    iget-boolean v1, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$1;->val$canRefocus:Z

    iget-object v2, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;->onRecognized(ZLjava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method
