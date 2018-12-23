.class public Lcom/miui/gallery/util/PhotoPageOrientationHelper;
.super Ljava/lang/Object;
.source "PhotoPageOrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/PhotoPageOrientationHelper$SingletonHolder;
    }
.end annotation


# instance fields
.field private mLockStatus:I

.field private mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRotation:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mLockStatus:I

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mRotation:I

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/util/PhotoPageOrientationHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/util/PhotoPageOrientationHelper$1;

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/miui/gallery/util/PhotoPageOrientationHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/util/PhotoPageOrientationHelper;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/miui/gallery/util/PhotoPageOrientationHelper$SingletonHolder;->INSTANCE:Lcom/miui/gallery/util/PhotoPageOrientationHelper;

    return-object v0
.end method


# virtual methods
.method public addRef()V
    .locals 4

    .prologue
    .line 32
    iget-object v1, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 33
    .local v0, "refCount":I
    const-string v1, "PhotoPageOrientationHelper"

    const-string v2, "addRef, refCount: %d."

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public getLockStatus()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mLockStatus:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mRotation:I

    return v0
.end method

.method public lock(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mLockStatus:I

    .line 55
    iput p1, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mRotation:I

    .line 56
    return-void
.end method

.method public removeRef()V
    .locals 4

    .prologue
    .line 37
    iget-object v1, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 38
    .local v0, "refCount":I
    const-string v1, "PhotoPageOrientationHelper"

    const-string v2, "removeRef, refCount: %d."

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 64
    iget-object v1, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 65
    .local v0, "refCount":I
    if-gtz v0, :cond_0

    .line 66
    const-string v1, "PhotoPageOrientationHelper"

    const-string v2, "reset, refCount: %d."

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mLockStatus:I

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mRotation:I

    .line 69
    iget-object v1, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 71
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mLockStatus:I

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/util/PhotoPageOrientationHelper;->mRotation:I

    .line 61
    return-void
.end method
