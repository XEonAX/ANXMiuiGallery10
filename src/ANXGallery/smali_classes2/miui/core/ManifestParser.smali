.class public Lmiui/core/ManifestParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ELEMENT_DEPENDENCIES:Ljava/lang/String; = "dependencies"

.field private static final ELEMENT_DEPENDENCY:Ljava/lang/String; = "dependency"

.field private static final fH:Ljava/lang/String; = "com.miui.sdk.manifest"

.field private static final xA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final xv:Ljava/lang/String; = "miui_manifest"

.field private static final xw:Ljava/lang/String; = "manifest"

.field private static final xx:Ljava/lang/String; = "uses-sdk"

.field private static final xy:Ljava/lang/String; = "modules"

.field private static final xz:Ljava/lang/String; = "module"


# instance fields
.field private fU:Landroid/content/res/XmlResourceParser;

.field private nO:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lmiui/core/ManifestParser;->xA:Ljava/util/Map;

    .line 48
    sget-object v0, Lmiui/core/ManifestParser;->xA:Ljava/util/Map;

    const-string v1, "com.miui.core"

    const-string v2, "miui"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lmiui/core/ManifestParser;->xA:Ljava/util/Map;

    const-string v1, "com.miui.system"

    const-string v2, "miui.system"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lmiui/core/ManifestParser;->xA:Ljava/util/Map;

    const-string v1, "com.miui.rom"

    const-string v2, "android.miui"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lmiui/core/ManifestParser;->nO:Landroid/content/res/Resources;

    .line 58
    iput-object p2, p0, Lmiui/core/ManifestParser;->fU:Landroid/content/res/XmlResourceParser;

    .line 59
    return-void
.end method

.method private a(Lmiui/core/Manifest;)Lmiui/core/Manifest;
    .registers 4

    .line 251
    invoke-virtual {p1}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object v0

    if-nez v0, :cond_e

    .line 252
    new-instance v0, Lmiui/module/Module;

    invoke-direct {v0}, Lmiui/module/Module;-><init>()V

    .line 253
    invoke-virtual {p1, v0}, Lmiui/core/Manifest;->setModule(Lmiui/module/Module;)V

    .line 255
    :cond_e
    invoke-virtual {p1}, Lmiui/core/Manifest;->getSdkDependency()Lmiui/module/Dependency;

    move-result-object v0

    if-nez v0, :cond_35

    .line 256
    new-instance v0, Lmiui/module/Dependency$Level;

    invoke-direct {v0}, Lmiui/module/Dependency$Level;-><init>()V

    .line 257
    invoke-direct {p0, v0}, Lmiui/core/ManifestParser;->b(Lmiui/module/Dependency$Level;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/module/Dependency$Level;->setMinLevel(I)V

    .line 258
    invoke-direct {p0, v0}, Lmiui/core/ManifestParser;->c(Lmiui/module/Dependency$Level;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/module/Dependency$Level;->setTargetLevel(I)V

    .line 259
    invoke-direct {p0, v0}, Lmiui/core/ManifestParser;->d(Lmiui/module/Dependency$Level;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/module/Dependency$Level;->setMaxLevel(I)V

    .line 260
    invoke-direct {p0, v0}, Lmiui/core/ManifestParser;->a(Lmiui/module/Dependency$Level;)Lmiui/module/Dependency;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/core/Manifest;->setSdkDependency(Lmiui/module/Dependency;)V

    .line 262
    :cond_35
    return-object p1
.end method

.method private a(Lmiui/module/Dependency$Level;)Lmiui/module/Dependency;
    .registers 4

    .line 266
    new-instance v0, Lmiui/module/Dependency;

    invoke-direct {v0}, Lmiui/module/Dependency;-><init>()V

    .line 267
    const-string v1, "com.miui.core"

    invoke-virtual {v0, v1}, Lmiui/module/Dependency;->setName(Ljava/lang/String;)V

    .line 268
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/module/Dependency;->setType(I)V

    .line 269
    invoke-virtual {v0, p1}, Lmiui/module/Dependency;->setLevel(Lmiui/module/Dependency$Level;)V

    .line 270
    return-object v0
.end method

.method private a(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    sget-object v0, Lmiui/R$styleable;->MiuiManifest:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 148
    new-instance v1, Lmiui/module/Module;

    invoke-direct {v1}, Lmiui/module/Module;-><init>()V

    .line 149
    sget v2, Lmiui/R$styleable;->MiuiManifest_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/module/Module;->setName(Ljava/lang/String;)V

    .line 150
    sget v2, Lmiui/R$styleable;->MiuiManifest_level:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Module;->setLevel(I)V

    .line 151
    sget v2, Lmiui/R$styleable;->MiuiManifest_moduleContent:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Module;->setContent(I)V

    .line 152
    invoke-virtual {p1, v1}, Lmiui/core/Manifest;->setModule(Lmiui/module/Module;)V

    .line 153
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    nop

    .line 156
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 157
    :cond_32
    :goto_32
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_70

    const/4 v2, 0x3

    if-ne v1, v2, :cond_42

    .line 158
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_70

    .line 159
    :cond_42
    if-eq v1, v2, :cond_32

    const/4 v2, 0x4

    if-ne v1, v2, :cond_48

    .line 160
    goto :goto_32

    .line 163
    :cond_48
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 164
    const-string v2, "uses-sdk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 165
    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->b(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_6f

    .line 166
    :cond_58
    const-string v2, "modules"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->c(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_6f

    .line 168
    :cond_64
    const-string v2, "dependencies"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 169
    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->e(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    .line 171
    :cond_6f
    :goto_6f
    goto :goto_32

    .line 172
    :cond_70
    return-void
.end method

.method private b(Lmiui/module/Dependency$Level;)I
    .registers 2

    .line 274
    const/4 p1, 0x1

    return p1
.end method

.method private b(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 6

    .line 175
    sget-object v0, Lmiui/R$styleable;->MiuiManifestUsesSdk:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 176
    new-instance p3, Lmiui/module/Dependency$Level;

    invoke-direct {p3}, Lmiui/module/Dependency$Level;-><init>()V

    .line 177
    sget v0, Lmiui/R$styleable;->MiuiManifestUsesSdk_minLevel:I

    invoke-direct {p0, p3}, Lmiui/core/ManifestParser;->b(Lmiui/module/Dependency$Level;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p3, v0}, Lmiui/module/Dependency$Level;->setMinLevel(I)V

    .line 178
    sget v0, Lmiui/R$styleable;->MiuiManifestUsesSdk_targetLevel:I

    invoke-direct {p0, p3}, Lmiui/core/ManifestParser;->c(Lmiui/module/Dependency$Level;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p3, v0}, Lmiui/module/Dependency$Level;->setTargetLevel(I)V

    .line 179
    sget v0, Lmiui/R$styleable;->MiuiManifestUsesSdk_maxLevel:I

    invoke-direct {p0, p3}, Lmiui/core/ManifestParser;->d(Lmiui/module/Dependency$Level;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p3, v0}, Lmiui/module/Dependency$Level;->setMaxLevel(I)V

    .line 180
    invoke-direct {p0, p3}, Lmiui/core/ManifestParser;->a(Lmiui/module/Dependency$Level;)Lmiui/module/Dependency;

    move-result-object p3

    invoke-virtual {p1, p3}, Lmiui/core/Manifest;->setSdkDependency(Lmiui/module/Dependency;)V

    .line 181
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    return-void
.end method

.method private c(Lmiui/module/Dependency$Level;)I
    .registers 2

    .line 278
    invoke-virtual {p1}, Lmiui/module/Dependency$Level;->getMinLevel()I

    move-result p1

    return p1
.end method

.method private c(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    nop

    .line 187
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 188
    :cond_5
    :goto_5
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_15

    .line 189
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2b

    .line 190
    :cond_15
    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1b

    .line 191
    goto :goto_5

    .line 194
    :cond_1b
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string v2, "module"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->d(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    .line 198
    :cond_2a
    goto :goto_5

    .line 199
    :cond_2b
    return-void
.end method

.method public static create(Landroid/content/Context;)Lmiui/core/ManifestParser;
    .registers 4

    .line 62
    nop

    .line 64
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_12

    .line 68
    goto :goto_17

    .line 66
    :catch_12
    move-exception v0

    .line 67
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 69
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lmiui/core/ManifestParser;->createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;

    move-result-object p0

    return-object p0
.end method

.method public static createFromArchive(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;
    .registers 4

    .line 79
    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/miui/internal/util/ResourcesUtils;->createResources([Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 81
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p0}, Lmiui/core/ManifestParser;->createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;

    move-result-object p0

    return-object p0
.end method

.method public static createFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;
    .registers 5

    .line 86
    const/16 v0, 0x80

    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/miui/internal/util/ResourcesUtils;->createResources([Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {v0, p1, p0}, Lmiui/core/ManifestParser;->createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;

    move-result-object p0
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_18} :catch_19

    return-object p0

    .line 89
    :catch_19
    move-exception p0

    .line 90
    const-string p0, "miuisdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 p0, 0x0

    invoke-static {p0, p0}, Lmiui/core/ManifestParser;->createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;

    move-result-object p0

    return-object p0
.end method

.method public static createFromResId(Landroid/content/Context;I)Lmiui/core/ManifestParser;
    .registers 2

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 74
    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 75
    :goto_c
    invoke-static {p0, p1}, Lmiui/core/ManifestParser;->createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;

    move-result-object p0

    return-object p0
.end method

.method public static createFromResources(Landroid/content/res/Resources;Ljava/lang/String;Landroid/os/Bundle;)Lmiui/core/ManifestParser;
    .registers 4

    .line 96
    nop

    .line 97
    if-eqz p2, :cond_a

    .line 98
    const-string v0, "com.miui.sdk.manifest"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_b

    .line 100
    :cond_a
    const/4 p2, 0x0

    :goto_b
    if-nez p2, :cond_21

    .line 101
    sget-object p2, Lmiui/core/ManifestParser;->xA:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 102
    if-nez p2, :cond_18

    .line 103
    goto :goto_19

    .line 105
    :cond_18
    move-object p1, p2

    :goto_19
    const-string p2, "miui_manifest"

    const-string v0, "xml"

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 107
    :cond_21
    if-nez p2, :cond_25

    const/4 p1, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 108
    :goto_29
    invoke-static {p0, p1}, Lmiui/core/ManifestParser;->createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;

    move-result-object p0

    return-object p0
.end method

.method public static createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;
    .registers 3

    .line 112
    new-instance v0, Lmiui/core/ManifestParser;

    invoke-direct {v0, p0, p1}, Lmiui/core/ManifestParser;-><init>(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method private d(Lmiui/module/Dependency$Level;)I
    .registers 2

    .line 282
    const p1, 0x7fffffff

    return p1
.end method

.method private d(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    sget-object v0, Lmiui/R$styleable;->MiuiManifestModule:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 204
    sget p3, Lmiui/R$styleable;->MiuiManifestModule_name:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 205
    new-instance v0, Lmiui/module/Dependency;

    invoke-direct {v0}, Lmiui/module/Dependency;-><init>()V

    .line 206
    invoke-virtual {v0, p3}, Lmiui/module/Dependency;->setName(Ljava/lang/String;)V

    .line 207
    sget v1, Lmiui/R$styleable;->MiuiManifestModule_dependencyType:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/module/Dependency;->setType(I)V

    .line 208
    new-instance v1, Lmiui/module/Dependency$Level;

    invoke-direct {v1}, Lmiui/module/Dependency$Level;-><init>()V

    .line 209
    sget v2, Lmiui/R$styleable;->MiuiManifestModule_minLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->b(Lmiui/module/Dependency$Level;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Dependency$Level;->setMinLevel(I)V

    .line 210
    sget v2, Lmiui/R$styleable;->MiuiManifestModule_targetLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->c(Lmiui/module/Dependency$Level;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Dependency$Level;->setTargetLevel(I)V

    .line 211
    sget v2, Lmiui/R$styleable;->MiuiManifestModule_maxLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->d(Lmiui/module/Dependency$Level;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Dependency$Level;->setMaxLevel(I)V

    .line 212
    invoke-virtual {v0, v1}, Lmiui/module/Dependency;->setLevel(Lmiui/module/Dependency$Level;)V

    .line 213
    invoke-virtual {p1, p3, v0}, Lmiui/core/Manifest;->addDependency(Ljava/lang/String;Lmiui/module/Dependency;)V

    .line 214
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    return-void
.end method

.method private e(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    nop

    .line 220
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 221
    :cond_5
    :goto_5
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_15

    .line 222
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2b

    .line 223
    :cond_15
    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1b

    .line 224
    goto :goto_5

    .line 227
    :cond_1b
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 228
    const-string v2, "dependency"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lmiui/core/ManifestParser;->f(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    .line 231
    :cond_2a
    goto :goto_5

    .line 232
    :cond_2b
    return-void
.end method

.method private f(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    sget-object v0, Lmiui/R$styleable;->MiuiManifestModule:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 237
    sget p3, Lmiui/R$styleable;->MiuiManifestModule_name:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 238
    new-instance v0, Lmiui/module/Dependency;

    invoke-direct {v0}, Lmiui/module/Dependency;-><init>()V

    .line 239
    invoke-virtual {v0, p3}, Lmiui/module/Dependency;->setName(Ljava/lang/String;)V

    .line 240
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/module/Dependency;->setType(I)V

    .line 241
    new-instance v1, Lmiui/module/Dependency$Level;

    invoke-direct {v1}, Lmiui/module/Dependency$Level;-><init>()V

    .line 242
    sget v2, Lmiui/R$styleable;->MiuiManifestModule_minLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->b(Lmiui/module/Dependency$Level;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Dependency$Level;->setMinLevel(I)V

    .line 243
    sget v2, Lmiui/R$styleable;->MiuiManifestModule_targetLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->c(Lmiui/module/Dependency$Level;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Dependency$Level;->setTargetLevel(I)V

    .line 244
    sget v2, Lmiui/R$styleable;->MiuiManifestModule_maxLevel:I

    invoke-direct {p0, v1}, Lmiui/core/ManifestParser;->d(Lmiui/module/Dependency$Level;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/module/Dependency$Level;->setMaxLevel(I)V

    .line 245
    invoke-virtual {v0, v1}, Lmiui/module/Dependency;->setLevel(Lmiui/module/Dependency$Level;)V

    .line 246
    invoke-virtual {p1, p3, v0}, Lmiui/core/Manifest;->addDependency(Ljava/lang/String;Lmiui/module/Dependency;)V

    .line 247
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    return-void
.end method


# virtual methods
.method public parse(Ljava/util/Map;)Lmiui/core/Manifest;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lmiui/core/Manifest;"
        }
    .end annotation

    .line 116
    if-nez p1, :cond_7

    .line 117
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 119
    :cond_7
    new-instance p1, Lmiui/core/Manifest;

    invoke-direct {p1}, Lmiui/core/Manifest;-><init>()V

    .line 120
    iget-object v0, p0, Lmiui/core/ManifestParser;->fU:Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_47

    .line 122
    :try_start_10
    iget-object v0, p0, Lmiui/core/ManifestParser;->nO:Landroid/content/res/Resources;

    .line 123
    iget-object v1, p0, Lmiui/core/ManifestParser;->fU:Landroid/content/res/XmlResourceParser;

    .line 125
    nop

    .line 126
    :goto_15
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    .line 127
    goto :goto_15

    .line 130
    :cond_20
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 131
    const-string v3, "manifest"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 132
    invoke-direct {p0, p1, v0, v1}, Lmiui/core/ManifestParser;->a(Lmiui/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    :try_end_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_2f} :catch_37
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2f} :catch_32
    .catchall {:try_start_10 .. :try_end_2f} :catchall_30

    goto :goto_3b

    .line 139
    :catchall_30
    move-exception p1

    goto :goto_41

    .line 136
    :catch_32
    move-exception v0

    .line 137
    :try_start_33
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 134
    :catch_37
    move-exception v0

    .line 135
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_30

    .line 139
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lmiui/core/ManifestParser;->fU:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 140
    goto :goto_47

    .line 139
    :goto_41
    iget-object v0, p0, Lmiui/core/ManifestParser;->fU:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw p1

    .line 142
    :cond_47
    :goto_47
    invoke-direct {p0, p1}, Lmiui/core/ManifestParser;->a(Lmiui/core/Manifest;)Lmiui/core/Manifest;

    move-result-object p1

    return-object p1
.end method
