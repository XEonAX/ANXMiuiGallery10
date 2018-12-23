.class Lcom/miui/gallery/collage/CollageActivity$3;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/CollageActivity;->setPosterModelToPosterLayout(Lcom/miui/gallery/collage/PosterModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/CollageActivity;

.field final synthetic val$height:I

.field final synthetic val$posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

.field final synthetic val$posterModel:Lcom/miui/gallery/collage/PosterModel;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/render/PosterElementRender;IILcom/miui/gallery/collage/PosterModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity$3;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    iput-object p2, p0, Lcom/miui/gallery/collage/CollageActivity$3;->val$posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    iput p3, p0, Lcom/miui/gallery/collage/CollageActivity$3;->val$width:I

    iput p4, p0, Lcom/miui/gallery/collage/CollageActivity$3;->val$height:I

    iput-object p5, p0, Lcom/miui/gallery/collage/CollageActivity$3;->val$posterModel:Lcom/miui/gallery/collage/PosterModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 632
    new-instance v0, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$3;->val$posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    iget v2, p0, Lcom/miui/gallery/collage/CollageActivity$3;->val$width:I

    iget v3, p0, Lcom/miui/gallery/collage/CollageActivity$3;->val$height:I

    iget-object v4, p0, Lcom/miui/gallery/collage/CollageActivity$3;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;-><init>(Lcom/miui/gallery/collage/render/PosterElementRender;IILandroid/content/Context;)V

    .line 633
    .local v0, "readPosterDataTask":Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;
    new-instance v1, Lcom/miui/gallery/collage/CollageActivity$3$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/collage/CollageActivity$3$1;-><init>(Lcom/miui/gallery/collage/CollageActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->setLoadDataListener(Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask$LoadDataListener;)V

    .line 639
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/miui/gallery/collage/PosterModel;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/collage/CollageActivity$3;->val$posterModel:Lcom/miui/gallery/collage/PosterModel;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 640
    return-void
.end method
