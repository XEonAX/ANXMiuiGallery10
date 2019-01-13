.class public Lmiui/util/async/tasks/ContentResolverDeleteTask;
.super Lmiui/util/async/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/Task<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final Lb:Ljava/lang/String;

.field private final Lc:[Ljava/lang/String;

.field private hE:Ljava/lang/String;

.field private final zO:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    .line 48
    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->zO:Landroid/net/Uri;

    .line 49
    iput-object p2, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->Lb:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->Lc:[Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public doLoad()Ljava/lang/Integer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->zO:Landroid/net/Uri;

    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->Lb:Ljava/lang/String;

    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->Lc:[Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverDeleteTask;->doLoad()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .line 55
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->hE:Ljava/lang/String;

    if-nez v0, :cond_62

    .line 56
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->Lb:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 57
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->zO:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->hE:Ljava/lang/String;

    goto :goto_62

    .line 59
    :cond_11
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->zO:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->Lc:[Ljava/lang/String;

    if-eqz v1, :cond_50

    .line 63
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->Lc:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/4 v1, 0x1

    :goto_37
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->Lc:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4b

    .line 66
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->Lc:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 69
    :cond_4b
    const-string v1, "]@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_50
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->Lb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->hE:Ljava/lang/String;

    .line 73
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 76
    :cond_62
    :goto_62
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverDeleteTask;->hE:Ljava/lang/String;

    return-object v0
.end method
