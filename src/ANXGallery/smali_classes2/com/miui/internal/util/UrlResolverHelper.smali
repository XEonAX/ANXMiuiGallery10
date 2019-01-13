.class public Lcom/miui/internal/util/UrlResolverHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final jA:Ljava/lang/String; = "mihttps"

.field private static final jB:Ljava/lang/String; = "mifb"

.field private static final jC:[Ljava/lang/String;

.field private static final jD:[Ljava/lang/String;

.field private static final jE:[Ljava/lang/String;

.field private static jF:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static jG:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final jw:Ljava/lang/String; = "http"

.field private static final jx:Ljava/lang/String; = "https"

.field private static final jy:Ljava/lang/String; = "mi"

.field private static final jz:Ljava/lang/String; = "mihttp"


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 23
    const-string v0, "xiaomi.com"

    const-string v1, "mi.com"

    const-string v2, "miui.com"

    const-string v3, "mipay.com"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/UrlResolverHelper;->jC:[Ljava/lang/String;

    .line 30
    const-string v0, "duokan.com"

    const-string v1, "duokanbox.com"

    const-string v2, "mijiayoupin.com"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/UrlResolverHelper;->jD:[Ljava/lang/String;

    .line 37
    const-string v1, "com.xiaomi.channel"

    const-string v2, "com.duokan.reader"

    const-string v3, "com.duokan.hdreader"

    const-string v4, "com.duokan.fiction"

    const-string v5, "com.xiaomi.router"

    const-string v6, "com.xiaomi.smarthome"

    const-string v7, "com.xiaomi.o2o"

    const-string v8, "com.xiaomi.shop"

    const-string v9, "com.xiaomi.jr"

    const-string v10, "com.xiaomi.jr.security"

    const-string v11, "com.xiaomi.mifisecurity"

    const-string v12, "com.xiaomi.loan"

    const-string v13, "com.xiaomi.loanx"

    const-string v14, "com.mi.credit.in"

    const-string v15, "com.mi.credit.id"

    const-string v16, "com.miui.miuibbs"

    const-string v17, "com.wali.live"

    const-string v18, "com.mi.live"

    const-string v19, "com.xiaomi.ab"

    const-string v20, "com.mfashiongallery.emag"

    const-string v21, "com.xiaomi.pass"

    const-string v22, "com.xiaomi.youpin"

    const-string v23, "com.mi.liveassistant"

    const-string v24, "com.xiangkan.android"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/UrlResolverHelper;->jE:[Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/internal/util/UrlResolverHelper;->jF:Ljava/util/Set;

    .line 67
    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->jF:Ljava/util/Set;

    const-string v1, "mihttp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->jF:Ljava/util/Set;

    const-string v1, "mihttps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/internal/util/UrlResolverHelper;->jG:Ljava/util/Set;

    .line 74
    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->jG:Ljava/util/Set;

    const-string v1, "http"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->jG:Ljava/util/Set;

    const-string v1, "https"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->jG:Ljava/util/Set;

    sget-object v1, Lcom/miui/internal/util/UrlResolverHelper;->jF:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mifb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_f

    .line 142
    const-string v1, ""

    goto :goto_13

    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_27

    .line 144
    add-int/lit8 p1, p1, 0x1

    .line 145
    invoke-static {p0, p1, v0}, Lcom/miui/internal/util/UrlResolverHelper;->a(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 147
    :cond_27
    return-object p2
.end method

.method public static getBrowserFallbackUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    .line 124
    const-string v0, "mi"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getFallbackParameter(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/miui/internal/util/UrlResolverHelper;->a(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 129
    if-eqz p0, :cond_19

    .line 130
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 132
    sget-object v2, Lcom/miui/internal/util/UrlResolverHelper;->jG:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 133
    return-object p0

    .line 136
    :cond_19
    return-object v0
.end method

.method public static isBrowserFallbackScheme(Ljava/lang/String;)Z
    .registers 2

    .line 120
    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->jF:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMiHost(Ljava/lang/String;)Z
    .registers 7

    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 94
    return v1

    .line 97
    :cond_8
    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->jC:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_c
    const/4 v4, 0x1

    if-ge v3, v2, :cond_1b

    aget-object v5, v0, v3

    .line 98
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 99
    return v4

    .line 97
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 102
    :cond_1b
    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->jD:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_1f
    if-ge v3, v2, :cond_2d

    aget-object v5, v0, v3

    .line 103
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 104
    return v4

    .line 102
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 107
    :cond_2d
    return v1
.end method

.method public static isMiUrl(Ljava/lang/String;)Z
    .registers 4

    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 81
    return v1

    .line 84
    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 85
    const-string v0, "http"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "https"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 86
    return v1

    .line 89
    :cond_25
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/internal/util/UrlResolverHelper;->isMiHost(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isWhiteListPackage(Ljava/lang/String;)Z
    .registers 6

    .line 111
    sget-object v0, Lcom/miui/internal/util/UrlResolverHelper;->jE:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_5
    if-ge v3, v2, :cond_14

    aget-object v4, v0, v3

    .line 112
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 113
    const/4 p0, 0x1

    return p0

    .line 111
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 116
    :cond_14
    return v1
.end method
