.class Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private nI:I

.field private oM:Lcom/miui/internal/view/menu/MenuBuilder;

.field final synthetic oN:Lcom/miui/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/MenuPopupHelper;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 312
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->oN:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 310
    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->nI:I

    .line 313
    iput-object p2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->oM:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 314
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->aP()V

    .line 315
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 1

    .line 306
    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->oM:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p0
.end method


# virtual methods
.method aP()V
    .registers 6

    .line 355
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->oN:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-static {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->d(Lcom/miui/internal/view/menu/MenuPopupHelper;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_2b

    .line 357
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->oN:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-static {v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->d(Lcom/miui/internal/view/menu/MenuPopupHelper;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 358
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 359
    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_2b

    .line 360
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 361
    if-ne v4, v0, :cond_28

    .line 362
    iput v3, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->nI:I

    .line 363
    return-void

    .line 359
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 367
    :cond_2b
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->nI:I

    .line 368
    return-void
.end method

.method public getCount()I
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->oN:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-static {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->a(Lcom/miui/internal/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 319
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->oM:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->oM:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 320
    :goto_15
    iget v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->nI:I

    if-gez v1, :cond_1e

    .line 321
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 323
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 306
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->j(I)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 338
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 342
    const/4 v0, 0x0

    if-nez p2, :cond_13

    .line 343
    iget-object p2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->oN:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-static {p2}, Lcom/miui/internal/view/menu/MenuPopupHelper;->c(Lcom/miui/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->oN:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-static {v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->b(Lcom/miui/internal/view/menu/MenuPopupHelper;)I

    move-result v1

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 346
    :cond_13
    move-object p3, p2

    check-cast p3, Lcom/miui/internal/view/menu/MenuView$ItemView;

    .line 347
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->oN:Lcom/miui/internal/view/menu/MenuPopupHelper;

    iget-boolean v1, v1, Lcom/miui/internal/view/menu/MenuPopupHelper;->nC:Z

    if-eqz v1, :cond_23

    .line 348
    move-object v1, p2

    check-cast v1, Lcom/miui/internal/view/menu/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 350
    :cond_23
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->j(I)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Lcom/miui/internal/view/menu/MenuView$ItemView;->initialize(Lcom/miui/internal/view/menu/MenuItemImpl;I)V

    .line 351
    return-object p2
.end method

.method public j(I)Lcom/miui/internal/view/menu/MenuItemImpl;
    .registers 4

    .line 327
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->oN:Lcom/miui/internal/view/menu/MenuPopupHelper;

    invoke-static {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->a(Lcom/miui/internal/view/menu/MenuPopupHelper;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 328
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->oM:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->oM:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 329
    :goto_15
    iget v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->nI:I

    if-ltz v1, :cond_1f

    iget v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->nI:I

    if-lt p1, v1, :cond_1f

    .line 330
    add-int/lit8 p1, p1, 0x1

    .line 332
    :cond_1f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .line 372
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->aP()V

    .line 373
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 374
    return-void
.end method
