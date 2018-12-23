.class Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder$1;
.super Lcom/miui/gallery/widget/AntiDoubleClickListener;
.source "CardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder$1;->this$1:Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;

    invoke-direct {p0}, Lcom/miui/gallery/widget/AntiDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAntiDoubleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder$1;->this$1:Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;

    iget-object v1, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder$1;->this$1:Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->access$000(Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;)Lcom/miui/gallery/card/Card;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/card/Card;->getDetailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->access$100(Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x7f1200ee
        :pswitch_0
    .end packed-switch
.end method
