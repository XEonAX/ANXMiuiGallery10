.class Lcom/nexstreaming/nexeditorsdk/nexClip$10;
.super Ljava/lang/Object;
.source "nexClip.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$OnFailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipDetailThumbnails(IIIIIIZ[ILcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;

.field final synthetic b:Lcom/nexstreaming/nexeditorsdk/nexClip;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexClip;Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;)V
    .locals 0

    .prologue
    .line 2551
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$10;->b:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$10;->a:Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/app/common/task/Task$TaskError;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2554
    const-string v0, "nexClip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detailThumbTest onFail : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcom/nexstreaming/app/common/task/Task$TaskError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->GETCLIPINFO_USER_CANCEL:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-ne p3, v0, :cond_0

    .line 2556
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$10;->a:Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;->kEvent_UserCancel:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;->onGetDetailThumbnailResult(ILandroid/graphics/Bitmap;III)V

    .line 2560
    :goto_0
    return-void

    .line 2558
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$10;->a:Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;->kEvent_Fail:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;->onGetDetailThumbnailResult(ILandroid/graphics/Bitmap;III)V

    goto :goto_0
.end method
