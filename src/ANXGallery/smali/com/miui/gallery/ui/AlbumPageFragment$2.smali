.class Lcom/miui/gallery/ui/AlbumPageFragment$2;
.super Ljava/lang/Object;
.source "AlbumPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AlbumPageFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$2;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$2;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$200(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/widget/TwoStageDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/TwoStageDrawer;->openDrawer()V

    .line 134
    return-void
.end method
