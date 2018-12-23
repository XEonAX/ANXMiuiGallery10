.class Lcom/miui/gallery/collage/CollageActivity$4;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask$LoadDataListener;


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

.field final synthetic val$posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/render/PosterElementRender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity$4;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    iput-object p2, p0, Lcom/miui/gallery/collage/CollageActivity$4;->val$posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinish()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$4;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0}, Lcom/miui/gallery/collage/CollageActivity;->access$2200(Lcom/miui/gallery/collage/CollageActivity;)Lcom/miui/gallery/collage/widget/PosterLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$4;->val$posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/PosterLayout;->setRenderData(Lcom/miui/gallery/collage/render/PosterElementRender;)V

    .line 648
    return-void
.end method
