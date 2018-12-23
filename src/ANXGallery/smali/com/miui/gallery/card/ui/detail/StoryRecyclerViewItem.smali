.class public Lcom/miui/gallery/card/ui/detail/StoryRecyclerViewItem;
.super Lcom/miui/gallery/ui/MicroThumbGridItem2;
.source "StoryRecyclerViewItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/MicroThumbGridItem2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected isSquareItem()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method
