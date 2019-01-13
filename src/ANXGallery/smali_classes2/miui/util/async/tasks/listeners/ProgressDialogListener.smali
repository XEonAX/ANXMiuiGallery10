.class public Lmiui/util/async/tasks/listeners/ProgressDialogListener;
.super Lmiui/util/async/tasks/listeners/BaseTaskListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;
    }
.end annotation


# static fields
.field static final LG:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lmiui/util/async/tasks/listeners/ProgressDialogListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field Dw:I

.field Dx:I

.field Dy:I

.field LD:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/util/async/Task<",
            "*>;>;"
        }
    .end annotation
.end field

.field LH:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

.field bn:Landroid/app/FragmentManager;

.field fh:I

.field mCancelable:Z

.field mMessage:Ljava/lang/CharSequence;

.field mTitle:Ljava/lang/CharSequence;

.field wK:I

.field wZ:I

.field xj:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LG:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;)V
    .registers 4

    .line 105
    invoke-direct {p0}, Lmiui/util/async/tasks/listeners/BaseTaskListener;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->wK:I

    .line 58
    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->Dw:I

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    .line 68
    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->Dx:I

    .line 73
    iput-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    .line 78
    iput-boolean v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    .line 83
    iput-boolean v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->xj:Z

    .line 88
    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->Dy:I

    .line 93
    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->wZ:I

    .line 98
    iput v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->fh:I

    .line 106
    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->bn:Landroid/app/FragmentManager;

    .line 107
    return-void
.end method


# virtual methods
.method public onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    .line 277
    iget-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LH:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    if-eqz p1, :cond_9

    .line 278
    iget-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LH:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    invoke-virtual {p1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->dismiss()V

    .line 280
    :cond_9
    sget-object p1, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LG:Ljava/util/LinkedHashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ProgressDialogListener@"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    .line 223
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LD:Ljava/lang/ref/WeakReference;

    .line 226
    :try_start_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ProgressDialogListener@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    sget-object v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LG:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v0, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    invoke-direct {v0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;-><init>()V

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LH:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    const-string v1, "ProgressDialogListener"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LH:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    invoke-virtual {v1, v0}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 232
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LH:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->bn:Landroid/app/FragmentManager;

    invoke-virtual {v0, v1, p1}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3e} :catch_3f

    .line 238
    goto :goto_4f

    .line 233
    :catch_3f
    move-exception p1

    .line 234
    const-string v0, "ProgressDialogListener"

    const-string v1, "cannot show dialog"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LH:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    .line 236
    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->bn:Landroid/app/FragmentManager;

    .line 237
    invoke-virtual {p2, p0}, Lmiui/util/async/Task;->removeListener(Lmiui/util/async/Task$Listener;)Lmiui/util/async/Task;

    .line 239
    :goto_4f
    return-void
.end method

.method public onProgress(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;II)V"
        }
    .end annotation

    .line 243
    iget-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->LH:Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;

    .line 244
    if-gez p3, :cond_14

    .line 245
    iget-boolean p2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->xj:Z

    if-nez p2, :cond_3e

    .line 246
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->setIndeterminate(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    .line 247
    if-eqz p1, :cond_3e

    .line 248
    iget-boolean p2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->xj:Z

    invoke-virtual {p1, p2}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setIndeterminate(Z)V

    goto :goto_3e

    .line 252
    :cond_14
    iget-boolean p2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->xj:Z

    if-eqz p2, :cond_23

    .line 253
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->setIndeterminate(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    .line 254
    if-eqz p1, :cond_23

    .line 255
    iget-boolean p2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->xj:Z

    invoke-virtual {p1, p2}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setIndeterminate(Z)V

    .line 259
    :cond_23
    iget p2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->Dy:I

    if-eq p2, p3, :cond_31

    .line 260
    invoke-virtual {p0, p3}, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->setMaxProgress(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;

    .line 261
    if-eqz p1, :cond_31

    .line 262
    iget p2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->Dy:I

    invoke-virtual {p1, p2}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->aa(I)V

    .line 266
    :cond_31
    iget p2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->fh:I

    if-eq p2, p4, :cond_3e

    .line 267
    iput p4, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->fh:I

    .line 268
    if-eqz p1, :cond_3e

    .line 269
    iget p2, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->fh:I

    invoke-virtual {p1, p2}, Lmiui/util/async/tasks/listeners/ProgressDialogListener$ProgressDialogFragment;->setProgress(I)V

    .line 273
    :cond_3e
    :goto_3e
    return-void
.end method

.method public setCancelable(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 2

    .line 181
    iput-boolean p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mCancelable:Z

    .line 182
    return-object p0
.end method

.method public setIndeterminate(Z)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 2

    .line 205
    iput-boolean p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->xj:Z

    .line 206
    return-object p0
.end method

.method public setMaxProgress(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 2

    .line 217
    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->Dy:I

    .line 218
    return-object p0
.end method

.method public setMessage(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 2

    .line 155
    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->Dx:I

    .line 156
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    .line 157
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 2

    .line 168
    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mMessage:Ljava/lang/CharSequence;

    .line 169
    const/4 p1, 0x0

    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->Dx:I

    .line 170
    return-object p0
.end method

.method public setProgressStyle(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 2

    .line 193
    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->wZ:I

    .line 194
    return-object p0
.end method

.method public setTheme(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 2

    .line 117
    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->wK:I

    .line 118
    return-object p0
.end method

.method public setTitle(I)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 2

    .line 129
    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->Dw:I

    .line 130
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    .line 131
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiui/util/async/tasks/listeners/ProgressDialogListener;
    .registers 2

    .line 142
    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->mTitle:Ljava/lang/CharSequence;

    .line 143
    const/4 p1, 0x0

    iput p1, p0, Lmiui/util/async/tasks/listeners/ProgressDialogListener;->Dw:I

    .line 144
    return-object p0
.end method
