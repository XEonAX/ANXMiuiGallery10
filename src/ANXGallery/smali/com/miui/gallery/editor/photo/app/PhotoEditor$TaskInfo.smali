.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;
.super Ljava/lang/Object;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskInfo"
.end annotation


# instance fields
.field private mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

.field private mExportFragment:Lcom/miui/gallery/editor/photo/app/ExportFragment;

.field private mExportUri:Landroid/net/Uri;

.field private mExternalCall:Z

.field private mSecretId:J

.field private mSource:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    .prologue
    .line 1035
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->preFinish()V

    return-void
.end method

.method private createExportFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 9
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 1152
    const/4 v8, 0x0

    .line 1153
    .local v8, "parent":Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1154
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    .line 1170
    :cond_0
    :goto_0
    invoke-direct {p0, v8}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 1155
    :cond_1
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    const/4 v6, 0x0

    .line 1158
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1161
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1162
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1167
    :cond_2
    const-string v0, "PhotoEditor"

    invoke-static {v0, v6}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_0

    .line 1164
    :catch_0
    move-exception v7

    .line 1165
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "PhotoEditor"

    const-string v1, "receive an exception when look for parent for %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1167
    const-string v0, "PhotoEditor"

    invoke-static {v0, v6}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    const-string v1, "PhotoEditor"

    invoke-static {v1, v6}, Lcom/miui/gallery/editor/photo/utils/IoUtils;->close(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v0
.end method

.method private createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p1, "parent"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1174
    const-string/jumbo v2, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1175
    .local v1, "stamp":Ljava/lang/CharSequence;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "IMG_%s.%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v6}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$200(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/app/DraftManager;->getExportFileSuffix()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1177
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getCreativeDirectory()Ljava/lang/String;

    move-result-object p1

    .line 1178
    invoke-static {p1, v7}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/lang/String;Z)Z

    .line 1185
    :cond_0
    :goto_0
    invoke-static {p1, v0, v7}, Lcom/miui/gallery/util/FileUtils;->forceCreate(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    return-object v2

    .line 1179
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/DocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1182
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1181
    invoke-static {v2}, Lcom/miui/gallery/util/StorageUtils;->getPathInPrimaryStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1183
    invoke-static {p1, v7}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method static from(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;
    .locals 5
    .param p0, "editor"    # Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .prologue
    .line 1189
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1190
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1191
    :cond_0
    const/4 v1, 0x0

    .line 1199
    :goto_0
    return-object v1

    .line 1194
    :cond_1
    new-instance v1, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;

    invoke-direct {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;-><init>()V

    .line 1195
    .local v1, "task":Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;
    iput-object p0, v1, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .line 1196
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExternalCall:Z

    .line 1197
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    .line 1198
    const-string v2, "PhotoEditor"

    const-string v3, "editting %s"

    iget-object v4, v1, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private preFinish()V
    .locals 4

    .prologue
    .line 1091
    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExternalCall:Z

    if-nez v1, :cond_0

    .line 1092
    const-string v1, "PhotoEditor"

    const-string v2, "internal call, pass result"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1094
    .local v0, "result":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/provider/GalleryOpenProvider;->translateToContent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    const-string v1, "photo_secret_id"

    iget-wide v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSecretId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1096
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->setActivityResult(ILandroid/content/Intent;)V

    .line 1098
    .end local v0    # "result":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method closeExportDialog()V
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportFragment:Lcom/miui/gallery/editor/photo/app/ExportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportFragment:Lcom/miui/gallery/editor/photo/app/ExportFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/ExportFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportFragment:Lcom/miui/gallery/editor/photo/app/ExportFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/ExportFragment;->dismissAllowingStateLoss()V

    .line 1135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportFragment:Lcom/miui/gallery/editor/photo/app/ExportFragment;

    .line 1137
    :cond_0
    return-void
.end method

.method getExportUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call prepareToExport first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    return-object v0
.end method

.method getSource()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    return-object v0
.end method

.method onCancelled(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 1088
    return-void
.end method

.method onExport(Z)Z
    .locals 10
    .param p1, "success"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1044
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExternalCall:Z

    if-nez v0, :cond_3

    .line 1045
    const-string v0, "PhotoEditor"

    const-string v1, "internal call, scan to db :%s"

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1046
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$200(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Lcom/miui/gallery/editor/photo/app/DraftManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    new-instance v0, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    .line 1049
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, -0x3e8

    const/16 v4, 0x8

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;-><init>(Ljava/io/File;JIZ)V

    .line 1047
    invoke-static {v9, v0}, Lcom/miui/gallery/scanner/SaveToCloudUtil;->saveToCloudDB(Landroid/content/Context;Lcom/miui/gallery/scanner/SaveToCloudUtil$SaveParams;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSecretId:J

    .line 1054
    iget-wide v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSecretId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1055
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/gallery/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    move p1, v8

    .line 1075
    .end local p1    # "success":Z
    :cond_0
    :goto_0
    return p1

    .line 1059
    .restart local p1    # "success":Z
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/scanner/MediaScanner;->scanSingleFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/miui/gallery/util/MediaStoreUtils;->insert(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 1062
    :cond_2
    const-string v0, "PhotoEditor"

    const-string v1, "internal call, scan to db done secretId:%d"

    iget-wide v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSecretId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1065
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExternalCall:Z

    if-eqz v0, :cond_4

    const-string v0, "content"

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "media"

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    .line 1066
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1067
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/miui/gallery/util/MediaStoreUtils;->update(Landroid/net/Uri;)V

    .line 1068
    const-string v0, "PhotoEditor"

    const-string v1, "external call, update media store:%s"

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1070
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    if-ne v0, v1, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/MediaStoreUtils;->getMediaFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1072
    .local v6, "path":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    const/16 v1, 0x37

    new-array v2, v5, [Ljava/lang/String;

    aput-object v6, v2, v8

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/provider/CloudUtils;->deleteCloudByPath(Landroid/content/Context;I[Ljava/lang/String;)[J

    move-result-object v7

    .line 1073
    .local v7, "result":[J
    const-string v1, "PhotoEditor"

    const-string v2, "deleteCloudByPath path:%s,result:%s"

    if-eqz v7, :cond_5

    array-length v0, v7

    if-lez v0, :cond_5

    aget-wide v4, v7, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v2, v6, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method onPostExport(Z)V
    .locals 6
    .param p1, "success"    # Z

    .prologue
    .line 1079
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExternalCall:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    .line 1080
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    .line 1081
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    const v2, 0x7f0e0372

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeTextLong(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1084
    :cond_0
    return-void
.end method

.method prepareToExport()V
    .locals 5

    .prologue
    .line 1101
    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExternalCall:Z

    if-nez v2, :cond_0

    .line 1102
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->createExportFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    .line 1103
    const-string v2, "PhotoEditor"

    const-string v3, "export to a new file %s"

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1121
    :goto_0
    return-void

    .line 1105
    :cond_0
    const-string v2, "file"

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "content"

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "media"

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    .line 1106
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1107
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    .line 1108
    const-string v2, "PhotoEditor"

    const-string v3, "export to origin file or media uri %s"

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1110
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1111
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 1112
    .local v1, "uid":I
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v2

    if-nez v2, :cond_3

    .line 1113
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mSource:Landroid/net/Uri;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    .line 1114
    const-string v2, "PhotoEditor"

    const-string v3, "export to origin uri %s"

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1116
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    .line 1117
    const-string v2, "PhotoEditor"

    const-string v3, "export to a specified dir %s"

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportUri:Landroid/net/Uri;

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method showExportDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1124
    new-instance v0, Lcom/miui/gallery/editor/photo/app/ExportFragment;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/app/ExportFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportFragment:Lcom/miui/gallery/editor/photo/app/ExportFragment;

    .line 1126
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportFragment:Lcom/miui/gallery/editor/photo/app/ExportFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/ExportFragment;->setCancelable(Z)V

    .line 1127
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mExportFragment:Lcom/miui/gallery/editor/photo/app/ExportFragment;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$TaskInfo;->mEditor:Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    .line 1128
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/PhotoEditor;->access$300(Lcom/miui/gallery/editor/photo/app/PhotoEditor;)Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1127
    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/app/ExportFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 1130
    return-void
.end method
