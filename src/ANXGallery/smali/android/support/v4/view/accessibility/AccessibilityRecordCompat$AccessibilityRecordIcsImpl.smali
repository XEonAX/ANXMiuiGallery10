.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setFromIndex(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "fromIndex"    # I

    .prologue
    .line 468
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setFromIndex(Ljava/lang/Object;I)V

    .line 469
    return-void
.end method

.method public setItemCount(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "itemCount"    # I

    .prologue
    .line 478
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setItemCount(Ljava/lang/Object;I)V

    .line 479
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "scrollable"    # Z

    .prologue
    .line 508
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollable(Ljava/lang/Object;Z)V

    .line 509
    return-void
.end method

.method public setToIndex(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "toIndex"    # I

    .prologue
    .line 518
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setToIndex(Ljava/lang/Object;I)V

    .line 519
    return-void
.end method
