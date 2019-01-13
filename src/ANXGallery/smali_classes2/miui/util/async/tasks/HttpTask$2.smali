.class synthetic Lmiui/util/async/tasks/HttpTask$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/tasks/HttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic Lv:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 135
    invoke-static {}, Lmiui/util/async/tasks/HttpTask$Method;->values()[Lmiui/util/async/tasks/HttpTask$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/util/async/tasks/HttpTask$2;->Lv:[I

    :try_start_9
    sget-object v0, Lmiui/util/async/tasks/HttpTask$2;->Lv:[I

    sget-object v1, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    invoke-virtual {v1}, Lmiui/util/async/tasks/HttpTask$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lmiui/util/async/tasks/HttpTask$2;->Lv:[I

    sget-object v1, Lmiui/util/async/tasks/HttpTask$Method;->Post:Lmiui/util/async/tasks/HttpTask$Method;

    invoke-virtual {v1}, Lmiui/util/async/tasks/HttpTask$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    return-void
.end method
