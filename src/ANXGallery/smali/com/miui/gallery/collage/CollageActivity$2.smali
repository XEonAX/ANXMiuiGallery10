.class Lcom/miui/gallery/collage/CollageActivity$2;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/CollageActivity;
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
    .line 421
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity$2;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourcesUpdate()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$2;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0}, Lcom/miui/gallery/collage/CollageActivity;->access$400(Lcom/miui/gallery/collage/CollageActivity;)V

    .line 425
    return-void
.end method
