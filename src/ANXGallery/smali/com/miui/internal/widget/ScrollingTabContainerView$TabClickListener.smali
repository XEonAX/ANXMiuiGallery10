.class Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic vn:Lcom/miui/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .registers 2

    .line 677
    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;->vn:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView$1;)V
    .registers 3

    .line 677
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 680
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    .line 681
    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    .line 682
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;->vn:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->a(Lcom/miui/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 683
    const/4 v1, 0x0

    move v2, v1

    :goto_16
    if-ge v2, v0, :cond_2d

    .line 684
    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabClickListener;->vn:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-static {v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->a(Lcom/miui/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 685
    if-ne v3, p1, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    move v4, v1

    :goto_27
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 683
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 687
    :cond_2d
    return-void
.end method
