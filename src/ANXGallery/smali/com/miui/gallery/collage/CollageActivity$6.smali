.class Lcom/miui/gallery/collage/CollageActivity$6;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;


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
    .line 681
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity$6;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReplace(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    .line 684
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$6;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0, p1}, Lcom/miui/gallery/collage/CollageActivity;->access$2502(Lcom/miui/gallery/collage/CollageActivity;I)I

    .line 685
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$6;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0, v1, v1}, Lcom/miui/gallery/collage/CollageActivity;->access$2600(Lcom/miui/gallery/collage/CollageActivity;II)V

    .line 686
    return-void
.end method
