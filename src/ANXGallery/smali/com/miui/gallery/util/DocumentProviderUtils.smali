.class public Lcom/miui/gallery/util/DocumentProviderUtils;
.super Ljava/lang/Object;
.source "DocumentProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/DocumentProviderUtils$WriteHandler;
    }
.end annotation


# direct methods
.method private static createAccessIntent(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 312
    const-string/jumbo v6, "storage"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 313
    .local v4, "sm":Landroid/os/storage/StorageManager;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 314
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    if-nez v5, :cond_0

    .line 315
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->firstEntrancyPermFailed(Landroid/app/Activity;)V

    .line 333
    :goto_0
    return-void

    .line 318
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageVolume;->createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 319
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Lcom/miui/gallery/util/DocumentProviderUtils$2;

    invoke-direct {v3, p0, v2, p2}, Lcom/miui/gallery/util/DocumentProviderUtils$2;-><init>(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 325
    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    invoke-direct {v6}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;-><init>()V

    const/4 v7, 0x0

    .line 326
    invoke-virtual {v6, v7}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setCancelable(Z)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v6

    const v7, 0x7f0e01cd

    .line 327
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v6

    const v7, 0x7f0e01cc

    .line 328
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v6

    const v7, 0x7f0e01cb

    .line 329
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v1

    .line 331
    .local v1, "builder":Lcom/miui/gallery/ui/AlertDialogFragment$Builder;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->create()Lcom/miui/gallery/ui/AlertDialogFragment;

    move-result-object v0

    .line 332
    .local v0, "alertDialogFragment":Lcom/miui/gallery/ui/AlertDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "DocumentProviderUtils"

    invoke-virtual {v0, v6, v7}, Lcom/miui/gallery/ui/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static findFileIgnoreCase(Landroid/support/v4/provider/DocumentFile;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .locals 5
    .param p0, "rootDoc"    # Landroid/support/v4/provider/DocumentFile;
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/support/v4/provider/DocumentFile;->listFiles()[Landroid/support/v4/provider/DocumentFile;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 303
    .local v0, "doc":Landroid/support/v4/provider/DocumentFile;
    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    .end local v0    # "doc":Landroid/support/v4/provider/DocumentFile;
    :goto_1
    return-object v0

    .line 302
    .restart local v0    # "doc":Landroid/support/v4/provider/DocumentFile;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "doc":Landroid/support/v4/provider/DocumentFile;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static firstEntrancyPermFailed(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 184
    invoke-static {}, Lcom/miui/gallery/util/DocumentProviderUtils;->increaseAccessIntentCount()V

    .line 185
    new-instance v2, Lcom/miui/gallery/util/DocumentProviderUtils$1;

    invoke-direct {v2}, Lcom/miui/gallery/util/DocumentProviderUtils$1;-><init>()V

    .line 191
    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    invoke-direct {v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;-><init>()V

    const/4 v4, 0x0

    .line 192
    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setCancelable(Z)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v3

    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e01c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v3

    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e01c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v3

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e01ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v1

    .line 197
    .local v1, "builder":Lcom/miui/gallery/ui/AlertDialogFragment$Builder;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->create()Lcom/miui/gallery/ui/AlertDialogFragment;

    move-result-object v0

    .line 198
    .local v0, "alertDialogFragment":Lcom/miui/gallery/ui/AlertDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "DocumentProviderUtils"

    invoke-virtual {v0, v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static getDocumentFile(Landroid/content/Context;Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/util/DocumentProviderUtils;->getDocumentFileOrDir(Landroid/content/Context;Ljava/io/File;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    return-object v0
.end method

.method public static getDocumentFileDirectory(Landroid/content/Context;Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/util/DocumentProviderUtils;->getDocumentFileOrDir(Landroid/content/Context;Ljava/io/File;Z)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    return-object v0
.end method

.method private static getDocumentFileOrDir(Landroid/content/Context;Ljava/io/File;Z)Landroid/support/v4/provider/DocumentFile;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "isDir"    # Z

    .prologue
    .line 250
    if-nez p0, :cond_1

    .line 251
    const-string v11, "DocumentProviderUtils"

    const-string v12, "getDocumentFileOrDir context null"

    invoke-static {v11, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v10, 0x0

    .line 298
    :cond_0
    :goto_0
    return-object v10

    .line 254
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/miui/gallery/util/StorageUtils;->getVolumePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "baseFolder":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 256
    const-string v11, "DocumentProviderUtils"

    const-string v12, "getDocumentFileOrDir basefolder null"

    invoke-static {v11, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v10, 0x0

    goto :goto_0

    .line 259
    :cond_2
    const/4 v5, 0x0

    .line 261
    .local v5, "originalDirectory":Z
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, "relativePath":Ljava/lang/String;
    sget-object v11, Lcom/miui/gallery/util/StorageUtils;->KEY_FOR_EMPTY_RELATIVE_PATH:Ljava/lang/String;

    if-ne v8, v11, :cond_3

    .line 263
    const/4 v5, 0x1

    .line 265
    :cond_3
    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$DocumentProvider;->getUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 266
    .local v9, "uri":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 267
    const/4 v10, 0x0

    goto :goto_0

    .line 269
    :cond_4
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 271
    .local v6, "parse":Landroid/net/Uri;
    invoke-static {p0, v6}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v10

    .line 272
    .local v10, "volumeDocument":Landroid/support/v4/provider/DocumentFile;
    if-nez v5, :cond_0

    .line 276
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "mimeType":Ljava/lang/String;
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 280
    .local v7, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    array-length v11, v7

    if-ge v2, v11, :cond_0

    .line 281
    aget-object v11, v7, v2

    invoke-static {v10, v11}, Lcom/miui/gallery/util/DocumentProviderUtils;->findFileIgnoreCase(Landroid/support/v4/provider/DocumentFile;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v4

    .line 282
    .local v4, "nextDocument":Landroid/support/v4/provider/DocumentFile;
    if-nez v4, :cond_7

    .line 283
    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    if-lt v2, v11, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_5

    if-eqz p2, :cond_6

    .line 284
    :cond_5
    aget-object v11, v7, v2

    invoke-virtual {v10, v11}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v4

    .line 285
    if-nez v4, :cond_7

    .line 286
    const/4 v10, 0x0

    goto :goto_0

    .line 289
    :cond_6
    aget-object v11, v7, v2

    invoke-virtual {v10, v3, v11}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 292
    :cond_7
    move-object v10, v4

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 294
    .end local v4    # "nextDocument":Landroid/support/v4/provider/DocumentFile;
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "DocumentProviderUtils"

    invoke-static {v11, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static handleRequestPermissionResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 83
    if-nez p0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const/16 v0, 0x31

    if-ne p1, v0, :cond_3

    .line 88
    invoke-static {v2}, Lcom/miui/gallery/preference/GalleryPreferences$DocumentProvider;->setFirstEntrance(Z)V

    .line 90
    if-ne p2, v1, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/DocumentProviderUtils;->isUriExternalSDCardRoot(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-static {p0, p3}, Lcom/miui/gallery/util/DocumentProviderUtils;->handleRequestSucceed(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 92
    const-string v0, "document_provider_permission_request"

    const-string v1, "document_provider_first_entrance"

    .line 93
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->firstEntrancyPermFailed(Landroid/app/Activity;)V

    .line 96
    const-string v0, "document_provider_permission_request"

    const-string v1, "document_provider_first_entrance"

    .line 97
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_3
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_5

    .line 104
    if-ne p2, v1, :cond_4

    .line 105
    invoke-static {p0, p3}, Lcom/miui/gallery/util/DocumentProviderUtils;->handleRequestSucceed(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 106
    const-string v0, "document_provider_permission_request"

    const-string v1, "document_provider_permission_requested"

    .line 107
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_4
    invoke-static {}, Lcom/miui/gallery/util/DocumentProviderUtils;->increaseAccessIntentCount()V

    .line 110
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->showOperationFailedDialog(Landroid/app/Activity;)V

    .line 111
    const-string v0, "document_provider_permission_request"

    const-string v1, "document_provider_permission_requested"

    .line 112
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_5
    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    .line 118
    if-ne p2, v1, :cond_6

    .line 119
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/DocumentProviderUtils;->isUriExternalSDCardRoot(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    invoke-static {p0, p3}, Lcom/miui/gallery/util/DocumentProviderUtils;->handleRequestSucceed(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 121
    const-string v0, "document_provider_permission_request"

    const-string v1, "document_provider_permission_requested"

    .line 122
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_6
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->showOperationFailedDialog(Landroid/app/Activity;)V

    .line 127
    const-string v0, "document_provider_permission_request"

    const-string v1, "document_provider_permission_requested"

    .line 128
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static handleRequestSucceed(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 213
    invoke-static {p0, p1}, Lcom/miui/gallery/util/DocumentProviderUtils;->persistDocumentProviderUri(Landroid/content/Context;Landroid/content/Intent;)V

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method

.method private static increaseAccessIntentCount()V
    .locals 2

    .prologue
    .line 218
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$DocumentProvider;->getOpenExternalDocumentCount()I

    move-result v0

    .line 219
    .local v0, "oldNum":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$DocumentProvider;->setOpenExternalDocumentCount(I)V

    .line 220
    return-void
.end method

.method private static isUriExternalSDCardRoot(Landroid/net/Uri;)Z
    .locals 8
    .param p0, "chosenUri"    # Landroid/net/Uri;

    .prologue
    .line 223
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/StorageUtils;->hasExternalSDCard(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "sdCardPath":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .line 226
    .local v0, "chosenFile":Landroid/support/v4/provider/DocumentFile;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".miuigallery"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "displayname":Ljava/lang/String;
    const-string v4, "any/any"

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v3

    .line 228
    .local v3, "testFile":Landroid/support/v4/provider/DocumentFile;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    invoke-virtual {v3}, Landroid/support/v4/provider/DocumentFile;->delete()Z

    .line 230
    const/4 v4, 0x1

    .line 233
    .end local v0    # "chosenFile":Landroid/support/v4/provider/DocumentFile;
    .end local v1    # "displayname":Ljava/lang/String;
    .end local v2    # "sdCardPath":Ljava/lang/String;
    .end local v3    # "testFile":Landroid/support/v4/provider/DocumentFile;
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static needRequestExternalSDCardPermission(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 37
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->hasExternalSDCard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$DocumentProvider;->getExternalSDCardUri()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static needUseDocumentProvider(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->isInSecondaryStorage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static persistDocumentProviderUri(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 238
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 243
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/preference/GalleryPreferences$DocumentProvider;->setExternalSDCardUri(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DocumentProviderUtils"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static safeWriteFile(Ljava/io/InputStream;Ljava/io/File;Lcom/miui/gallery/util/DocumentProviderUtils$WriteHandler;)Ljava/lang/Object;
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            "Lcom/miui/gallery/util/DocumentProviderUtils$WriteHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "writerHandler":Lcom/miui/gallery/util/DocumentProviderUtils$WriteHandler;, "Lcom/miui/gallery/util/DocumentProviderUtils$WriteHandler<TT;>;"
    const/4 v5, 0x0

    .line 144
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 146
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/gallery/util/DocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 147
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/miui/gallery/util/DocumentProviderUtils;->getDocumentFile(Landroid/content/Context;Ljava/io/File;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .line 148
    .local v0, "destDocumentFile":Landroid/support/v4/provider/DocumentFile;
    if-nez v0, :cond_0

    .line 149
    const-string v2, "failed to get document file"

    .line 150
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "DocumentProviderUtils"

    invoke-static {v7, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v0    # "destDocumentFile":Landroid/support/v4/provider/DocumentFile;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 162
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 165
    invoke-static {v5}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    .line 154
    .restart local v0    # "destDocumentFile":Landroid/support/v4/provider/DocumentFile;
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 155
    .local v6, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "w"

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 156
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 160
    .end local v0    # "destDocumentFile":Landroid/support/v4/provider/DocumentFile;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "uri":Landroid/net/Uri;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    invoke-interface {p2, p0, v3}, Lcom/miui/gallery/util/DocumentProviderUtils$WriteHandler;->handle(Ljava/io/InputStream;Ljava/io/FileOutputStream;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 164
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 165
    invoke-static {v5}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    return-object v7

    .line 158
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static showOperationFailedDialog(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 202
    new-instance v2, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    invoke-direct {v2}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;-><init>()V

    const/4 v3, 0x0

    .line 203
    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setCancelable(Z)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v2

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v2

    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v2

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/gallery/ui/AlertDialogFragment$Builder;

    move-result-object v1

    .line 208
    .local v1, "builder":Lcom/miui/gallery/ui/AlertDialogFragment$Builder;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlertDialogFragment$Builder;->create()Lcom/miui/gallery/ui/AlertDialogFragment;

    move-result-object v0

    .line 209
    .local v0, "alertDialogFragment":Lcom/miui/gallery/ui/AlertDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DocumentProviderUtils"

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/ui/AlertDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private static startDocumentTreeIntent(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 336
    if-nez p0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/miui/gallery/ui/DocumentsUIFragment;->newInstance(II)Lcom/miui/gallery/ui/DocumentsUIFragment;

    move-result-object v0

    .line 340
    .local v0, "docUI":Lcom/miui/gallery/ui/DocumentsUIFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DocumentsUIFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/DocumentsUIFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startExtSDCardPermissionActivityForResult(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "filePath":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/util/DocumentProviderUtils;->needRequestExternalSDCardPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$DocumentProvider;->getExternalSDCardUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 75
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$DocumentProvider;->setOpenExternalDocumentCount(I)V

    .line 78
    :cond_2
    const/16 v1, 0x2f

    const/16 v2, 0x30

    invoke-static {p0, v0, v1, v2}, Lcom/miui/gallery/util/DocumentProviderUtils;->startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static startFirstEntrancyPermissionActivityForResult(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/16 v1, 0x31

    .line 55
    if-nez p0, :cond_0

    .line 56
    const-string v0, "DocumentProviderUtils"

    const-string/jumbo v1, "startExtSDCardPermissionActivityForResult activity null"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getSecondaryStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, v1}, Lcom/miui/gallery/util/DocumentProviderUtils;->startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private static startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "requestCodeForAccessIntent"    # I
    .param p3, "requestCodeForDocumentTree"    # I

    .prologue
    .line 174
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$DocumentProvider;->getOpenExternalDocumentCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 175
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/DocumentProviderUtils;->createAccessIntent(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-static {p0, p3}, Lcom/miui/gallery/util/DocumentProviderUtils;->startDocumentTreeIntent(Landroid/app/Activity;I)V

    goto :goto_0
.end method
