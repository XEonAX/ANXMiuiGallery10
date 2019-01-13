.class public abstract Lcom/miui/internal/widget/ViewDragHelper$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 4

    .line 303
    const/4 p1, 0x0

    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    .line 318
    const/4 p1, 0x0

    return p1
.end method

.method public getOrderedChildIndex(I)I
    .registers 2

    .line 248
    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 2

    .line 259
    const/4 p1, 0x0

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 2

    .line 270
    const/4 p1, 0x0

    return p1
.end method

.method public onEdgeDragStarted(II)V
    .registers 3

    .line 239
    return-void
.end method

.method public onEdgeLock(I)Z
    .registers 2

    .line 225
    const/4 p1, 0x0

    return p1
.end method

.method public onEdgeTouched(II)V
    .registers 3

    .line 213
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 3

    .line 180
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 2

    .line 158
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    .line 169
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 4

    .line 200
    return-void
.end method

.method public abstract tryCaptureView(Landroid/view/View;I)Z
.end method
