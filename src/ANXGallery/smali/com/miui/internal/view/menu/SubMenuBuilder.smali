.class public Lcom/miui/internal/view/menu/SubMenuBuilder;
.super Lcom/miui/internal/view/menu/MenuBuilder;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private pk:Lcom/miui/internal/view/menu/MenuBuilder;

.field private pl:Lcom/miui/internal/view/menu/MenuItemImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)V
    .registers 4

    .line 26
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pk:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 29
    iput-object p3, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pl:Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 30
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .registers 1

    .line 112
    return-void
.end method

.method public collapseItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pk:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result p1

    return p1
.end method

.method public dispatchMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .line 71
    invoke-super {p0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pk:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 72
    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    .line 71
    :goto_12
    return p1
.end method

.method public expandItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pk:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->expandItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result p1

    return p1
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pl:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pl:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 127
    :goto_c
    if-nez v0, :cond_10

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pl:Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pk:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pk:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public isQwertyMode()Z
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pk:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pk:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pk:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 63
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 3

    .line 91
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 92
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 2

    .line 86
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 87
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 3

    .line 101
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 102
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 2

    .line 96
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 97
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 2

    .line 106
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 107
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pl:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 82
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pl:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 77
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pk:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 35
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->pk:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 45
    return-void
.end method
