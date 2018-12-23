.class Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;
.super Landroid/os/AsyncTask;
.source "CollageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/CollageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final mTaskID:I

.field final synthetic this$0:Lcom/miui/gallery/collage/CollageActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/CollageActivity;I)V
    .locals 0
    .param p2, "taskID"    # I

    .prologue
    .line 392
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 393
    iput p2, p0, Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;->mTaskID:I

    .line 394
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 388
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;->doInBackground([Landroid/net/Uri;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)[Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v1, "bitmapList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, p1, v3

    .line 400
    .local v2, "param":Landroid/net/Uri;
    iget-object v5, p0, Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v5, v2}, Lcom/miui/gallery/collage/CollageUtils;->loadSuitableBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 401
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 402
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 405
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "param":Landroid/net/Uri;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/graphics/Bitmap;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Bitmap;

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 388
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;->onPostExecute([Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute([Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 410
    iget v0, p0, Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;->mTaskID:I

    packed-switch v0, :pswitch_data_0

    .line 418
    :goto_0
    return-void

    .line 412
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0, p1}, Lcom/miui/gallery/collage/CollageActivity;->access$200(Lcom/miui/gallery/collage/CollageActivity;[Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 415
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$DecodeBitmapTask;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0, p1}, Lcom/miui/gallery/collage/CollageActivity;->access$300(Lcom/miui/gallery/collage/CollageActivity;[Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
