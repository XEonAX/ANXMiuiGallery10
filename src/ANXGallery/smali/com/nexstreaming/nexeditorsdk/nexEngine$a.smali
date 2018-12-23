.class Lcom/nexstreaming/nexeditorsdk/nexEngine$a;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;
.source "nexEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

.field private b:Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;

.field private c:Lcom/nexstreaming/nexeditorsdk/nexExportListener;


# direct methods
.method public constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;Lcom/nexstreaming/nexeditorsdk/nexExportListener;)V
    .locals 0

    .prologue
    .line 1776
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;-><init>()V

    .line 1777
    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->b:Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;

    .line 1778
    iput-object p3, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->c:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    .line 1779
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->b:Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;->OnLastProcess()I

    .line 1789
    return-void
.end method

.method public a(I)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1794
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->EXPORT_WRITER_START_FAIL:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    .line 1795
    packed-switch p1, :pswitch_data_0

    .line 1810
    :goto_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->b:Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;

    invoke-interface {v1, p1}, Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;->OnEnd(I)Z

    move-result v4

    .line 1812
    if-gez p1, :cond_0

    .line 1813
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->c:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    if-eqz v1, :cond_0

    .line 1814
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->c:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    invoke-interface {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexExportListener;->onExportFail(Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;)V

    .line 1818
    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->c:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    if-eqz v1, :cond_2

    .line 1819
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->c:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexExportListener;->onExportDone(Landroid/graphics/Bitmap;)V

    .line 1825
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$702(Lcom/nexstreaming/nexeditorsdk/nexEngine;Z)Z

    .line 1826
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$102(Lcom/nexstreaming/nexeditorsdk/nexEngine;I)I

    .line 1827
    return v4

    .line 1797
    :pswitch_0
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->NONE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto :goto_0

    .line 1800
    :pswitch_1
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->INVALID_STATE:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto :goto_0

    .line 1803
    :pswitch_2
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->EXPORT_USER_CANCEL:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto :goto_0

    .line 1806
    :pswitch_3
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->EXPORT_WRITER_INIT_FAIL:Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;

    goto :goto_0

    .line 1821
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1822
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v5

    if-nez p1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine$nexErrorCode;->getValue()I

    move-result v0

    invoke-interface {v5, v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onEncodingDone(ZI)V

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    .line 1795
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a([BI)Z
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->b:Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;

    invoke-interface {v0, p2, p1}, Lcom/nexstreaming/nexeditorsdk/module/nexExternalExportProvider;->OnPushData(I[B)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    iget-object v0, v0, Lcom/nexstreaming/nexeditorsdk/nexEngine;->async_facedetect_worker_list_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->c:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    if-eqz v0, :cond_1

    .line 1834
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->c:Lcom/nexstreaming/nexeditorsdk/nexExportListener;

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexExportListener;->onExportProgress(I)V

    .line 1839
    :cond_0
    :goto_0
    return-void

    .line 1836
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$a;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexEngineListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexEngineListener;->onEncodingProgress(I)V

    goto :goto_0
.end method
