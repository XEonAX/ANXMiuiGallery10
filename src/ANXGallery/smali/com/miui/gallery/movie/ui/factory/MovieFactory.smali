.class public Lcom/miui/gallery/movie/ui/factory/MovieFactory;
.super Ljava/lang/Object;
.source "MovieFactory.java"


# direct methods
.method public static createMovieManager(Landroid/content/Context;)Lcom/miui/gallery/movie/core/MovieManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    new-instance v0, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;

    invoke-direct {v0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;-><init>()V

    .line 28
    .local v0, "movieManager":Lcom/miui/gallery/movie/nvsdk/NvMovieManager;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/movie/nvsdk/NvMovieManager;->init(Landroid/content/Context;)V

    .line 29
    invoke-static {p0}, Lcom/miui/gallery/movie/MovieConfig;->init(Landroid/content/Context;)V

    .line 30
    return-object v0
.end method

.method public static getTemplateNameById(I)Ljava/lang/String;
    .locals 1
    .param p0, "templateId"    # I

    .prologue
    .line 34
    packed-switch p0, :pswitch_data_0

    .line 56
    const-string v0, "movieAssetsNormal"

    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    const-string v0, "movieAssetsNormal"

    goto :goto_0

    .line 38
    :pswitch_1
    const-string v0, "movieTemplateTravel"

    goto :goto_0

    .line 40
    :pswitch_2
    const-string v0, "movieTemplateBaby"

    goto :goto_0

    .line 42
    :pswitch_3
    const-string v0, "movieTemplateParty"

    goto :goto_0

    .line 44
    :pswitch_4
    const-string v0, "movieTemplateFood"

    goto :goto_0

    .line 46
    :pswitch_5
    const-string v0, "movieTemplateXmas"

    goto :goto_0

    .line 48
    :pswitch_6
    const-string v0, "movieTemplateNewYear"

    goto :goto_0

    .line 50
    :pswitch_7
    const-string v0, "movieTemplateSelfie"

    goto :goto_0

    .line 52
    :pswitch_8
    const-string v0, "movieTemplatePet"

    goto :goto_0

    .line 54
    :pswitch_9
    const-string v0, "movieTemplatePetDog"

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
