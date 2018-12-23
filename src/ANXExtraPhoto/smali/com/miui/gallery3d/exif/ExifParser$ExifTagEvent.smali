.class Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery3d/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field isRequested:Z

.field tag:Lcom/miui/gallery3d/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/miui/gallery3d/exif/ExifTag;Z)V
    .locals 0
    .param p1, "tag"    # Lcom/miui/gallery3d/exif/ExifTag;
    .param p2, "isRequireByUser"    # Z

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcom/miui/gallery3d/exif/ExifTag;

    .line 907
    iput-boolean p2, p0, Lcom/miui/gallery3d/exif/ExifParser$ExifTagEvent;->isRequested:Z

    .line 908
    return-void
.end method
