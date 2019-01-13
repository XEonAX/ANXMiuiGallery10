.class Lmiui/widget/DynamicListView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView;->eH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Si:Lmiui/widget/DynamicListView;

.field final synthetic Ss:Landroid/view/ViewTreeObserver;

.field final synthetic St:J

.field final synthetic Su:I

.field final synthetic Sv:I


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;Landroid/view/ViewTreeObserver;JII)V
    .registers 7

    .line 666
    iput-object p1, p0, Lmiui/widget/DynamicListView$7;->Si:Lmiui/widget/DynamicListView;

    iput-object p2, p0, Lmiui/widget/DynamicListView$7;->Ss:Landroid/view/ViewTreeObserver;

    iput-wide p3, p0, Lmiui/widget/DynamicListView$7;->St:J

    iput p5, p0, Lmiui/widget/DynamicListView$7;->Su:I

    iput p6, p0, Lmiui/widget/DynamicListView$7;->Sv:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 7

    .line 668
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Ss:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 669
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Si:Lmiui/widget/DynamicListView;

    iget-wide v1, p0, Lmiui/widget/DynamicListView$7;->St:J

    invoke-virtual {v0, v1, v2}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 670
    const/4 v1, 0x1

    if-eqz v0, :cond_3a

    .line 671
    iget-object v2, p0, Lmiui/widget/DynamicListView$7;->Si:Lmiui/widget/DynamicListView;

    iget v3, p0, Lmiui/widget/DynamicListView$7;->Su:I

    invoke-static {v2, v3}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;I)I

    .line 672
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 673
    iget v3, p0, Lmiui/widget/DynamicListView$7;->Sv:I

    sub-int/2addr v3, v2

    .line 674
    int-to-float v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 675
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v1, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 676
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 677
    iget-object v2, p0, Lmiui/widget/DynamicListView$7;->Si:Lmiui/widget/DynamicListView;

    invoke-static {v2}, Lmiui/widget/DynamicListView;->l(Lmiui/widget/DynamicListView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 678
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 680
    :cond_3a
    return v1
.end method
