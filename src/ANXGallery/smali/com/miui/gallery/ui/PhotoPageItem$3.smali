.class Lcom/miui/gallery/ui/PhotoPageItem$3;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageItem;->animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageItem;

.field final synthetic val$listener:Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageItem;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$3;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageItem$3;->val$listener:Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 649
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$3;->val$listener:Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;->onTransitEnd()V

    .line 650
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$3;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->access$402(Lcom/miui/gallery/ui/PhotoPageItem;Z)Z

    .line 651
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$3;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->access$500(Lcom/miui/gallery/ui/PhotoPageItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$3;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnSelected(Z)V

    .line 654
    :cond_0
    return-void
.end method
