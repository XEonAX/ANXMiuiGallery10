.class Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;
.super Ljava/lang/Object;
.source "CollageLayout.java"

# interfaces
.implements Lcom/miui/gallery/collage/widget/ControlPopupWindow$ControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/CollageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupListener"
.end annotation


# instance fields
.field private mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

.field final synthetic this$0:Lcom/miui/gallery/collage/widget/CollageLayout;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/widget/CollageLayout;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/widget/CollageLayout;Lcom/miui/gallery/collage/widget/CollageLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/widget/CollageLayout;
    .param p2, "x1"    # Lcom/miui/gallery/collage/widget/CollageLayout$1;

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;-><init>(Lcom/miui/gallery/collage/widget/CollageLayout;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$502(Lcom/miui/gallery/collage/widget/CollageLayout;I)I

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 598
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->invalidate()V

    .line 599
    return-void
.end method

.method public onMirror()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->mirror()V

    .line 620
    :cond_0
    return-void
.end method

.method public onReplace()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$2100(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$2100(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v1}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$500(Lcom/miui/gallery/collage/widget/CollageLayout;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$ReplaceImageListener;->onReplace(I)V

    .line 606
    :cond_0
    return-void
.end method

.method public onRotate()V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->rotate()V

    .line 613
    :cond_0
    return-void
.end method

.method setCollageSingleView(Lcom/miui/gallery/collage/widget/CollageImageView;)V
    .locals 0
    .param p1, "collageImageView"    # Lcom/miui/gallery/collage/widget/CollageImageView;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$PopupListener;->mCollageImageView:Lcom/miui/gallery/collage/widget/CollageImageView;

    .line 624
    return-void
.end method
