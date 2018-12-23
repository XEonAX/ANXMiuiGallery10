.class Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "StickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickerPagerAdapter"
.end annotation


# instance fields
.field private mProvider:Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)V
    .locals 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 118
    sget-object v0, Lcom/miui/gallery/editor/photo/core/SdkManager;->INSTANCE:Lcom/miui/gallery/editor/photo/core/SdkManager;

    sget-object v1, Lcom/miui/gallery/editor/photo/core/Effect;->STICKER:Lcom/miui/gallery/editor/photo/core/Effect;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/SdkManager;->getProvider(Lcom/miui/gallery/editor/photo/core/Effect;)Lcom/miui/gallery/editor/photo/core/SdkProvider;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->mProvider:Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;

    .line 119
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 153
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$400(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 11
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v10, 0x0

    .line 128
    new-instance v3, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;-><init>(Landroid/content/Context;)V

    .line 129
    .local v3, "recyclerView":Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$400(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;

    .line 130
    .local v4, "stickerCategory":Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;
    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 131
    .local v2, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v2, v10}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 132
    invoke-virtual {v3, v2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 133
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    iget-wide v6, v4, Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;->id:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 137
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->mProvider:Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;->recent()Ljava/util/List;

    move-result-object v1

    .line 141
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/StickerData;>;"
    :goto_0
    new-instance v0, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 142
    .local v0, "adapter":Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;
    invoke-virtual {v3, v0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 143
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->access$500(Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;)Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;->setOnItemClickListener(Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;)V

    .line 144
    new-instance v5, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->this$0:Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;

    .line 146
    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01b8

    invoke-direct {v5, v6, v7, v10}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    .line 144
    invoke-virtual {v3, v5}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 147
    invoke-static {v3}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 148
    return-object v3

    .line 139
    .end local v0    # "adapter":Lcom/miui/gallery/editor/photo/app/sticker/CategoryDetailAdapter;
    .end local v1    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/StickerData;>;"
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerFragment$StickerPagerAdapter;->mProvider:Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;

    iget-wide v6, v4, Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;->id:J

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/editor/photo/core/common/provider/AbstractStickerProvider;->list(J)Ljava/util/List;

    move-result-object v1

    .restart local v1    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/StickerData;>;"
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 158
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
