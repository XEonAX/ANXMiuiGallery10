.class Lcom/miui/gallery/collage/CollageActivity$1;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Lcom/miui/gallery/collage/render/CollageRender$GenerateRenderDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/CollageActivity;->onSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/CollageActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/CollageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity$1;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/miui/gallery/collage/render/CollageRender$RenderData;)V
    .locals 3
    .param p1, "renderData"    # Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    .prologue
    .line 276
    new-instance v0, Lcom/miui/gallery/collage/CollageActivity$SaveTask;

    iget-object v1, p0, Lcom/miui/gallery/collage/CollageActivity$1;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/collage/CollageActivity$SaveTask;-><init>(Lcom/miui/gallery/collage/CollageActivity;Lcom/miui/gallery/collage/CollageActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/CollageActivity$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    return-void
.end method
