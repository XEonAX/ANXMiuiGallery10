.class Lmiui/util/async/TaskInfoDeliverer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/concurrent/Queue$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/async/TaskInfoDeliverer;->a(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/util/concurrent/Queue$Predicate<",
        "Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Kn:Lmiui/util/async/TaskInfoDeliverer;

.field final synthetic Ko:Lmiui/util/async/Task;


# direct methods
.method constructor <init>(Lmiui/util/async/TaskInfoDeliverer;Lmiui/util/async/Task;)V
    .registers 3

    .line 192
    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer$3;->Kn:Lmiui/util/async/TaskInfoDeliverer;

    iput-object p2, p0, Lmiui/util/async/TaskInfoDeliverer$3;->Ko:Lmiui/util/async/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Z
    .registers 2

    .line 192
    check-cast p1, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    invoke-virtual {p0, p1}, Lmiui/util/async/TaskInfoDeliverer$3;->b(Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;)Z

    move-result p1

    return p1
.end method

.method public b(Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;)Z
    .registers 3

    .line 195
    if-eqz p1, :cond_a

    iget-object p1, p1, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->Kq:Lmiui/util/async/Task;

    iget-object v0, p0, Lmiui/util/async/TaskInfoDeliverer$3;->Ko:Lmiui/util/async/Task;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
