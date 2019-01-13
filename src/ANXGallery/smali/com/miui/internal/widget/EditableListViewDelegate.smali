.class public Lcom/miui/internal/widget/EditableListViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;,
        Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;,
        Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    }
.end annotation


# static fields
.field private static final tA:Lmiui/reflect/Method;

.field private static final tu:I = 0x7fffffff

.field private static final tv:Lmiui/reflect/Method;

.field private static final tw:Lmiui/reflect/Method;

.field private static final tx:Lmiui/reflect/Method;

.field private static final ty:Lmiui/reflect/Method;

.field private static final tz:Lmiui/reflect/Method;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private tB:Landroid/widget/AbsListView;

.field private tC:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/AbsListView;",
            ">;"
        }
    .end annotation
.end field

.field private tD:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

.field private tE:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

.field private tF:Z

.field private tG:Z

.field private tH:I

.field private tI:I

.field private tJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private tK:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

.field private tL:Landroid/widget/AbsListView$RecyclerListener;

.field private tM:Lmiui/widget/EditableListView$ItemCheckFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 42
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setAdapter"

    const-string v2, "(Landroid/widget/ListAdapter;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->tv:Lmiui/reflect/Method;

    .line 44
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "clearChoices"

    const-string v2, "()V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->tw:Lmiui/reflect/Method;

    .line 45
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setItemChecked"

    const-string v2, "(IZ)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->tx:Lmiui/reflect/Method;

    .line 46
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "isItemChecked"

    const-string v2, "(I)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->ty:Lmiui/reflect/Method;

    .line 47
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "getCheckedItemPositions"

    const-string v2, "()Landroid/util/SparseBooleanArray;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->tz:Lmiui/reflect/Method;

    .line 49
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setMultiChoiceModeListener"

    const-string v2, "(Landroid/widget/AbsListView$MultiChoiceModeListener;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->tA:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tJ:Ljava/util/List;

    .line 72
    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$1;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tK:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    .line 83
    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$2;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tL:Landroid/widget/AbsListView$RecyclerListener;

    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .registers 2

    .line 33
    iput p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tH:I

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    return-object p0
.end method

.method static synthetic a(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/View;)Landroid/widget/CheckBox;
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->i(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .registers 2

    .line 33
    iput p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tI:I

    return p1
.end method

.method static synthetic b(Lcom/miui/internal/widget/EditableListViewDelegate;)Ljava/util/List;
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->bH()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private bG()V
    .registers 9

    .line 314
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 316
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_27

    .line 317
    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 318
    add-int v4, v0, v2

    .line 319
    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tK:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-interface {v5, v3, v4, v6, v7}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 321
    :cond_27
    return-void
.end method

.method private bH()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 382
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tJ:Ljava/util/List;

    .line 383
    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tJ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 384
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_22

    .line 385
    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->i(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v3

    .line 386
    if-eqz v3, :cond_1f

    .line 387
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 390
    :cond_22
    return-object v1
.end method

.method static synthetic c(Lcom/miui/internal/widget/EditableListViewDelegate;)I
    .registers 1

    .line 33
    iget p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tI:I

    return p0
.end method

.method static synthetic c(Lcom/miui/internal/widget/EditableListViewDelegate;I)Z
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemCheckable(I)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .registers 3

    .line 33
    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tH:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tH:I

    return v0
.end method

.method static synthetic d(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tK:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/internal/widget/EditableListViewDelegate;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tF:Z

    return p0
.end method

.method static synthetic g(Lcom/miui/internal/widget/EditableListViewDelegate;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tG:Z

    return p0
.end method

.method private getCheckableItemCount()I
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tM:Lmiui/widget/EditableListView$ItemCheckFilter;

    if-eqz v0, :cond_b

    .line 98
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tM:Lmiui/widget/EditableListView$ItemCheckFilter;

    invoke-interface {v0}, Lmiui/widget/EditableListView$ItemCheckFilter;->getCheckableItemCount()I

    move-result v0

    goto :goto_1b

    .line 99
    :cond_b
    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 97
    :goto_1b
    return v0
.end method

.method private i(Landroid/view/View;)Landroid/widget/CheckBox;
    .registers 4

    .line 369
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 370
    if-nez v1, :cond_19

    .line 371
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 372
    if-eqz v1, :cond_19

    .line 373
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 377
    :cond_19
    return-object v1
.end method

.method private isItemCheckable(I)Z
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tM:Lmiui/widget/EditableListView$ItemCheckFilter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tM:Lmiui/widget/EditableListView$ItemCheckFilter;

    invoke-interface {v0, p1}, Lmiui/widget/EditableListView$ItemCheckFilter;->isItemCheckable(I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method


# virtual methods
.method public clearChoices()V
    .registers 6

    .line 183
    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->tw:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tC:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 184
    iput v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tH:I

    .line 186
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tK:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 187
    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->bG()V

    .line 188
    iput v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tH:I

    .line 189
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tD:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tD:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .registers 5

    .line 245
    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->tz:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tC:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 246
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 245
    return-object v0
.end method

.method public getListView()Landroid/widget/AbsListView;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public initialize(Landroid/widget/AbsListView;Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/AbsListView;",
            ">;)V"
        }
    .end annotation

    .line 114
    if-eqz p1, :cond_3f

    .line 118
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    .line 119
    iput-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tC:Ljava/lang/Class;

    .line 120
    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 121
    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    iget-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tL:Landroid/widget/AbsListView$RecyclerListener;

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 122
    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    instance-of p1, p1, Landroid/widget/ListView;

    iput-boolean p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tG:Z

    .line 124
    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 125
    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    .line 126
    sget-object p2, Lcom/miui/internal/widget/EditableListViewDelegate;->tv:Lmiui/reflect/Method;

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tC:Ljava/lang/Class;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    check-cast v4, Landroid/widget/ListAdapter;

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    :cond_3e
    return-void

    .line 115
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "absListView is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAllItemsChecked()Z
    .registers 3

    .line 150
    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tH:I

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckableItemCount()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tH:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isInActionMode()Z
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isItemChecked(I)Z
    .registers 8

    .line 212
    iget-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_f

    .line 213
    :cond_e
    move v0, v1

    :goto_f
    sget-object v2, Lcom/miui/internal/widget/EditableListViewDelegate;->ty:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tC:Ljava/lang/Class;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isItemIdChecked(J)Z
    .registers 9

    .line 224
    nop

    .line 225
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_a
    if-ge v3, v2, :cond_19

    aget-wide v4, v0, v3

    .line 226
    cmp-long v4, p1, v4

    if-nez v4, :cond_16

    .line 227
    nop

    .line 228
    nop

    .line 232
    const/4 v1, 0x1

    goto :goto_19

    .line 225
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 232
    :cond_19
    :goto_19
    return v1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 7

    .line 277
    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_33

    .line 278
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1d

    .line 279
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tD:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    .line 280
    sget-object v2, Lcom/miui/internal/widget/EditableListViewDelegate;->tv:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tC:Ljava/lang/Class;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    new-array v1, v1, [Ljava/lang/Object;

    check-cast p1, Landroid/widget/ListAdapter;

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v4, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_33

    .line 282
    :cond_1d
    new-instance v2, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    invoke-direct {v2, p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/widget/ListAdapter;)V

    iput-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tD:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    .line 283
    sget-object p1, Lcom/miui/internal/widget/EditableListViewDelegate;->tv:Lmiui/reflect/Method;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tC:Ljava/lang/Class;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tD:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    aput-object v4, v1, v0

    invoke-virtual {p1, v2, v3, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 286
    :cond_33
    :goto_33
    return-void
.end method

.method public setAllItemsChecked(Z)V
    .registers 6

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tF:Z

    .line 162
    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 163
    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1b

    .line 164
    invoke-direct {p0, v2}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemCheckable(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 165
    invoke-virtual {p0, v2, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setItemChecked(IZ)V

    .line 163
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 168
    :cond_1b
    if-eqz p1, :cond_22

    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckableItemCount()I

    move-result v0

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    iput v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tH:I

    .line 169
    iput-boolean v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tF:Z

    .line 171
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tK:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 172
    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->bG()V

    .line 174
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tE:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    if-eqz v0, :cond_3c

    .line 175
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tE:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 177
    :cond_3c
    return-void
.end method

.method public setItemCheckFilter(Lmiui/widget/EditableListView$ItemCheckFilter;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tM:Lmiui/widget/EditableListView$ItemCheckFilter;

    .line 267
    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 9

    .line 200
    iget-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_f

    .line 201
    :cond_e
    move v0, v1

    :goto_f
    sget-object v2, Lcom/miui/internal/widget/EditableListViewDelegate;->tx:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tC:Ljava/lang/Class;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v5, p1

    invoke-virtual {v2, v3, v4, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .registers 7

    .line 296
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tE:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    if-nez v0, :cond_b

    .line 297
    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tE:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    .line 300
    :cond_b
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tE:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->a(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 301
    sget-object p1, Lcom/miui/internal/widget/EditableListViewDelegate;->tA:Lmiui/reflect/Method;

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tC:Ljava/lang/Class;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tE:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method public setUpdateListener(Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;)V
    .registers 2

    .line 139
    if-eqz p1, :cond_4

    .line 140
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tK:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    .line 142
    :cond_4
    return-void
.end method

.method public updateCheckStatus(Landroid/view/ActionMode;)V
    .registers 8

    .line 350
    if-eqz p1, :cond_4c

    .line 351
    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tH:I

    .line 352
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 353
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_18

    .line 354
    sget v4, Lmiui/R$string;->select_item:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2d

    .line 356
    :cond_18
    sget v4, Lmiui/R$plurals;->items_selected:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 357
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    :goto_2d
    move-object v1, p1

    check-cast v1, Lmiui/view/EditActionMode;

    const v4, 0x102001a

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isAllItemsChecked()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 361
    sget v5, Lmiui/R$string;->deselect_all:I

    goto :goto_3e

    .line 362
    :cond_3c
    sget v5, Lmiui/R$string;->select_all:I

    .line 360
    :goto_3e
    invoke-interface {v1, v4, v5}, Lmiui/view/EditActionMode;->setButton(II)V

    .line 364
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    if-eqz v0, :cond_48

    goto :goto_49

    :cond_48
    move v2, v3

    :goto_49
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 366
    :cond_4c
    return-void
.end method

.method public updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .registers 7

    .line 331
    if-eqz p1, :cond_28

    .line 332
    sget-object p3, Lcom/miui/internal/widget/EditableListViewDelegate;->tz:Lmiui/reflect/Method;

    iget-object p4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tC:Ljava/lang/Class;

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->tB:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 333
    invoke-virtual {p3, p4, v0, v1}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseBooleanArray;

    .line 334
    invoke-virtual {p3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    .line 335
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->i(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object p3

    .line 336
    if-eqz p3, :cond_1f

    .line 337
    invoke-virtual {p3, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_28

    .line 338
    :cond_1f
    instance-of p3, p1, Landroid/widget/Checkable;

    if-eqz p3, :cond_28

    .line 339
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 342
    :cond_28
    :goto_28
    return-void
.end method
