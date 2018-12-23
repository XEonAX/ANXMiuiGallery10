.class Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    .prologue
    .line 3824
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3827
    const-string v0, "PhotoPageFragment"

    const-string v1, "editor return to photo, image loading time out."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3828
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->access$7000(Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;)V

    .line 3829
    return-void
.end method
