.class Lcom/miui/gallery/ui/HomePageFragment$5$3;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/HomePageFragment$5;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/HomePageFragment$5;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/HomePageFragment$5;Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/HomePageFragment$5;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/miui/gallery/ui/HomePageFragment$5$3;->this$1:Lcom/miui/gallery/ui/HomePageFragment$5;

    iput-object p2, p0, Lcom/miui/gallery/ui/HomePageFragment$5$3;->val$mode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([J)V
    .locals 1
    .param p1, "result"    # [J

    .prologue
    .line 573
    iget-object v0, p0, Lcom/miui/gallery/ui/HomePageFragment$5$3;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 574
    return-void
.end method
