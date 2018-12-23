.class Lcom/miui/gallery/collage/CollagePositionModel$CustomDeserializer;
.super Ljava/lang/Object;
.source "CollagePositionModel.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/CollagePositionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/miui/gallery/collage/CollagePositionModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/miui/gallery/collage/CollagePositionModel;
    .locals 9
    .param p1, "jsonElement"    # Lcom/google/gson/JsonElement;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "jsonDeserializationContext"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 38
    .local v5, "rootObject":Lcom/google/gson/JsonObject;
    const-string v7, "margin"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 40
    .local v3, "marginElement":Lcom/google/gson/JsonElement;
    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v2

    .line 46
    .local v2, "margin":F
    :goto_0
    const-string v7, "position"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 47
    .local v1, "jsonArray":Lcom/google/gson/JsonArray;
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    new-array v4, v7, [F

    .line 48
    .local v4, "position":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v7, v4

    if-ge v0, v7, :cond_1

    .line 49
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v7

    aput v7, v4, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    .end local v0    # "i":I
    .end local v1    # "jsonArray":Lcom/google/gson/JsonArray;
    .end local v2    # "margin":F
    .end local v4    # "position":[F
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "margin":F
    goto :goto_0

    .line 52
    .restart local v0    # "i":I
    .restart local v1    # "jsonArray":Lcom/google/gson/JsonArray;
    .restart local v4    # "position":[F
    :cond_1
    const-string/jumbo v7, "size"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 53
    .local v6, "sizeElement":Lcom/google/gson/JsonElement;
    if-eqz v6, :cond_2

    .line 54
    new-instance v7, Lcom/miui/gallery/collage/CollagePositionModel;

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    invoke-direct {v7, v8, v4, v2}, Lcom/miui/gallery/collage/CollagePositionModel;-><init>(I[FF)V

    .line 56
    :goto_2
    return-object v7

    :cond_2
    new-instance v7, Lcom/miui/gallery/collage/CollagePositionModel;

    invoke-direct {v7, v4, v2}, Lcom/miui/gallery/collage/CollagePositionModel;-><init>([FF)V

    goto :goto_2
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/collage/CollagePositionModel$CustomDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/miui/gallery/collage/CollagePositionModel;

    move-result-object v0

    return-object v0
.end method
