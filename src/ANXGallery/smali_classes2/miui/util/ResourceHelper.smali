.class public Lmiui/util/ResourceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final JF:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ResourceHelper"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lmiui/util/ResourceHelper;->JF:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private static varargs a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

    .line 48
    invoke-static {p0}, Lmiui/util/ResourceHelper;->s(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 49
    if-nez v0, :cond_e

    .line 50
    const-string p1, "ResourceHelper"

    const-string v0, "Fail to load meta data"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 52
    :cond_e
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 53
    if-lez p1, :cond_15

    .line 54
    return p1

    .line 58
    :cond_15
    :goto_15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_42

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "xml"

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 61
    if-lez p1, :cond_2c

    .line 62
    return p1

    .line 65
    :cond_2c
    array-length p1, p3

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, p1, :cond_42

    aget-object v1, p3, v0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "xml"

    invoke-virtual {v2, p2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 67
    if-lez v1, :cond_3f

    .line 68
    return v1

    .line 65
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 73
    :cond_42
    const/4 p0, -0x1

    return p0
.end method

.method public static loadXml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 4

    .line 31
    sget-object v0, Lmiui/util/ResourceHelper;->JF:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lmiui/util/ResourceHelper;->loadXml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method

.method public static varargs loadXml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 4

    .line 37
    invoke-static {p0, p1, p2, p3}, Lmiui/util/ResourceHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 38
    if-lez p1, :cond_f

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0

    .line 41
    :cond_f
    const-string p0, "ResourceHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fail to load config for resource id is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 p0, 0x0

    return-object p0
.end method

.method private static s(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 4

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 78
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_23

    .line 80
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1a} :catch_1b

    .line 84
    goto :goto_23

    .line 82
    :catch_1b
    move-exception p0

    .line 83
    const-string v1, "ResourceHelper"

    const-string v2, "Fail to load config for application not found"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :cond_23
    :goto_23
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object p0
.end method
