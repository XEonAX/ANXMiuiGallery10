.class Lcom/miui/gallery/collage/CollageActivity$3$1;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask$LoadDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/CollageActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/collage/CollageActivity$3;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/CollageActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/collage/CollageActivity$3;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity$3$1;->this$1:Lcom/miui/gallery/collage/CollageActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinish()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$3$1;->this$1:Lcom/miui/gallery/collage/CollageActivity$3;

    iget-object v0, v0, Lcom/miui/gallery/collage/CollageActivity$3;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0}, Lcom/miui/gallery/collage/CollageActivity;->access$2200(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/collage/widget/PosterLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$3$1;->this$1:Lcom/miui/gallery/collage/CollageActivity$3;

    iget-object v1, v1, Lcom/miui/gallery/collage/CollageActivity$3;->val$posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/PosterLayout;->setRenderData(Lcom/miui/gallery/collage/render/PosterElementRender;)V

    .line 637
    return-void
.end method
