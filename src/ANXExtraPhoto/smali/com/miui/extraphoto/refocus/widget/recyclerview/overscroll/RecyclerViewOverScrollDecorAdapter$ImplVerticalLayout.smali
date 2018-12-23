.class public Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;
.super Ljava/lang/Object;
.source "RecyclerViewOverScrollDecorAdapter.java"

# interfaces
.implements Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter$Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImplVerticalLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;


# direct methods
.method protected constructor <init>(Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;

    .line 105
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInAbsoluteEnd()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public isInAbsoluteStart()Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;->this$0:Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;

    iget-object v0, v0, Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
