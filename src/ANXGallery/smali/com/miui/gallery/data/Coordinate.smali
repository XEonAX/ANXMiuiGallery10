.class Lcom/miui/gallery/data/Coordinate;
.super Ljava/lang/Object;
.source "Coordinate.java"


# instance fields
.field public latitude:F

.field public longitude:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/miui/gallery/data/Coordinate;->latitude:F

    .line 9
    iput p2, p0, Lcom/miui/gallery/data/Coordinate;->longitude:F

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "latitudeString"    # Ljava/lang/String;
    .param p2, "latitudeRef"    # Ljava/lang/String;
    .param p3, "longitudeString"    # Ljava/lang/String;
    .param p4, "longitudeRef"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1, p2}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/Coordinate;->latitude:F

    .line 15
    invoke-static {p3, p4}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/Coordinate;->longitude:F

    .line 16
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lcom/miui/gallery/data/Coordinate;->latitude:F

    iget v1, p0, Lcom/miui/gallery/data/Coordinate;->longitude:F

    invoke-static {v0, v1}, Lcom/miui/gallery/data/LocationUtil;->isValidateCoordidate(FF)Z

    move-result v0

    return v0
.end method
