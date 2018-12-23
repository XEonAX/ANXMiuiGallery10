.class public Lcom/miui/gallery/movie/entity/ImageEntity;
.super Ljava/lang/Object;
.source "ImageEntity.java"


# instance fields
.field public image:Ljava/lang/String;

.field public sha1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;
    .param p2, "sha1"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/miui/gallery/movie/entity/ImageEntity;->image:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/miui/gallery/movie/entity/ImageEntity;->sha1:Ljava/lang/String;

    .line 12
    return-void
.end method
