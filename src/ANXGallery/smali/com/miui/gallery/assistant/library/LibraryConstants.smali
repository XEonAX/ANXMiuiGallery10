.class public Lcom/miui/gallery/assistant/library/LibraryConstants;
.super Ljava/lang/Object;
.source "LibraryConstants.java"


# static fields
.field public static final CURRENT_ABI:Ljava/lang/String;

.field public static final sAllLibraries:[Ljava/lang/Long;

.field public static final sImageFeatureSelectionLibraries:[Ljava/lang/Long;

.field public static final sPhotoMovieLibraries:[Ljava/lang/Long;

.field public static final sStoryLibraries:[Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3ec

    const-wide/16 v8, 0x3ea

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-array v0, v6, [Ljava/lang/Long;

    .line 14
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    .line 15
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/gallery/assistant/library/LibraryConstants;->sImageFeatureSelectionLibraries:[Ljava/lang/Long;

    .line 18
    new-array v0, v5, [Ljava/lang/Long;

    const-wide/16 v2, 0x3f1

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/assistant/library/LibraryConstants;->sPhotoMovieLibraries:[Ljava/lang/Long;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Long;

    .line 23
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    .line 24
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v5

    const-wide/16 v2, 0x3ed

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/gallery/assistant/library/LibraryConstants;->sStoryLibraries:[Ljava/lang/Long;

    .line 27
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryConstants;->getAllLibraries()[Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/assistant/library/LibraryConstants;->sAllLibraries:[Ljava/lang/Long;

    .line 35
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryConstants;->getCurrentAbi()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/assistant/library/LibraryConstants;->CURRENT_ABI:Ljava/lang/String;

    return-void
.end method

.method public static concat([Ljava/lang/Long;[Ljava/lang/Long;)[Ljava/lang/Long;
    .locals 4
    .param p0, "arr1"    # [Ljava/lang/Long;
    .param p1, "arr2"    # [Ljava/lang/Long;

    .prologue
    const/4 v3, 0x0

    .line 67
    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    .line 68
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    .line 69
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/Long;

    .line 70
    .local v0, "result":[Ljava/lang/Long;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .end local v0    # "result":[Ljava/lang/Long;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    .line 74
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 77
    goto :goto_0
.end method

.method public static getAllLibraries()[Ljava/lang/Long;
    .locals 2

    .prologue
    .line 38
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Long;

    .line 39
    .local v0, "allLibraries":[Ljava/lang/Long;
    invoke-static {}, Lcom/miui/gallery/util/PhotoMovieEntranceUtils;->isPhotoMovieAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lcom/miui/gallery/assistant/library/LibraryConstants;->sPhotoMovieLibraries:[Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/miui/gallery/assistant/library/LibraryConstants;->concat([Ljava/lang/Long;[Ljava/lang/Long;)[Ljava/lang/Long;

    move-result-object v0

    .line 42
    :cond_0
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->isStoryFunctionEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    sget-object v1, Lcom/miui/gallery/assistant/library/LibraryConstants;->sStoryLibraries:[Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/miui/gallery/assistant/library/LibraryConstants;->concat([Ljava/lang/Long;[Ljava/lang/Long;)[Ljava/lang/Long;

    move-result-object v0

    .line 48
    :cond_1
    :goto_0
    return-object v0

    .line 44
    :cond_2
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->isImageFeatureSelectionEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    sget-object v1, Lcom/miui/gallery/assistant/library/LibraryConstants;->sImageFeatureSelectionLibraries:[Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/miui/gallery/assistant/library/LibraryConstants;->concat([Ljava/lang/Long;[Ljava/lang/Long;)[Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCurrentAbi()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 53
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 54
    .local v1, "supportAbis":[Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 55
    .local v0, "support64Abis":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 56
    aget-object v2, v0, v4

    .line 61
    .end local v0    # "support64Abis":[Ljava/lang/String;
    .end local v1    # "supportAbis":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 58
    .restart local v0    # "support64Abis":[Ljava/lang/String;
    .restart local v1    # "supportAbis":[Ljava/lang/String;
    :cond_0
    aget-object v2, v1, v4

    goto :goto_0

    .line 61
    .end local v0    # "support64Abis":[Ljava/lang/String;
    .end local v1    # "supportAbis":[Ljava/lang/String;
    :cond_1
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_0
.end method
