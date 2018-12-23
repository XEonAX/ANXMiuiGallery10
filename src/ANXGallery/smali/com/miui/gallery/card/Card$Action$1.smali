.class final Lcom/miui/gallery/card/Card$Action$1;
.super Ljava/lang/Object;
.source "Card.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/Card$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/miui/gallery/card/Card$Action;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/card/Card$Action;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 877
    new-instance v0, Lcom/miui/gallery/card/Card$Action;

    invoke-direct {v0, p1}, Lcom/miui/gallery/card/Card$Action;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 875
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/Card$Action$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/card/Card$Action;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/gallery/card/Card$Action;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 881
    new-array v0, p1, [Lcom/miui/gallery/card/Card$Action;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 875
    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/Card$Action$1;->newArray(I)[Lcom/miui/gallery/card/Card$Action;

    move-result-object v0

    return-object v0
.end method
