.class Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 460
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState$1;

    invoke-direct {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState$1;-><init>()V

    sput-object v0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;->mY:I

    .line 448
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 457
    iget p2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$SavedState;->mY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    return-void
.end method
