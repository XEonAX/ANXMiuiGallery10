.class Lcom/miui/extraphoto/refocus/RefocusActivity$2$1;
.super Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;
.source "RefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity$2;->onEffectLoad(Ljava/util/List;Ljava/util/List;Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$2;


# direct methods
.method constructor <init>(Lcom/miui/extraphoto/refocus/RefocusActivity$2;Landroid/content/res/Resources;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/extraphoto/refocus/RefocusActivity$2;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "horizontalId"    # I
    .param p4, "verticalId"    # I

    .line 237
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$2$1;->this$1:Lcom/miui/extraphoto/refocus/RefocusActivity$2;

    invoke-direct {p0, p2, p3, p4}, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 240
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$BlankDivider;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 241
    return-void
.end method
