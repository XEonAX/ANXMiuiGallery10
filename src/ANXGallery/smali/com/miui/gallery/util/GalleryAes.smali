.class public Lcom/miui/gallery/util/GalleryAes;
.super Ljava/lang/Object;
.source "GalleryAes.java"


# static fields
.field private static final sAesIv:[B

.field private static final sRandomKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 46
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/util/GalleryAes;->sAesIv:[B

    .line 48
    new-array v0, v1, [B

    sput-object v0, Lcom/miui/gallery/util/GalleryAes;->sRandomKey:[B

    return-void

    .line 46
    :array_0
    .array-data 1
        0x11t
        0x13t
        0x21t
        0x23t
        0x31t
        0x33t
        0x41t
        0x43t
        0x51t
        0x53t
        0x61t
        0x66t
        0x67t
        0x68t
        0x71t
        0x72t
    .end array-data
.end method

.method public static decryptFile(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 9
    .param p0, "srcfile"    # Ljava/lang/String;
    .param p1, "desfile"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .prologue
    const/4 v7, 0x0

    .line 200
    if-eqz p2, :cond_0

    array-length v6, p2

    const/16 v8, 0x10

    if-eq v6, v8, :cond_1

    :cond_0
    move v6, v7

    .line 246
    :goto_0
    return v6

    .line 204
    :cond_1
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, p2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 206
    .local v5, "spec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v2, 0x0

    .line 208
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_0
    const-string v6, "AES/CTR/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 209
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v6, Lcom/miui/gallery/util/GalleryAes;->sAesIv:[B

    invoke-direct {v4, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 210
    .local v4, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 211
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/miui/gallery/util/GalleryAes$2;

    invoke-direct {v8, v0}, Lcom/miui/gallery/util/GalleryAes$2;-><init>(Ljavax/crypto/Cipher;)V

    invoke-static {v3, v6, v8}, Lcom/miui/gallery/util/DocumentProviderUtils;->safeWriteFile(Ljava/io/InputStream;Ljava/io/File;Lcom/miui/gallery/util/DocumentProviderUtils$WriteHandler;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 244
    invoke-static {v3}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 231
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    move v6, v7

    .line 246
    goto :goto_0

    .line 233
    :catch_1
    move-exception v1

    .line 234
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .line 235
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 236
    .local v1, "e":Ljava/security/InvalidKeyException;
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 244
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .line 237
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 238
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 244
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .line 239
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 244
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .line 241
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v1

    .line 242
    .local v1, "e":Ljava/io/IOException;
    :goto_7
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 244
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_8
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    throw v6

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_8

    .line 241
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_7

    .line 239
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_6

    .line 237
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .line 235
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 233
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 231
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_b
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static encryptFile(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 11
    .param p0, "enfile"    # Ljava/lang/String;
    .param p1, "defile"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .prologue
    const/4 v9, 0x0

    .line 136
    if-eqz p2, :cond_0

    array-length v8, p2

    const/16 v10, 0x10

    if-eq v8, v10, :cond_1

    :cond_0
    move v8, v9

    .line 184
    :goto_0
    return v8

    .line 139
    :cond_1
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, p2, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 140
    .local v7, "spec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v8, Lcom/miui/gallery/util/GalleryAes;->sAesIv:[B

    invoke-direct {v6, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 142
    .local v6, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x0

    .line 143
    .local v4, "in":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 145
    .local v0, "cin":Ljavax/crypto/CipherInputStream;
    :try_start_0
    const-string v8, "AES/CTR/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 146
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x1

    invoke-virtual {v2, v8, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 147
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, v5, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    .end local v0    # "cin":Ljavax/crypto/CipherInputStream;
    .local v1, "cin":Ljavax/crypto/CipherInputStream;
    :try_start_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/miui/gallery/util/GalleryAes$1;

    invoke-direct {v10}, Lcom/miui/gallery/util/GalleryAes$1;-><init>()V

    invoke-static {v1, v8, v10}, Lcom/miui/gallery/util/DocumentProviderUtils;->safeWriteFile(Ljava/io/InputStream;Ljava/io/File;Lcom/miui/gallery/util/DocumentProviderUtils$WriteHandler;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v8

    .line 183
    invoke-static {v5}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 184
    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 164
    .end local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 165
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 184
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    move v8, v9

    goto :goto_0

    .line 167
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v3

    .line 168
    .local v3, "e":Ljavax/crypto/NoSuchPaddingException;
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 184
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    move v8, v9

    goto :goto_0

    .line 170
    .end local v3    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v3

    .line 171
    .local v3, "e":Ljava/security/InvalidKeyException;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 183
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 184
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    move v8, v9

    goto :goto_0

    .line 173
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v3

    .line 174
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 183
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 184
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    move v8, v9

    goto :goto_0

    .line 176
    .end local v3    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v3

    .line 177
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 183
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 184
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    move v8, v9

    goto :goto_0

    .line 179
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v3

    .line 180
    .local v3, "e":Ljava/io/IOException;
    :goto_6
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 183
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 184
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    move v8, v9

    goto/16 :goto_0

    .line 183
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_7
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 184
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    throw v8

    .line 183
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v0    # "cin":Ljavax/crypto/CipherInputStream;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v0    # "cin":Ljavax/crypto/CipherInputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_7

    .line 179
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v0    # "cin":Ljavax/crypto/CipherInputStream;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v0    # "cin":Ljavax/crypto/CipherInputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_6

    .line 176
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v0    # "cin":Ljavax/crypto/CipherInputStream;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    move-object v0, v1

    .end local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v0    # "cin":Ljavax/crypto/CipherInputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .line 173
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_a
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "cin":Ljavax/crypto/CipherInputStream;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_b
    move-exception v3

    move-object v0, v1

    .end local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v0    # "cin":Ljavax/crypto/CipherInputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 170
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_c
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "cin":Ljavax/crypto/CipherInputStream;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_d
    move-exception v3

    move-object v0, v1

    .end local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v0    # "cin":Ljavax/crypto/CipherInputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 167
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_e
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "cin":Ljavax/crypto/CipherInputStream;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_f
    move-exception v3

    move-object v0, v1

    .end local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v0    # "cin":Ljavax/crypto/CipherInputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 164
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_10
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0    # "cin":Ljavax/crypto/CipherInputStream;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_11
    move-exception v3

    move-object v0, v1

    .end local v1    # "cin":Ljavax/crypto/CipherInputStream;
    .restart local v0    # "cin":Ljavax/crypto/CipherInputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static generateEmptyKey()[B
    .locals 1

    .prologue
    .line 250
    const/16 v0, 0x10

    new-array v0, v0, [B

    return-object v0
.end method

.method public static declared-synchronized generateRandomKey()[B
    .locals 7

    .prologue
    .line 254
    const-class v3, Lcom/miui/gallery/util/GalleryAes;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/miui/gallery/util/GalleryAes;->generateEmptyKey()[B

    move-result-object v0

    .line 255
    .local v0, "key":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 256
    .local v1, "secureRandom":Ljava/security/SecureRandom;
    sget-object v2, Lcom/miui/gallery/util/GalleryAes;->sRandomKey:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 257
    sget-object v2, Lcom/miui/gallery/util/GalleryAes;->sRandomKey:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/miui/gallery/util/GalleryAes;->sRandomKey:[B

    array-length v6, v6

    invoke-static {v2, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit v3

    return-object v0

    .line 254
    .end local v1    # "secureRandom":Ljava/security/SecureRandom;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
