.class Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;
.super Landroid/os/AsyncTask;
.source "RefocusEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/RefocusEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadEffectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/res/AssetManager;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mEffectLoadListener:Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;

.field private mRefocusEffectConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mRelightingEffectConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/extraphoto/refocus/RefocusEffectManager;


# direct methods
.method private constructor <init>(Lcom/miui/extraphoto/refocus/RefocusEffectManager;Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;)V
    .locals 0
    .param p2, "effectLoadListener"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;

    .line 52
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->this$0:Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->mEffectLoadListener:Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/extraphoto/refocus/RefocusEffectManager;Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;Lcom/miui/extraphoto/refocus/RefocusEffectManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager;
    .param p2, "x1"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;
    .param p3, "x2"    # Lcom/miui/extraphoto/refocus/RefocusEffectManager$1;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;-><init>(Lcom/miui/extraphoto/refocus/RefocusEffectManager;Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, [Landroid/content/res/AssetManager;

    invoke-virtual {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->doInBackground([Landroid/content/res/AssetManager;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/res/AssetManager;)Ljava/util/List;
    .locals 13
    .param p1, "params"    # [Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/res/AssetManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;",
            ">;"
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 59
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->mRefocusEffectConfigs:Ljava/util/List;

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->mRelightingEffectConfigs:Ljava/util/List;

    .line 62
    :try_start_0
    invoke-static {}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "refocusItemPath":[Ljava/lang/String;
    invoke-static {}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "relightingItemPath":[Ljava/lang/String;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 65
    .local v4, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lcom/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/google/gson/JsonParser;-><init>()V

    .line 66
    .local v5, "jsonParser":Lcom/google/gson/JsonParser;
    move v6, v0

    .local v6, "i":I
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_0

    .line 67
    aget-object v7, v2, v6

    .line 68
    .local v7, "folderName":Ljava/lang/String;
    invoke-static {v7}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "configPath":Ljava/lang/String;
    invoke-static {v1, v8}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "config":Ljava/lang/String;
    invoke-virtual {v5, v9}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 71
    .local v10, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v11, "relativePath"

    invoke-static {v7}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-class v11, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    invoke-virtual {v4, v10, v11}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 74
    .local v11, "refocusEffectConfig":Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    iget-object v12, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->mRefocusEffectConfigs:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v7    # "folderName":Ljava/lang/String;
    .end local v8    # "configPath":Ljava/lang/String;
    .end local v9    # "config":Ljava/lang/String;
    .end local v10    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v11    # "refocusEffectConfig":Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 77
    .end local v6    # "i":I
    :cond_0
    nop

    .local v0, "i":I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 78
    aget-object v6, v3, v0

    .line 79
    .local v6, "folderName":Ljava/lang/String;
    invoke-static {v6}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "configPath":Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "config":Ljava/lang/String;
    invoke-virtual {v5, v8}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    .line 82
    .local v9, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v10, "relativePath"

    invoke-static {v6}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-class v10, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    invoke-virtual {v4, v9, v10}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    .line 85
    .local v10, "refocusEffectConfig":Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    iget-object v11, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->mRelightingEffectConfigs:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v6    # "folderName":Ljava/lang/String;
    .end local v7    # "configPath":Ljava/lang/String;
    .end local v8    # "config":Ljava/lang/String;
    .end local v9    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v10    # "refocusEffectConfig":Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$700()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$800()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "config.json"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/extraphoto/refocus/RefocusIOUtils;->loadResourceFileString(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "config":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 90
    .local v6, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v7, "relativePath"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$700()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$800()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v7, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->this$0:Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    const-class v8, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    invoke-virtual {v4, v6, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    invoke-static {v7, v8}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$902(Lcom/miui/extraphoto/refocus/RefocusEffectManager;Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "config":Ljava/lang/String;
    .end local v2    # "refocusItemPath":[Ljava/lang/String;
    .end local v3    # "relightingItemPath":[Ljava/lang/String;
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .end local v5    # "jsonParser":Lcom/google/gson/JsonParser;
    .end local v6    # "jsonObject":Lcom/google/gson/JsonObject;
    goto :goto_2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "refocusEffectConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;>;"
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->this$0:Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$1000(Lcom/miui/extraphoto/refocus/RefocusEffectManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->this$0:Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$1000(Lcom/miui/extraphoto/refocus/RefocusEffectManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->mRefocusEffectConfigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->this$0:Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$1100(Lcom/miui/extraphoto/refocus/RefocusEffectManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->this$0:Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    invoke-static {v0}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$1100(Lcom/miui/extraphoto/refocus/RefocusEffectManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->mRelightingEffectConfigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->mEffectLoadListener:Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->mEffectLoadListener:Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->this$0:Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    invoke-static {v1}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$1000(Lcom/miui/extraphoto/refocus/RefocusEffectManager;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->this$0:Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    invoke-static {v2}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$1100(Lcom/miui/extraphoto/refocus/RefocusEffectManager;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$LoadEffectTask;->this$0:Lcom/miui/extraphoto/refocus/RefocusEffectManager;

    invoke-static {v3}, Lcom/miui/extraphoto/refocus/RefocusEffectManager;->access$900(Lcom/miui/extraphoto/refocus/RefocusEffectManager;)Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/extraphoto/refocus/RefocusEffectManager$EffectLoadListener;->onEffectLoad(Ljava/util/List;Ljava/util/List;Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;)V

    .line 107
    :cond_0
    return-void
.end method
