.class Lcom/miui/gallery/data/LocationManager$2;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/LocationManager;->loadLocationAsync(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/LocationManager;

.field final synthetic val$cloudId:J


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/LocationManager;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/data/LocationManager;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/miui/gallery/data/LocationManager$2;->this$0:Lcom/miui/gallery/data/LocationManager;

    iput-wide p2, p0, Lcom/miui/gallery/data/LocationManager$2;->val$cloudId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/LocationManager$2;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/gallery/data/LocationManager$2;->this$0:Lcom/miui/gallery/data/LocationManager;

    iget-wide v2, p0, Lcom/miui/gallery/data/LocationManager$2;->val$cloudId:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/data/LocationManager;->loadLocation(J)V

    .line 223
    const/4 v0, 0x0

    return-object v0
.end method
