.class Lmiui/widget/NavigationLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NavigationLayout;
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
            "Lmiui/widget/NavigationLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field NM:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 997
    new-instance v0, Lmiui/widget/NavigationLayout$SavedState$1;

    invoke-direct {v0}, Lmiui/widget/NavigationLayout$SavedState$1;-><init>()V

    sput-object v0, Lmiui/widget/NavigationLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 1013
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1014
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lmiui/widget/NavigationLayout$SavedState;->NM:F

    .line 1015
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 1018
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1019
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Lmiui/widget/NavigationLayout$1;)V
    .registers 3

    .line 995
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1023
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1024
    iget p2, p0, Lmiui/widget/NavigationLayout$SavedState;->NM:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1025
    return-void
.end method
