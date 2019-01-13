.class public final Lcom/miui/internal/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final ENABLED:I = 0x10

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static final ms:I = 0x1

.field private static final mt:I = 0x2

.field private static final mu:I = 0x4

.field private static final mv:I = 0x8

.field private static oA:Ljava/lang/String; = null

.field private static final ol:I = 0x3

.field private static final op:I = 0x20

.field static final ov:I

.field private static ox:Ljava/lang/String;

.field private static oy:Ljava/lang/String;

.field private static oz:Ljava/lang/String;


# instance fields
.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private final mh:I

.field private final mi:I

.field private final mj:I

.field private final mk:I

.field private ml:Ljava/lang/CharSequence;

.field private mm:Landroid/content/Intent;

.field private mn:C

.field private mo:C

.field private mp:Landroid/graphics/drawable/Drawable;

.field private mq:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mr:I

.field private om:I

.field private on:Lcom/miui/internal/view/menu/SubMenuBuilder;

.field private oo:Ljava/lang/Runnable;

.field private oq:I

.field private or:Landroid/view/View;

.field private os:Landroid/view/ActionProvider;

.field private ot:Landroid/view/MenuItem$OnActionExpandListener;

.field private ou:Z

.field private ow:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .registers 10

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->om:I

    .line 64
    const/16 v1, 0x10

    iput v1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    .line 72
    iput v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->oq:I

    .line 77
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->ou:Z

    .line 122
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 123
    iput p3, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mh:I

    .line 124
    iput p2, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mi:I

    .line 125
    iput p4, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mj:I

    .line 126
    iput p5, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mk:I

    .line 127
    iput-object p6, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 128
    iput p7, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->oq:I

    .line 129
    return-void
.end method

.method static synthetic c(Lcom/miui/internal/view/menu/MenuItemImpl;)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p0
.end method


# virtual methods
.method a(Lcom/miui/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .registers 2

    .line 348
    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/miui/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 349
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_11

    .line 350
    :cond_d
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 348
    :goto_11
    return-object p1
.end method

.method a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    .line 513
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->ow:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 514
    return-void
.end method

.method aR()C
    .registers 2

    .line 272
    iget-char v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mo:C

    return v0
.end method

.method aS()Ljava/lang/String;
    .registers 4

    .line 282
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuItemImpl;->aR()C

    move-result v0

    .line 283
    if-nez v0, :cond_9

    .line 284
    const-string v0, ""

    return-object v0

    .line 287
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/internal/view/menu/MenuItemImpl;->ox:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    const/16 v2, 0x8

    if-eq v0, v2, :cond_2c

    const/16 v2, 0xa

    if-eq v0, v2, :cond_26

    const/16 v2, 0x20

    if-eq v0, v2, :cond_20

    .line 303
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 299
    :cond_20
    sget-object v0, Lcom/miui/internal/view/menu/MenuItemImpl;->oA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    goto :goto_32

    .line 291
    :cond_26
    sget-object v0, Lcom/miui/internal/view/menu/MenuItemImpl;->oy:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    goto :goto_32

    .line 295
    :cond_2c
    sget-object v0, Lcom/miui/internal/view/menu/MenuItemImpl;->oz:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    nop

    .line 307
    :goto_32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method aT()Z
    .registers 2

    .line 316
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuItemImpl;->aR()C

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public actionFormatChanged()V
    .registers 2

    .line 522
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->b(Lcom/miui/internal/view/menu/MenuItemImpl;)V

    .line 523
    return-void
.end method

.method b(Lcom/miui/internal/view/menu/SubMenuBuilder;)V
    .registers 3

    .line 330
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->on:Lcom/miui/internal/view/menu/SubMenuBuilder;

    .line 332
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 333
    return-void
.end method

.method public collapseActionView()Z
    .registers 2

    .line 658
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->oq:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->or:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->ot:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->ot:Landroid/view/MenuItem$OnActionExpandListener;

    .line 659
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_16
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 660
    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 658
    :goto_21
    return v0
.end method

.method public expandActionView()Z
    .registers 2

    .line 651
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->oq:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->or:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->ot:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->ot:Landroid/view/MenuItem$OnActionExpandListener;

    .line 652
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_16
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 653
    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->expandItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 651
    :goto_21
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    .line 613
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Implementation should use getSupportActionProvider!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .line 595
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->or:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 596
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->or:Landroid/view/View;

    return-object v0

    .line 597
    :cond_7
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->os:Landroid/view/ActionProvider;

    if-eqz v0, :cond_16

    .line 598
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->os:Landroid/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->or:Landroid/view/View;

    .line 599
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->or:Landroid/view/View;

    return-object v0

    .line 601
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .line 223
    iget-char v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mo:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->oo:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    .line 183
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mi:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 385
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mp:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 386
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mp:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 389
    :cond_7
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->om:I

    if-eqz v0, :cond_1d

    .line 390
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->om:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 391
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->om:I

    .line 392
    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mp:Landroid/graphics/drawable/Drawable;

    .line 393
    return-object v0

    .line 396
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mm:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 189
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mh:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->ow:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .line 241
    iget-char v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mn:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    .line 194
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mj:I

    return v0
.end method

.method public getOrdering()I
    .registers 2

    .line 198
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mk:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->on:Lcom/miui/internal/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .line 618
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->os:Landroid/view/ActionProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->ml:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->ml:Ljava/lang/CharSequence;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    :goto_9
    return-object v0
.end method

.method public hasCollapsibleActionView()Z
    .registers 2

    .line 669
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->oq:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->or:Landroid/view/View;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasSubMenu()Z
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->on:Lcom/miui/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public invoke()Z
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mq:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mq:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 138
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 139
    return v1

    .line 142
    :cond_e
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 143
    return v1

    .line 146
    :cond_1d
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->oo:Ljava/lang/Runnable;

    if-eqz v0, :cond_27

    .line 147
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->oo:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 148
    return v1

    .line 151
    :cond_27
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mm:Landroid/content/Intent;

    if-eqz v0, :cond_3f

    .line 153
    :try_start_2b
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mm:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_36
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b .. :try_end_36} :catch_37

    .line 154
    return v1

    .line 155
    :catch_37
    move-exception v0

    .line 156
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    :cond_3f
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->os:Landroid/view/ActionProvider;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->os:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    return v1
.end method

.method public isActionButton()Z
    .registers 3

    .line 533
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    .line 679
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->ou:Z

    return v0
.end method

.method public isCheckable()Z
    .registers 3

    .line 421
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isChecked()Z
    .registers 3

    .line 445
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 165
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isExclusiveCheckable()Z
    .registers 2

    .line 440
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isVisible()Z
    .registers 4

    .line 471
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->os:Landroid/view/ActionProvider;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->os:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 472
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->os:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    move v1, v2

    nop

    :cond_1e
    return v1

    .line 474
    :cond_1f
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_27

    move v1, v2

    nop

    :cond_27
    return v1
.end method

.method m(Z)V
    .registers 5

    .line 462
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    .line 463
    iget v1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    and-int/lit8 v1, v1, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_b

    const/4 p1, 0x2

    goto :goto_c

    :cond_b
    move p1, v2

    :goto_c
    or-int/2addr p1, v1

    iput p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    .line 464
    iget p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    if-eq v0, p1, :cond_18

    .line 465
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 467
    :cond_18
    return-void
.end method

.method n(Z)Z
    .registers 5

    .line 486
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    .line 487
    iget v1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    and-int/lit8 v1, v1, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_b

    move p1, v2

    goto :goto_d

    :cond_b
    const/16 p1, 0x8

    :goto_d
    or-int/2addr p1, v1

    iput p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    .line 488
    iget p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    if-eq v0, p1, :cond_16

    const/4 v2, 0x1

    nop

    :cond_16
    return v2
.end method

.method public requestsActionButton()Z
    .registers 3

    .line 537
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->oq:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public requiresActionButton()Z
    .registers 3

    .line 541
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->oq:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    .line 607
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Implementation should use setSupportActionProvider!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 5

    .line 587
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 588
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 589
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 590
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 4

    .line 576
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->or:Landroid/view/View;

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->os:Landroid/view/ActionProvider;

    .line 578
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mh:I

    if-lez v0, :cond_17

    .line 579
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mh:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 581
    :cond_17
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->b(Lcom/miui/internal/view/menu/MenuItemImpl;)V

    .line 582
    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .registers 3

    .line 673
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->ou:Z

    .line 674
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 675
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 228
    iget-char v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mo:C

    if-ne v0, p1, :cond_5

    .line 229
    return-object p0

    .line 232
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mo:C

    .line 234
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 236
    return-object p0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->oo:Ljava/lang/Runnable;

    .line 218
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    .line 426
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    .line 427
    iget v1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    and-int/lit8 v1, v1, -0x2

    or-int/2addr p1, v1

    iput p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    .line 428
    iget p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    if-eq v0, p1, :cond_13

    .line 429
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 432
    :cond_13
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    .line 450
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 453
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->b(Landroid/view/MenuItem;)V

    goto :goto_f

    .line 455
    :cond_c
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->m(Z)V

    .line 458
    :goto_f
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 3

    .line 170
    if-eqz p1, :cond_9

    .line 171
    iget p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    goto :goto_f

    .line 173
    :cond_9
    iget p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    .line 176
    :goto_f
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 178
    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .registers 3

    .line 436
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_8

    const/4 p1, 0x4

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    or-int/2addr p1, v0

    iput p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    .line 437
    return-void
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mp:Landroid/graphics/drawable/Drawable;

    .line 411
    iput p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->om:I

    .line 414
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 416
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    .line 401
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->om:I

    .line 402
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mp:Landroid/graphics/drawable/Drawable;

    .line 403
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 405
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mm:Landroid/content/Intent;

    .line 209
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .registers 2

    .line 545
    if-eqz p1, :cond_9

    .line 546
    iget p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    goto :goto_f

    .line 548
    :cond_9
    iget p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mr:I

    .line 550
    :goto_f
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3

    .line 246
    iget-char v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mn:C

    if-ne v0, p1, :cond_5

    .line 247
    return-object p0

    .line 250
    :cond_5
    iput-char p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mn:C

    .line 252
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 254
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 3

    .line 684
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Implementation should use setSupportOnActionExpandListener!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    .line 503
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mq:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 504
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    .line 259
    iput-char p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mn:C

    .line 260
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mo:C

    .line 262
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 264
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 3

    .line 558
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_16

    .line 567
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 563
    :pswitch_d
    nop

    .line 570
    iput p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->oq:I

    .line 571
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->b(Lcom/miui/internal/view/menu/MenuItemImpl;)V

    .line 572
    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    .line 645
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 646
    return-object p0
.end method

.method public setSupportActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4

    .line 622
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->os:Landroid/view/ActionProvider;

    if-ne v0, p1, :cond_5

    .line 623
    return-object p0

    .line 626
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->or:Landroid/view/View;

    .line 627
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->os:Landroid/view/ActionProvider;

    if-eqz v1, :cond_11

    .line 628
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->os:Landroid/view/ActionProvider;

    invoke-virtual {v1, v0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 630
    :cond_11
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->os:Landroid/view/ActionProvider;

    .line 631
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 632
    if-eqz p1, :cond_23

    .line 633
    new-instance v0, Lcom/miui/internal/view/menu/MenuItemImpl$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/menu/MenuItemImpl$1;-><init>(Lcom/miui/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 640
    :cond_23
    return-object p0
.end method

.method public setSupportOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    .line 664
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->ot:Landroid/view/MenuItem$OnActionExpandListener;

    .line 665
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    .line 355
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 357
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 359
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->on:Lcom/miui/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_11

    .line 360
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->on:Lcom/miui/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 363
    :cond_11
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 378
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->ml:Ljava/lang/CharSequence;

    .line 379
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 380
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2

    .line 496
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->n(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->a(Lcom/miui/internal/view/menu/MenuItemImpl;)V

    .line 498
    :cond_b
    return-object p0
.end method

.method public shouldShowIcon()Z
    .registers 2

    .line 529
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->aQ()Z

    move-result v0

    return v0
.end method

.method public showsTextAsAction()Z
    .registers 3

    .line 553
    iget v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->oq:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
