.class Lmiui/widget/EditableListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/EditableListView;->eO()Lcom/miui/internal/widget/EditableListViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sx:Lmiui/widget/EditableListView;


# direct methods
.method constructor <init>(Lmiui/widget/EditableListView;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lmiui/widget/EditableListView$1;->Sx:Lmiui/widget/EditableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCheckStatus(Landroid/view/ActionMode;)V
    .registers 3

    .line 85
    iget-object v0, p0, Lmiui/widget/EditableListView$1;->Sx:Lmiui/widget/EditableListView;

    invoke-virtual {v0, p1}, Lmiui/widget/EditableListView;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 86
    return-void
.end method

.method public updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .registers 6

    .line 80
    iget-object v0, p0, Lmiui/widget/EditableListView$1;->Sx:Lmiui/widget/EditableListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/widget/EditableListView;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    .line 81
    return-void
.end method
