.class public Lcom/miui/gallery/search/navigationpage/NavigationPeopleView;
.super Landroid/widget/GridView;
.source "NavigationPeopleView.java"

# interfaces
.implements Lcom/miui/gallery/search/navigationpage/NavigationSectionContentView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/search/navigationpage/NavigationPeopleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/search/navigationpage/NavigationPeopleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public getContentAdapter()Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/NavigationPeopleView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/navigationpage/NavigationPeopleView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 24
    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 26
    .local v0, "expandSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    .line 27
    return-void
.end method

.method public setContentAdapter(Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/miui/gallery/search/navigationpage/NavigationSectionAdapter;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/navigationpage/NavigationPeopleView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    return-void
.end method
