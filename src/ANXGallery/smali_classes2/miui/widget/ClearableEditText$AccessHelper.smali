.class Lmiui/widget/ClearableEditText$AccessHelper;
.super Lcom/miui/internal/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ClearableEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessHelper"
.end annotation


# static fields
.field private static final PX:I


# instance fields
.field final synthetic PV:Lmiui/widget/ClearableEditText;

.field private final PZ:Landroid/graphics/Rect;

.field private final Qa:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmiui/widget/ClearableEditText;Landroid/view/View;)V
    .registers 3

    .line 204
    iput-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    .line 205
    invoke-direct {p0, p2}, Lcom/miui/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 201
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PZ:Landroid/graphics/Rect;

    .line 206
    iput-object p2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->Qa:Landroid/view/View;

    .line 207
    return-void
.end method

.method private b(Landroid/graphics/Rect;)V
    .registers 5

    .line 273
    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->Qa:Landroid/view/View;

    iget-object v1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PZ:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 274
    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-static {v0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 275
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-virtual {v1}, Lmiui/widget/ClearableEditText;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-static {v2}, Lmiui/widget/ClearableEditText;->d(Lmiui/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-virtual {v2}, Lmiui/widget/ClearableEditText;->getPaddingLeft()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4e

    .line 277
    :cond_2f
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-virtual {v1}, Lmiui/widget/ClearableEditText;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-virtual {v2}, Lmiui/widget/ClearableEditText;->getPaddingRight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-static {v2}, Lmiui/widget/ClearableEditText;->d(Lmiui/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 279
    :goto_4e
    return-void
.end method

.method private d(FF)Z
    .registers 6

    .line 282
    iget-object p2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-static {p2}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_25

    .line 283
    iget-object p2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-static {p2}, Lmiui/widget/ClearableEditText;->d(Lmiui/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object v2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-virtual {v2}, Lmiui/widget/ClearableEditText;->getPaddingLeft()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_24

    move v0, v1

    nop

    :cond_24
    return v0

    .line 285
    :cond_25
    iget-object p2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-virtual {p2}, Lmiui/widget/ClearableEditText;->getWidth()I

    move-result p2

    iget-object v2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-virtual {v2}, Lmiui/widget/ClearableEditText;->getPaddingRight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    iget-object v2, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-static {v2}, Lmiui/widget/ClearableEditText;->d(Lmiui/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_46

    move v0, v1

    nop

    :cond_46
    return v0
.end method

.method private getDescription()Ljava/lang/CharSequence;
    .registers 3

    .line 269
    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0}, Lmiui/widget/ClearableEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->clearable_edittext_clear_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .registers 4

    .line 211
    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-static {v0}, Lmiui/widget/ClearableEditText;->a(Lmiui/widget/ClearableEditText;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1, p2}, Lmiui/widget/ClearableEditText$AccessHelper;->d(FF)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 212
    const/4 p1, 0x0

    return p1

    .line 214
    :cond_10
    const/high16 p1, -0x80000000

    return p1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .registers 3

    .line 234
    iget-object v0, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-static {v0}, Lmiui/widget/ClearableEditText;->a(Lmiui/widget/ClearableEditText;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 235
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_10
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5

    .line 257
    const/4 p3, 0x0

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_6

    .line 258
    return p3

    .line 260
    :cond_6
    const/16 p1, 0x10

    if-eq p2, p1, :cond_b

    .line 265
    return p3

    .line 262
    :cond_b
    iget-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    invoke-static {p1}, Lmiui/widget/ClearableEditText;->c(Lmiui/widget/ClearableEditText;)V

    .line 263
    const/4 p1, 0x1

    return p1
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 219
    invoke-super {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 220
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x800

    if-ne p1, v0, :cond_23

    iget-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PV:Lmiui/widget/ClearableEditText;

    .line 221
    invoke-static {p1}, Lmiui/widget/ClearableEditText;->a(Lmiui/widget/ClearableEditText;)Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->Qa:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 222
    iget-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->Qa:Landroid/view/View;

    const v0, 0x8000

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 224
    :cond_23
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 241
    invoke-direct {p0}, Lmiui/widget/ClearableEditText$AccessHelper;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method protected onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 228
    invoke-super {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 229
    const-class v0, Lmiui/widget/ClearableEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 246
    invoke-direct {p0}, Lmiui/widget/ClearableEditText$AccessHelper;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 247
    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 248
    const-class p1, Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 249
    iget-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PZ:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lmiui/widget/ClearableEditText$AccessHelper;->b(Landroid/graphics/Rect;)V

    .line 250
    iget-object p1, p0, Lmiui/widget/ClearableEditText$AccessHelper;->PZ:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 251
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 252
    return-void
.end method
