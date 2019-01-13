.class public Lmiui/util/async/tasks/ResourceBitmapTask;
.super Lmiui/util/async/Task;
.source "SourceFile"

# interfaces
.implements Lmiui/util/async/Cacheable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/Task<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lmiui/util/async/Cacheable;"
    }
.end annotation


# instance fields
.field private Ln:Landroid/graphics/BitmapFactory$Options;

.field private Lx:I

.field private hE:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/util/async/tasks/ResourceBitmapTask;-><init>(ILandroid/graphics/BitmapFactory$Options;)V

    .line 42
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/BitmapFactory$Options;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    .line 51
    iput p1, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->Lx:I

    .line 52
    iput-object p2, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->Ln:Landroid/graphics/BitmapFactory$Options;

    .line 53
    return-void
.end method


# virtual methods
.method public doLoad()Landroid/graphics/Bitmap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    sget-object v0, Lmiui/util/async/tasks/FileBitmapTask;->Lo:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 71
    :try_start_5
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->Lx:I

    iget-object v2, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->Ln:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1b

    .line 74
    sget-object v1, Lmiui/util/async/tasks/FileBitmapTask;->Lo:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 71
    return-object v0

    .line 74
    :catchall_1b
    move-exception v0

    sget-object v1, Lmiui/util/async/tasks/FileBitmapTask;->Lo:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lmiui/util/async/tasks/ResourceBitmapTask;->doLoad()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .registers 2

    .line 81
    invoke-virtual {p0}, Lmiui/util/async/tasks/ResourceBitmapTask;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    .line 57
    iget-object v0, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->hE:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resource_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->Lx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->hE:Ljava/lang/String;

    .line 60
    :cond_19
    iget-object v0, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->hE:Ljava/lang/String;

    return-object v0
.end method

.method public sizeOf(Ljava/lang/Object;)I
    .registers 3

    .line 86
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 87
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1

    .line 89
    :cond_b
    const/4 p1, 0x0

    return p1
.end method
