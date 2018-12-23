.class Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    .prologue
    .line 3282
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3285
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager$1;->this$1:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->access$5600(Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;)V

    .line 3286
    return-void
.end method
