.class Lcom/miui/gallery/util/PhotoPageOrientationHelper$SingletonHolder;
.super Ljava/lang/Object;
.source "PhotoPageOrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/PhotoPageOrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/miui/gallery/util/PhotoPageOrientationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;-><init>(Lcom/miui/gallery/util/PhotoPageOrientationHelper$1;)V

    sput-object v0, Lcom/miui/gallery/util/PhotoPageOrientationHelper$SingletonHolder;->INSTANCE:Lcom/miui/gallery/util/PhotoPageOrientationHelper;

    return-void
.end method
