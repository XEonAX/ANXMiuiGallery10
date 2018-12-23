.class public Lcom/xiaomi/micloudsdk/request/utils/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;
    }
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sRegion:Ljava/lang/String;

.field private static sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;

    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/Request;->sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    return-void
.end method

.method public static addFilterTagsToParams(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;J)V
    .locals 18
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "security"    # Ljava/lang/String;
    .param p4, "waterMark"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "filterTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v6, "paramList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 474
    .local v5, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 475
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 478
    .end local v5    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .local v3, "finalTags":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .local v12, "tmpTags":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 481
    .local v9, "size":I
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 486
    .local v10, "tag":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v13, v16, p4

    if-lez v13, :cond_1

    .line 494
    const/16 v13, 0x64

    if-ge v9, v13, :cond_3

    .line 495
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 496
    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_2
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    add-int/lit8 v9, v9, 0x1

    .line 501
    rem-int/lit8 v13, v9, 0xa

    if-eqz v13, :cond_3

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v13

    if-ne v9, v13, :cond_1

    .line 506
    :cond_3
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "filterTag"

    .line 508
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 507
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v13}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->encodeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v15, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .local v2, "filterParam":Lorg/apache/http/NameValuePair;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v13, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v13, v0, v6, v1}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->getSignature(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 513
    .local v7, "signature":Ljava/lang/String;
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v13, "signature"

    invoke-direct {v8, v13, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .local v8, "signatureParam":Lorg/apache/http/NameValuePair;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    .line 518
    .local v4, "length":I
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 521
    const/16 v13, 0x400

    if-lt v4, v13, :cond_7

    .line 536
    .end local v2    # "filterParam":Lorg/apache/http/NameValuePair;
    .end local v4    # "length":I
    .end local v7    # "signature":Ljava/lang/String;
    .end local v8    # "signatureParam":Lorg/apache/http/NameValuePair;
    .end local v10    # "tag":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 537
    .local v11, "tagsText":Ljava/lang/String;
    const-string v13, "Request"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 538
    const-string v13, "Request"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The filterTag is :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_5
    const-string v13, "filterTag"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    return-void

    .line 508
    .end local v11    # "tagsText":Ljava/lang/String;
    .restart local v10    # "tag":Ljava/lang/String;
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 524
    .restart local v2    # "filterParam":Lorg/apache/http/NameValuePair;
    .restart local v4    # "length":I
    .restart local v7    # "signature":Ljava/lang/String;
    .restart local v8    # "signatureParam":Lorg/apache/http/NameValuePair;
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_8

    .line 525
    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_8
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 528
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 531
    const/16 v13, 0x64

    if-lt v9, v13, :cond_1

    goto :goto_2
.end method

.method private static addSignatureParam(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p0, "httpMethod"    # Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "security"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 456
    .local p2, "paramList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->getSignature(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "signature":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "signature"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    return-void
.end method

.method private static checkHostLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;
        }
    .end annotation

    .prologue
    .line 382
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants$URL;->URL_RELOCATION_BASE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->updateRequestHost(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 385
    :cond_0
    return-object p0
.end method

.method private static checkResponse(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 349
    const-string v1, "Request"

    const-string v2, "checkResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    if-nez p1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/request/utils/Request;->isPrivacyError(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/provider/GdprUtils;->isGdprAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const-string v1, "Request"

    const-string/jumbo v2, "start privacy denied service!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.action.PRIVACY_DENIED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.cloudservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static encodeParameters(Lcom/xiaomi/micloudsdk/utils/CryptCoder;Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "coder"    # Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .param p1, "nonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/utils/CryptCoder;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CipherException;
        }
    .end annotation

    .prologue
    .line 401
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 402
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 405
    .restart local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    if-eqz p1, :cond_1

    const-string v5, "_nonce"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 406
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    .local v1, "encodedParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "_nonce"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 413
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 414
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 416
    .local v4, "value":Ljava/lang/String;
    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 417
    if-eqz v4, :cond_2

    .end local v4    # "value":Ljava/lang/String;
    :goto_2
    invoke-interface {p0, v4}, Lcom/xiaomi/micloudsdk/utils/CryptCoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "encoded":Ljava/lang/String;
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v6, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 409
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v1    # "encodedParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v1    # "encodedParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    goto :goto_0

    .line 417
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_2
    const-string v4, ""

    goto :goto_2

    .line 420
    :cond_3
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v6, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 423
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method private static execute(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 24
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 257
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "additionalCookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->checkHostLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 258
    const-string v17, ""

    .line 259
    .local v17, "response":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->isV4Url(Ljava/lang/String;)Z

    move-result v12

    .line 260
    .local v12, "isV4":Z
    const/16 v18, 0x0

    .local v18, "retry":I
    :goto_0
    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 261
    move-object/from16 v19, p0

    .line 262
    .local v19, "urlTemp":Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->queryAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    move-result-object v10

    .line 263
    .local v10, "extAuthToken":Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    iget-object v0, v10, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->getCryptCoder(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/CryptCoder;

    move-result-object v4

    .line 264
    .local v4, "coder":Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    if-eqz v12, :cond_1

    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->generateNonce()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 267
    .local v13, "nonce":Ljava/lang/String;
    :goto_1
    :try_start_1
    move-object/from16 v0, p2

    invoke-static {v4, v13, v0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->encodeParameters(Lcom/xiaomi/micloudsdk/utils/CryptCoder;Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/xiaomi/micloudsdk/exception/CipherException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 272
    .local v7, "encodedParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :try_start_2
    iget-object v0, v10, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v7, v2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->addSignatureParam(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 275
    sget-object v20, Lcom/xiaomi/micloudsdk/request/utils/Request;->sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    .line 276
    invoke-interface/range {v20 .. v20}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->getAccountName()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/xiaomi/micloudsdk/request/utils/Request;->sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    invoke-interface/range {v21 .. v21}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->queryEncryptedAccountName()Ljava/lang/String;

    move-result-object v21

    iget-object v0, v10, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 275
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/Header;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 280
    .local v5, "cookies":Lorg/apache/http/Header;
    :try_start_3
    sget-object v20, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 282
    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    .line 284
    move-object/from16 v0, v19

    invoke-static {v0, v5, v4}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpGetRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v17

    .line 326
    .end local v4    # "coder":Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .end local v5    # "cookies":Lorg/apache/http/Header;
    .end local v7    # "encodedParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v10    # "extAuthToken":Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    .end local v13    # "nonce":Ljava/lang/String;
    .end local v19    # "urlTemp":Ljava/lang/String;
    :cond_0
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/request/utils/Request;->checkResponse(Landroid/content/Context;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/xiaomi/micloudsdk/request/utils/CloudNetworkAvailabilityManager;->setRequestResult(Landroid/content/Context;Z)V

    .line 328
    return-object v17

    .line 264
    .restart local v4    # "coder":Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .restart local v10    # "extAuthToken":Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    .restart local v19    # "urlTemp":Ljava/lang/String;
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 268
    .restart local v13    # "nonce":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 269
    .local v6, "e":Lcom/xiaomi/micloudsdk/exception/CipherException;
    const-string v20, "Request"

    const-string v21, "CipherException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    new-instance v20, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v21, 0x0

    invoke-virtual {v6}, Lcom/xiaomi/micloudsdk/exception/CipherException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    throw v20
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 329
    .end local v4    # "coder":Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .end local v6    # "e":Lcom/xiaomi/micloudsdk/exception/CipherException;
    .end local v10    # "extAuthToken":Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    .end local v12    # "isV4":Z
    .end local v13    # "nonce":Ljava/lang/String;
    .end local v17    # "response":Ljava/lang/String;
    .end local v18    # "retry":I
    .end local v19    # "urlTemp":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 330
    .local v9, "ex":Ljava/io/IOException;
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/xiaomi/micloudsdk/request/utils/CloudNetworkAvailabilityManager;->setRequestResult(Landroid/content/Context;Z)V

    .line 331
    throw v9

    .line 286
    .end local v9    # "ex":Ljava/io/IOException;
    .restart local v4    # "coder":Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .restart local v5    # "cookies":Lorg/apache/http/Header;
    .restart local v7    # "encodedParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v10    # "extAuthToken":Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    .restart local v12    # "isV4":Z
    .restart local v13    # "nonce":Ljava/lang/String;
    .restart local v17    # "response":Ljava/lang/String;
    .restart local v18    # "retry":I
    .restart local v19    # "urlTemp":Ljava/lang/String;
    :cond_2
    :try_start_5
    sget-object v20, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 288
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v20, "UTF-8"

    move-object/from16 v0, v20

    invoke-direct {v8, v7, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 290
    .local v8, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    move-object/from16 v0, v19

    invoke-static {v0, v8, v5, v4}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpPostRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    .line 292
    .end local v8    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_3
    sget-object v20, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST_JSON:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 293
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 295
    .local v16, "postJSON":Lorg/json/JSONObject;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    :try_start_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_5

    .line 296
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/http/NameValuePair;

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/http/NameValuePair;

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 295
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 298
    :catch_2
    move-exception v6

    .line 299
    .local v6, "e":Lorg/json/JSONException;
    :try_start_7
    new-instance v20, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/16 v21, 0x0

    invoke-virtual {v6}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    throw v20
    :try_end_7
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 308
    .end local v6    # "e":Lorg/json/JSONException;
    .end local v11    # "i":I
    .end local v16    # "postJSON":Lorg/json/JSONObject;
    :catch_3
    move-exception v6

    .line 309
    .local v6, "e":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    :try_start_8
    const-string v20, "Request"

    const-string v21, "CloudServer Exception: "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    invoke-virtual {v6}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getStatusCode()I

    move-result v20

    const/16 v21, 0x191

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 311
    if-nez v18, :cond_7

    .line 312
    const-string v20, "Request"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CloudServer 401 Exception: retry="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    sget-object v20, Lcom/xiaomi/micloudsdk/request/utils/Request;->sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    invoke-interface/range {v20 .. v20}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->invalidateAuthToken()V

    .line 314
    iget-wide v0, v6, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->serverDate:J

    move-wide/from16 v20, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v14, v20, v22

    .line 315
    .local v14, "offset":J
    invoke-static {v14, v15}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->setServerDateOffset(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 260
    .end local v14    # "offset":J
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 301
    .end local v6    # "e":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    .restart local v11    # "i":I
    .restart local v16    # "postJSON":Lorg/json/JSONObject;
    :cond_5
    :try_start_9
    new-instance v8, Lorg/apache/http/entity/StringEntity;

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "utf-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .local v8, "entity":Lorg/apache/http/entity/StringEntity;
    move-object/from16 v0, v19

    invoke-static {v0, v8, v5, v4}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpPostJSONRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Lorg/apache/http/Header;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2

    .line 306
    .end local v8    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v11    # "i":I
    .end local v16    # "postJSON":Lorg/json/JSONObject;
    :cond_6
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "http method not supported."

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_9
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 316
    .restart local v6    # "e":Lcom/xiaomi/micloudsdk/exception/CloudServerException;
    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 317
    :try_start_a
    const-string v20, "Request"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CloudServer 401 Exception: retry="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    throw v6

    .line 321
    :cond_8
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/xiaomi/micloudsdk/request/utils/Request;->handleCloudServerException(Landroid/content/Context;Lcom/xiaomi/micloudsdk/exception/CloudServerException;)V

    .line 322
    throw v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/Request;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sContext=null! Please call Request.init(Context) at Application onCreate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/Request;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/Header;
    .locals 6
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "encryptedUserId"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/Header;"
        }
    .end annotation

    .prologue
    .line 428
    .local p3, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "serviceToken="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    if-eqz p1, :cond_0

    .line 432
    const-string v3, "; cUserId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 436
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 438
    .local v2, "key":Ljava/lang/String;
    const-string v3, "cUserId"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "userId"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "serviceToken"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 441
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 448
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "Cookie"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/Request;->sRegion:Ljava/lang/String;

    return-object v0
.end method

.method public static getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/Request;->sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    return-object v0
.end method

.method private static handleCloudServerException(Landroid/content/Context;Lcom/xiaomi/micloudsdk/exception/CloudServerException;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "e"    # Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .prologue
    .line 336
    iget v2, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    const/16 v3, 0x1f7

    if-ne v2, v3, :cond_1

    iget v2, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    if-lez v2, :cond_1

    .line 337
    const-string v0, "com.xiaomi.action.DATA_IN_TRANSFER"

    .line 338
    .local v0, "actionDataInTransfer":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "retryTime"

    iget v3, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    .end local v0    # "actionDataInTransfer":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget v2, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    const v3, 0xcb23

    if-ne v2, v3, :cond_0

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/provider/GdprUtils;->isGdprAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.action.PRIVACY_DENIED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "com.miui.cloudservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    sput-object p0, Lcom/xiaomi/micloudsdk/request/utils/Request;->sContext:Landroid/content/Context;

    .line 120
    return-void
.end method

.method private static isPrivacyError(Ljava/lang/String;)Z
    .locals 5
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 365
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "code"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const v4, 0xcb23

    if-ne v3, v4, :cond_0

    .line 367
    const/4 v2, 0x1

    .line 372
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v2

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static queryAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;
        }
    .end annotation

    .prologue
    .line 392
    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/Request;->sRequestEnv:Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    invoke-interface {v1}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->queryAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    move-result-object v0

    .line 393
    .local v0, "extAuthToken":Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    if-nez v0, :cond_0

    .line 394
    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const/4 v2, 0x0

    const-string v3, "execute() : queryAuthToken == null"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 396
    :cond_0
    return-object v0
.end method

.method public static secureGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->secureGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static secureGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "additionalCookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->execute(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static securePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->securePost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static securePost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/micloudsdk/exception/CloudServerException;
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "additionalCookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->execute(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setRegion(Ljava/lang/String;)V
    .locals 0
    .param p0, "region"    # Ljava/lang/String;

    .prologue
    .line 130
    sput-object p0, Lcom/xiaomi/micloudsdk/request/utils/Request;->sRegion:Ljava/lang/String;

    .line 131
    return-void
.end method
