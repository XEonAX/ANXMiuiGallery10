.class Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->a(Landroid/widget/ListView;I)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jO:Landroid/widget/ListView;

.field final synthetic jP:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

.field private final jQ:I

.field private final jR:I

.field final synthetic jS:I


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;I)V
    .registers 7

    .line 239
    iput-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->jP:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p5, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->jO:Landroid/widget/ListView;

    iput p6, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->jS:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 246
    invoke-virtual {p0}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 247
    iget-object p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->jP:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p2, p2, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->jQ:I

    .line 248
    iget-object p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->jP:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p2, p2, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->jR:I

    .line 249
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5

    .line 253
    const p2, 0x1020014

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    .line 255
    iget p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->jQ:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->jP:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-boolean p1, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mEditMode:Z

    if-nez p1, :cond_2c

    .line 257
    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->jO:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iget v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->jR:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    invoke-virtual {p1, p2, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 259
    :cond_2c
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 263
    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->jP:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p1, p1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;->jS:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
