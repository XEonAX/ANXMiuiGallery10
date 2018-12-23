.class Lcom/miui/extraphoto/refocus/RefocusActivity$2;
.super Ljava/lang/Object;
.source "RefocusActivity.java"

# interfaces
.implements Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;

    .line 224
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectLoad(Ljava/util/List;Ljava/util/List;Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V
    .locals 5
    .param p3, "staticConfig"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;",
            ">;",
            "Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;",
            ")V"
        }
    .end annotation

    .line 227
    .local p1, "refocusEffectConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;>;"
    .local p2, "relightingEffectConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;>;"
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$102(Lcom/miui/extraphoto/refocus/RefocusActivity;Z)Z

    .line 228
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$202(Lcom/miui/extraphoto/refocus/RefocusActivity;Ljava/util/List;)Ljava/util/List;

    .line 229
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0, p2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$302(Lcom/miui/extraphoto/refocus/RefocusActivity;Ljava/util/List;)Ljava/util/List;

    .line 230
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0, p3}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$402(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 232
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$200(Lcom/miui/extraphoto/refocus/RefocusActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {v1, v2, v3}, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$502(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;)Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;

    .line 233
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    new-instance v1, Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$300(Lcom/miui/extraphoto/refocus/RefocusActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {v1, v2, v3}, Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$602(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;)Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    .line 234
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$500(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$700(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;->setOnItemClickListener(Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$600(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$800(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/extraphoto/refocus/RelightingEffectAdapter;->setOnItemClickListener(Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$900(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/miui/extraphoto/refocus/widget/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 237
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$900(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusActivity$2$1;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-virtual {v2}, Lcom/miui/extraphoto/refocus/RefocusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f05000e

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/miui/extraphoto/refocus/RefocusActivity$2$1;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity$2;Landroid/content/res/Resources;II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 243
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$900(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$500(Lcom/miui/extraphoto/refocus/RefocusActivity;)Lcom/miui/extraphoto/refocus/RefocusEffectAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 244
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$900(Lcom/miui/extraphoto/refocus/RefocusActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 245
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusActivity;->access$1000(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    .line 246
    return-void
.end method
