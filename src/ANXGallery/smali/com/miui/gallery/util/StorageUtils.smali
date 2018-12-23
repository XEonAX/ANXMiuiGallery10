.class public Lcom/miui/gallery/util/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field public static final KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

.field private static sPrimaryStoragePath:Ljava/lang/String;

.field private static sSecondaryStoragePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-string v0, "GallerySDCardRoot"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/StorageUtils;->KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

    return-void
.end method

.method public static canWrite(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "absoluteFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 369
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/DocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->needRequestExternalSDCardPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canWriteThroughFileSystem(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "absoluteFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 709
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 733
    :cond_0
    :goto_0
    return v5

    .line 712
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/gallery/util/StorageUtils;->getVolumePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 713
    .local v4, "volumePath":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 716
    new-instance v3, Ljava/io/File;

    const-string v7, ".fe_tmp"

    invoke-direct {v3, v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    .local v3, "testFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 719
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v2, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 725
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 727
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move v5, v6

    .line 730
    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "StorageUtils"

    const-string v7, "Failed to delete test file [%s], %s"

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 721
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 722
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "StorageUtils"

    const-string v7, "Cannot write to file volume [%s], %s"

    invoke-static {v6, v7, v4, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 724
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 725
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 727
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 728
    :catch_2
    move-exception v0

    .line 729
    const-string v6, "StorageUtils"

    const-string v7, "Failed to delete test file [%s], %s"

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 724
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 725
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 727
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 730
    :cond_3
    :goto_2
    throw v5

    .line 728
    :catch_3
    move-exception v0

    .line 729
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "StorageUtils"

    const-string v7, "Failed to delete test file [%s], %s"

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static ensureCommonRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 624
    sget-object v0, Lcom/miui/gallery/util/StorageUtils;->KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    const-string p0, ""

    .line 627
    .end local p0    # "relativePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "relativePath":Ljava/lang/String;
    :cond_1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0
.end method

.method public static getAbsolutePath(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 644
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 650
    :goto_0
    return-object v0

    .line 647
    :cond_0
    if-nez p0, :cond_1

    .line 648
    const/4 v0, 0x0

    goto :goto_0

    .line 650
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->ensureCommonRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAvailableBytes(Ljava/lang/String;)J
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 689
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 691
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 692
    .local v1, "statFs":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 697
    .end local v1    # "statFs":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StorageUtils"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Failed to get available bytes [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getCacheDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    const-string v0, "MIUI/Gallery/cloud/.cache"

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getPathInPrimaryStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCreativeDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    const-string v0, "DCIM/Creative"

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorageForUnadapted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilePathUnder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "rootFolder"    # Ljava/lang/String;
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 664
    if-nez p0, :cond_0

    .line 665
    const/4 v0, 0x0

    .line 667
    .end local p1    # "relativePath":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local p1    # "relativePath":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .end local p1    # "relativePath":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMicroThumbnailDirectories(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 519
    const-string v0, "MIUI/Gallery/cloud/.microthumbnailFile"

    invoke-static {p0, v0}, Lcom/miui/gallery/util/StorageUtils;->getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMicroThumbnailTempDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getVolumes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 403
    .local v2, "volumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    .local v0, "mountedVolumes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/storage/StorageInfo;

    .line 405
    .local v1, "volume":Lcom/android/internal/storage/StorageInfo;
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->isMounted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 406
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    .end local v1    # "volume":Lcom/android/internal/storage/StorageInfo;
    :cond_1
    return-object v0
.end method

.method public static getNetworkCacheDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "cache":Ljava/io/File;
    const-string v1, "mounted"

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 569
    :cond_0
    if-nez v0, :cond_1

    .line 570
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 572
    :cond_1
    return-object v0
.end method

.method public static getOriginTempDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    const-string v0, "MIUI/Gallery/cloud/.cache/.downloadFile"

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorageForUnadapted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathForDisplay(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 479
    if-eqz p0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 481
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getVolumes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 482
    .local v2, "volumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/storage/StorageInfo;

    .line 483
    .local v1, "volume":Lcom/android/internal/storage/StorageInfo;
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/miui/gallery/util/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 484
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 486
    const v3, 0x7f0e0492

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 494
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 495
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    .line 496
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 495
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 502
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "volume":Lcom/android/internal/storage/StorageInfo;
    .end local v2    # "volumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    .end local p1    # "filePath":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p1

    .line 487
    .restart local v0    # "description":Ljava/lang/String;
    .restart local v1    # "volume":Lcom/android/internal/storage/StorageInfo;
    .restart local v2    # "volumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    .restart local p1    # "filePath":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->isSd()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 488
    const v3, 0x7f0e0493

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 489
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->isXspace()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 490
    const v3, 0x7f0e0495

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 491
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/storage/StorageInfo;->isUsb()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    const v3, 0x7f0e0494

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 502
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "volume":Lcom/android/internal/storage/StorageInfo;
    .end local v2    # "volumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    :cond_6
    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_1
.end method

.method public static getPathInPrimaryStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPrimaryStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/gallery/util/StorageUtils;->getFilePathUnder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->ensureCommonRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/StorageUtils;->getFilePathUnder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathInSecondaryStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/gallery/util/StorageUtils;->getFilePathUnder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathsInExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 419
    if-nez p0, :cond_1

    .line 420
    const/4 v2, 0x0

    .line 428
    :cond_0
    return-object v2

    .line 422
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 423
    .local v1, "mountedVolumes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 424
    .local v3, "size":I
    new-array v2, v3, [Ljava/lang/String;

    .line 425
    .local v2, "paths":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 426
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/miui/gallery/util/StorageUtils;->getFilePathUnder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getPrimaryStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/miui/gallery/util/StorageUtils;->sPrimaryStoragePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Storage;->getPrimaryStorageRoot()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/StorageUtils;->sPrimaryStoragePath:Ljava/lang/String;

    .line 264
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/StorageUtils;->sPrimaryStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPriorMicroThumbnailDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    const-string v0, "MIUI/Gallery/cloud/.microthumbnailFile"

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPriorMicroThumbnailPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 534
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPriorMicroThumbnailDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/gallery/util/StorageUtils;->getFilePathUnder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPriorStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->isUsingSecondaryStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPrimaryStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 593
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object p1, v4

    .line 615
    .end local p1    # "absolutePath":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 596
    .restart local p1    # "absolutePath":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 599
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 600
    .local v3, "volumePath":Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/miui/gallery/util/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 601
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 602
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "relativePath":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    .line 604
    .local v2, "start":I
    :goto_1
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 605
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 606
    .local v0, "end":I
    :goto_2
    if-ge v2, v0, :cond_6

    .line 607
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 603
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 605
    .restart local v2    # "start":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    .line 612
    .end local v1    # "relativePath":Ljava/lang/String;
    .end local v2    # "start":I
    :cond_6
    sget-object p1, Lcom/miui/gallery/util/StorageUtils;->KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

    goto :goto_0

    .end local v3    # "volumePath":Ljava/lang/String;
    :cond_7
    move-object p1, v4

    .line 615
    goto :goto_0
.end method

.method public static getSafePathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSafePriorStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/gallery/util/StorageUtils;->getFilePathUnder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSafePathInPriorStorageForUnadapted(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 245
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getPathInPrimaryStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getPathInPriorStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSafePriorStoragePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 188
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->isUsingSecondaryStorage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-static {v0}, Lcom/miui/gallery/util/DocumentProviderUtils;->needRequestExternalSDCardPermission(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "secondaryStorage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    .end local v1    # "secondaryStorage":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPrimaryStoragePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSecondaryStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/miui/gallery/util/StorageUtils;->sSecondaryStoragePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Storage;->getExternalSDCardRoot()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/StorageUtils;->sSecondaryStoragePath:Ljava/lang/String;

    .line 312
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/StorageUtils;->sSecondaryStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getThumbnailTempDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    const-string v0, "MIUI/Gallery/cloud/.cache/.downloadThumbnail"

    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorageForUnadapted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTotalBytes(Ljava/lang/String;)J
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 674
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 676
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 677
    .local v1, "statFs":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 682
    .end local v1    # "statFs":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StorageUtils"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Failed to get total bytes [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getVolumePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 437
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 445
    :goto_0
    return-object v0

    .line 440
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 441
    .local v0, "externalVolumePath":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/miui/gallery/util/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "externalVolumePath":Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .line 445
    goto :goto_0
.end method

.method static getVolumes(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/storage/StorageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {}, Lcom/android/internal/storage/StorageManager;->getInstance()Lcom/android/internal/storage/StorageManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/storage/StorageManager;->getStorageInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 394
    .local v1, "volumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getXSpaceStorageInfo(Landroid/content/Context;)Lcom/android/internal/storage/StorageInfo;

    move-result-object v0

    .line 395
    .local v0, "info":Lcom/android/internal/storage/StorageInfo;
    if-eqz v0, :cond_0

    .line 396
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_0
    return-object v1
.end method

.method private static getXSpaceStorageInfo(Landroid/content/Context;)Lcom/android/internal/storage/StorageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 739
    invoke-static {p0}, Lcom/miui/xspace/XSpaceHelper;->isXSpaceEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 740
    invoke-static {}, Lcom/miui/xspace/XSpaceHelper;->getXSpacePath()Ljava/io/File;

    move-result-object v0

    .line 741
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    new-instance v1, Lcom/android/internal/storage/StorageInfo;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/storage/StorageInfo;-><init>(Ljava/lang/String;)V

    .line 743
    .local v1, "info":Lcom/android/internal/storage/StorageInfo;
    invoke-virtual {v1, v3}, Lcom/android/internal/storage/StorageInfo;->setXspace(Z)V

    .line 744
    invoke-virtual {v1, v3}, Lcom/android/internal/storage/StorageInfo;->setMounted(Z)V

    .line 748
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "info":Lcom/android/internal/storage/StorageInfo;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasExternalSDCard(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    invoke-static {}, Lcom/android/internal/storage/StorageManager;->getInstance()Lcom/android/internal/storage/StorageManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/storage/StorageManager;->getStorageInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 345
    .local v1, "volumes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/storage/StorageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/storage/StorageInfo;

    .line 346
    .local v0, "volume":Lcom/android/internal/storage/StorageInfo;
    invoke-virtual {v0}, Lcom/android/internal/storage/StorageInfo;->isMounted()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/storage/StorageInfo;->isSd()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    const/4 v2, 0x1

    .line 350
    .end local v0    # "volume":Lcom/android/internal/storage/StorageInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isAbsolutePath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 752
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalSDCardPriorStorage()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 213
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 214
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 215
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v5, Lcom/miui/gallery/util/PriorityStorageBroadcastReceiver;

    invoke-direct {v1, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v1, "name":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    .line 217
    .local v3, "state":I
    if-nez v3, :cond_1

    .line 219
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 221
    :cond_0
    :goto_0
    return v4

    :cond_1
    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isInExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 457
    invoke-static {p1}, Lcom/miui/gallery/util/StorageUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v1

    .line 460
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->getMountedVolumePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 461
    .local v0, "volumePaths":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/miui/gallery/util/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isInPrimaryStorage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPrimaryStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/gallery/util/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInSecondaryStorage(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 320
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v1

    .line 323
    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "secondaryStoragePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    invoke-static {v0, p0}, Lcom/miui/gallery/util/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isPrimaryStorageWritable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getPrimaryStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/gallery/util/StorageUtils;->canWriteThroughFileSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 276
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUsingSecondaryStorage(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->hasExternalSDCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->isExternalSDCardPriorStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setPriorStorage(Z)V
    .locals 5
    .param p0, "externalSDCard"    # Z

    .prologue
    const/4 v4, 0x1

    .line 231
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 232
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 233
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/miui/gallery/util/PriorityStorageBroadcastReceiver;

    invoke-direct {v1, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v1, "name":Landroid/content/ComponentName;
    if-eqz p0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 236
    return-void

    .line 234
    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method
