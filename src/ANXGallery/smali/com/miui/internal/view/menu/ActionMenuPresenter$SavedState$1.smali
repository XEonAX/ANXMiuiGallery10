.class Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Parcel;)Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;
    .registers 3

    .line 463
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 461
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState$1;->b(Landroid/os/Parcel;)Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public i(I)[Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;
    .registers 2

    .line 467
    new-array p1, p1, [Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 461
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState$1;->i(I)[Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;

    move-result-object p1

    return-object p1
.end method
