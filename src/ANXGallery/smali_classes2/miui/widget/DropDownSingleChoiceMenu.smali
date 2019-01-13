.class public Lmiui/widget/DropDownSingleChoiceMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/DropDownPopupWindow$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;
    }
.end annotation


# instance fields
.field private Ro:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Rp:I

.field private Rq:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

.field private Rr:Lmiui/widget/DropDownPopupWindow;

.field private mContext:Landroid/content/Context;

.field private oF:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic a(Lmiui/widget/DropDownSingleChoiceMenu;I)I
    .registers 2

    .line 24
    iput p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rp:I

    return p1
.end method

.method static synthetic a(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rq:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    return-object p0
.end method

.method static synthetic b(Lmiui/widget/DropDownSingleChoiceMenu;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lmiui/widget/DropDownSingleChoiceMenu;->eF()V

    return-void
.end method

.method private eF()V
    .registers 2

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rr:Lmiui/widget/DropDownPopupWindow;

    .line 115
    return-void
.end method

.method private m(Landroid/view/View;)V
    .registers 3

    .line 139
    new-instance v0, Lmiui/widget/DropDownSingleChoiceMenu$3;

    invoke-direct {v0, p0}, Lmiui/widget/DropDownSingleChoiceMenu$3;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 152
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 108
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rr:Lmiui/widget/DropDownPopupWindow;

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rr:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    .line 111
    :cond_9
    return-void
.end method

.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Ro:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItem()I
    .registers 2

    .line 49
    iget v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rp:I

    return v0
.end method

.method public onAniamtionUpdate(Landroid/view/View;F)V
    .registers 3

    .line 130
    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 123
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rq:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    if-eqz v0, :cond_9

    .line 124
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rq:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    invoke-interface {v0}, Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;->onDismiss()V

    .line 126
    :cond_9
    return-void
.end method

.method public onShow()V
    .registers 1

    .line 119
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->oF:Landroid/view/View;

    .line 54
    invoke-direct {p0, p1}, Lmiui/widget/DropDownSingleChoiceMenu;->m(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Ro:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setItems([Ljava/lang/String;)V
    .registers 2

    .line 41
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Ro:Ljava/util/List;

    .line 42
    return-void
.end method

.method public setOnMenuListener(Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rq:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    .line 63
    return-void
.end method

.method public setSelectedItem(I)V
    .registers 2

    .line 45
    iput p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rp:I

    .line 46
    return-void
.end method

.method public show()V
    .registers 6

    .line 66
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Ro:Ljava/util/List;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->oF:Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_5e

    .line 70
    :cond_9
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rr:Lmiui/widget/DropDownPopupWindow;

    if-nez v0, :cond_5d

    .line 71
    new-instance v0, Lmiui/widget/DropDownPopupWindow;

    iget-object v1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmiui/widget/DropDownPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rr:Lmiui/widget/DropDownPopupWindow;

    .line 72
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rr:Lmiui/widget/DropDownPopupWindow;

    new-instance v1, Lmiui/widget/DropDownSingleChoiceMenu$1;

    invoke-direct {v1, p0}, Lmiui/widget/DropDownSingleChoiceMenu$1;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownPopupWindow;->setContainerController(Lmiui/widget/DropDownPopupWindow$ContainerController;)V

    .line 85
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rr:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0, p0}, Lmiui/widget/DropDownPopupWindow;->setDropDownController(Lmiui/widget/DropDownPopupWindow$Controller;)V

    .line 86
    new-instance v0, Lmiui/widget/DropDownPopupWindow$ListController;

    iget-object v1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rr:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {v0, v1}, Lmiui/widget/DropDownPopupWindow$ListController;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    .line 88
    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow$ListController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$layout;->select_dropdown_popup_singlechoice:I

    iget-object v4, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Ro:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    new-instance v1, Lmiui/widget/DropDownSingleChoiceMenu$2;

    invoke-direct {v1, p0}, Lmiui/widget/DropDownSingleChoiceMenu$2;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 101
    iget v2, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rp:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 102
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rr:Lmiui/widget/DropDownPopupWindow;

    iget-object v1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->oF:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownPopupWindow;->setAnchor(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rr:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow;->show()V

    .line 105
    :cond_5d
    return-void

    .line 67
    :cond_5e
    :goto_5e
    return-void
.end method
