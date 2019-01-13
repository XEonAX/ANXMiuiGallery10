.class public Lcom/miui/internal/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/miui/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mh:I

.field nD:Lcom/miui/internal/view/menu/ExpandedMenuView;

.field private nE:I

.field nF:I

.field nG:I

.field nH:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

.field private nf:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

.field nh:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 64
    sget v0, Lcom/miui/internal/R$layout;->expanded_menu_layout:I

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/internal/view/menu/ListMenuPresenter;-><init>(III)V

    .line 65
    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p2, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nh:I

    .line 74
    iput p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nG:I

    .line 75
    iput p3, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nF:I

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/miui/internal/view/menu/ListMenuPresenter;-><init>(III)V

    .line 54
    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 55
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/view/menu/ListMenuPresenter;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nE:I

    return p0
.end method


# virtual methods
.method aO()I
    .registers 2

    .line 161
    iget v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nE:I

    return v0
.end method

.method public collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 186
    const/4 p1, 0x0

    return p1
.end method

.method public expandItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 182
    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .registers 2

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nH:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_b

    .line 126
    new-instance v0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/miui/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nH:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 128
    :cond_b
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nH:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 210
    iget v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mh:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nH:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_b

    .line 101
    new-instance v0, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/miui/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nH:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 104
    :cond_b
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nH:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 105
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nD:Lcom/miui/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_30

    .line 106
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nG:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/ExpandedMenuView;

    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nD:Lcom/miui/internal/view/menu/ExpandedMenuView;

    .line 107
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nD:Lcom/miui/internal/view/menu/ExpandedMenuView;

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nH:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nD:Lcom/miui/internal/view/menu/ExpandedMenuView;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    :cond_30
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nD:Lcom/miui/internal/view/menu/ExpandedMenuView;

    return-object p1

    .line 114
    :cond_33
    const/4 p1, 0x0

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 5

    .line 80
    iget v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nF:I

    if-eqz v0, :cond_16

    .line 81
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nF:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 82
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_28

    .line 83
    :cond_16
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_28

    .line 84
    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 85
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez p1, :cond_28

    .line 86
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 89
    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_31

    .line 90
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 92
    :cond_31
    iput-object p2, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 93
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nH:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz p1, :cond_3c

    .line 94
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nH:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 96
    :cond_3c
    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nf:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_9

    .line 156
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nf:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    .line 158
    :cond_9
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 173
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object p2, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nH:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {p2, p3}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->j(I)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 174
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    .line 226
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 227
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nD:Lcom/miui/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_6

    .line 216
    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 221
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z
    .registers 4

    .line 143
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 146
    :cond_8
    new-instance v0, Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 147
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nf:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1a

    .line 148
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nf:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    .line 150
    :cond_1a
    const/4 p1, 0x1

    return p1
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 3

    .line 198
    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    .line 199
    if-eqz p1, :cond_d

    .line 200
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nD:Lcom/miui/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ExpandedMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 202
    :cond_d
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .registers 4

    .line 190
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nD:Lcom/miui/internal/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_e

    .line 192
    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nD:Lcom/miui/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/menu/ExpandedMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 194
    :cond_e
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 195
    return-void
.end method

.method public setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nf:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    .line 139
    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 205
    iput p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->mh:I

    .line 206
    return-void
.end method

.method public setItemIndexOffset(I)V
    .registers 2

    .line 165
    iput p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nE:I

    .line 166
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nD:Lcom/miui/internal/view/menu/ExpandedMenuView;

    if-eqz p1, :cond_a

    .line 167
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ListMenuPresenter;->updateMenuView(Z)V

    .line 169
    :cond_a
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 2

    .line 133
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nH:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuPresenter;->nH:Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 134
    :cond_9
    return-void
.end method
