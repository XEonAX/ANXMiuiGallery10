.class Lcom/miui/gallery/editor/photo/core/imports/filter/FilterCategoryData;
.super Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;
.source "FilterCategoryData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/filter/FilterCategoryData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterCategoryData$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterCategoryData$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterCategoryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "category"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "highlightColor"    # I

    .prologue
    .line 22
    const/4 v0, 0x4

    invoke-direct {p0, v0, p2, p3}, Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;-><init>(SLjava/lang/String;I)V

    .line 23
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterCategoryData;->mCategory:I

    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;-><init>(Landroid/os/Parcel;)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterCategoryData;->mCategory:I

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getFilterDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterCategoryData;->mCategory:I

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterManager;->getFiltersByCategory(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/common/model/FilterCategory;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterCategoryData;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    return-void
.end method
