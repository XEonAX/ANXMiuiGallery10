.class public abstract Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase$MotionAttributes;
.super Ljava/lang/Object;
.source "OverScrollBounceEffectDecoratorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/widget/recyclerview/overscroll/OverScrollBounceEffectDecoratorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "MotionAttributes"
.end annotation


# instance fields
.field public mAbsOffset:F

.field public mDeltaOffset:F

.field public mDir:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract init(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method
