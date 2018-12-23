.class public Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
.super Ljava/lang/Object;
.source "TextStyle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$LoadListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;",
            ">;"
        }
    .end annotation
.end field

.field private static final preInstalledTextStyle:[Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;


# instance fields
.field private extra:Z

.field private fontUri:Ljava/lang/String;

.field private iconUriNormal:Ljava/lang/String;

.field private iconUriPressed:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:I

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 27
    const/4 v0, 0x2

    new-array v6, v0, [Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;-><init>(Landroid/graphics/Typeface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v6, v5

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;-><init>(Landroid/graphics/Typeface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v6, v7

    sput-object v6, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->preInstalledTextStyle:[Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .line 223
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$3;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$3;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "fontUri"    # Ljava/lang/String;
    .param p3, "iconUriNormal"    # Ljava/lang/String;
    .param p4, "iconUriPressed"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->type:I

    .line 42
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->iconUriNormal:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->fontUri:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->iconUriPressed:Ljava/lang/String;

    .line 45
    iput p5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->type:I

    .line 46
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->typeFace:Landroid/graphics/Typeface;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "fontUri"    # Ljava/lang/String;
    .param p3, "iconUriNormal"    # Ljava/lang/String;
    .param p4, "iconUriPressed"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "extra"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->type:I

    .line 50
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->iconUriNormal:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->fontUri:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->iconUriPressed:Ljava/lang/String;

    .line 53
    iput p5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->type:I

    .line 54
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->typeFace:Landroid/graphics/Typeface;

    .line 55
    iput-boolean p6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->extra:Z

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->type:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->type:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->fontUri:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->iconUriPressed:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->iconUriNormal:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->extra:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->name:Ljava/lang/String;

    .line 221
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->loadTextStylesFromAssets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->name:Ljava/lang/String;

    return-object p1
.end method

.method public static getTypefaceByUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fontUri"    # Ljava/lang/String;

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, "typeface":Landroid/graphics/Typeface;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    :try_start_0
    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$4;->$SwitchMap$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme:[I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 196
    :cond_0
    :goto_0
    return-object v1

    .line 186
    :pswitch_0
    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v2, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 187
    goto :goto_0

    .line 189
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    sget-object v3, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ASSETS:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v3, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TextStyle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create TypeFace error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static loadTextStyleLocal(Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$LoadListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$LoadListener;

    .prologue
    .line 101
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$2;-><init>(Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$LoadListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    return-void
.end method

.method private static loadTextStylesFromAssets(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v2, "styleList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;>;"
    new-instance v4, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;

    invoke-direct {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fonts"

    invoke-virtual {v4, v5, v6}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/ResourceManager;->loadAllResourceFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 127
    .local v1, "jsonObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 129
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-static {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->paraseJsonObject(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    move-result-object v3

    .line 130
    .local v3, "textStyle":Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    if-eqz v3, :cond_0

    .line 131
    const-string v5, "localAudio"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "textStyle":Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    :cond_1
    return-object v2
.end method

.method private static paraseJsonObject(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x0

    .line 142
    :try_start_0
    const-string/jumbo v4, "uri"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "fontUri":Ljava/lang/String;
    const-string v4, "extra"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 144
    .local v6, "extra":Z
    const-string v4, "iconUri"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "iconUri":Ljava/lang/String;
    const-string v4, "name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 147
    .local v1, "typeface":Landroid/graphics/Typeface;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    .line 149
    :try_start_1
    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$4;->$SwitchMap$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme:[I

    invoke-static {v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I

    move-result v5

    aget v4, v4, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    packed-switch v4, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    const/4 v5, 0x1

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;-><init>(Landroid/graphics/Typeface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 164
    .local v0, "textStyle":Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    iput-object v8, v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->name:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 169
    .end local v0    # "textStyle":Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    .end local v2    # "fontUri":Ljava/lang/String;
    .end local v3    # "iconUri":Ljava/lang/String;
    .end local v6    # "extra":Z
    .end local v8    # "name":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 151
    .restart local v1    # "typeface":Landroid/graphics/Typeface;
    .restart local v2    # "fontUri":Ljava/lang/String;
    .restart local v3    # "iconUri":Ljava/lang/String;
    .restart local v6    # "extra":Z
    .restart local v8    # "name":Ljava/lang/String;
    :pswitch_0
    :try_start_3
    sget-object v4, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v4, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 152
    goto :goto_0

    .line 154
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    sget-object v5, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ASSETS:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v5, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v7

    .line 158
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "TextStyle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create TypeFace error :"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v9

    .line 159
    goto :goto_1

    .line 166
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    .end local v2    # "fontUri":Ljava/lang/String;
    .end local v3    # "iconUri":Ljava/lang/String;
    .end local v6    # "extra":Z
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "name":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 167
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v4, "TextStyle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "paraseJsonObject "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 169
    goto :goto_1

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeFace()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->typeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public readTypeface(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->fontUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getTypefaceByUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->typeFace:Landroid/graphics/Typeface;

    .line 122
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 206
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->fontUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->iconUriPressed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->iconUriNormal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->extra:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 211
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
