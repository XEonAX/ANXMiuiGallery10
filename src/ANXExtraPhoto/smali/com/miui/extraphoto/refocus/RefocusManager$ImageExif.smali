.class Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;
.super Ljava/lang/Object;
.source "RefocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/RefocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageExif"
.end annotation


# instance fields
.field public bokehSize:I

.field public filter:I

.field public focusX:I

.field public focusY:I

.field public isSoftBokeh:Z

.field public mirror:Z

.field public orientation:I

.field public relightingType:I

.field public waterMark:Landroid/graphics/Bitmap;

.field public waterMarkTime:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->orientation:I

    .line 412
    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->focusX:I

    .line 413
    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->focusY:I

    .line 414
    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->bokehSize:I

    .line 419
    iput v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->filter:I

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/extraphoto/refocus/RefocusManager$ImageExif;->mirror:Z

    return-void
.end method
