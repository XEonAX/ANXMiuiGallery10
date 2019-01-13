.class Lmiui/util/async/TaskInfoDeliverer$1;
.super Lmiui/util/Pools$Manager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/TaskInfoDeliverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/Pools$Manager<",
        "Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;)V
    .registers 2

    .line 102
    invoke-virtual {p1}, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->clear()V

    .line 103
    return-void
.end method

.method public synthetic createInstance()Ljava/lang/Object;
    .registers 2

    .line 94
    invoke-virtual {p0}, Lmiui/util/async/TaskInfoDeliverer$1;->dH()Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    move-result-object v0

    return-object v0
.end method

.method public dH()Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;
    .registers 2

    .line 97
    new-instance v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    invoke-direct {v0}, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;-><init>()V

    return-object v0
.end method

.method public synthetic onRelease(Ljava/lang/Object;)V
    .registers 2

    .line 94
    check-cast p1, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    invoke-virtual {p0, p1}, Lmiui/util/async/TaskInfoDeliverer$1;->a(Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;)V

    return-void
.end method
