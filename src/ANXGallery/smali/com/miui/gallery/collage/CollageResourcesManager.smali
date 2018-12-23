.class public Lcom/miui/gallery/collage/CollageResourcesManager;
.super Ljava/lang/Object;
.source "CollageResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;,
        Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;
    }
.end annotation


# static fields
.field public static final PATH_LAYOUT:Ljava/lang/String;

.field private static final PATH_POSTER:Ljava/lang/String;

.field public static final PATH_POSTER_LAYOUT:Ljava/lang/String;

.field public static final PATH_POSTER_MODE:Ljava/lang/String;

.field private static final SEPARATOR:Ljava/lang/String;


# instance fields
.field private mLayoutSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/LayoutModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPosterLayoutSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/LayoutModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPosterSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/PosterModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResourcesUpdateListener:Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/collage/CollageResourcesManager;->SEPARATOR:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/collage/CollageResourcesManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/collage/CollageResourcesManager;->PATH_LAYOUT:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/collage/CollageResourcesManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "poster"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/collage/CollageResourcesManager;->PATH_POSTER:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/collage/CollageResourcesManager;->PATH_POSTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/collage/CollageResourcesManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/collage/CollageResourcesManager;->PATH_POSTER_MODE:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/collage/CollageResourcesManager;->PATH_POSTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/collage/CollageResourcesManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/collage/CollageResourcesManager;->PATH_POSTER_LAYOUT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageResourcesManager;->mLayoutSparseArray:Landroid/util/SparseArray;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageResourcesManager;->mPosterLayoutSparseArray:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/CollageResourcesManager;->mPosterSparseArray:Landroid/util/SparseArray;

    .line 177
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/collage/CollageResourcesManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageResourcesManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageResourcesManager;->mLayoutSparseArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/collage/CollageResourcesManager;Landroid/util/SparseArray;Lcom/miui/gallery/collage/LayoutModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageResourcesManager;
    .param p1, "x1"    # Landroid/util/SparseArray;
    .param p2, "x2"    # Lcom/miui/gallery/collage/LayoutModel;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/collage/CollageResourcesManager;->addLayoutModel(Landroid/util/SparseArray;Lcom/miui/gallery/collage/LayoutModel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/collage/CollageResourcesManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageResourcesManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageResourcesManager;->mPosterLayoutSparseArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/collage/CollageResourcesManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageResourcesManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageResourcesManager;->mPosterSparseArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/collage/CollageResourcesManager;Landroid/util/SparseArray;Lcom/miui/gallery/collage/PosterModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageResourcesManager;
    .param p1, "x1"    # Landroid/util/SparseArray;
    .param p2, "x2"    # Lcom/miui/gallery/collage/PosterModel;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/collage/CollageResourcesManager;->addPosterModel(Landroid/util/SparseArray;Lcom/miui/gallery/collage/PosterModel;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/collage/CollageResourcesManager;)Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/CollageResourcesManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageResourcesManager;->mResourcesUpdateListener:Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;

    return-object v0
.end method

.method private addLayoutModel(Landroid/util/SparseArray;Lcom/miui/gallery/collage/LayoutModel;)V
    .locals 2
    .param p2, "layoutModel"    # Lcom/miui/gallery/collage/LayoutModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/LayoutModel;",
            ">;>;",
            "Lcom/miui/gallery/collage/LayoutModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/miui/gallery/collage/LayoutModel;>;>;"
    iget v1, p2, Lcom/miui/gallery/collage/LayoutModel;->size:I

    .line 124
    .local v1, "size":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 125
    .local v0, "layoutModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/LayoutModel;>;"
    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "layoutModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/LayoutModel;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .restart local v0    # "layoutModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/LayoutModel;>;"
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method private addPosterModel(Landroid/util/SparseArray;Lcom/miui/gallery/collage/PosterModel;)V
    .locals 5
    .param p2, "posterModel"    # Lcom/miui/gallery/collage/PosterModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/PosterModel;",
            ">;>;",
            "Lcom/miui/gallery/collage/PosterModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/miui/gallery/collage/PosterModel;>;>;"
    iget-object v2, p2, Lcom/miui/gallery/collage/PosterModel;->collageModels:[I

    .line 134
    .local v2, "sizes":[I
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v2, v3

    .line 135
    .local v1, "size":I
    div-int/lit8 v1, v1, 0xa

    .line 136
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 137
    .local v0, "posterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/PosterModel;>;"
    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "posterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/PosterModel;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .restart local v0    # "posterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/PosterModel;>;"
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "posterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/PosterModel;>;"
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method public static generateLayoutModelByName(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Ljava/lang/String;)Lcom/miui/gallery/collage/LayoutModel;
    .locals 4
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .param p2, "jsonParser"    # Lcom/google/gson/JsonParser;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/gallery/collage/CollageResourcesManager;->PATH_LAYOUT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/collage/CollageResourcesManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/gallery/collage/CollageUtils;->loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "jsonString":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 92
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v2, "name"

    invoke-virtual {v0, v2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-class v2, Lcom/miui/gallery/collage/LayoutModel;

    invoke-virtual {p1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/collage/LayoutModel;

    return-object v2
.end method

.method public static generatePosterLayoutModelByName(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Ljava/lang/String;)Lcom/miui/gallery/collage/LayoutModel;
    .locals 4
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .param p2, "jsonParser"    # Lcom/google/gson/JsonParser;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/gallery/collage/CollageResourcesManager;->PATH_POSTER_LAYOUT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/collage/CollageResourcesManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/gallery/collage/CollageUtils;->loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "jsonString":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 99
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v2, "name"

    invoke-virtual {v0, v2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-class v2, Lcom/miui/gallery/collage/LayoutModel;

    invoke-virtual {p1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/collage/LayoutModel;

    return-object v2
.end method

.method public static generatePosterModelByName(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Ljava/lang/String;)Lcom/miui/gallery/collage/PosterModel;
    .locals 10
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .param p2, "jsonParser"    # Lcom/google/gson/JsonParser;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/miui/gallery/collage/CollageResourcesManager;->PATH_POSTER_MODE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/miui/gallery/collage/CollageResourcesManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "relativePath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/miui/gallery/collage/CollageResourcesManager;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "main.json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "jsonPath":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/miui/gallery/collage/CollageUtils;->loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "jsonString":Ljava/lang/String;
    invoke-virtual {p2, v6}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 109
    .local v4, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v8, "relativePath"

    invoke-virtual {v4, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v8, "name"

    invoke-virtual {v4, v8, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v8, "imageElementModels"

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 112
    .local v1, "imageElement":Lcom/google/gson/JsonElement;
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 114
    .local v0, "imageArray":Lcom/google/gson/JsonArray;
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    .line 115
    .local v3, "jsonElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 116
    .local v2, "imageObject":Lcom/google/gson/JsonObject;
    const-string v9, "relativePath"

    invoke-virtual {v2, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v0    # "imageArray":Lcom/google/gson/JsonArray;
    .end local v2    # "imageObject":Lcom/google/gson/JsonObject;
    .end local v3    # "jsonElement":Lcom/google/gson/JsonElement;
    :cond_0
    const-class v8, Lcom/miui/gallery/collage/PosterModel;

    invoke-virtual {p1, v4, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/collage/PosterModel;

    return-object v8
.end method

.method public static getCreativePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getCreativeDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPosterLayoutIndex(Lcom/miui/gallery/collage/PosterModel;I)I
    .locals 6
    .param p0, "posterModel"    # Lcom/miui/gallery/collage/PosterModel;
    .param p1, "size"    # I

    .prologue
    .line 163
    const/4 v1, -0x1

    .line 164
    .local v1, "layoutIndex":I
    iget-object v3, p0, Lcom/miui/gallery/collage/PosterModel;->collageModels:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 165
    .local v0, "index":I
    div-int/lit8 v5, v0, 0xa

    if-ne v5, p1, :cond_1

    .line 166
    rem-int/lit8 v1, v0, 0xa

    .line 170
    .end local v0    # "index":I
    :cond_0
    return v1

    .line 164
    .restart local v0    # "index":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method getLayoutListBySize(I)Ljava/util/List;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/LayoutModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageResourcesManager;->mLayoutSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getPosterCollageLayout(Lcom/miui/gallery/collage/PosterModel;I)Lcom/miui/gallery/collage/LayoutModel;
    .locals 2
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/PosterModel;
    .param p2, "size"    # I

    .prologue
    .line 154
    invoke-static {p1, p2}, Lcom/miui/gallery/collage/CollageResourcesManager;->getPosterLayoutIndex(Lcom/miui/gallery/collage/PosterModel;I)I

    move-result v0

    .line 155
    .local v0, "layoutIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/miui/gallery/collage/CollageResourcesManager;->mPosterLayoutSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/collage/LayoutModel;

    .line 158
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getPosterListBySize(I)Ljava/util/List;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/PosterModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageResourcesManager;->mPosterSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method loadLocalResAsync(Landroid/content/res/AssetManager;)V
    .locals 3
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 40
    new-instance v0, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;-><init>(Lcom/miui/gallery/collage/CollageResourcesManager;Lcom/miui/gallery/collage/CollageResourcesManager$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/res/AssetManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method setResourcesUpdateListener(Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;)V
    .locals 0
    .param p1, "resourcesUpdateListener"    # Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageResourcesManager;->mResourcesUpdateListener:Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;

    .line 183
    return-void
.end method
