.class Lcom/miui/gallery/provider/cache/MediaManager$SingletonHolder;
.super Ljava/lang/Object;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/miui/gallery/provider/cache/MediaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/provider/cache/MediaManager;-><init>(Lcom/miui/gallery/provider/cache/MediaManager$1;)V

    sput-object v0, Lcom/miui/gallery/provider/cache/MediaManager$SingletonHolder;->INSTANCE:Lcom/miui/gallery/provider/cache/MediaManager;

    return-void
.end method
