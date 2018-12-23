.class final Lcom/miui/gallery/scanner/SaveToCloudUtil$1;
.super Ljava/lang/Object;
.source "SaveToCloudUtil.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/scanner/SaveToCloudUtil;->ensureLocation(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$1;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 906
    if-nez p1, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-object v7

    .line 909
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 910
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 911
    .local v0, "latitude":D
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 912
    .local v2, "longitude":D
    invoke-static {v0, v1, v8, v9}, Lcom/miui/gallery/util/MiscUtil;->doubleEquals(DD)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$1;->val$values:Landroid/content/ContentValues;

    const-string v5, "exifGPSLatitude"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 913
    iget-object v4, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$1;->val$values:Landroid/content/ContentValues;

    const-string v5, "exifGPSLatitude"

    .line 914
    invoke-static {v0, v1}, Lcom/miui/gallery/util/ExifUtil;->convertDoubleToLaLon(D)Ljava/lang/String;

    move-result-object v6

    .line 913
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :cond_2
    invoke-static {v2, v3, v8, v9}, Lcom/miui/gallery/util/MiscUtil;->doubleEquals(DD)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$1;->val$values:Landroid/content/ContentValues;

    const-string v5, "exifGPSLongitude"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 917
    iget-object v4, p0, Lcom/miui/gallery/scanner/SaveToCloudUtil$1;->val$values:Landroid/content/ContentValues;

    const-string v5, "exifGPSLongitude"

    .line 918
    invoke-static {v2, v3}, Lcom/miui/gallery/util/ExifUtil;->convertDoubleToLaLon(D)Ljava/lang/String;

    move-result-object v6

    .line 917
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
