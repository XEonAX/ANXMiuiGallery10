.class Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;
.super Landroid/os/HandlerThread;
.source "RefocusSDK.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefocusProcessThread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mListener:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;

.field mMainHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const-string v0, "RefocusProcessThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p0}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->start()V

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mMainHandler:Landroid/os/Handler;

    .line 112
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 151
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 173
    :goto_0
    return v5

    .line 153
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 154
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK;->access$100(Ljava/lang/String;)Z

    move-result v0

    .line 155
    .local v0, "canRefocus":Z
    invoke-virtual {p0, v0, v1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->notifyRecognize(ZLjava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v0    # "canRefocus":Z
    .end local v1    # "path":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 160
    .restart local v1    # "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/miui/gallery/scanner/MediaScanner;->scanSingleFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    const-string v3, ".mp4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v1, v4}, Lcom/miui/gallery/util/MediaStoreUtils;->insert(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 166
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "scanIntent":Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 168
    iget-object v3, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 169
    invoke-virtual {p0, v1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->notifyPhotoSave(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    .end local v2    # "scanIntent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v5}, Lcom/miui/gallery/util/MediaStoreUtils;->insert(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_1

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method notifyPhotoSave(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mListener:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$2;-><init>(Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    :cond_0
    return-void
.end method

.method notifyRecognize(ZLjava/lang/String;)V
    .locals 2
    .param p1, "canRefocus"    # Z
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mListener:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread$1;-><init>(Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_0
    return-void
.end method

.method sendRecognize(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    return-void
.end method

.method sendSave(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void
.end method

.method setListener(Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$RefocusProcessThread;->mListener:Lcom/miui/extraphoto/sdk/refocus/RefocusSDK$OnRefocusRecognizedListener;

    .line 178
    return-void
.end method
