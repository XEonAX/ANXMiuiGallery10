.class final Lcom/miui/gallery/collage/render/CollageRender$1;
.super Ljava/lang/Object;
.source "CollageRender.java"

# interfaces
.implements Lcom/miui/gallery/collage/render/PosterElementRender$ReadPosterDataTask$LoadDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/render/CollageRender;->generatePosterElementRender(Landroid/content/Context;Lcom/miui/gallery/collage/render/CollageRender$RenderData;Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$generateRenderDataListener:Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;

.field final synthetic val$posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

.field final synthetic val$renderData:Lcom/miui/gallery/collage/render/CollageRender$RenderData;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/render/CollageRender$RenderData;Lcom/miui/gallery/collage/render/PosterElementRender;Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/miui/gallery/collage/render/CollageRender$1;->val$renderData:Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    iput-object p2, p0, Lcom/miui/gallery/collage/render/CollageRender$1;->val$posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    iput-object p3, p0, Lcom/miui/gallery/collage/render/CollageRender$1;->val$generateRenderDataListener:Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinish()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$1;->val$renderData:Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/CollageRender$1;->val$posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    iput-object v1, v0, Lcom/miui/gallery/collage/render/CollageRender$RenderData;->posterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$1;->val$generateRenderDataListener:Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/collage/render/CollageRender$1;->val$generateRenderDataListener:Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/CollageRender$1;->val$renderData:Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    invoke-interface {v0, v1}, Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;->onFinish(Lcom/miui/gallery/collage/render/CollageRender$RenderData;)V

    .line 125
    :cond_0
    return-void
.end method
