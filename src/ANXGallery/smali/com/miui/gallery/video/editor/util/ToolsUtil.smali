.class public Lcom/miui/gallery/video/editor/util/ToolsUtil;
.super Ljava/lang/Object;
.source "ToolsUtil.java"


# direct methods
.method public static getTrimedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, ""

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVideoFrameRate(Ljava/lang/String;)I
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x0

    .line 79
    :goto_0
    return v3

    .line 61
    :cond_0
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 62
    .local v1, "extractor":Landroid/media/MediaExtractor;
    const/4 v3, 0x0

    .line 64
    .local v3, "frameRate":I
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v6

    .line 66
    .local v6, "numTracks":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 67
    invoke-virtual {v1, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 68
    .local v2, "format":Landroid/media/MediaFormat;
    const-string v7, "mime"

    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "mime":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "video/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "frame-rate"

    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 70
    const-string v7, "frame-rate"

    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 77
    .end local v2    # "format":Landroid/media/MediaFormat;
    .end local v5    # "mime":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    goto :goto_0

    .line 66
    .restart local v2    # "format":Landroid/media/MediaFormat;
    .restart local v5    # "mime":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 74
    .end local v2    # "format":Landroid/media/MediaFormat;
    .end local v4    # "i":I
    .end local v5    # "mime":Ljava/lang/String;
    .end local v6    # "numTracks":I
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v7, "ToolsUtil"

    const-string v8, "getVideoFrameRate: %s"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    throw v7
.end method

.method public static hideView(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 27
    if-eqz p0, :cond_0

    .line 28
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :cond_0
    return-void
.end method

.method public static isRTLDirection()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportEditVideo(Ljava/lang/String;)Z
    .locals 21
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v9, 0x1

    .line 90
    .local v9, "isSupported":Z
    :try_start_0
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0x15

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 91
    const/16 v16, 0x1

    .line 116
    :goto_0
    return v16

    .line 93
    :cond_0
    new-instance v12, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v12}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 94
    .local v12, "retr":Landroid/media/MediaMetadataRetriever;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 95
    const/16 v16, 0x13

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "height":Ljava/lang/String;
    const/16 v16, 0x12

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v15

    .line 97
    .local v15, "width":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->getVideoFrameRate(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    int-to-double v6, v0

    .line 98
    .local v6, "frames":D
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v11

    .line 99
    .local v11, "numCodecs":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v11, :cond_3

    .line 100
    invoke-static {v8}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 101
    .local v3, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v13

    .line 102
    .local v13, "types":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v10, v0, :cond_2

    aget-object v16, v13, v10

    const-string/jumbo v17, "video/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 103
    aget-object v16, v13, v10

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    .line 104
    .local v2, "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v14

    .line 106
    .local v14, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1, v6, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v9

    .line 107
    const-string v16, "ToolsUtil"

    const-string/jumbo v17, "the MediaCodecInfo name is: %s, and the MediaCodecInfo type is %s , and the  phone is supported to edit:  %s"

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v18

    aget-object v19, v13, v10

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-static/range {v16 .. v20}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    if-eqz v9, :cond_1

    move/from16 v16, v9

    .line 109
    goto :goto_0

    .line 102
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 99
    .end local v2    # "codecCapabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v14    # "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 113
    .end local v3    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v5    # "height":Ljava/lang/String;
    .end local v6    # "frames":D
    .end local v8    # "i":I
    .end local v10    # "j":I
    .end local v11    # "numCodecs":I
    .end local v12    # "retr":Landroid/media/MediaMetadataRetriever;
    .end local v13    # "types":[Ljava/lang/String;
    .end local v15    # "width":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 114
    .local v4, "e":Ljava/lang/Exception;
    const-string v16, "ToolsUtil"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    move/from16 v16, v9

    .line 116
    goto/16 :goto_0
.end method

.method public static parseIntFromStr(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 44
    :goto_0
    return v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ToolsUtil"

    const-string v2, "parseIntFromStr exception: %s "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showView(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 21
    if-eqz p0, :cond_0

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_0
    return-void
.end method
