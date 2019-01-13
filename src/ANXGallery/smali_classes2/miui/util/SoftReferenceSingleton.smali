.class public abstract Lmiui/util/SoftReferenceSingleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private JL:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/SoftReferenceSingleton;->JL:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method protected abstract createInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 22
    monitor-enter p0

    .line 24
    :try_start_1
    iget-object v0, p0, Lmiui/util/SoftReferenceSingleton;->JL:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/util/SoftReferenceSingleton;->JL:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    .line 25
    :cond_d
    invoke-virtual {p0}, Lmiui/util/SoftReferenceSingleton;->createInstance()Ljava/lang/Object;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiui/util/SoftReferenceSingleton;->JL:Ljava/lang/ref/SoftReference;

    .line 28
    :cond_18
    monitor-exit p0

    return-object v0

    .line 29
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method
