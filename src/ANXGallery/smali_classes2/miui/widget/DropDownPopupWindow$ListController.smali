.class public Lmiui/widget/DropDownPopupWindow$ListController;
.super Lmiui/widget/DropDownPopupWindow$ViewContentController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListController"
.end annotation


# instance fields
.field private cn:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 233
    sget v0, Lcom/miui/internal/R$layout;->drop_down_popup_list:I

    invoke-direct {p0, p1, v0}, Lmiui/widget/DropDownPopupWindow$ListController;-><init>(Landroid/content/Context;I)V

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 237
    invoke-direct {p0, p1, p2}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Landroid/content/Context;I)V

    .line 238
    return-void
.end method

.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .registers 3

    .line 225
    sget v0, Lcom/miui/internal/R$layout;->drop_down_popup_list:I

    invoke-direct {p0, p1, v0}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Lmiui/widget/DropDownPopupWindow;I)V

    .line 226
    return-void
.end method

.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;I)V
    .registers 3

    .line 229
    invoke-direct {p0, p1, p2}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Lmiui/widget/DropDownPopupWindow;I)V

    .line 230
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 245
    invoke-virtual {p0}, Lmiui/widget/DropDownPopupWindow$ListController;->initContent()V

    .line 246
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$ListController;->cn:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onContentInit(Landroid/view/View;)V
    .registers 3

    .line 241
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$ListController;->cn:Landroid/widget/ListView;

    .line 242
    return-void
.end method
