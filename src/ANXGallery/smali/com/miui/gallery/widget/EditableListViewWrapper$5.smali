.class Lcom/miui/gallery/widget/EditableListViewWrapper$5;
.super Landroid/database/DataSetObserver;
.source "EditableListViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/EditableListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/EditableListViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/EditableListViewWrapper;

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$5;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1311
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 1312
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$5;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->access$2300(Lcom/miui/gallery/widget/EditableListViewWrapper;)V

    .line 1313
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1317
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 1318
    iget-object v0, p0, Lcom/miui/gallery/widget/EditableListViewWrapper$5;->this$0:Lcom/miui/gallery/widget/EditableListViewWrapper;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/EditableListViewWrapper;->handleDataInvalid()V

    .line 1319
    return-void
.end method
