.class public Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;
.super Ljava/lang/Object;
.source "GalleryDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/GalleryDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TableColumn"
.end annotation


# instance fields
.field public isUnique:Z

.field public mColumnType:Ljava/lang/String;

.field public mDefault:Ljava/lang/String;

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "columnType"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->isUnique:Z

    .line 220
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mName:Ljava/lang/String;

    .line 221
    iput-object p2, p0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mColumnType:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "columnType"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->isUnique:Z

    .line 225
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mName:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mColumnType:Ljava/lang/String;

    .line 227
    iput-object p3, p0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mDefault:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "columnType"    # Ljava/lang/String;
    .param p3, "isUnique"    # Z

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->isUnique:Z

    .line 231
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mName:Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->mColumnType:Ljava/lang/String;

    .line 233
    iput-boolean p3, p0, Lcom/miui/gallery/provider/GalleryDBHelper$TableColumn;->isUnique:Z

    .line 234
    return-void
.end method
