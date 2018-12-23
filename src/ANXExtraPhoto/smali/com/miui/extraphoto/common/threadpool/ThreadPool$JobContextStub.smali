.class Lcom/miui/extraphoto/common/threadpool/ThreadPool$JobContextStub;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Lcom/miui/extraphoto/common/threadpool/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/common/threadpool/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobContextStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/extraphoto/common/threadpool/ThreadPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/extraphoto/common/threadpool/ThreadPool$1;

    .line 56
    invoke-direct {p0}, Lcom/miui/extraphoto/common/threadpool/ThreadPool$JobContextStub;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public setCancelListener(Lcom/miui/extraphoto/common/threadpool/ThreadPool$CancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/extraphoto/common/threadpool/ThreadPool$CancelListener;

    .line 64
    return-void
.end method

.method public setMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 68
    const/4 v0, 0x1

    return v0
.end method
