.class Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private nI:I

.field final synthetic nJ:Lcom/miui/internal/view/menu/ListMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ListMenuPresenter;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nJ:Lcom/miui/internal/view/menu/ListMenuPresenter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 230
    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nI:I

    .line 233
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->aP()V

    .line 234
    return-void
.end method


# virtual methods
.method aP()V
    .registers 6

    .line 271
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nJ:Lcom/miui/internal/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_27

    .line 273
    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nJ:Lcom/miui/internal/view/menu/ListMenuPresenter;

    iget-object v1, v1, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 275
    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_27

    .line 276
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 277
    if-ne v4, v0, :cond_24

    .line 278
    iput v3, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nI:I

    .line 279
    return-void

    .line 275
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 283
    :cond_27
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nI:I

    .line 284
    return-void
.end method

.method public getCount()I
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nJ:Lcom/miui/internal/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nJ:Lcom/miui/internal/view/menu/ListMenuPresenter;

    invoke-static {v1}, Lcom/miui/internal/view/menu/ListMenuPresenter;->a(Lcom/miui/internal/view/menu/ListMenuPresenter;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 239
    iget v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nI:I

    if-gez v1, :cond_18

    .line 240
    return v0

    .line 242
    :cond_18
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 229
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->j(I)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 257
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 261
    const/4 v0, 0x0

    if-nez p2, :cond_f

    .line 262
    iget-object p2, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nJ:Lcom/miui/internal/view/menu/ListMenuPresenter;

    iget-object p2, p2, Lcom/miui/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nJ:Lcom/miui/internal/view/menu/ListMenuPresenter;

    iget v1, v1, Lcom/miui/internal/view/menu/ListMenuPresenter;->nh:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 265
    :cond_f
    move-object p3, p2

    check-cast p3, Lcom/miui/internal/view/menu/MenuView$ItemView;

    .line 266
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->j(I)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Lcom/miui/internal/view/menu/MenuView$ItemView;->initialize(Lcom/miui/internal/view/menu/MenuItemImpl;I)V

    .line 267
    return-object p2
.end method

.method public j(I)Lcom/miui/internal/view/menu/MenuItemImpl;
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nJ:Lcom/miui/internal/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nJ:Lcom/miui/internal/view/menu/ListMenuPresenter;

    invoke-static {v1}, Lcom/miui/internal/view/menu/ListMenuPresenter;->a(Lcom/miui/internal/view/menu/ListMenuPresenter;)I

    move-result v1

    add-int/2addr p1, v1

    .line 248
    iget v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nI:I

    if-ltz v1, :cond_19

    iget v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->nI:I

    if-lt p1, v1, :cond_19

    .line 249
    add-int/lit8 p1, p1, 0x1

    .line 251
    :cond_19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .line 288
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->aP()V

    .line 289
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 290
    return-void
.end method
