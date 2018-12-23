.class Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;
.super Landroid/os/AsyncTask;
.source "CollageResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/CollageResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadLocalResTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/res/AssetManager;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/CollageResourcesManager;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/CollageResourcesManager;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;->this$0:Lcom/miui/gallery/collage/CollageResourcesManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/CollageResourcesManager;Lcom/miui/gallery/collage/CollageResourcesManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/collage/CollageResourcesManager;
    .param p2, "x1"    # Lcom/miui/gallery/collage/CollageResourcesManager$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;-><init>(Lcom/miui/gallery/collage/CollageResourcesManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, [Landroid/content/res/AssetManager;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;->doInBackground([Landroid/content/res/AssetManager;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/res/AssetManager;)Ljava/lang/Void;
    .locals 24
    .param p1, "params"    # [Landroid/content/res/AssetManager;

    .prologue
    .line 47
    invoke-static {}, Lcom/miui/gallery/collage/CollageUtils;->generateCustomGson()Lcom/google/gson/Gson;

    move-result-object v10

    .line 48
    .local v10, "gson":Lcom/google/gson/Gson;
    const/16 v18, 0x0

    aget-object v6, p1, v18

    .line 50
    .local v6, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    new-instance v11, Lcom/google/gson/JsonParser;

    invoke-direct {v11}, Lcom/google/gson/JsonParser;-><init>()V

    .line 53
    .local v11, "jsonParser":Lcom/google/gson/JsonParser;
    sget-object v18, Lcom/miui/gallery/collage/CollageResourcesManager;->PATH_LAYOUT:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 54
    .local v12, "layoutList":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v14, v12, v18

    .line 55
    .local v14, "name":Ljava/lang/String;
    invoke-static {v6, v10, v11, v14}, Lcom/miui/gallery/collage/CollageResourcesManager;->generateLayoutModelByName(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Ljava/lang/String;)Lcom/miui/gallery/collage/LayoutModel;

    move-result-object v13

    .line 56
    .local v13, "layoutModel":Lcom/miui/gallery/collage/LayoutModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;->this$0:Lcom/miui/gallery/collage/CollageResourcesManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;->this$0:Lcom/miui/gallery/collage/CollageResourcesManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/collage/CollageResourcesManager;->access$100(Lcom/miui/gallery/collage/CollageResourcesManager;)Landroid/util/SparseArray;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13}, Lcom/miui/gallery/collage/CollageResourcesManager;->access$200(Lcom/miui/gallery/collage/CollageResourcesManager;Landroid/util/SparseArray;Lcom/miui/gallery/collage/LayoutModel;)V

    .line 54
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 60
    .end local v13    # "layoutModel":Lcom/miui/gallery/collage/LayoutModel;
    .end local v14    # "name":Ljava/lang/String;
    :cond_0
    sget-object v18, Lcom/miui/gallery/collage/CollageResourcesManager;->PATH_POSTER_LAYOUT:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 61
    .local v15, "posterLayoutList":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    aget-object v14, v15, v18

    .line 62
    .restart local v14    # "name":Ljava/lang/String;
    invoke-static {v6, v10, v11, v14}, Lcom/miui/gallery/collage/CollageResourcesManager;->generatePosterLayoutModelByName(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Ljava/lang/String;)Lcom/miui/gallery/collage/LayoutModel;

    move-result-object v13

    .line 63
    .restart local v13    # "layoutModel":Lcom/miui/gallery/collage/LayoutModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;->this$0:Lcom/miui/gallery/collage/CollageResourcesManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;->this$0:Lcom/miui/gallery/collage/CollageResourcesManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/collage/CollageResourcesManager;->access$300(Lcom/miui/gallery/collage/CollageResourcesManager;)Landroid/util/SparseArray;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13}, Lcom/miui/gallery/collage/CollageResourcesManager;->access$200(Lcom/miui/gallery/collage/CollageResourcesManager;Landroid/util/SparseArray;Lcom/miui/gallery/collage/LayoutModel;)V

    .line 61
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 67
    .end local v13    # "layoutModel":Lcom/miui/gallery/collage/LayoutModel;
    .end local v14    # "name":Ljava/lang/String;
    :cond_1
    sget-object v18, Lcom/miui/gallery/collage/CollageResourcesManager;->PATH_POSTER_MODE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 68
    .local v16, "posterList":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget-object v14, v16, v18

    .line 69
    .restart local v14    # "name":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 70
    .local v4, "a":J
    invoke-static {v6, v10, v11, v14}, Lcom/miui/gallery/collage/CollageResourcesManager;->generatePosterModelByName(Landroid/content/res/AssetManager;Lcom/google/gson/Gson;Lcom/google/gson/JsonParser;Ljava/lang/String;)Lcom/miui/gallery/collage/PosterModel;

    move-result-object v17

    .line 71
    .local v17, "posterModel":Lcom/miui/gallery/collage/PosterModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;->this$0:Lcom/miui/gallery/collage/CollageResourcesManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;->this$0:Lcom/miui/gallery/collage/CollageResourcesManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/collage/CollageResourcesManager;->access$400(Lcom/miui/gallery/collage/CollageResourcesManager;)Landroid/util/SparseArray;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/collage/CollageResourcesManager;->access$500(Lcom/miui/gallery/collage/CollageResourcesManager;Landroid/util/SparseArray;Lcom/miui/gallery/collage/PosterModel;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 73
    .local v8, "b":J
    const-string v20, "CollageResourcesManager"

    const-string v21, "gson parse posterModel %s coast %d"

    sub-long v22, v8, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v14, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 75
    .end local v4    # "a":J
    .end local v8    # "b":J
    .end local v11    # "jsonParser":Lcom/google/gson/JsonParser;
    .end local v12    # "layoutList":[Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "posterLayoutList":[Ljava/lang/String;
    .end local v16    # "posterList":[Ljava/lang/String;
    .end local v17    # "posterModel":Lcom/miui/gallery/collage/PosterModel;
    :catch_0
    move-exception v7

    .line 76
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    const/16 v18, 0x0

    return-object v18
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;->this$0:Lcom/miui/gallery/collage/CollageResourcesManager;

    invoke-static {v0}, Lcom/miui/gallery/collage/CollageResourcesManager;->access$600(Lcom/miui/gallery/collage/CollageResourcesManager;)Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageResourcesManager$LoadLocalResTask;->this$0:Lcom/miui/gallery/collage/CollageResourcesManager;

    invoke-static {v0}, Lcom/miui/gallery/collage/CollageResourcesManager;->access$600(Lcom/miui/gallery/collage/CollageResourcesManager;)Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/collage/CollageResourcesManager$ResourcesUpdateListener;->onResourcesUpdate()V

    .line 86
    :cond_0
    return-void
.end method
