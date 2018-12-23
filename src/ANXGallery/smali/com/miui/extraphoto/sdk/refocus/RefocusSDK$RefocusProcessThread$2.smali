.class Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$2;
.super Ljava/lang/Object;
.source "RefocusSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->notifyPhotoSave(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$2;->this$0:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    iput-object p2, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$2;->this$0:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    iget-object v0, v0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mListener:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$2;->this$0:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;

    iget-object v0, v0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mListener:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;

    iget-object v1, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$2;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;->onPhotoSave(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method
