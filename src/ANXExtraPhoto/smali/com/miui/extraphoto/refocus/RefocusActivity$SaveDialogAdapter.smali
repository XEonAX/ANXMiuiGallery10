.class Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "RefocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/RefocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveDialogAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;


# direct methods
.method private constructor <init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/extraphoto/refocus/RefocusActivity;Lcom/miui/extraphoto/refocus/RefocusActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/extraphoto/refocus/RefocusActivity;
    .param p2, "x1"    # Lcom/miui/extraphoto/refocus/RefocusActivity$1;

    .line 639
    invoke-direct {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 643
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 648
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 653
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 659
    if-nez p2, :cond_0

    .line 660
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;->this$0:Lcom/miui/extraphoto/refocus/RefocusActivity;

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 661
    const v0, 0x7f060011

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 662
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 664
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 666
    .restart local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    if-nez p1, :cond_1

    .line 667
    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 668
    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter$1;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter$1;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 676
    :cond_1
    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 677
    new-instance v1, Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter$2;

    invoke-direct {v1, p0}, Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter$2;-><init>(Lcom/miui/extraphoto/refocus/RefocusActivity$SaveDialogAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    :goto_1
    return-object p2
.end method
