.class public Lcom/miui/internal/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;,
        Lcom/miui/internal/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field public static final CATEGORY_MASK:I = -0x10000

.field public static final CATEGORY_SHIFT:I = 0x10

.field public static final USER_MASK:I = 0xffff

.field private static final nK:Ljava/lang/String; = "android:menu:presenters"

.field private static final nL:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final nM:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final nN:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final nO:Landroid/content/res/Resources;

.field private nP:Z

.field private nQ:Z

.field private nR:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

.field private nS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private nT:Z

.field private nU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private nV:Z

.field private nW:I

.field private nX:Landroid/view/ContextMenu$ContextMenuInfo;

.field nY:Ljava/lang/CharSequence;

.field nZ:Landroid/graphics/drawable/Drawable;

.field private nj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field oa:Landroid/view/View;

.field private ob:Z

.field private oc:Z

.field private od:Z

.field private oe:Z

.field private of:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private og:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/internal/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private oh:Lcom/miui/internal/view/menu/MenuItemImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/miui/internal/view/menu/MenuBuilder;->nN:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nW:I

    .line 158
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ob:Z

    .line 160
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Z

    .line 162
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->od:Z

    .line 164
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oe:Z

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->of:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 209
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nO:Landroid/content/res/Resources;

    .line 212
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    .line 214
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nj:Ljava/util/ArrayList;

    .line 215
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nT:Z

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nU:Ljava/util/ArrayList;

    .line 219
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nV:Z

    .line 221
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->i(Z)V

    .line 222
    return-void
.end method

.method private static a(Ljava/util/ArrayList;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .line 795
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    .line 796
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 797
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getOrdering()I

    move-result v1

    if-gt v1, p1, :cond_17

    .line 798
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 795
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 802
    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 15

    .line 416
    invoke-static {p3}, Lcom/miui/internal/view/menu/MenuBuilder;->k(I)I

    move-result v8

    .line 418
    new-instance v9, Lcom/miui/internal/view/menu/MenuItemImpl;

    iget v7, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nW:I

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, v8

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/internal/view/menu/MenuItemImpl;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 421
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nX:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p1, :cond_1b

    .line 423
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nX:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v9, p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->a(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 426
    :cond_1b
    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-static {p2, v8}, Lcom/miui/internal/view/menu/MenuBuilder;->a(Ljava/util/ArrayList;I)I

    move-result p2

    invoke-virtual {p1, p2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 427
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 429
    return-object v9
.end method

.method private a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 8

    .line 1151
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1153
    const/4 v1, 0x0

    if-eqz p5, :cond_e

    .line 1154
    iput-object p5, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oa:Landroid/view/View;

    .line 1157
    iput-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nY:Ljava/lang/CharSequence;

    .line 1158
    iput-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nZ:Landroid/graphics/drawable/Drawable;

    goto :goto_2a

    .line 1160
    :cond_e
    if-lez p1, :cond_17

    .line 1161
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nY:Ljava/lang/CharSequence;

    goto :goto_1b

    .line 1162
    :cond_17
    if-eqz p2, :cond_1b

    .line 1163
    iput-object p2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nY:Ljava/lang/CharSequence;

    .line 1166
    :cond_1b
    :goto_1b
    if-lez p3, :cond_24

    .line 1167
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nZ:Landroid/graphics/drawable/Drawable;

    goto :goto_28

    .line 1168
    :cond_24
    if-eqz p4, :cond_28

    .line 1169
    iput-object p4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nZ:Landroid/graphics/drawable/Drawable;

    .line 1173
    :cond_28
    :goto_28
    iput-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oa:Landroid/view/View;

    .line 1177
    :goto_2a
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 1178
    return-void
.end method

.method private a(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z
    .registers 6

    .line 274
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 275
    return v1

    .line 278
    :cond_a
    nop

    .line 280
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 281
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 282
    if-nez v3, :cond_2b

    .line 283
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_31

    .line 284
    :cond_2b
    if-nez v1, :cond_31

    .line 285
    invoke-interface {v3, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    move-result v1

    .line 287
    :cond_31
    :goto_31
    goto :goto_11

    .line 288
    :cond_32
    return v1
.end method

.method private c(IZ)V
    .registers 4

    .line 537
    if-ltz p1, :cond_17

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_17

    .line 541
    :cond_b
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 543
    if-eqz p2, :cond_16

    .line 544
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 546
    :cond_16
    return-void

    .line 538
    :cond_17
    :goto_17
    return-void
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 317
    const-string v0, "android:menu:presenters"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    .line 319
    if-eqz p1, :cond_44

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_44

    .line 323
    :cond_11
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 324
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 325
    if-nez v2, :cond_31

    .line 326
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_42

    .line 328
    :cond_31
    invoke-interface {v2}, Lcom/miui/internal/view/menu/MenuPresenter;->getId()I

    move-result v1

    .line 329
    if-lez v1, :cond_42

    .line 330
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 331
    if-eqz v1, :cond_42

    .line 332
    invoke-interface {v2, v1}, Lcom/miui/internal/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 336
    :cond_42
    :goto_42
    goto :goto_17

    .line 337
    :cond_43
    return-void

    .line 320
    :cond_44
    :goto_44
    return-void
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .line 292
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 293
    return-void

    .line 296
    :cond_9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 299
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 300
    if-nez v3, :cond_2e

    .line 301
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 303
    :cond_2e
    invoke-interface {v3}, Lcom/miui/internal/view/menu/MenuPresenter;->getId()I

    move-result v2

    .line 304
    if-lez v2, :cond_3d

    .line 305
    invoke-interface {v3}, Lcom/miui/internal/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 306
    if-eqz v3, :cond_3d

    .line 307
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 311
    :cond_3d
    :goto_3d
    goto :goto_14

    .line 313
    :cond_3e
    const-string v1, "android:menu:presenters"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 314
    return-void
.end method

.method private h(Z)V
    .registers 5

    .line 257
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 258
    return-void

    .line 261
    :cond_9
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 262
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 263
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 264
    if-nez v2, :cond_2c

    .line 265
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 267
    :cond_2c
    invoke-interface {v2, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->updateMenuView(Z)V

    .line 269
    :goto_2f
    goto :goto_12

    .line 270
    :cond_30
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 271
    return-void
.end method

.method private i(Z)V
    .registers 4

    .line 761
    const/4 v0, 0x1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nO:Landroid/content/res/Resources;

    .line 762
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq p1, v0, :cond_18

    iget-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nO:Landroid/content/res/Resources;

    sget v1, Lcom/miui/internal/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    .line 763
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nQ:Z

    .line 764
    return-void
.end method

.method private static k(I)I
    .registers 3

    .line 728
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    .line 730
    if-ltz v0, :cond_18

    sget-object v1, Lcom/miui/internal/view/menu/MenuBuilder;->nN:[I

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 734
    sget-object v1, Lcom/miui/internal/view/menu/MenuBuilder;->nN:[I

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    .line 731
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "order does not contain a valid category."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method a(ILandroid/view/KeyEvent;)Lcom/miui/internal/view/menu/MenuItemImpl;
    .registers 12

    .line 874
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->of:Ljava/util/ArrayList;

    .line 875
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 876
    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 878
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 879
    return-object v2

    .line 882
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 883
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 885
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 888
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 889
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_2b

    .line 890
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object p1

    .line 893
    :cond_2b
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result p2

    .line 896
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 897
    if-eqz p2, :cond_46

    invoke-virtual {v4}, Lcom/miui/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    goto :goto_4a

    .line 898
    :cond_46
    invoke-virtual {v4}, Lcom/miui/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    .line 899
    :goto_4a
    iget-object v7, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v7, v7, v5

    if-ne v6, v7, :cond_54

    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_69

    :cond_54
    iget-object v7, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x2

    aget-char v7, v7, v8

    if-ne v6, v7, :cond_5f

    and-int/lit8 v7, v1, 0x2

    if-nez v7, :cond_69

    :cond_5f
    if-eqz p2, :cond_6a

    const/16 v7, 0x8

    if-ne v6, v7, :cond_6a

    const/16 v6, 0x43

    if-ne p1, v6, :cond_6a

    .line 905
    :cond_69
    return-object v4

    .line 907
    :cond_6a
    goto :goto_33

    .line 908
    :cond_6b
    return-object v2
.end method

.method a(Lcom/miui/internal/view/menu/MenuItemImpl;)V
    .registers 2

    .line 1035
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nT:Z

    .line 1036
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 1037
    return-void
.end method

.method a(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 830
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    .line 831
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 832
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 834
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    .line 836
    const/16 v4, 0x43

    if-nez v3, :cond_18

    if-eq p2, v4, :cond_18

    .line 837
    return-void

    .line 841
    :cond_18
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 842
    invoke-virtual {v5}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 843
    invoke-virtual {v5}, Lcom/miui/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/view/menu/MenuBuilder;

    .line 844
    invoke-virtual {v6, p1, p2, p3}, Lcom/miui/internal/view/menu/MenuBuilder;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 846
    :cond_39
    if-eqz v0, :cond_40

    invoke-virtual {v5}, Lcom/miui/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    goto :goto_44

    .line 847
    :cond_40
    invoke-virtual {v5}, Lcom/miui/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    .line 848
    :goto_44
    and-int/lit8 v7, v1, 0x5

    if-nez v7, :cond_69

    if-eqz v6, :cond_69

    iget-object v7, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x0

    aget-char v7, v7, v8

    if-eq v6, v7, :cond_60

    iget-object v7, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x2

    aget-char v7, v7, v8

    if-eq v6, v7, :cond_60

    if-eqz v0, :cond_69

    const/16 v7, 0x8

    if-ne v6, v7, :cond_69

    if-ne p2, v4, :cond_69

    .line 854
    :cond_60
    invoke-virtual {v5}, Lcom/miui/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_69

    .line 855
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_69
    goto :goto_1e

    .line 858
    :cond_6a
    return-void
.end method

.method aQ()Z
    .registers 2

    .line 1277
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->od:Z

    return v0
.end method

.method public add(I)Landroid/view/MenuItem;
    .registers 3

    .line 439
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nO:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6

    .line 449
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nO:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 5

    .line 444
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 16

    .line 479
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 480
    nop

    .line 481
    const/4 v1, 0x0

    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    .line 482
    if-eqz p4, :cond_13

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_14

    .line 484
    :cond_13
    move v2, v1

    :goto_14
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1b

    .line 485
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 488
    :cond_1b
    :goto_1b
    if-ge v1, v2, :cond_65

    .line 489
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 490
    new-instance v3, Landroid/content/Intent;

    .line 491
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2b

    move-object v4, p6

    goto :goto_2f

    :cond_2b
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v4, p5, v4

    :goto_2f
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 492
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 495
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/miui/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 496
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 497
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    .line 498
    if-eqz p8, :cond_62

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v4, :cond_62

    .line 499
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v3, p8, p7

    .line 488
    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 503
    :cond_65
    return v2
.end method

.method public addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/miui/internal/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 238
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nV:Z

    .line 239
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3

    .line 459
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nO:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6

    .line 473
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nO:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    .line 464
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 465
    new-instance p2, Lcom/miui/internal/view/menu/SubMenuBuilder;

    iget-object p3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)V

    .line 466
    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->b(Lcom/miui/internal/view/menu/SubMenuBuilder;)V

    .line 468
    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    .line 454
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method b(Landroid/view/MenuItem;)V
    .registers 6

    .line 572
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 574
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 575
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, v0, :cond_32

    .line 576
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v3

    if-nez v3, :cond_23

    .line 577
    goto :goto_a

    .line 579
    :cond_23
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 580
    goto :goto_a

    .line 584
    :cond_2a
    if-ne v2, p1, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    :goto_2f
    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/MenuItemImpl;->m(Z)V

    .line 586
    :cond_32
    goto :goto_a

    .line 587
    :cond_33
    return-void
.end method

.method b(Lcom/miui/internal/view/menu/MenuItemImpl;)V
    .registers 2

    .line 1046
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nV:Z

    .line 1047
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 1048
    return-void
.end method

.method public changeMenuMode()V
    .registers 2

    .line 789
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nR:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_9

    .line 790
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nR:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 792
    :cond_9
    return-void
.end method

.method public clear()V
    .registers 2

    .line 563
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oh:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_9

    .line 564
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oh:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    .line 566
    :cond_9
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 568
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 569
    return-void
.end method

.method public clearAll()V
    .registers 3

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ob:Z

    .line 554
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->clear()V

    .line 555
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->clearHeader()V

    .line 556
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ob:Z

    .line 557
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Z

    .line 558
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 559
    return-void
.end method

.method public clearHeader()V
    .registers 2

    .line 1142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nZ:Landroid/graphics/drawable/Drawable;

    .line 1143
    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nY:Ljava/lang/CharSequence;

    .line 1144
    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oa:Landroid/view/View;

    .line 1146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 1147
    return-void
.end method

.method public close()V
    .registers 2

    .line 984
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    .line 985
    return-void
.end method

.method public collapseItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .registers 6

    .line 1305
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oh:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_e

    goto :goto_43

    .line 1309
    :cond_e
    nop

    .line 1311
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1312
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1313
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 1314
    if-nez v3, :cond_32

    .line 1315
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1316
    :cond_32
    invoke-interface {v3, p0, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1317
    goto :goto_3a

    .line 1319
    :cond_39
    :goto_39
    goto :goto_18

    .line 1320
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1322
    if-eqz v1, :cond_42

    .line 1323
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oh:Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 1325
    :cond_42
    return v1

    .line 1306
    :cond_43
    :goto_43
    return v1
.end method

.method dispatchMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .line 782
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nR:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nR:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public expandItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .registers 6

    .line 1281
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1282
    return v1

    .line 1285
    :cond_a
    nop

    .line 1287
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1288
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1289
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 1290
    if-nez v3, :cond_2e

    .line 1291
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_35

    .line 1292
    :cond_2e
    invoke-interface {v3, p0, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->expandItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1293
    goto :goto_36

    .line 1295
    :cond_35
    :goto_35
    goto :goto_14

    .line 1296
    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1298
    if-eqz v1, :cond_3d

    .line 1299
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oh:Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 1301
    :cond_3d
    return v1
.end method

.method public findGroupIndex(I)I
    .registers 3

    .line 674
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result p1

    return p1
.end method

.method public findGroupIndex(II)I
    .registers 5

    .line 678
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 680
    if-gez p2, :cond_7

    .line 681
    const/4 p2, 0x0

    .line 684
    :cond_7
    :goto_7
    if-ge p2, v0, :cond_1b

    .line 685
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 687
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 688
    return p2

    .line 684
    :cond_18
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 692
    :cond_1b
    const/4 p1, -0x1

    return p1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 6

    .line 643
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 644
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2a

    .line 645
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 646
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_16

    .line 647
    return-object v2

    .line 648
    :cond_16
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 649
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 651
    if-eqz v2, :cond_27

    .line 652
    return-object v2

    .line 644
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 657
    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method public findItemIndex(I)I
    .registers 5

    .line 661
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 663
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 664
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 665
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_16

    .line 666
    return v1

    .line 663
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 670
    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method public flagActionItems()V
    .registers 6

    .line 1095
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nV:Z

    if-nez v0, :cond_5

    .line 1096
    return-void

    .line 1100
    :cond_5
    nop

    .line 1101
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1102
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 1103
    if-nez v4, :cond_28

    .line 1104
    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 1106
    :cond_28
    invoke-interface {v4}, Lcom/miui/internal/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v3

    or-int/2addr v2, v3

    .line 1108
    :goto_2d
    goto :goto_e

    .line 1110
    :cond_2e
    if-eqz v2, :cond_61

    .line 1111
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1112
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1113
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 1114
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 1115
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1116
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 1118
    :cond_5a
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nU:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    :goto_5f
    goto :goto_42

    .line 1121
    :cond_60
    goto :goto_74

    .line 1124
    :cond_61
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1125
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1126
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nU:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1128
    :goto_74
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nV:Z

    .line 1129
    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1132
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1133
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .registers 2

    .line 405
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 778
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/miui/internal/view/menu/MenuItemImpl;
    .registers 2

    .line 1329
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oh:Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1245
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nZ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1241
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nY:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 2

    .line 1249
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oa:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3

    .line 702
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1137
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1138
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nU:Ljava/util/ArrayList;

    return-object v0
.end method

.method getResources()Landroid/content/res/Resources;
    .registers 2

    .line 774
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nO:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 1

    .line 1258
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1051
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nT:Z

    if-nez v0, :cond_7

    .line 1052
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nj:Ljava/util/ArrayList;

    return-object v0

    .line 1056
    :cond_7
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1058
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 1059
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1060
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nj:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    :cond_29
    goto :goto_12

    .line 1064
    :cond_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nT:Z

    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nV:Z

    .line 1067
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nj:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .registers 5

    .line 629
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 631
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1b

    .line 632
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 633
    invoke-virtual {v3}, Lcom/miui/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 634
    const/4 v0, 0x1

    return v0

    .line 631
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 638
    :cond_1b
    return v1
.end method

.method isQwertyMode()Z
    .registers 2

    .line 741
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nP:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 707
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->a(ILandroid/view/KeyEvent;)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public isShortcutsVisible()Z
    .registers 2

    .line 770
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nQ:Z

    return v0
.end method

.method final j(Z)V
    .registers 5

    .line 966
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oe:Z

    if-eqz v0, :cond_5

    .line 967
    return-void

    .line 970
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oe:Z

    .line 971
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 972
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 973
    if-nez v2, :cond_28

    .line 974
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 976
    :cond_28
    invoke-interface {v2, p0, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    .line 978
    :goto_2b
    goto :goto_e

    .line 979
    :cond_2c
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oe:Z

    .line 980
    return-void
.end method

.method k(Z)V
    .registers 4

    .line 995
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ob:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 996
    if-eqz p1, :cond_b

    .line 997
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nT:Z

    .line 998
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nV:Z

    .line 1001
    :cond_b
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->h(Z)V

    goto :goto_11

    .line 1003
    :cond_f
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Z

    .line 1005
    :goto_11
    return-void
.end method

.method l(Z)V
    .registers 2

    .line 1273
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->od:Z

    .line 1274
    return-void
.end method

.method public performIdentifierAction(II)Z
    .registers 3

    .line 914
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .registers 9

    .line 918
    check-cast p1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 920
    const/4 v0, 0x0

    if-eqz p1, :cond_6f

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6f

    .line 924
    :cond_c
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v1

    .line 926
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    .line 927
    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 928
    move v4, v3

    goto :goto_21

    .line 927
    :cond_1f
    nop

    .line 928
    move v4, v0

    :goto_21
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 929
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    .line 930
    if-eqz v1, :cond_6e

    .line 931
    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    goto :goto_6e

    .line 933
    :cond_32
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_43

    if-eqz v4, :cond_3b

    goto :goto_43

    .line 949
    :cond_3b
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_6e

    .line 950
    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    goto :goto_6e

    .line 934
    :cond_43
    :goto_43
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    .line 936
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p2

    if-nez p2, :cond_58

    .line 937
    new-instance p2, Lcom/miui/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0, p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->b(Lcom/miui/internal/view/menu/SubMenuBuilder;)V

    .line 940
    :cond_58
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/view/menu/SubMenuBuilder;

    .line 941
    if-eqz v4, :cond_63

    .line 942
    invoke-virtual {v2, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 944
    :cond_63
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->a(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    move-result p1

    or-int/2addr v1, p1

    .line 945
    if-nez v1, :cond_6d

    .line 946
    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    .line 948
    :cond_6d
    nop

    .line 954
    :cond_6e
    :goto_6e
    return v1

    .line 921
    :cond_6f
    :goto_6f
    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 4

    .line 807
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->a(ILandroid/view/KeyEvent;)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p1

    .line 809
    nop

    .line 811
    if-eqz p1, :cond_c

    .line 812
    invoke-virtual {p0, p1, p3}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    goto :goto_d

    .line 815
    :cond_c
    const/4 p1, 0x0

    :goto_d
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_15

    .line 816
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->j(Z)V

    .line 819
    :cond_15
    return p1
.end method

.method public removeGroup(I)V
    .registers 7

    .line 513
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 515
    if-ltz v0, :cond_2b

    .line 516
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 517
    nop

    .line 518
    const/4 v2, 0x0

    move v3, v2

    :goto_10
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v1, :cond_27

    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_27

    .line 520
    invoke-direct {p0, v0, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->c(IZ)V

    .line 518
    move v3, v4

    goto :goto_10

    .line 524
    :cond_27
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 526
    :cond_2b
    return-void
.end method

.method public removeItem(I)V
    .registers 3

    .line 508
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->c(IZ)V

    .line 509
    return-void
.end method

.method public removeItemAt(I)V
    .registers 3

    .line 549
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->c(IZ)V

    .line 550
    return-void
.end method

.method public removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V
    .registers 5

    .line 248
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 249
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 250
    if-eqz v2, :cond_1c

    if-ne v2, p1, :cond_21

    .line 251
    :cond_1c
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->og:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 253
    :cond_21
    goto :goto_6

    .line 254
    :cond_22
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    .line 375
    if-nez p1, :cond_3

    .line 376
    return-void

    .line 379
    :cond_3
    nop

    .line 380
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 382
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 383
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_39

    .line 384
    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 385
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 386
    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_27

    .line 387
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 389
    :cond_27
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 390
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/SubMenuBuilder;

    .line 391
    invoke-virtual {v3, p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 383
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 395
    :cond_39
    const-string v0, "android:menu:expandedactionview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 396
    if-lez p1, :cond_4a

    .line 397
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 398
    if-eqz p1, :cond_4a

    .line 399
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 402
    :cond_4a
    return-void
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .registers 2

    .line 344
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 345
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    .line 348
    nop

    .line 350
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 351
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_45

    .line 352
    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 353
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 354
    if-eqz v4, :cond_33

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_33

    .line 355
    if-nez v1, :cond_21

    .line 356
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 358
    :cond_21
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 359
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 360
    const-string v4, "android:menu:expandedactionview"

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    :cond_33
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 364
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/SubMenuBuilder;

    .line 365
    invoke-virtual {v3, p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 351
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 369
    :cond_45
    if-eqz v1, :cond_4e

    .line 370
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 372
    :cond_4e
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .registers 2

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 341
    return-void
.end method

.method public setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V
    .registers 2

    .line 409
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nR:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    .line 410
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    .line 1269
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nX:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1270
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 2

    .line 225
    iput p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nW:I

    .line 226
    return-object p0
.end method

.method public setGroupCheckable(IZZ)V
    .registers 7

    .line 591
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 592
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_1e

    .line 593
    invoke-virtual {v1, p3}, Lcom/miui/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 594
    invoke-virtual {v1, p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 596
    :cond_1e
    goto :goto_6

    .line 597
    :cond_1f
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 6

    .line 620
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 621
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 622
    invoke-virtual {v1, p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 624
    :cond_1b
    goto :goto_6

    .line 625
    :cond_1c
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 8

    .line 604
    nop

    .line 605
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 606
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_23

    .line 607
    invoke-virtual {v2, p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->n(Z)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 608
    nop

    .line 611
    move v1, v3

    :cond_23
    goto :goto_8

    .line 613
    :cond_24
    if-eqz v1, :cond_29

    .line 614
    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 616
    :cond_29
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 8

    .line 1224
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1225
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 8

    .line 1212
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1213
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 8

    .line 1200
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1201
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 8

    .line 1188
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1189
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 8

    .line 1236
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1237
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .registers 2

    .line 712
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nP:Z

    .line 714
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 715
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .registers 3

    .line 752
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nQ:Z

    if-ne v0, p1, :cond_5

    .line 753
    return-void

    .line 756
    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->i(Z)V

    .line 757
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 758
    return-void
.end method

.method public size()I
    .registers 2

    .line 697
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->nS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .registers 3

    .line 1020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ob:Z

    .line 1022
    iget-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Z

    if-eqz v1, :cond_d

    .line 1023
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Z

    .line 1024
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->k(Z)V

    .line 1026
    :cond_d
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .registers 2

    .line 1013
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ob:Z

    if-nez v0, :cond_a

    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->ob:Z

    .line 1015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->oc:Z

    .line 1017
    :cond_a
    return-void
.end method
