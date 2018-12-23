.class public Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;
.super Lcom/miui/gallery/editor/photo/core/common/model/FilterData;
.source "FilterItem.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/imports/filter/Renderable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private static FILTER_ITEM_PRIORITY:S


# instance fields
.field private mDefault:I

.field private mIsFilePath:Z

.field private mTablePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0xa

    sput-short v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->FILTER_ITEM_PRIORITY:S

    .line 151
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;-><init>(Landroid/os/Parcel;)V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->mTablePath:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->mDefault:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->mIsFilePath:Z

    .line 149
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "icon"    # I

    .prologue
    .line 81
    sget-short v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->FILTER_ITEM_PRIORITY:S

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;-><init>(SLjava/lang/String;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "filterPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "progress"    # I

    .prologue
    .line 85
    sget-short v0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->FILTER_ITEM_PRIORITY:S

    invoke-direct {p0, v0, p2, p3}, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;-><init>(SLjava/lang/String;I)V

    .line 86
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->mTablePath:Ljava/lang/String;

    .line 87
    iput p4, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->mDefault:I

    .line 88
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->getDefault()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->progress:I

    .line 89
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getDefault()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->mDefault:I

    return v0
.end method

.method public instantiate()Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->mTablePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/EmptyGPUImageFilter;-><init>()V

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 120
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->mIsFilePath:Z

    if-eqz v1, :cond_2

    .line 121
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PathLUTFilter;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->mTablePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/PathLUTFilter;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->isDegreeAdjustSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->progress:I

    invoke-virtual {v0, v1}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->setDegree(I)V

    goto :goto_0

    .line 123
    .end local v0    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    :cond_2
    new-instance v0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->mTablePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;-><init>(Ljava/lang/String;)V

    .restart local v0    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    goto :goto_1
.end method

.method public isNone()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->mTablePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/common/model/FilterData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->mTablePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->mDefault:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/FilterItem;->mIsFilePath:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 142
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
