.class Lmiui/widget/FilterSortView$TabView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/FilterSortView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic SP:Landroid/view/View$OnClickListener;

.field final synthetic SQ:Lmiui/widget/FilterSortView$TabView;


# direct methods
.method constructor <init>(Lmiui/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 203
    iput-object p1, p0, Lmiui/widget/FilterSortView$TabView$1;->SQ:Lmiui/widget/FilterSortView$TabView;

    iput-object p2, p0, Lmiui/widget/FilterSortView$TabView$1;->SP:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 206
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView$1;->SQ:Lmiui/widget/FilterSortView$TabView;

    invoke-static {v0}, Lmiui/widget/FilterSortView$TabView;->a(Lmiui/widget/FilterSortView$TabView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 207
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView$1;->SQ:Lmiui/widget/FilterSortView$TabView;

    iget-object v2, p0, Lmiui/widget/FilterSortView$TabView$1;->SQ:Lmiui/widget/FilterSortView$TabView;

    invoke-static {v2}, Lmiui/widget/FilterSortView$TabView;->b(Lmiui/widget/FilterSortView$TabView;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lmiui/widget/FilterSortView$TabView;->b(Lmiui/widget/FilterSortView$TabView;Z)V

    goto :goto_1b

    .line 209
    :cond_16
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView$1;->SQ:Lmiui/widget/FilterSortView$TabView;

    invoke-static {v0, v1}, Lmiui/widget/FilterSortView$TabView;->a(Lmiui/widget/FilterSortView$TabView;Z)V

    .line 211
    :goto_1b
    iget-object v0, p0, Lmiui/widget/FilterSortView$TabView$1;->SP:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 212
    return-void
.end method
