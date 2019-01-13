.class public Lcom/miui/internal/util/DirectIndexedFileExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static IDF_FILES_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DirectIndexedFileExtractor"

.field private static final iz:I = 0x1b4

.field private static final jg:I = 0x1f9

.field private static final jh:Ljava/lang/String; = "idf"

.field private static final ji:Ljava/lang/String; = ".idf"

.field private static final jj:Ljava/lang/String; = "-tmp"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 186
    nop

    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_7
    invoke-virtual {p0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lmiui/util/DirectIndexedFile;->open(Ljava/io/InputStream;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_32

    .line 194
    nop

    .line 196
    nop

    .line 198
    :try_start_11
    invoke-static {p2}, Lmiui/util/DirectIndexedFile;->open(Ljava/lang/String;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object p1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_2a

    .line 204
    nop

    .line 206
    invoke-virtual {p0}, Lmiui/util/DirectIndexedFile$Reader;->getDataVersion()I

    move-result p2

    invoke-virtual {p1}, Lmiui/util/DirectIndexedFile$Reader;->getDataVersion()I

    move-result v2

    if-le p2, v2, :cond_22

    .line 207
    move v0, v1

    goto :goto_23

    .line 206
    :cond_22
    nop

    .line 207
    :goto_23
    invoke-virtual {p0}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    .line 208
    invoke-virtual {p1}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    .line 209
    return v0

    .line 199
    :catch_2a
    move-exception p1

    .line 200
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 201
    invoke-virtual {p0}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    .line 203
    return v1

    .line 190
    :catch_32
    move-exception p0

    .line 191
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 105
    invoke-static {p0, p1}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    if-nez v0, :cond_e

    .line 107
    const-string p0, "DirectIndexedFileExtractor"

    const-string p1, "directIndexedFilePath is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 111
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ce

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 113
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 116
    invoke-static {p0, p1, v0}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_35

    .line 118
    const-string p0, "DirectIndexedFileExtractor"

    const-string p1, " don\'t need overwrite"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 122
    :cond_35
    new-instance p0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    const/4 v3, 0x0

    .line 125
    :try_start_4c
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_50} :catch_b4
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_50} :catch_aa
    .catchall {:try_start_4c .. :try_end_50} :catchall_a7

    .line 126
    :try_start_50
    invoke-static {p1, p0}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v1

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 128
    if-eqz v1, :cond_7f

    invoke-virtual {p0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 129
    const/16 p0, 0x1b4

    invoke-static {v0, p0}, Lmiui/os/FileUtils;->chmod(Ljava/lang/String;I)Z

    .line 130
    const-string p0, "DirectIndexedFileExtractor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extraction completed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 132
    :cond_7f
    const-string v0, "DirectIndexedFileExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " copy failed."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_99} :catch_a4
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_99} :catch_a1
    .catchall {:try_start_50 .. :try_end_99} :catchall_9f

    .line 139
    :goto_99
    if-eqz p1, :cond_ce

    .line 141
    :try_start_9b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_be

    goto :goto_bd

    .line 139
    :catchall_9f
    move-exception p0

    goto :goto_c3

    .line 136
    :catch_a1
    move-exception p0

    move-object v3, p1

    goto :goto_ab

    .line 134
    :catch_a4
    move-exception p0

    move-object v3, p1

    goto :goto_b5

    .line 139
    :catchall_a7
    move-exception p0

    move-object p1, v3

    goto :goto_c3

    .line 136
    :catch_aa
    move-exception p0

    .line 137
    :goto_ab
    :try_start_ab
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_a7

    .line 139
    if-eqz v3, :cond_ce

    .line 141
    :try_start_b0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_be

    goto :goto_bd

    .line 134
    :catch_b4
    move-exception p0

    .line 135
    :goto_b5
    :try_start_b5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_a7

    .line 139
    if-eqz v3, :cond_ce

    .line 141
    :try_start_ba
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_be

    .line 144
    :goto_bd
    goto :goto_ce

    .line 142
    :catch_be
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bd

    .line 139
    :goto_c3
    if-eqz p1, :cond_cd

    .line 141
    :try_start_c5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    .line 144
    goto :goto_cd

    .line 142
    :catch_c9
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 144
    :cond_cd
    :goto_cd
    throw p0

    .line 148
    :cond_ce
    :goto_ce
    return-void
.end method

.method static synthetic c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 28
    invoke-static {p0, p1}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 219
    invoke-static {p0}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->k(Landroid/content/Context;)V

    .line 220
    sget-object p0, Lcom/miui/internal/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    if-nez p0, :cond_9

    .line 221
    const/4 p0, 0x0

    return-object p0

    .line 223
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/miui/internal/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static k(Landroid/content/Context;)V
    .registers 5

    .line 64
    sget-object v0, Lcom/miui/internal/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    if-nez v0, :cond_5b

    .line 66
    :try_start_4
    const-string v0, "com.miui.core"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_d} :catch_57

    const/16 v1, 0x18

    if-lt v0, v1, :cond_30

    .line 72
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 73
    const-string v1, "createDeviceProtectedStorageContext"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 74
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_26} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_26} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_26} :catch_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_26} :catch_57

    .line 75
    nop

    .line 82
    nop

    .line 85
    move-object p0, v0

    goto :goto_30

    .line 80
    :catch_2a
    move-exception v0

    goto :goto_30

    .line 78
    :catch_2c
    move-exception v0

    goto :goto_2f

    .line 76
    :catch_2e
    move-exception v0

    .line 82
    :goto_2f
    nop

    .line 85
    :cond_30
    :goto_30
    :try_start_30
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "idf"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/internal/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_56} :catch_57

    .line 91
    :cond_56
    goto :goto_5b

    .line 89
    :catch_57
    move-exception p0

    .line 90
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 94
    :cond_5b
    :goto_5b
    sget-object p0, Lcom/miui/internal/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    if-eqz p0, :cond_7a

    .line 95
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/miui/internal/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_79

    .line 97
    sget-object p0, Lcom/miui/internal/util/DirectIndexedFileExtractor;->IDF_FILES_PATH:Ljava/lang/String;

    const/16 v0, 0x1f9

    invoke-static {p0, v0}, Lmiui/os/FileUtils;->chmod(Ljava/lang/String;I)Z

    .line 99
    :cond_79
    goto :goto_81

    .line 100
    :cond_7a
    const-string p0, "DirectIndexedFileExtractor"

    const-string v0, "Error: Cannot locate IDF_FILES_PATH"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_81
    return-void
.end method

.method public static replaceDirectIndexedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 152
    invoke-static {p0, p2}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 154
    const-string p0, "DirectIndexedFileExtractor"

    const-string p1, "replaceDirectIndexedFile srcPath is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v1

    .line 157
    :cond_13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 158
    const-string p0, "DirectIndexedFileExtractor"

    const-string p1, "replaceDirectIndexedFile destPath is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v1

    .line 161
    :cond_21
    nop

    .line 162
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lmiui/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    .line 165
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_5c

    .line 166
    const-string v3, "DirectIndexedFileExtractor"

    const-string v5, "old idf file:%s delete fail"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_5c
    if-eqz p1, :cond_85

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 169
    const-string p1, "DirectIndexedFileExtractor"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " copy and rename success."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/16 p1, 0x1b4

    invoke-static {p0, p1}, Lmiui/os/FileUtils;->chmod(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_ac

    .line 172
    :cond_85
    nop

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_91

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    goto :goto_92

    .line 176
    :cond_91
    move p0, v4

    :goto_92
    const-string p1, "DirectIndexedFileExtractor"

    const-string p2, "%s copy or rename failed , tmp file delete: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v4

    .line 176
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_ac
    const-string p0, "DirectIndexedFileExtractor"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "replaceDirectIndexedFile result is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return v1
.end method

.method public static tryExtractDirectIndexedFiles(Landroid/content/Context;)V
    .registers 3

    .line 41
    invoke-static {p0}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->k(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 45
    :try_start_7
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;

    invoke-direct {v1, v0, p0}, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;-><init>([Ljava/lang/String;Landroid/content/Context;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 56
    invoke-virtual {v1, p0}, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_19

    .line 60
    goto :goto_24

    .line 57
    :catch_19
    move-exception p0

    .line 58
    const-string v0, "DirectIndexedFileExtractor"

    const-string v1, "Error reading asset files, extraction abort"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 61
    :goto_24
    return-void
.end method
