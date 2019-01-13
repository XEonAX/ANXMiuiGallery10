.class synthetic Lmiui/util/async/Task$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic JZ:[I

.field static final synthetic Ka:[I

.field static final synthetic Kb:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 443
    invoke-static {}, Lmiui/util/async/Task$Delivery;->values()[Lmiui/util/async/Task$Delivery;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/util/async/Task$1;->Kb:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lmiui/util/async/Task$1;->Kb:[I

    sget-object v2, Lmiui/util/async/Task$Delivery;->Kc:Lmiui/util/async/Task$Delivery;

    invoke-virtual {v2}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Lmiui/util/async/Task$1;->Kb:[I

    sget-object v3, Lmiui/util/async/Task$Delivery;->Kf:Lmiui/util/async/Task$Delivery;

    invoke-virtual {v3}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    const/4 v2, 0x3

    :try_start_24
    sget-object v3, Lmiui/util/async/Task$1;->Kb:[I

    sget-object v4, Lmiui/util/async/Task$Delivery;->Kd:Lmiui/util/async/Task$Delivery;

    invoke-virtual {v4}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    const/4 v3, 0x4

    :try_start_31
    sget-object v4, Lmiui/util/async/Task$1;->Kb:[I

    sget-object v5, Lmiui/util/async/Task$Delivery;->Ke:Lmiui/util/async/Task$Delivery;

    invoke-virtual {v5}, Lmiui/util/async/Task$Delivery;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v4

    .line 328
    :goto_3d
    invoke-static {}, Lmiui/util/async/Task$Priority;->values()[Lmiui/util/async/Task$Priority;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/util/async/Task$1;->Ka:[I

    :try_start_46
    sget-object v4, Lmiui/util/async/Task$1;->Ka:[I

    sget-object v5, Lmiui/util/async/Task$Priority;->Low:Lmiui/util/async/Task$Priority;

    invoke-virtual {v5}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    move-exception v4

    :goto_52
    :try_start_52
    sget-object v4, Lmiui/util/async/Task$1;->Ka:[I

    sget-object v5, Lmiui/util/async/Task$Priority;->Normal:Lmiui/util/async/Task$Priority;

    invoke-virtual {v5}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    move-exception v4

    :goto_5e
    :try_start_5e
    sget-object v4, Lmiui/util/async/Task$1;->Ka:[I

    sget-object v5, Lmiui/util/async/Task$Priority;->High:Lmiui/util/async/Task$Priority;

    invoke-virtual {v5}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_68} :catch_69

    goto :goto_6a

    :catch_69
    move-exception v4

    :goto_6a
    :try_start_6a
    sget-object v4, Lmiui/util/async/Task$1;->Ka:[I

    sget-object v5, Lmiui/util/async/Task$Priority;->RealTime:Lmiui/util/async/Task$Priority;

    invoke-virtual {v5}, Lmiui/util/async/Task$Priority;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_74} :catch_75

    goto :goto_76

    :catch_75
    move-exception v4

    .line 228
    :goto_76
    invoke-static {}, Lmiui/util/async/Task$Status;->values()[Lmiui/util/async/Task$Status;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lmiui/util/async/Task$1;->JZ:[I

    :try_start_7f
    sget-object v4, Lmiui/util/async/Task$1;->JZ:[I

    sget-object v5, Lmiui/util/async/Task$Status;->Queued:Lmiui/util/async/Task$Status;

    invoke-virtual {v5}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_8a

    goto :goto_8b

    :catch_8a
    move-exception v0

    :goto_8b
    :try_start_8b
    sget-object v0, Lmiui/util/async/Task$1;->JZ:[I

    sget-object v4, Lmiui/util/async/Task$Status;->Canceled:Lmiui/util/async/Task$Status;

    invoke-virtual {v4}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_95} :catch_96

    goto :goto_97

    :catch_96
    move-exception v0

    :goto_97
    :try_start_97
    sget-object v0, Lmiui/util/async/Task$1;->JZ:[I

    sget-object v1, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    invoke-virtual {v1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a1} :catch_a2

    goto :goto_a3

    :catch_a2
    move-exception v0

    :goto_a3
    :try_start_a3
    sget-object v0, Lmiui/util/async/Task$1;->JZ:[I

    sget-object v1, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    invoke-virtual {v1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_ad} :catch_ae

    goto :goto_af

    :catch_ae
    move-exception v0

    :goto_af
    :try_start_af
    sget-object v0, Lmiui/util/async/Task$1;->JZ:[I

    sget-object v1, Lmiui/util/async/Task$Status;->New:Lmiui/util/async/Task$Status;

    invoke-virtual {v1}, Lmiui/util/async/Task$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_ba} :catch_bb

    goto :goto_bc

    :catch_bb
    move-exception v0

    :goto_bc
    return-void
.end method
