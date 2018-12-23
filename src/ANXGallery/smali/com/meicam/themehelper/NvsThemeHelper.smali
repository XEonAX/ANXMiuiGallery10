.class public Lcom/meicam/themehelper/NvsThemeHelper;
.super Ljava/lang/Object;
.source "NvsThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    }
.end annotation


# static fields
.field private static final DEFAULT_FONT1_SIZE:I = 0x3f

.field private static final DEFAULT_FONT2_SIZE:I = 0x27

.field private static final DEFAULT_FONT_COLOR:I = -0x1

.field private static final FONT_MAX_LENGTH:Ljava/lang/String; = "\u5317\u4eac\u7f8e\u6444\u7f51\u7edc\u79d1\u6280\u516c\u53f8"

.field public static final NVS_MAX_IMAGE_FILE_COUNT:I = 0x14

.field public static final NVS_MAX_TIME_LINE_LENGTH:J = 0x55d4a80L

.field public static final NVS_MIN_IMAGE_FILE_COUNT:I = 0x3

.field private static final NVS_USE_ALL_PHOTO:I = -0x2

.field private static final NVS_USE_CURRENT_DURATION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NvsThemeHelper"

.field public static m_timelineRatio:F


# instance fields
.field private clipMaxLen:J

.field private coverEndROI:Landroid/graphics/RectF;

.field private coverStartROI:Landroid/graphics/RectF;

.field private mMusicFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsMusicFileDesc;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeAssetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;",
            ">;"
        }
    .end annotation
.end field

.field private m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

.field private m_cafStickerId:Ljava/lang/StringBuilder;

.field private m_caption1:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

.field private m_caption1Text:Ljava/lang/String;

.field private m_caption2:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

.field private m_caption2Text:Ljava/lang/String;

.field private m_captionBitmapPath1:Ljava/lang/String;

.field private m_captionBitmapPath2:Ljava/lang/String;

.field private m_context:Landroid/content/Context;

.field private m_defaultRhythm10sPath:Ljava/lang/String;

.field private m_defaultRhythmPath:Ljava/lang/String;

.field private m_fxTransClipCount:I

.field private m_inputIamgeInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;"
        }
    .end annotation
.end field

.field private m_is10sMode:Z

.field private m_maxTotalTime:J

.field private m_musicVolumeGain:F

.field private m_selectedExtMusicIdx:I

.field private m_selectedLocalMusic:Ljava/lang/String;

.field private m_selectedLocalMusicEnd:J

.field private m_selectedLocalMusicStart:J

.field private m_selectedMusicType:I

.field private m_showCaption:Z

.field private m_stickerId1:Ljava/lang/String;

.field private m_stickerId2:Ljava/lang/String;

.field private m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

.field private m_themeAssetID:Ljava/lang/String;

.field private m_timeline:Lcom/meicam/sdk/NvsTimeline;

.field private timeBase:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/high16 v0, 0x3f100000    # 0.5625f

    sput v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    .line 75
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    .line 76
    const-wide/16 v0, 0xa

    iget-wide v2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->clipMaxLen:J

    .line 79
    iput-boolean v5, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    .line 80
    iput-boolean v5, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_showCaption:Z

    .line 85
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 86
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 87
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 88
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1Text:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2Text:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafStickerId:Ljava/lang/StringBuilder;

    .line 99
    iput v6, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedMusicType:I

    .line 100
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    .line 101
    iput v6, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    .line 102
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusic:Ljava/lang/String;

    .line 103
    iput-wide v8, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicStart:J

    .line 104
    iput-wide v8, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicEnd:J

    .line 106
    const-wide/32 v0, 0x55d4a80

    iput-wide v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_maxTotalTime:J

    .line 108
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->coverStartROI:Landroid/graphics/RectF;

    .line 109
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->coverEndROI:Landroid/graphics/RectF;

    .line 112
    iput v5, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    .line 2585
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mThemeAssetMap:Ljava/util/Map;

    .line 2586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mMusicFileList:Ljava/util/ArrayList;

    return-void
.end method

.method private addCaption(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 21
    .param p1, "timeline"    # Lcom/meicam/sdk/NvsTimeline;

    .prologue
    .line 1610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/meicam/sdk/NvsTimeline;->removeAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/meicam/sdk/NvsTimeline;->removeAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1Text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2Text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_showCaption:Z

    if-eqz v3, :cond_6

    .line 1613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/meicam/sdk/NvsTimeline;->removeAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1614
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1621
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1622
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1623
    .local v19, "file1":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1624
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 1627
    .end local v19    # "file1":Ljava/io/File;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1628
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1629
    .local v20, "file2":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1630
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 1634
    .end local v20    # "file2":Ljava/io/File;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_stickerId1:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_stickerId2:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 1635
    :cond_4
    const-string v3, "meicam"

    const-string v4, "m_stickerId is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_5
    :goto_1
    return-void

    .line 1616
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafStickerId:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    .line 1617
    const-wide/16 v4, 0x0

    const-wide v6, 0x400bd70a3d70a3d7L    # 3.48

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    long-to-double v10, v10

    mul-double/2addr v6, v10

    double-to-long v6, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafStickerId:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/meicam/sdk/NvsTimeline;->addAnimatedSticker(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    goto/16 :goto_0

    .line 1639
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_showCaption:Z

    if-eqz v3, :cond_5

    .line 1642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_stickerId1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1643
    .local v8, "sticker1ID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_stickerId2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1645
    .local v14, "sticker2ID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1Text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1Text:Ljava/lang/String;

    const/16 v4, 0x3f

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->manageStringLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 1647
    .local v17, "caption_text1_manage":Ljava/lang/String;
    const/16 v3, 0x3f

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->createCaptionBitmap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    .line 1648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1649
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1650
    .local v2, "bitmap_file1":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1651
    const-wide/16 v4, 0x0

    const-wide v6, 0x400bd70a3d70a3d7L    # 3.48

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    long-to-double v10, v10

    mul-double/2addr v6, v10

    double-to-long v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath1:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Lcom/meicam/sdk/NvsTimeline;->addCustomAnimatedSticker(JJLjava/lang/String;Ljava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1665
    .end local v2    # "bitmap_file1":Ljava/io/File;
    .end local v17    # "caption_text1_manage":Ljava/lang/String;
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2Text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2Text:Ljava/lang/String;

    const/16 v4, 0x27

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->manageString2Length(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 1667
    .local v18, "caption_text2_manage":Ljava/lang/String;
    const/16 v3, 0x27

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->createCaptionBitmap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    .line 1668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1669
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1670
    .local v16, "bitmap_file2":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1671
    const-wide/16 v10, 0x0

    const-wide v4, 0x400bd70a3d70a3d7L    # 3.48

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    long-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-long v12, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_captionBitmapPath2:Ljava/lang/String;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v15}, Lcom/meicam/sdk/NvsTimeline;->addCustomAnimatedSticker(JJLjava/lang/String;Ljava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    goto/16 :goto_1

    .line 1658
    .end local v16    # "bitmap_file2":Ljava/io/File;
    .end local v18    # "caption_text2_manage":Ljava/lang/String;
    .restart local v2    # "bitmap_file1":Ljava/io/File;
    .restart local v17    # "caption_text1_manage":Ljava/lang/String;
    :cond_9
    const-string v3, "meicam"

    const-string v4, "bitmap_file1 not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1661
    .end local v2    # "bitmap_file1":Ljava/io/File;
    :cond_a
    const-string v3, "meicam"

    const-string v4, "caption1_path is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1678
    .end local v17    # "caption_text1_manage":Ljava/lang/String;
    .restart local v16    # "bitmap_file2":Ljava/io/File;
    .restart local v18    # "caption_text2_manage":Ljava/lang/String;
    :cond_b
    const-string v3, "meicam"

    const-string v4, "bitmap_file2 not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1681
    .end local v16    # "bitmap_file2":Ljava/io/File;
    :cond_c
    const-string v3, "meicam"

    const-string v4, "caption2_path is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private addEndingFx(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Z)V
    .locals 6
    .param p1, "timeline"    # Lcom/meicam/sdk/NvsTimeline;
    .param p2, "themeAsset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    .param p3, "is10sMode"    # Z

    .prologue
    .line 1907
    if-eqz p3, :cond_0

    .line 1908
    iget-object v0, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFxId10s:Ljava/lang/String;

    iget-object v1, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFxImgPath:Ljava/lang/String;

    iget-wide v2, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFx10sLen:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/meicam/sdk/NvsTimeline;->setTimelineEndingFilter(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 1914
    :goto_0
    return-void

    .line 1911
    :cond_0
    iget-object v0, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFxId:Ljava/lang/String;

    iget-object v1, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFxImgPath:Ljava/lang/String;

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    iget-wide v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/meicam/sdk/NvsTimeline;->setTimelineEndingFilter(Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_0
.end method

.method private addMusicFile(Lcom/meicam/sdk/NvsTimeline;Ljava/lang/String;Z)V
    .locals 24
    .param p1, "timeline"    # Lcom/meicam/sdk/NvsTimeline;
    .param p2, "musicPath"    # Ljava/lang/String;
    .param p3, "blocalFile"    # Z

    .prologue
    .line 2470
    if-nez p2, :cond_1

    .line 2516
    :cond_0
    return-void

    .line 2472
    :cond_1
    const-string v3, ""

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_0

    .line 2475
    const-string/jumbo v3, "theme helper"

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/meicam/sdk/NvsStreamingContext;->getAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object v9

    .line 2477
    .local v9, "fileInfo":Lcom/meicam/sdk/NvsAVFileInfo;
    if-eqz v9, :cond_0

    .line 2480
    invoke-virtual {v9}, Lcom/meicam/sdk/NvsAVFileInfo;->getAudioStreamCount()I

    move-result v3

    const/4 v6, 0x1

    if-lt v3, v6, :cond_0

    .line 2483
    invoke-virtual/range {p1 .. p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v12

    .line 2484
    .local v12, "currentLength":J
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/meicam/sdk/NvsAVFileInfo;->getAudioStreamDuration(I)J

    move-result-wide v16

    .line 2485
    .local v16, "fileDuration":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    div-long v6, v16, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v20, v0

    mul-long v16, v6, v20

    .line 2486
    const-wide/16 v4, 0x0

    .line 2487
    .local v4, "startTime":J
    move-wide/from16 v10, v16

    .line 2488
    .local v10, "clipDuration":J
    if-eqz p3, :cond_3

    .line 2489
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicStart:J

    const-wide/16 v20, 0x0

    cmp-long v3, v6, v20

    if-ltz v3, :cond_3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicEnd:J

    const-wide/16 v20, 0x0

    cmp-long v3, v6, v20

    if-lez v3, :cond_3

    .line 2490
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicStart:J

    .line 2491
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    div-long v6, v4, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v20, v0

    mul-long v4, v6, v20

    .line 2492
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicEnd:J

    .line 2493
    .local v14, "endTime":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    div-long v6, v14, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v20, v0

    mul-long v14, v6, v20

    .line 2494
    sub-long v6, v14, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x2

    mul-long v20, v20, v22

    cmp-long v3, v6, v20

    if-lez v3, :cond_2

    .line 2495
    cmp-long v3, v14, v16

    if-lez v3, :cond_4

    .line 2496
    sub-long v10, v16, v4

    .line 2502
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    const-wide/16 v20, 0x2

    mul-long v6, v6, v20

    cmp-long v3, v10, v6

    if-gez v3, :cond_3

    .line 2503
    const-wide/16 v4, 0x0

    .line 2504
    move-wide/from16 v10, v16

    .line 2509
    .end local v14    # "endTime":J
    :cond_3
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Lcom/meicam/sdk/NvsTimeline;->setThemeMusicVolumeGain(FF)V

    .line 2511
    invoke-virtual/range {p1 .. p1}, Lcom/meicam/sdk/NvsTimeline;->appendAudioTrack()Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v2

    .line 2512
    .local v2, "aTrack":Lcom/meicam/sdk/NvsAudioTrack;
    add-long v6, v12, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v20, v0

    sub-long v6, v6, v20

    div-long/2addr v6, v10

    long-to-int v8, v6

    .line 2513
    .local v8, "clipCount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v8, :cond_0

    .line 2514
    add-long v6, v4, v10

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/meicam/sdk/NvsAudioTrack;->appendClip(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsAudioClip;

    .line 2513
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 2498
    .end local v2    # "aTrack":Lcom/meicam/sdk/NvsAudioTrack;
    .end local v8    # "clipCount":I
    .end local v18    # "i":I
    .restart local v14    # "endTime":J
    :cond_4
    sub-long v10, v14, v4

    goto :goto_0
.end method

.method private addToFxList(Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "themeasset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    .param p2, "assetPath"    # Ljava/lang/String;
    .param p3, "transName"    # Ljava/lang/String;

    .prologue
    .line 2825
    const-string v0, "9v16"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2826
    const-string v0, "-full"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2827
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2886
    :cond_0
    :goto_0
    return-void

    .line 2828
    :cond_1
    const-string v0, "-half"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2829
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2830
    :cond_2
    const-string v0, "-hf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2831
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2832
    :cond_3
    const-string v0, "-fh"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2833
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2835
    :cond_4
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2836
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2837
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2838
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v16List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2840
    :cond_5
    const-string v0, "9v18"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2841
    const-string v0, "-full"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2842
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2843
    :cond_6
    const-string v0, "-half"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2844
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2845
    :cond_7
    const-string v0, "-hf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2846
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2847
    :cond_8
    const-string v0, "-fh"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2848
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2850
    :cond_9
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2851
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2852
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2853
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v18List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2855
    :cond_a
    const-string v0, "9v19"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2856
    const-string v0, "-full"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2857
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2858
    :cond_b
    const-string v0, "-half"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2859
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2860
    :cond_c
    const-string v0, "-hf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2861
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2862
    :cond_d
    const-string v0, "-fh"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2863
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2865
    :cond_e
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2866
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2867
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2868
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v19List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2870
    :cond_f
    const-string v0, "9vx73"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2871
    const-string v0, "-full"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2872
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2873
    :cond_10
    const-string v0, "-half"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2874
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2875
    :cond_11
    const-string v0, "-hf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2876
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2877
    :cond_12
    const-string v0, "-fh"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2878
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2880
    :cond_13
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2881
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2882
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2883
    iget-object v0, p1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9vx73List:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private applyFxTrans(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JZ)J
    .locals 33
    .param p1, "videoTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p2, "transIdx"    # I
    .param p3, "fxTransXml"    # Ljava/lang/String;
    .param p4, "trans"    # Ljava/lang/String;
    .param p5, "transLen"    # J
    .param p7, "isDownloadTheme"    # Z

    .prologue
    .line 2224
    const-string v4, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2225
    const-wide/16 v6, 0x0

    .line 2310
    :goto_0
    return-wide v6

    .line 2227
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v15

    .line 2228
    .local v15, "clip0":Lcom/meicam/sdk/NvsVideoClip;
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v16

    .line 2229
    .local v16, "clip1":Lcom/meicam/sdk/NvsVideoClip;
    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoClip;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 2230
    .local v5, "file0":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/meicam/sdk/NvsVideoClip;->getFilePath()Ljava/lang/String;

    move-result-object v19

    .line 2231
    .local v19, "file1":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v6

    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v8

    sub-long v24, v6, v8

    .line 2232
    .local v24, "len0":J
    invoke-virtual/range {v16 .. v16}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v8

    sub-long v26, v6, v8

    .line 2233
    .local v26, "len1":J
    const-string v4, "fullscreenMode"

    invoke-virtual {v15, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 2234
    .local v23, "mark":Ljava/lang/String;
    const-string v4, "indexOfShowList"

    invoke-virtual {v15, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 2235
    .local v21, "idxOfShowList0":I
    const-string v4, "indexOfShowList"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 2236
    .local v22, "idxOfShowList1":I
    const/16 v30, 0x0

    .line 2237
    .local v30, "preTransName":Ljava/lang/String;
    add-int/lit8 v4, p2, -0x1

    if-ltz v4, :cond_1

    .line 2238
    add-int/lit8 v4, p2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getTransitionBySourceClipIndex(I)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v31

    .line 2239
    .local v31, "transition":Lcom/meicam/sdk/NvsVideoTransition;
    if-eqz v31, :cond_1

    .line 2240
    invoke-virtual/range {v31 .. v31}, Lcom/meicam/sdk/NvsVideoTransition;->getVideoTransitionType()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {v31 .. v31}, Lcom/meicam/sdk/NvsVideoTransition;->getBuiltinVideoTransitionName()Ljava/lang/String;

    move-result-object v30

    .line 2243
    .end local v31    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :cond_1
    :goto_1
    const-wide/16 v28, 0x0

    .line 2244
    .local v28, "offset":J
    if-eqz v30, :cond_2

    .line 2245
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    const-wide/16 v8, 0x2

    div-long v28, v6, v8

    .line 2247
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->removeClip(IZ)Z

    .line 2248
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->removeClip(IZ)Z

    .line 2249
    const-wide/16 v6, 0x0

    add-long v8, v24, v26

    move-object/from16 v4, p1

    move/from16 v10, p2

    invoke-virtual/range {v4 .. v10}, Lcom/meicam/sdk/NvsVideoTrack;->insertClip(Ljava/lang/String;JJI)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v15

    .line 2250
    const-string v4, "fullscreenMode"

    move-object/from16 v0, v23

    invoke-virtual {v15, v4, v0}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2251
    const-string v4, "hasFxTrans"

    const-string/jumbo v6, "true"

    invoke-virtual {v15, v4, v6}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2252
    const-string v4, "fxFilePath"

    move-object/from16 v0, v19

    invoke-virtual {v15, v4, v0}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2253
    const-string v4, "fxInpoint"

    const-wide/16 v6, 0x3e8

    div-long v6, v24, v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v4, v6}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2255
    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoClip;->getIndex()I

    move-result v17

    .line 2256
    .local v17, "clipIdx":I
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 2257
    add-int/lit8 v4, v17, -0x1

    if-ltz v4, :cond_3

    .line 2258
    if-eqz v30, :cond_6

    .line 2259
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x1e

    if-le v4, v6, :cond_5

    .line 2260
    add-int/lit8 v4, v17, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 2267
    :cond_3
    :goto_2
    const-string v4, "Storyboard"

    invoke-virtual {v15, v4}, Lcom/meicam/sdk/NvsVideoClip;->appendBuiltinFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v20

    .line 2269
    .local v20, "fx":Lcom/meicam/sdk/NvsVideoFx;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    sub-long v6, v6, v28

    sub-long v6, v24, v6

    const-wide/16 v8, 0x3e8

    div-long v10, v6, v8

    .line 2270
    .local v10, "fxStartTime":J
    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v6

    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    const-wide/16 v12, 0x2

    div-long/2addr v8, v12

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long v12, v6, v10

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, v19

    move/from16 v14, p7

    invoke-direct/range {v7 .. v14}, Lcom/meicam/themehelper/NvsThemeHelper;->changeFxDesc(Ljava/lang/String;Ljava/lang/String;JJZ)Ljava/lang/String;

    move-result-object v18

    .line 2271
    .local v18, "desc":Ljava/lang/String;
    if-nez v18, :cond_7

    .line 2273
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 2240
    .end local v10    # "fxStartTime":J
    .end local v17    # "clipIdx":I
    .end local v18    # "desc":Ljava/lang/String;
    .end local v20    # "fx":Lcom/meicam/sdk/NvsVideoFx;
    .end local v28    # "offset":J
    .restart local v31    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :cond_4
    invoke-virtual/range {v31 .. v31}, Lcom/meicam/sdk/NvsVideoTransition;->getVideoTransitionPackageId()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_1

    .line 2262
    .end local v31    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    .restart local v17    # "clipIdx":I
    .restart local v28    # "offset":J
    :cond_5
    add-int/lit8 v4, v17, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    goto :goto_2

    .line 2264
    :cond_6
    add-int/lit8 v4, v17, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    goto :goto_2

    .line 2276
    .restart local v10    # "fxStartTime":J
    .restart local v18    # "desc":Ljava/lang/String;
    .restart local v20    # "fx":Lcom/meicam/sdk/NvsVideoFx;
    :cond_7
    const-string v4, "hori"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeHoriROI(FLandroid/graphics/RectF;Ljava/lang/String;Lcom/meicam/sdk/NvsVideoClip;)Ljava/lang/String;

    move-result-object v18

    .line 2278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    move-object/from16 v0, v18

    invoke-static {v6, v4, v0, v15}, Lcom/meicam/themehelper/Utils;->changeHoriROI(FLandroid/graphics/RectF;Ljava/lang/String;Lcom/meicam/sdk/NvsVideoClip;)Ljava/lang/String;

    move-result-object v18

    .line 2287
    :goto_3
    const-string v4, "Description String"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoFx;->setStringVal(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    move-object/from16 v32, p3

    .line 2289
    .local v32, "xmlPath":Ljava/lang/String;
    if-nez p7, :cond_8

    .line 2290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assets:/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 2291
    :cond_8
    const/4 v4, 0x0

    const-string v6, "/"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 2292
    const-string v4, "Resource Dir"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoFx;->setStringVal(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 2295
    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2296
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 2308
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    .line 2310
    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v6

    add-long v6, v6, v24

    goto/16 :goto_0

    .line 2279
    .end local v32    # "xmlPath":Ljava/lang/String;
    :cond_a
    const-string/jumbo v4, "vert"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeVertROI(FLandroid/graphics/RectF;Ljava/lang/String;Lcom/meicam/sdk/NvsVideoClip;)Ljava/lang/String;

    move-result-object v18

    .line 2281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    move-object/from16 v0, v18

    invoke-static {v6, v4, v0, v15}, Lcom/meicam/themehelper/Utils;->changeVertROI(FLandroid/graphics/RectF;Ljava/lang/String;Lcom/meicam/sdk/NvsVideoClip;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    .line 2283
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->setImageMotion(Lcom/meicam/sdk/NvsVideoClip;Lcom/meicam/themehelper/NvsImageFileDesc;)V

    .line 2284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    move-object/from16 v0, v18

    invoke-static {v6, v4, v0}, Lcom/meicam/themehelper/Utils;->changeROI(FLandroid/graphics/RectF;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    .line 2299
    .restart local v32    # "xmlPath":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x1e

    if-le v4, v6, :cond_d

    .line 2300
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v31

    .line 2303
    .restart local v31    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :goto_5
    if-eqz v31, :cond_9

    .line 2304
    move-wide/from16 v0, p5

    long-to-float v4, v0

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v4, v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTransition;->setVideoTransitionDurationScaleFactor(F)V

    goto/16 :goto_4

    .line 2302
    .end local v31    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v31

    .restart local v31    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    goto :goto_5
.end method

.method private applyFxTransV2(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JLcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)V
    .locals 15
    .param p1, "videTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p2, "transIdx"    # I
    .param p3, "fxTransXml"    # Ljava/lang/String;
    .param p4, "trans"    # Ljava/lang/String;
    .param p5, "transLen"    # J
    .param p7, "themeAsset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    .prologue
    .line 2038
    move-object/from16 v0, p7

    iget-boolean v10, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->isDownload:Z

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v3 .. v10}, Lcom/meicam/themehelper/NvsThemeHelper;->applyFxTrans(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JZ)J

    move-result-wide v12

    .line 2039
    .local v12, "blurFxInpoint":J
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_blurFxId:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    .line 2040
    const/4 v14, 0x0

    .line 2041
    .local v14, "useBlur":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_blurWidthFxTransList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_0

    .line 2042
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_blurWidthFxTransList:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2043
    const/4 v14, 0x1

    .line 2047
    :cond_0
    if-eqz v14, :cond_1

    .line 2048
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    iget-wide v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    sub-long v4, v12, v4

    iget-wide v6, p0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-object/from16 v0, p7

    iget-object v8, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_blurFxId:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/meicam/sdk/NvsTimeline;->addPackagedTimelineVideoFx(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v2

    .line 2049
    .local v2, "fx":Lcom/meicam/sdk/NvsTimelineVideoFx;
    const-string v3, "No Background"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/meicam/sdk/NvsTimelineVideoFx;->setBooleanVal(Ljava/lang/String;Z)V

    .line 2052
    .end local v2    # "fx":Lcom/meicam/sdk/NvsTimelineVideoFx;
    .end local v11    # "i":I
    .end local v14    # "useBlur":Z
    :cond_1
    return-void

    .line 2041
    .restart local v11    # "i":I
    .restart local v14    # "useBlur":Z
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method private applyFxTransV3(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JLcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)V
    .locals 41
    .param p1, "videoTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p2, "transIdx"    # I
    .param p3, "fxTransXml"    # Ljava/lang/String;
    .param p4, "trans"    # Ljava/lang/String;
    .param p5, "transLen"    # J
    .param p7, "themeAsset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    .prologue
    .line 2055
    const-string v4, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2153
    :cond_0
    :goto_0
    return-void

    .line 2058
    :cond_1
    add-int/lit8 v4, p2, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 2061
    invoke-virtual/range {p1 .. p2}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v17

    .line 2062
    .local v17, "clip0":Lcom/meicam/sdk/NvsVideoClip;
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v18

    .line 2063
    .local v18, "clip1":Lcom/meicam/sdk/NvsVideoClip;
    add-int/lit8 v4, p2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v19

    .line 2064
    .local v19, "clip2":Lcom/meicam/sdk/NvsVideoClip;
    invoke-virtual/range {v17 .. v17}, Lcom/meicam/sdk/NvsVideoClip;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 2065
    .local v5, "file0":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/meicam/sdk/NvsVideoClip;->getFilePath()Ljava/lang/String;

    move-result-object v22

    .line 2066
    .local v22, "file1":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/meicam/sdk/NvsVideoClip;->getFilePath()Ljava/lang/String;

    move-result-object v23

    .line 2067
    .local v23, "file2":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v6

    invoke-virtual/range {v17 .. v17}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v8

    sub-long v28, v6, v8

    .line 2068
    .local v28, "len0":J
    invoke-virtual/range {v18 .. v18}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v6

    invoke-virtual/range {v18 .. v18}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v8

    sub-long v30, v6, v8

    .line 2069
    .local v30, "len1":J
    invoke-virtual/range {v19 .. v19}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v6

    invoke-virtual/range {v19 .. v19}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v8

    sub-long v32, v6, v8

    .line 2070
    .local v32, "len2":J
    const-string v4, "fullscreenMode"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    .line 2071
    .local v34, "mark":Ljava/lang/String;
    const-string v4, "indexOfShowList"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 2072
    .local v25, "idxOfShowList0":I
    const-string v4, "indexOfShowList"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 2073
    .local v26, "idxOfShowList1":I
    const-string v4, "indexOfShowList"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 2074
    .local v27, "idxOfShowList2":I
    const/16 v35, 0x0

    .line 2075
    .local v35, "preTransName":Ljava/lang/String;
    add-int/lit8 v4, p2, -0x1

    if-ltz v4, :cond_2

    .line 2076
    add-int/lit8 v4, p2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getTransitionBySourceClipIndex(I)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v38

    .line 2077
    .local v38, "transition":Lcom/meicam/sdk/NvsVideoTransition;
    if-eqz v38, :cond_2

    .line 2078
    invoke-virtual/range {v38 .. v38}, Lcom/meicam/sdk/NvsVideoTransition;->getVideoTransitionType()I

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {v38 .. v38}, Lcom/meicam/sdk/NvsVideoTransition;->getBuiltinVideoTransitionName()Ljava/lang/String;

    move-result-object v35

    .line 2080
    .end local v38    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :cond_2
    :goto_1
    const-wide/16 v36, 0x0

    .line 2081
    .local v36, "offset":J
    if-eqz v35, :cond_3

    .line 2082
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    const-wide/16 v8, 0x2

    div-long v36, v6, v8

    .line 2084
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->removeClip(IZ)Z

    .line 2085
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->removeClip(IZ)Z

    .line 2086
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->removeClip(IZ)Z

    .line 2087
    const-wide/16 v6, 0x0

    add-long v8, v28, v30

    add-long v8, v8, v32

    move-object/from16 v4, p1

    move/from16 v10, p2

    invoke-virtual/range {v4 .. v10}, Lcom/meicam/sdk/NvsVideoTrack;->insertClip(Ljava/lang/String;JJI)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v17

    .line 2088
    const-string v4, "fullscreenMode"

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2089
    const-string v4, "hasFxTrans"

    const-string/jumbo v6, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2090
    const-string v4, "fxFilePath"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2091
    const-string v4, "fxFileV3Path"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2092
    const-string v4, "fxInpoint"

    const-wide/16 v6, 0x3e8

    div-long v6, v28, v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2093
    const-string v4, "fxV3Inpoint"

    const-wide/16 v6, 0x3e8

    div-long v6, v30, v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2095
    invoke-virtual/range {v17 .. v17}, Lcom/meicam/sdk/NvsVideoClip;->getIndex()I

    move-result v20

    .line 2096
    .local v20, "clipIdx":I
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 2097
    add-int/lit8 v4, v20, -0x1

    if-ltz v4, :cond_4

    .line 2098
    if-eqz v35, :cond_9

    .line 2099
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x1e

    if-le v4, v6, :cond_8

    .line 2100
    add-int/lit8 v4, v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 2107
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->setImageMotion(Lcom/meicam/sdk/NvsVideoClip;Lcom/meicam/themehelper/NvsImageFileDesc;)V

    .line 2109
    const-string v4, "Storyboard"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoClip;->appendBuiltinFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v24

    .line 2111
    .local v24, "fx":Lcom/meicam/sdk/NvsVideoFx;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    sub-long v6, v6, v36

    sub-long v6, v28, v6

    const-wide/16 v8, 0x3e8

    div-long v10, v6, v8

    .line 2112
    .local v10, "fxStartTime":J
    const-wide/16 v6, 0x3e8

    div-long v6, v30, v6

    add-long v12, v10, v6

    invoke-virtual/range {v17 .. v17}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v6

    invoke-virtual/range {v17 .. v17}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    const-wide/16 v14, 0x2

    div-long/2addr v8, v14

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long v14, v6, v10

    move-object/from16 v0, p7

    iget-boolean v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->isDownload:Z

    move/from16 v16, v0

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    invoke-direct/range {v6 .. v16}, Lcom/meicam/themehelper/NvsThemeHelper;->changeFxDescV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZ)Ljava/lang/String;

    move-result-object v21

    .line 2113
    .local v21, "desc":Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 2119
    const-string v4, "hori"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x1

    move-object/from16 v0, v21

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeHoriROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 2121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeHoriROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 2130
    :goto_3
    const-string v4, "Description String"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoFx;->setStringVal(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    move-object/from16 v39, p3

    .line 2132
    .local v39, "xmlPath":Ljava/lang/String;
    move-object/from16 v0, p7

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->isDownload:Z

    if-nez v4, :cond_5

    .line 2133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assets:/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 2134
    :cond_5
    const/4 v4, 0x0

    const-string v6, "/"

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .line 2135
    const-string v4, "Resource Dir"

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoFx;->setStringVal(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    const-string v4, "Compact Preload Resource"

    const/4 v6, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6}, Lcom/meicam/sdk/NvsVideoFx;->setBooleanVal(Ljava/lang/String;Z)V

    .line 2138
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2139
    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2140
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 2152
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    goto/16 :goto_0

    .line 2078
    .end local v10    # "fxStartTime":J
    .end local v20    # "clipIdx":I
    .end local v21    # "desc":Ljava/lang/String;
    .end local v24    # "fx":Lcom/meicam/sdk/NvsVideoFx;
    .end local v36    # "offset":J
    .end local v39    # "xmlPath":Ljava/lang/String;
    .restart local v38    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :cond_7
    invoke-virtual/range {v38 .. v38}, Lcom/meicam/sdk/NvsVideoTransition;->getVideoTransitionPackageId()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_1

    .line 2102
    .end local v38    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    .restart local v20    # "clipIdx":I
    .restart local v36    # "offset":J
    :cond_8
    add-int/lit8 v4, v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    goto/16 :goto_2

    .line 2104
    :cond_9
    add-int/lit8 v4, v20, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    goto/16 :goto_2

    .line 2122
    .restart local v10    # "fxStartTime":J
    .restart local v21    # "desc":Ljava/lang/String;
    .restart local v24    # "fx":Lcom/meicam/sdk/NvsVideoFx;
    :cond_a
    const-string/jumbo v4, "vert"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x1

    move-object/from16 v0, v21

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeVertROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 2124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeVertROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3

    .line 2126
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x1

    move-object/from16 v0, v21

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 2127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget v6, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-object v4, v4, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-static {v6, v4, v0, v7}, Lcom/meicam/themehelper/Utils;->changeROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3

    .line 2143
    .restart local v39    # "xmlPath":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x1e

    if-le v4, v6, :cond_d

    .line 2144
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v38

    .line 2147
    .restart local v38    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :goto_5
    if-eqz v38, :cond_6

    .line 2148
    move-wide/from16 v0, p5

    long-to-float v4, v0

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v4, v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoTransition;->setVideoTransitionDurationScaleFactor(F)V

    goto/16 :goto_4

    .line 2146
    .end local v38    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v38

    .restart local v38    # "transition":Lcom/meicam/sdk/NvsVideoTransition;
    goto :goto_5
.end method

.method private buildVideoTrack(Ljava/util/ArrayList;Lcom/meicam/sdk/NvsVideoTrack;Ljava/util/ArrayList;JJZ)Ljava/util/Map;
    .locals 20
    .param p2, "videoTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p4, "musicLen"    # J
    .param p6, "newDuration"    # J
    .param p8, "is10sMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsMusicPointDesc;",
            ">;JJZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/meicam/themehelper/NvsMusicPointDesc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1850
    .local p1, "showList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    .local p3, "musicPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsMusicPointDesc;>;"
    const/4 v14, 0x0

    .line 1851
    .local v14, "pointIndex":I
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1852
    .local v18, "transListInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/meicam/themehelper/NvsMusicPointDesc;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 1853
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->clipMaxLen:J

    long-to-int v9, v2

    .line 1854
    .local v9, "clipDuration":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 1855
    if-lez v12, :cond_9

    .line 1856
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v14, v2, :cond_1

    .line 1899
    .end local v9    # "clipDuration":I
    :cond_0
    return-object v18

    .line 1860
    .restart local v9    # "clipDuration":I
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meicam/themehelper/NvsMusicPointDesc;

    .line 1861
    .local v10, "current":Lcom/meicam/themehelper/NvsMusicPointDesc;
    add-int/lit8 v2, v14, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1862
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meicam/themehelper/NvsMusicPointDesc;

    .line 1863
    .local v13, "next":Lcom/meicam/themehelper/NvsMusicPointDesc;
    iget v2, v13, Lcom/meicam/themehelper/NvsMusicPointDesc;->cutPoint:I

    iget v3, v10, Lcom/meicam/themehelper/NvsMusicPointDesc;->cutPoint:I

    sub-int/2addr v2, v3

    mul-int/lit16 v9, v2, 0x3e8

    .line 1870
    .end local v13    # "next":Lcom/meicam/themehelper/NvsMusicPointDesc;
    :goto_1
    if-gtz v9, :cond_4

    .line 1871
    add-int/lit8 v14, v14, 0x1

    .line 1852
    .end local v10    # "current":Lcom/meicam/themehelper/NvsMusicPointDesc;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1865
    .restart local v10    # "current":Lcom/meicam/themehelper/NvsMusicPointDesc;
    :cond_2
    move-wide/from16 v16, p4

    .line 1866
    .local v16, "totalLen":J
    if-eqz p8, :cond_3

    .line 1867
    const-wide/16 v2, 0xa

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    mul-long v16, v2, v4

    .line 1868
    :cond_3
    iget v2, v10, Lcom/meicam/themehelper/NvsMusicPointDesc;->cutPoint:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sub-long v2, v16, v2

    long-to-int v9, v2

    goto :goto_1

    .line 1875
    .end local v16    # "totalLen":J
    :cond_4
    iget-object v2, v10, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v10, Lcom/meicam/themehelper/NvsMusicPointDesc;->fxNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1876
    :cond_5
    const/4 v15, 0x0

    .line 1877
    .local v15, "transIdx":I
    invoke-virtual/range {p2 .. p2}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 1878
    invoke-virtual/range {p2 .. p2}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .line 1879
    :cond_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    .end local v15    # "transIdx":I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 1888
    .end local v10    # "current":Lcom/meicam/themehelper/NvsMusicPointDesc;
    :cond_8
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meicam/themehelper/NvsImageFileDesc;

    .line 1889
    .local v11, "fileDesc":Lcom/meicam/themehelper/NvsImageFileDesc;
    iget-object v3, v11, Lcom/meicam/themehelper/NvsImageFileDesc;->filePath:Ljava/lang/String;

    const-wide/16 v4, 0x0

    int-to-long v6, v9

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/meicam/sdk/NvsVideoTrack;->appendClip(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v8

    .line 1890
    .local v8, "clip":Lcom/meicam/sdk/NvsVideoClip;
    if-eqz v8, :cond_a

    .line 1891
    const-string v2, "indexOfShowList"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1892
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/meicam/themehelper/NvsThemeHelper;->setImageMotion(Lcom/meicam/sdk/NvsVideoClip;Lcom/meicam/themehelper/NvsImageFileDesc;)V

    goto :goto_2

    .line 1883
    .end local v8    # "clip":Lcom/meicam/sdk/NvsVideoClip;
    .end local v11    # "fileDesc":Lcom/meicam/themehelper/NvsImageFileDesc;
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meicam/themehelper/NvsMusicPointDesc;

    .line 1884
    .restart local v10    # "current":Lcom/meicam/themehelper/NvsMusicPointDesc;
    iget v2, v10, Lcom/meicam/themehelper/NvsMusicPointDesc;->cutPoint:I

    mul-int/lit16 v9, v2, 0x3e8

    goto :goto_3

    .line 1894
    .end local v10    # "current":Lcom/meicam/themehelper/NvsMusicPointDesc;
    .restart local v8    # "clip":Lcom/meicam/sdk/NvsVideoClip;
    .restart local v11    # "fileDesc":Lcom/meicam/themehelper/NvsImageFileDesc;
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1895
    add-int/lit8 v12, v12, -0x1

    goto :goto_2
.end method

.method private changeFxDesc(Ljava/lang/String;Ljava/lang/String;JJZ)Ljava/lang/String;
    .locals 3
    .param p1, "fxTrans"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "fxLen"    # J
    .param p7, "isDownload"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2314
    if-eqz p7, :cond_0

    move-object v1, v2

    :goto_0
    invoke-static {p1, v1}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v0

    .line 2315
    .local v0, "fxDesc":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2320
    :goto_1
    return-object v2

    .line 2314
    .end local v0    # "fxDesc":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    goto :goto_0

    .line 2317
    .restart local v0    # "fxDesc":Ljava/lang/String;
    :cond_1
    const-string v1, "placeholder.jpg"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2318
    const-string/jumbo v1, "xiaomiStartTime"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2319
    const-string/jumbo v1, "xiaomiDurationTime"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2320
    goto :goto_1
.end method

.method private changeFxDescV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZ)Ljava/lang/String;
    .locals 4
    .param p1, "fxTrans"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileV3Path"    # Ljava/lang/String;
    .param p4, "startTime"    # J
    .param p6, "startTime2"    # J
    .param p8, "fxLen"    # J
    .param p10, "isDownload"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2324
    if-eqz p10, :cond_0

    move-object v1, v2

    :goto_0
    invoke-static {p1, v1}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v0

    .line 2325
    .local v0, "fxDesc":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2334
    :goto_1
    return-object v2

    .line 2324
    .end local v0    # "fxDesc":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    goto :goto_0

    .line 2327
    .restart local v0    # "fxDesc":Ljava/lang/String;
    :cond_1
    const-string v1, "placeholder.jpg"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2328
    const-string v1, "picture.jpg"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2329
    const-string/jumbo v1, "xiaomiStartTime"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2330
    const-string v1, "pictureShowUp"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2331
    const-string/jumbo v1, "xiaomiDurationTime"

    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2332
    const-string v1, "pictureLoop"

    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2333
    const-string v1, "lastMove"

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, p6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2334
    goto :goto_1
.end method

.method private changeLocalMusic(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 986
    const/4 v0, -0x1

    iput v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    .line 987
    iput-object p1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusic:Ljava/lang/String;

    .line 988
    iput-wide p2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicStart:J

    .line 989
    iput-wide p4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicEnd:J

    .line 993
    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    .line 995
    return-void
.end method

.method private checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "curAssetId"    # Ljava/lang/String;
    .param p2, "assetPath"    # Ljava/lang/String;
    .param p3, "assetType"    # I

    .prologue
    const/4 v3, 0x0

    .line 2902
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v1, v3

    .line 2915
    :cond_1
    :goto_0
    return v1

    .line 2904
    :cond_2
    const/4 v1, 0x0

    .line 2905
    .local v1, "needUpdate":Z
    if-eqz p1, :cond_1

    .line 2906
    iget-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-nez v4, :cond_3

    .line 2907
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v4

    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    .line 2908
    :cond_3
    iget-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-nez v4, :cond_4

    move v1, v3

    .line 2909
    goto :goto_0

    .line 2910
    :cond_4
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageVersionFromAssetPackageFilePath(Ljava/lang/String;)I

    move-result v2

    .line 2911
    .local v2, "newVersion":I
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageVersion(Ljava/lang/String;I)I

    move-result v0

    .line 2912
    .local v0, "curVersion":I
    if-le v2, v0, :cond_1

    .line 2913
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private cleanUpTimeLine(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 6
    .param p1, "timeline"    # Lcom/meicam/sdk/NvsTimeline;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1072
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->removeCurrentTheme()V

    .line 1073
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getFirstTimelineVideoFx()Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v0

    .line 1074
    .local v0, "fx":Lcom/meicam/sdk/NvsTimelineVideoFx;
    :goto_0
    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {p1, v0}, Lcom/meicam/sdk/NvsTimeline;->removeTimelineVideoFx(Lcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v0

    goto :goto_0

    .line 1077
    :cond_0
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getFirstAnimatedSticker()Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v2

    .line 1078
    .local v2, "sticker":Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    :goto_1
    if-eqz v2, :cond_1

    .line 1079
    invoke-virtual {p1, v2}, Lcom/meicam/sdk/NvsTimeline;->removeAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v2

    goto :goto_1

    .line 1081
    :cond_1
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1082
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1083
    iput-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1085
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->videoTrackCount()I

    move-result v3

    .line 1086
    .local v3, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_2

    .line 1087
    invoke-virtual {p1, v1}, Lcom/meicam/sdk/NvsTimeline;->removeVideoTrack(I)Z

    .line 1086
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1089
    :cond_2
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->audioTrackCount()I

    move-result v3

    .line 1090
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    .line 1091
    invoke-virtual {p1, v1}, Lcom/meicam/sdk/NvsTimeline;->removeAudioTrack(I)Z

    .line 1090
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1093
    :cond_3
    invoke-virtual {p1, v5, v5}, Lcom/meicam/sdk/NvsTimeline;->setThemeMusicVolumeGain(FF)V

    .line 1094
    return-void
.end method

.method private createCaptionBitmap(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "caption_text"    # Ljava/lang/String;
    .param p2, "fontSize"    # I

    .prologue
    const/4 v7, 0x1

    .line 1690
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1691
    :cond_0
    const/4 v10, 0x0

    .line 1734
    :goto_0
    return-object v10

    .line 1715
    :cond_1
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 1716
    .local v2, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1717
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1718
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1719
    int-to-float v1, p2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1720
    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1721
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_2

    .line 1722
    const v1, 0x3cf5c28f    # 0.03f

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 1724
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/meicam/themehelper/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1727
    .local v0, "staticLayout":Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1728
    .local v9, "canvasBitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1729
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1732
    invoke-direct {p0, v9}, Lcom/meicam/themehelper/NvsThemeHelper;->saveBitmapToSD(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v10

    .line 1734
    .local v10, "png_path":Ljava/lang/String;
    goto :goto_0
.end method

.method private getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "isDownloadFile"    # Z

    .prologue
    .line 2919
    const/4 v2, 0x0

    .line 2921
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2926
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2927
    :cond_0
    const/4 v0, 0x0

    .line 2932
    :cond_1
    :goto_1
    return-object v0

    .line 2922
    :catch_0
    move-exception v1

    .line 2923
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2924
    const/4 v2, 0x0

    goto :goto_0

    .line 2929
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assets:/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2930
    .local v0, "assetPath":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 2931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getClipCountInDuation(Ljava/util/ArrayList;J)I
    .locals 10
    .param p2, "newDuation"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsMusicPointDesc;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 1052
    .local p1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsMusicPointDesc;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1053
    .local v1, "needClipCount":I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_0

    .line 1054
    invoke-direct {p0}, Lcom/meicam/themehelper/NvsThemeHelper;->getMinImgCount()I

    move-result v4

    .line 1067
    :goto_0
    return v4

    .line 1056
    :cond_0
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsMusicPointDesc;

    iget v4, v4, Lcom/meicam/themehelper/NvsMusicPointDesc;->cutPoint:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v2, v4

    .line 1057
    .local v2, "lastPoint":J
    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    .line 1058
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1061
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsMusicPointDesc;

    iget v4, v4, Lcom/meicam/themehelper/NvsMusicPointDesc;->cutPoint:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    add-long/2addr v6, p2

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 1062
    add-int/lit8 v1, v0, 0x1

    :cond_2
    move v4, v1

    .line 1067
    goto :goto_0

    .line 1060
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private getFxXml(ILcom/meicam/sdk/NvsVideoTrack;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Lcom/meicam/themehelper/NvsMusicPointDesc;)Ljava/lang/String;
    .locals 8
    .param p1, "transIdx"    # I
    .param p2, "videoTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p3, "themeAsset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    .param p4, "pointDesc"    # Lcom/meicam/themehelper/NvsMusicPointDesc;

    .prologue
    .line 1290
    const-string v0, ""

    .line 1291
    .local v0, "fxTransXml":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    .local v1, "fxTransXmlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p4, Lcom/meicam/themehelper/NvsMusicPointDesc;->fxNames:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1294
    const-string v4, ""

    .line 1342
    :goto_0
    return-object v4

    .line 1296
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTransType(ILcom/meicam/sdk/NvsVideoTrack;)Ljava/lang/String;

    move-result-object v3

    .line 1297
    .local v3, "transType":Ljava/lang/String;
    const-string v4, "full"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1298
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe2000000000000L    # 0.5625

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_3

    .line 1299
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v16List:Ljava/util/ArrayList;

    .line 1335
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1336
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p4, Lcom/meicam/themehelper/NvsMusicPointDesc;->fxNames:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1337
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fxTransXml":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "fxTransXml":Ljava/lang/String;
    :cond_2
    move-object v4, v0

    .line 1342
    goto :goto_0

    .line 1300
    .end local v2    # "j":I
    :cond_3
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 1301
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v18List:Ljava/util/ArrayList;

    goto :goto_1

    .line 1302
    :cond_4
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide v6, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5

    .line 1303
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9vx73List:Ljava/util/ArrayList;

    goto :goto_1

    .line 1305
    :cond_5
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v19List:Ljava/util/ArrayList;

    goto :goto_1

    .line 1306
    :cond_6
    const-string v4, "half"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1307
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe2000000000000L    # 0.5625

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_7

    .line 1308
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v16List:Ljava/util/ArrayList;

    goto :goto_1

    .line 1309
    :cond_7
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_8

    .line 1310
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v18List:Ljava/util/ArrayList;

    goto :goto_1

    .line 1311
    :cond_8
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide v6, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_9

    .line 1312
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9vx73List:Ljava/util/ArrayList;

    goto :goto_1

    .line 1314
    :cond_9
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v19List:Ljava/util/ArrayList;

    goto :goto_1

    .line 1315
    :cond_a
    const-string v4, "hf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1316
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe2000000000000L    # 0.5625

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_b

    .line 1317
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v16List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1318
    :cond_b
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_c

    .line 1319
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v18List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1320
    :cond_c
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide v6, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_d

    .line 1321
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9vx73List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1323
    :cond_d
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v19List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1324
    :cond_e
    const-string v4, "fh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1325
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe2000000000000L    # 0.5625

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_f

    .line 1326
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v16List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1327
    :cond_f
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_10

    .line 1328
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v18List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1329
    :cond_10
    sget v4, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v4

    const-wide v6, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_11

    .line 1330
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9vx73List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1332
    :cond_11
    iget-object v1, p3, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v19List:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1335
    .restart local v2    # "j":I
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method private getLicFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 2589
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2590
    .local v1, "str":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_0

    .line 2591
    const/4 v2, 0x0

    .line 2593
    :goto_0
    return-object v2

    .line 2592
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2593
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, ".lic"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getMaxImgCount()I
    .locals 1

    .prologue
    .line 2944
    const/16 v0, 0x14

    .line 2949
    .local v0, "max":I
    return v0
.end method

.method private getMinImgCount()I
    .locals 3

    .prologue
    .line 2936
    const/4 v0, 0x3

    .line 2937
    .local v0, "min":I
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2938
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-boolean v1, v1, Lcom/meicam/themehelper/NvsImageFileDesc;->isCover:Z

    if-eqz v1, :cond_0

    .line 2939
    add-int/lit8 v0, v0, 0x1

    .line 2941
    :cond_0
    return v0
.end method

.method private getRebuildFileList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 7
    .param p3, "nNewCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsMusicPointDesc;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    .local p2, "musicPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsMusicPointDesc;>;"
    const/16 v6, 0x14

    const/4 v5, 0x1

    .line 1347
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le p3, v4, :cond_0

    .line 1348
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 p3, v4, 0x1

    .line 1349
    :cond_0
    invoke-direct {p0}, Lcom/meicam/themehelper/NvsThemeHelper;->getMaxImgCount()I

    move-result v4

    if-le p3, v4, :cond_1

    .line 1350
    invoke-direct {p0}, Lcom/meicam/themehelper/NvsThemeHelper;->getMaxImgCount()I

    move-result p3

    .line 1352
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    .local v3, "usedFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    const/4 v4, -0x1

    if-ne p3, v4, :cond_3

    .line 1354
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1355
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/themehelper/NvsImageFileDesc;

    .line 1356
    .local v0, "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    if-eqz v4, :cond_2

    .line 1357
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1359
    .end local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    .end local v1    # "i":I
    :cond_3
    const/4 v4, -0x2

    if-ne p3, v4, :cond_4

    .line 1360
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1361
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/themehelper/NvsImageFileDesc;

    .line 1362
    .restart local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    iput-boolean v5, v0, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    .line 1363
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1366
    .end local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1367
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/themehelper/NvsImageFileDesc;

    .line 1368
    .restart local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    if-lt v1, p3, :cond_5

    .line 1369
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    .line 1366
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1372
    :cond_5
    iput-boolean v5, v0, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    .line 1373
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1379
    .end local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_8

    .line 1380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_7

    .line 1382
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1384
    :cond_7
    move-object v3, v2

    .line 1386
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    :cond_8
    return-object v3
.end method

.method private getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2357
    .local p1, "transNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "transIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2358
    const-string v3, ""

    .line 2375
    :cond_0
    :goto_0
    return-object v3

    .line 2360
    :cond_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 2361
    .local v1, "rand":Ljava/util/Random;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2362
    .local v2, "size":I
    invoke-direct {p0, p1}, Lcom/meicam/themehelper/NvsThemeHelper;->hasNullTrans(Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2363
    mul-int/lit8 v2, v2, 0x2

    .line 2364
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 2365
    .local v4, "useIdx":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    if-ltz v4, :cond_4

    .line 2366
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2367
    .local v3, "transName":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 2369
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2370
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2368
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2375
    .end local v0    # "i":I
    .end local v3    # "transName":Ljava/lang/String;
    :cond_4
    const-string v3, ""

    goto :goto_0
.end method

.method private getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2379
    .local p1, "transNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "transFxNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "transIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    .local p4, "fxTransXmlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2381
    .local v1, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2382
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2429
    :goto_0
    return-object v1

    .line 2386
    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 2387
    .local v2, "rand":Ljava/util/Random;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int v3, v7, v8

    .line 2388
    .local v3, "size":I
    invoke-direct {p0, p1}, Lcom/meicam/themehelper/NvsThemeHelper;->hasNullTrans(Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2389
    mul-int/lit8 v3, v3, 0x2

    .line 2390
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 2392
    .local v6, "useIdx":I
    if-gez v6, :cond_2

    .line 2393
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2396
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 2397
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2398
    .local v5, "transName":Ljava/lang/String;
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 2400
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2401
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2399
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2406
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2409
    .end local v5    # "transName":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v6, v7

    .line 2410
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    if-ltz v6, :cond_9

    .line 2411
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2412
    .local v4, "transFxName":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2413
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2416
    :cond_6
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 2417
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 2418
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2419
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2420
    invoke-direct {p0, p1, p3}, Lcom/meicam/themehelper/NvsThemeHelper;->getTransFollowFx(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2417
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2425
    .end local v0    # "i":I
    :cond_8
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2428
    .end local v4    # "transFxName":Ljava/lang/String;
    :cond_9
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private getTransFollowFx(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2436
    .local p1, "transNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "transIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2437
    .local v2, "transList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 2438
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1e

    if-ge v5, v6, :cond_0

    .line 2437
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2440
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2442
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2443
    const-string v5, ""

    .line 2456
    :goto_2
    return-object v5

    .line 2445
    :cond_2
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 2446
    .local v1, "rand":Ljava/util/Random;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 2447
    .local v4, "useIdx":I
    if-ltz v4, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 2448
    :cond_3
    const-string v5, ""

    goto :goto_2

    .line 2450
    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2451
    .local v3, "transName":Ljava/lang/String;
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 2452
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2453
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 2451
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2456
    :cond_6
    const-string v5, ""

    goto :goto_2
.end method

.method private getTransId(Ljava/lang/String;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)Ljava/lang/String;
    .locals 5
    .param p1, "transName"    # Ljava/lang/String;
    .param p2, "curThemeasset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    .prologue
    const/4 v3, 0x0

    .line 2889
    if-nez p2, :cond_1

    move-object v1, v3

    .line 2898
    :cond_0
    :goto_0
    return-object v1

    .line 2891
    :cond_1
    iget-object v2, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    move-object v1, v3

    .line 2892
    goto :goto_0

    .line 2893
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 2894
    iget-object v2, p2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2895
    .local v1, "trans":Ljava/lang/String;
    const-string v2, ".videotransition"

    const-string v4, ""

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2893
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "trans":Ljava/lang/String;
    :cond_3
    move-object v1, v3

    .line 2898
    goto :goto_0
.end method

.method private getTransType(ILcom/meicam/sdk/NvsVideoTrack;)Ljava/lang/String;
    .locals 5
    .param p1, "transIdx"    # I
    .param p2, "videTrack"    # Lcom/meicam/sdk/NvsVideoTrack;

    .prologue
    .line 2338
    invoke-virtual {p2, p1}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v0

    .line 2339
    .local v0, "clip0":Lcom/meicam/sdk/NvsVideoClip;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p2, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v1

    .line 2340
    .local v1, "clip1":Lcom/meicam/sdk/NvsVideoClip;
    const-string v4, "fullscreenMode"

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2341
    .local v2, "mode0":Ljava/lang/String;
    const-string v4, "fullscreenMode"

    invoke-virtual {v1, v4}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2343
    .local v3, "mode1":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2344
    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2345
    const-string v4, "full"

    .line 2352
    :goto_0
    return-object v4

    .line 2347
    :cond_0
    const-string v4, "fh"

    goto :goto_0

    .line 2349
    :cond_1
    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2350
    const-string v4, "hf"

    goto :goto_0

    .line 2352
    :cond_2
    const-string v4, "half"

    goto :goto_0
.end method

.method private hasNullTrans(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2461
    .local p1, "transList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2462
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2463
    const/4 v1, 0x1

    .line 2466
    :goto_1
    return v1

    .line 2461
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2466
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 9
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "update"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 2598
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v5, v7

    .line 2639
    :cond_1
    :goto_0
    return-object v5

    .line 2601
    :cond_2
    invoke-direct {p0, p1}, Lcom/meicam/themehelper/NvsThemeHelper;->getLicFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2603
    .local v2, "licFile":Ljava/lang/String;
    const/4 v3, 0x4

    .line 2604
    .local v3, "packageType":I
    const-string v0, ".captionstyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2605
    const/4 v3, 0x2

    .line 2614
    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2615
    .local v5, "themeId":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_7

    .line 2616
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->upgradeAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v6

    .line 2617
    .local v6, "error":I
    if-eqz v6, :cond_1

    .line 2618
    const-string v0, "NvsThemeHelper"

    const-string v1, "Failed to upgrade package!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 2619
    goto :goto_0

    .line 2606
    .end local v5    # "themeId":Ljava/lang/StringBuilder;
    .end local v6    # "error":I
    :cond_4
    const-string v0, ".videofx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2607
    const/4 v3, 0x0

    goto :goto_1

    .line 2608
    :cond_5
    const-string v0, ".videotransition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2609
    const/4 v3, 0x1

    goto :goto_1

    .line 2610
    :cond_6
    const-string v0, ".animatedsticker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2611
    const/4 v3, 0x3

    goto :goto_1

    .line 2622
    .restart local v5    # "themeId":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v6

    .line 2623
    .restart local v6    # "error":I
    if-eqz v6, :cond_8

    if-eq v6, v8, :cond_8

    .line 2625
    const-string v0, "NvsThemeHelper"

    const-string v1, "Failed to install package!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 2626
    goto :goto_0

    .line 2628
    :cond_8
    if-ne v6, v8, :cond_1

    .line 2629
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2630
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->upgradeAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v6

    .line 2631
    if-eqz v6, :cond_1

    .line 2632
    const-string v0, "NvsThemeHelper"

    const-string v1, "Failed to upgrade package!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 2633
    goto/16 :goto_0
.end method

.method private installThemeAsset(Landroid/content/Context;Ljava/lang/String;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)Z
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeID"    # Ljava/lang/String;
    .param p3, "curThemeasset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    .prologue
    .line 2644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 2645
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    .line 2646
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 2647
    const/16 v19, 0x0

    .line 2821
    :goto_0
    return v19

    .line 2649
    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/info.json"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-nez p1, :cond_2

    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v6

    .line 2650
    .local v6, "assetFileInfo":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 2651
    const-string v19, "NvsThemeHelper"

    const-string v20, "read theme info json file error!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    const/16 v19, 0x0

    goto :goto_0

    .line 2649
    .end local v6    # "assetFileInfo":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    goto :goto_1

    .line 2655
    .restart local v6    # "assetFileInfo":Ljava/lang/String;
    :cond_3
    new-instance v16, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;-><init>(Lcom/meicam/themehelper/NvsThemeHelper;)V

    .line 2656
    .local v16, "themeasset":Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    if-nez p1, :cond_5

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->isDownload:Z

    .line 2658
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2660
    .local v10, "fxDescobj":Lorg/json/JSONObject;
    const-string v19, "hasFxTrans"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2661
    const-string v19, "hasFxTrans"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hasFxTrans:Z

    .line 2665
    :cond_4
    const-string/jumbo v20, "theme"

    if-nez p1, :cond_6

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2666
    .local v7, "assetPath":Ljava/lang/String;
    if-nez p3, :cond_7

    const/16 v19, 0x0

    :goto_4
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2669
    .local v15, "needUpdate":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_themeId:Ljava/lang/StringBuilder;

    .line 2670
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_themeId:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    .line 2671
    const-string v19, "NvsThemeHelper"

    const-string v20, "Failed to install theme package!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2656
    .end local v7    # "assetPath":Ljava/lang/String;
    .end local v10    # "fxDescobj":Lorg/json/JSONObject;
    .end local v15    # "needUpdate":Z
    :cond_5
    const/16 v19, 0x0

    goto :goto_2

    .line 2665
    .restart local v10    # "fxDescobj":Lorg/json/JSONObject;
    :cond_6
    const/16 v19, 0x0

    goto :goto_3

    .line 2666
    .restart local v7    # "assetPath":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_themeId:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_4

    .line 2676
    .restart local v15    # "needUpdate":Z
    :cond_8
    const-string/jumbo v20, "theme10s"

    if-nez p1, :cond_9

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2677
    if-nez p3, :cond_a

    const/16 v19, 0x0

    :goto_6
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2680
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_theme10sId:Ljava/lang/StringBuilder;

    .line 2681
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_theme10sId:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    if-nez v19, :cond_b

    .line 2682
    const-string v19, "NvsThemeHelper"

    const-string v20, "Failed to install theme 10s package!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2676
    :cond_9
    const/16 v19, 0x0

    goto :goto_5

    .line 2677
    :cond_a
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_theme10sId:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_6

    .line 2687
    :cond_b
    const-string v19, "cafSticker"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 2688
    const-string v20, "cafSticker"

    if-nez p1, :cond_e

    const/16 v19, 0x1

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2689
    if-nez p3, :cond_f

    const/16 v19, 0x0

    :goto_8
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2692
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_cafStickerId:Ljava/lang/StringBuilder;

    .line 2694
    :cond_c
    const-string v19, "cafSticker10s"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 2695
    const-string v20, "cafSticker10s"

    if-nez p1, :cond_10

    const/16 v19, 0x1

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2696
    if-nez p3, :cond_11

    const/16 v19, 0x0

    :goto_a
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2699
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_cafSticker10sId:Ljava/lang/StringBuilder;

    .line 2703
    :cond_d
    const-string/jumbo v20, "sticker1"

    if-nez p1, :cond_12

    const/16 v19, 0x1

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2704
    if-nez p3, :cond_13

    const/16 v19, 0x0

    :goto_c
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2707
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId1:Ljava/lang/StringBuilder;

    .line 2708
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId1:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    if-nez v19, :cond_14

    .line 2709
    const-string v19, "NvsThemeHelper"

    const-string v20, "Failed to install sticker package!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2688
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 2689
    :cond_f
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_cafStickerId:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_8

    .line 2695
    :cond_10
    const/16 v19, 0x0

    goto :goto_9

    .line 2696
    :cond_11
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_cafSticker10sId:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_a

    .line 2703
    :cond_12
    const/16 v19, 0x0

    goto :goto_b

    .line 2704
    :cond_13
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId1:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_c

    .line 2712
    :cond_14
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId1:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_stickerId1:Ljava/lang/String;

    .line 2714
    const-string/jumbo v20, "sticker2"

    if-nez p1, :cond_15

    const/16 v19, 0x1

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2715
    if-nez p3, :cond_16

    const/16 v19, 0x0

    :goto_e
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2718
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId2:Ljava/lang/StringBuilder;

    .line 2719
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId2:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    if-nez v19, :cond_17

    .line 2720
    const-string v19, "NvsThemeHelper"

    const-string v20, "Failed to install sticker2 package!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2714
    :cond_15
    const/16 v19, 0x0

    goto :goto_d

    .line 2715
    :cond_16
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId2:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_e

    .line 2723
    :cond_17
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_stickerId2:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_stickerId2:Ljava/lang/String;

    .line 2726
    const-string v19, "blurFx"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 2727
    const-string v20, "blurFx"

    if-nez p1, :cond_18

    const/16 v19, 0x1

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->getAssetPath(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2728
    if-nez p3, :cond_19

    const/16 v19, 0x0

    :goto_10
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2731
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_blurFxId:Ljava/lang/StringBuilder;

    .line 2732
    const-string v19, "blurWithFxTrans"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 2733
    const-string v19, "blurWithFxTrans"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2734
    .local v4, "array":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_11
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_1a

    .line 2735
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_blurWidthFxTransList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2734
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 2727
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v12    # "i":I
    :cond_18
    const/16 v19, 0x0

    goto :goto_f

    .line 2728
    :cond_19
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_blurFxId:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    goto :goto_10

    .line 2743
    :cond_1a
    :try_start_1
    const-string v19, "endingVideoFX"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2744
    .local v11, "fxFileName":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2745
    if-nez p1, :cond_21

    const/16 v19, 0x0

    :goto_12
    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFxId:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2752
    .end local v11    # "fxFileName":Ljava/lang/String;
    :goto_13
    :try_start_2
    const-string v19, "endingVideoFX10s"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2753
    .restart local v11    # "fxFileName":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2754
    if-nez p1, :cond_22

    const/16 v19, 0x0

    :goto_14
    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFxId10s:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2759
    .end local v11    # "fxFileName":Ljava/lang/String;
    :goto_15
    :try_start_3
    const-string v19, "endingVideoFX10sDuration"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFx10sLen:J

    .line 2762
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "assets:/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/black_block.png"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2763
    if-nez p1, :cond_1b

    .line 2764
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/black_block.png"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2765
    :cond_1b
    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_endingFxImgPath:Ljava/lang/String;

    .line 2768
    const-string v19, "musicrhythm"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2769
    .local v13, "musicJsonFile":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-nez p1, :cond_23

    const/16 v19, 0x0

    :goto_16
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v14

    .line 2770
    .local v14, "musicjson":Ljava/lang/String;
    if-eqz v14, :cond_1c

    .line 2771
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicPoints:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transDesc:Lcom/meicam/themehelper/NvsTransDesc;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v14, v0, v1}, Lcom/meicam/themehelper/NvsParseHelper;->readMusicPoint(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meicam/themehelper/NvsTransDesc;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicLen:J

    .line 2775
    :cond_1c
    const-string v19, "musicrhythm10s"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2776
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-nez p1, :cond_24

    const/16 v19, 0x0

    :goto_17
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v14

    .line 2777
    if-eqz v14, :cond_1d

    .line 2778
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicPoints10s:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v14, v0, v1}, Lcom/meicam/themehelper/NvsParseHelper;->readMusicPoint(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meicam/themehelper/NvsTransDesc;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicLen10s:J

    .line 2782
    :cond_1d
    const-string/jumbo v19, "transition"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_26

    .line 2783
    const-string/jumbo v19, "transition"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2784
    .restart local v4    # "array":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_18
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_26

    .line 2785
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2786
    .local v18, "transName":Ljava/lang/String;
    if-eqz v18, :cond_20

    .line 2787
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "assets:/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2788
    .local v5, "asset":Ljava/lang/String;
    if-nez p1, :cond_1e

    .line 2789
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2790
    :cond_1e
    const/4 v15, 0x0

    .line 2791
    if-eqz p3, :cond_1f

    .line 2792
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTransId(Ljava/lang/String;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)Ljava/lang/String;

    move-result-object v8

    .line 2793
    .local v8, "curTransId":Ljava/lang/String;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v8, v5, v1}, Lcom/meicam/themehelper/NvsThemeHelper;->checkUpdateAsset(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 2795
    .end local v8    # "curTransId":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/meicam/themehelper/NvsThemeHelper;->installAssetToContext(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v17

    .line 2796
    .local v17, "transID":Ljava/lang/StringBuilder;
    if-nez v17, :cond_25

    .line 2784
    .end local v5    # "asset":Ljava/lang/String;
    .end local v17    # "transID":Ljava/lang/StringBuilder;
    :cond_20
    :goto_19
    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    .line 2745
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .end local v13    # "musicJsonFile":Ljava/lang/String;
    .end local v14    # "musicjson":Ljava/lang/String;
    .end local v18    # "transName":Ljava/lang/String;
    .restart local v11    # "fxFileName":Ljava/lang/String;
    :cond_21
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v19

    goto/16 :goto_12

    .line 2746
    .end local v11    # "fxFileName":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2747
    .local v9, "e":Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_13

    .line 2812
    .end local v7    # "assetPath":Ljava/lang/String;
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v10    # "fxDescobj":Lorg/json/JSONObject;
    .end local v15    # "needUpdate":Z
    :catch_1
    move-exception v9

    .line 2813
    .restart local v9    # "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    .line 2814
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2754
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v7    # "assetPath":Ljava/lang/String;
    .restart local v10    # "fxDescobj":Lorg/json/JSONObject;
    .restart local v11    # "fxFileName":Ljava/lang/String;
    .restart local v15    # "needUpdate":Z
    :cond_22
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v19

    goto/16 :goto_14

    .line 2755
    .end local v11    # "fxFileName":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 2756
    .restart local v9    # "e":Lorg/json/JSONException;
    :try_start_7
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_15

    .line 2769
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v13    # "musicJsonFile":Ljava/lang/String;
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    goto/16 :goto_16

    .line 2776
    .restart local v14    # "musicjson":Ljava/lang/String;
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    goto/16 :goto_17

    .line 2798
    .restart local v4    # "array":Lorg/json/JSONArray;
    .restart local v5    # "asset":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v17    # "transID":Ljava/lang/StringBuilder;
    .restart local v18    # "transName":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 2804
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v5    # "asset":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v17    # "transID":Ljava/lang/StringBuilder;
    .end local v18    # "transName":Ljava/lang/String;
    :cond_26
    const-string/jumbo v19, "transFx"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_27

    .line 2805
    const-string/jumbo v19, "transFx"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2806
    .restart local v4    # "array":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_1a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_27

    .line 2807
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2808
    .restart local v18    # "transName":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2809
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->addToFxList(Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    .line 2806
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    .line 2817
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .end local v18    # "transName":Ljava/lang/String;
    :cond_27
    if-eqz p3, :cond_28

    .line 2818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->mThemeAssetMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2820
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->mThemeAssetMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2821
    const/16 v19, 0x1

    goto/16 :goto_0
.end method

.method private isLargeImg(Lcom/meicam/sdk/NvsSize;)Z
    .locals 14
    .param p1, "oriImgSize"    # Lcom/meicam/sdk/NvsSize;

    .prologue
    .line 1025
    new-instance v1, Lcom/meicam/sdk/NvsSize;

    iget v10, p1, Lcom/meicam/sdk/NvsSize;->width:I

    iget v11, p1, Lcom/meicam/sdk/NvsSize;->height:I

    invoke-direct {v1, v10, v11}, Lcom/meicam/sdk/NvsSize;-><init>(II)V

    .line 1026
    .local v1, "imgSize":Lcom/meicam/sdk/NvsSize;
    iget v10, v1, Lcom/meicam/sdk/NvsSize;->width:I

    iget v11, v1, Lcom/meicam/sdk/NvsSize;->height:I

    if-lt v10, v11, :cond_0

    .line 1027
    iget v10, p1, Lcom/meicam/sdk/NvsSize;->height:I

    iput v10, v1, Lcom/meicam/sdk/NvsSize;->width:I

    .line 1028
    iget v10, p1, Lcom/meicam/sdk/NvsSize;->width:I

    iput v10, v1, Lcom/meicam/sdk/NvsSize;->height:I

    .line 1031
    :cond_0
    iget-object v10, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v10}, Lcom/meicam/sdk/NvsTimeline;->getVideoRes()Lcom/meicam/sdk/NvsVideoResolution;

    move-result-object v2

    .line 1033
    .local v2, "resolution":Lcom/meicam/sdk/NvsVideoResolution;
    iget v10, v2, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    int-to-double v10, v10

    iget v12, v1, Lcom/meicam/sdk/NvsSize;->width:I

    int-to-double v12, v12

    div-double v8, v10, v12

    .line 1034
    .local v8, "scaleW":D
    iget v10, v2, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    int-to-double v10, v10

    iget v12, v1, Lcom/meicam/sdk/NvsSize;->height:I

    int-to-double v12, v12

    div-double v6, v10, v12

    .line 1035
    .local v6, "scaleH":D
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 1037
    .local v4, "scale":D
    iget v3, v1, Lcom/meicam/sdk/NvsSize;->width:I

    .line 1038
    .local v3, "w":I
    iget v0, v1, Lcom/meicam/sdk/NvsSize;->height:I

    .line 1039
    .local v0, "h":I
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v4, v10

    if-gez v10, :cond_1

    .line 1040
    iget v10, v1, Lcom/meicam/sdk/NvsSize;->width:I

    int-to-double v10, v10

    mul-double/2addr v10, v4

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v3, v10

    .line 1041
    iget v10, v1, Lcom/meicam/sdk/NvsSize;->height:I

    int-to-double v10, v10

    mul-double/2addr v10, v4

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v0, v10

    .line 1044
    :cond_1
    const/16 v10, 0x2000

    if-gt v3, v10, :cond_2

    const/16 v10, 0x2000

    if-le v0, v10, :cond_3

    .line 1045
    :cond_2
    const/4 v10, 0x1

    .line 1047
    :goto_0
    return v10

    :cond_3
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private manageString2Length(Ljava/lang/String;I)Ljava/lang/String;
    .locals 15
    .param p1, "source_text"    # Ljava/lang/String;
    .param p2, "fontSize"    # I

    .prologue
    .line 1816
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1817
    :cond_0
    const/4 v13, 0x0

    .line 1846
    :goto_0
    return-object v13

    .line 1818
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1819
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 1820
    .local v12, "textPaint":Landroid/graphics/Paint;
    move/from16 v0, p2

    int-to-float v13, v0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1822
    iget-object v13, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-static {v13}, Lcom/meicam/themehelper/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x42c80000    # 100.0f

    sub-float v8, v13, v14

    .line 1824
    .local v8, "max_length":F
    const-string/jumbo v2, "\ud83d\ude00"

    .line 1825
    .local v2, "emoji":Ljava/lang/String;
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1826
    .local v6, "lenght1":F
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1827
    .local v7, "lenght2":F
    sub-float v3, v6, v7

    .line 1829
    .local v3, "emojiMinLength":F
    const/4 v10, 0x0

    .line 1830
    .local v10, "sub_index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v5, v13, :cond_2

    .line 1831
    add-int/lit8 v10, v5, 0x1

    .line 1832
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1833
    .local v11, "test":Ljava/lang/String;
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1834
    .local v1, "cur_length":F
    cmpl-float v13, v1, v8

    if-ltz v13, :cond_3

    .line 1835
    move v10, v5

    .line 1836
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-gt v5, v13, :cond_2

    .line 1837
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1838
    .local v9, "next_str":Ljava/lang/String;
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    sub-float v4, v1, v13

    .line 1839
    .local v4, "end_length":F
    cmpg-float v13, v4, v3

    if-gtz v13, :cond_2

    .line 1840
    add-int/lit8 v10, v5, -0x1

    .line 1846
    .end local v1    # "cur_length":F
    .end local v4    # "end_length":F
    .end local v9    # "next_str":Ljava/lang/String;
    .end local v11    # "test":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 1830
    .restart local v1    # "cur_length":F
    .restart local v11    # "test":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private manageStringLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 15
    .param p1, "source_text"    # Ljava/lang/String;
    .param p2, "fontSize"    # I

    .prologue
    .line 1775
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1776
    :cond_0
    const/4 v13, 0x0

    .line 1812
    :goto_0
    return-object v13

    .line 1777
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1778
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 1779
    .local v12, "textPaint":Landroid/graphics/Paint;
    move/from16 v0, p2

    int-to-float v13, v0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1781
    const-string/jumbo v13, "\u5317\u4eac\u7f8e\u6444\u7f51\u7edc\u79d1\u6280\u516c\u53f8"

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 1783
    .local v8, "max_length":F
    const-string/jumbo v2, "\ud83d\ude00"

    .line 1784
    .local v2, "emoji":Ljava/lang/String;
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1785
    .local v6, "lenght1":F
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1786
    .local v7, "lenght2":F
    sub-float v3, v6, v7

    .line 1788
    .local v3, "emojiMinLength":F
    const/4 v10, 0x0

    .line 1789
    .local v10, "sub_index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v5, v13, :cond_2

    .line 1790
    add-int/lit8 v10, v5, 0x1

    .line 1791
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1792
    .local v11, "test":Ljava/lang/String;
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1793
    .local v1, "cur_length":F
    cmpl-float v13, v1, v8

    if-ltz v13, :cond_4

    .line 1794
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v5, v13, :cond_3

    .line 1795
    const/4 v13, 0x0

    add-int/lit8 v14, v5, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1796
    .local v9, "next_str":Ljava/lang/String;
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    sub-float v4, v13, v1

    .line 1797
    .local v4, "end_length":F
    cmpg-float v13, v4, v3

    if-gtz v13, :cond_2

    .line 1798
    add-int/lit8 v10, v5, 0x2

    .line 1809
    .end local v1    # "cur_length":F
    .end local v4    # "end_length":F
    .end local v9    # "next_str":Ljava/lang/String;
    .end local v11    # "test":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v10, v13, :cond_5

    .line 1810
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 1803
    .restart local v1    # "cur_length":F
    .restart local v11    # "test":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1804
    goto :goto_2

    .line 1789
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1812
    .end local v1    # "cur_length":F
    .end local v11    # "test":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0
.end method

.method private reBuildTimeLine(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Ljava/util/ArrayList;JLcom/meicam/themehelper/NvsMusicFileDesc;Z)V
    .locals 34
    .param p1, "timeline"    # Lcom/meicam/sdk/NvsTimeline;
    .param p2, "themeAsset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    .param p4, "newDuration"    # J
    .param p6, "selectMusicfile"    # Lcom/meicam/themehelper/NvsMusicFileDesc;
    .param p7, "needFx"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meicam/sdk/NvsTimeline;",
            "Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;J",
            "Lcom/meicam/themehelper/NvsMusicFileDesc;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1128
    .local p3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v32

    .line 1129
    .local v32, "streamingContext":Lcom/meicam/sdk/NvsStreamingContext;
    if-eqz v32, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsStreamingContext;->clearCachedResources(Z)V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 1135
    .local v28, "nClipCount":I
    const/16 v26, 0x0

    .line 1136
    .local v26, "bUsedSlectedMusc":Z
    const/16 v25, 0x0

    .line 1137
    .local v25, "bUsedLocalMusc":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transDesc:Lcom/meicam/themehelper/NvsTransDesc;

    move-object/from16 v19, v0

    .line 1138
    .local v19, "transDesc":Lcom/meicam/themehelper/NvsTransDesc;
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicLen:J

    .line 1140
    .local v8, "musicLen":J
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicPoints:Ljava/util/ArrayList;

    .line 1141
    .local v7, "musicPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsMusicPointDesc;>;"
    if-eqz p6, :cond_5

    .line 1142
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1143
    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc:Ljava/util/ArrayList;

    .line 1145
    :cond_2
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->transDesc:Lcom/meicam/themehelper/NvsTransDesc;

    if-eqz v4, :cond_3

    .line 1146
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->transDesc:Lcom/meicam/themehelper/NvsTransDesc;

    move-object/from16 v19, v0

    .line 1147
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedMusicType:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_4

    .line 1148
    const/16 v25, 0x1

    .line 1149
    :cond_4
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicLen:J

    .line 1150
    const/16 v26, 0x1

    .line 1153
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    .line 1154
    const-wide/16 v10, 0x0

    cmp-long v4, p4, v10

    if-lez v4, :cond_6

    .line 1156
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    .line 1157
    if-eqz v26, :cond_7

    .line 1158
    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc10s:Ljava/util/ArrayList;

    .line 1164
    :cond_6
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v4, p4, v10

    if-lez v4, :cond_8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 1165
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v7, v1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getClipCountInDuation(Ljava/util/ArrayList;J)I

    move-result v28

    .line 1170
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-direct {v0, v1, v7, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getRebuildFileList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1171
    .local v5, "showList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v10, 0x1

    if-ge v4, v10, :cond_9

    .line 1172
    const-string v4, "NvsThemeHelper"

    const-string v10, "not any show file!"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1160
    .end local v5    # "showList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    :cond_7
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicPoints10s:Ljava/util/ArrayList;

    goto :goto_1

    .line 1167
    :cond_8
    move-wide/from16 v0, p4

    long-to-int v0, v0

    move/from16 v28, v0

    goto :goto_2

    .line 1176
    .restart local v5    # "showList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v10, 0x5

    if-gt v4, v10, :cond_a

    .line 1178
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    .line 1179
    if-eqz v26, :cond_b

    .line 1180
    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc10s:Ljava/util/ArrayList;

    .line 1185
    :cond_a
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/meicam/themehelper/NvsThemeHelper;->cleanUpTimeLine(Lcom/meicam/sdk/NvsTimeline;)V

    .line 1187
    invoke-virtual/range {p1 .. p1}, Lcom/meicam/sdk/NvsTimeline;->appendVideoTrack()Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object v6

    .line 1188
    .local v6, "videoTrack":Lcom/meicam/sdk/NvsVideoTrack;
    if-nez v6, :cond_c

    .line 1189
    const-string v4, "NvsThemeHelper"

    const-string v10, "appendVideoTrack failed!"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1182
    .end local v6    # "videoTrack":Lcom/meicam/sdk/NvsVideoTrack;
    :cond_b
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_musicPoints10s:Ljava/util/ArrayList;

    goto :goto_3

    .line 1193
    .restart local v6    # "videoTrack":Lcom/meicam/sdk/NvsVideoTrack;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    move-object/from16 v4, p0

    move-wide/from16 v10, p4

    invoke-direct/range {v4 .. v12}, Lcom/meicam/themehelper/NvsThemeHelper;->buildVideoTrack(Ljava/util/ArrayList;Lcom/meicam/sdk/NvsVideoTrack;Ljava/util/ArrayList;JJZ)Ljava/util/Map;

    move-result-object v33

    .line 1195
    .local v33, "transListInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/meicam/themehelper/NvsMusicPointDesc;>;"
    if-nez p7, :cond_d

    .line 1196
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    invoke-virtual {v6}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v13, v4, :cond_0

    .line 1197
    const/4 v4, 0x0

    invoke-virtual {v6, v13, v4}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 1196
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1203
    .end local v13    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_theme10sId:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/meicam/sdk/NvsTimeline;->applyTheme(Ljava/lang/String;)Z

    .line 1205
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    if-eqz v4, :cond_13

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_cafSticker10sId:Ljava/lang/StringBuilder;

    :goto_6
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafStickerId:Ljava/lang/StringBuilder;

    .line 1206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafStickerId:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_10

    .line 1207
    const/16 v31, 0x1

    .line 1208
    .local v31, "showCaf":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_showCaption:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1Text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2Text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1209
    :cond_e
    const/16 v31, 0x0

    .line 1210
    :cond_f
    if-eqz v31, :cond_10

    .line 1211
    const-wide/16 v12, 0x0

    const-wide v10, 0x400bd70a3d70a3d7L    # 3.48

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v10, v10, v16

    double-to-long v14, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafStickerId:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Lcom/meicam/sdk/NvsTimeline;->addAnimatedSticker(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_cafSticker:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    .line 1215
    .end local v31    # "showCaf":Z
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    .line 1216
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    invoke-virtual {v6}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v13, v4, :cond_1b

    .line 1217
    const/4 v4, 0x0

    invoke-virtual {v6, v13, v4}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 1218
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1220
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/meicam/themehelper/NvsMusicPointDesc;

    .line 1221
    .local v29, "pointDesc":Lcom/meicam/themehelper/NvsMusicPointDesc;
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1222
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v6, v13, v4, v1}, Lcom/meicam/themehelper/NvsThemeHelper;->setTrans(Lcom/meicam/sdk/NvsVideoTrack;ILjava/util/ArrayList;Lcom/meicam/themehelper/NvsMusicPointDesc;)V

    .line 1216
    .end local v29    # "pointDesc":Lcom/meicam/themehelper/NvsMusicPointDesc;
    :cond_11
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1203
    .end local v13    # "i":I
    :cond_12
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_themeId:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 1205
    :cond_13
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_cafStickerId:Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1223
    .restart local v13    # "i":I
    .restart local v29    # "pointDesc":Lcom/meicam/themehelper/NvsMusicPointDesc;
    :cond_14
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->fxNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1224
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-direct {v0, v13, v6, v1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getFxXml(ILcom/meicam/sdk/NvsVideoTrack;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Lcom/meicam/themehelper/NvsMusicPointDesc;)Ljava/lang/String;

    move-result-object v14

    .line 1226
    .local v14, "fxTransXml":Ljava/lang/String;
    const-string v15, ""

    .line 1227
    .local v15, "trans":Ljava/lang/String;
    const/16 v18, 0x3e8

    .line 1229
    .local v18, "transLen":I
    const-string v4, "fxV3"

    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1230
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_15

    .line 1231
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/meicam/themehelper/NvsMusicPointDesc;

    .line 1232
    .local v30, "pointDescNext":Lcom/meicam/themehelper/NvsMusicPointDesc;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->transLen:I

    move/from16 v18, v0

    .line 1233
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    .line 1234
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "trans":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1236
    .end local v30    # "pointDescNext":Lcom/meicam/themehelper/NvsMusicPointDesc;
    .restart local v15    # "trans":Ljava/lang/String;
    :cond_15
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v11, p0

    move-object v12, v6

    move-object/from16 v18, p2

    invoke-direct/range {v11 .. v18}, Lcom/meicam/themehelper/NvsThemeHelper;->applyFxTransV3(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JLcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)V

    goto :goto_8

    .line 1238
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_17

    .line 1239
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_fxTransClipCount:I

    add-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/meicam/themehelper/NvsMusicPointDesc;

    .line 1240
    .restart local v30    # "pointDescNext":Lcom/meicam/themehelper/NvsMusicPointDesc;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->transLen:I

    move/from16 v18, v0

    .line 1241
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    .line 1242
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "trans":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1244
    .end local v30    # "pointDescNext":Lcom/meicam/themehelper/NvsMusicPointDesc;
    .restart local v15    # "trans":Ljava/lang/String;
    :cond_17
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v11, p0

    move-object v12, v6

    move-object/from16 v18, p2

    invoke-direct/range {v11 .. v18}, Lcom/meicam/themehelper/NvsThemeHelper;->applyFxTransV2(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JLcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)V

    goto/16 :goto_8

    .line 1248
    .end local v14    # "fxTransXml":Ljava/lang/String;
    .end local v15    # "trans":Ljava/lang/String;
    .end local v18    # "transLen":I
    .end local v29    # "pointDesc":Lcom/meicam/themehelper/NvsMusicPointDesc;
    :cond_18
    const/16 v18, 0x3e8

    .line 1249
    .restart local v18    # "transLen":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_19

    .line 1250
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/themehelper/NvsMusicPointDesc;

    iget v0, v4, Lcom/meicam/themehelper/NvsMusicPointDesc;->transLen:I

    move/from16 v18, v0

    .line 1251
    :cond_19
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hasFxTrans:Z

    if-eqz v4, :cond_1a

    move-object/from16 v16, p0

    move-object/from16 v17, v6

    move-object/from16 v20, p2

    move/from16 v21, v13

    .line 1252
    invoke-direct/range {v16 .. v21}, Lcom/meicam/themehelper/NvsThemeHelper;->setFxTrans(Lcom/meicam/sdk/NvsVideoTrack;ILcom/meicam/themehelper/NvsTransDesc;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;I)V

    goto/16 :goto_8

    .line 1254
    :cond_1a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v16, p0

    move-object/from16 v17, v6

    move/from16 v21, v13

    invoke-direct/range {v16 .. v21}, Lcom/meicam/themehelper/NvsThemeHelper;->setTrans(Lcom/meicam/sdk/NvsVideoTrack;ILcom/meicam/themehelper/NvsTransDesc;Ljava/util/ArrayList;I)V

    goto/16 :goto_8

    .line 1259
    .end local v18    # "transLen":I
    :cond_1b
    if-eqz v26, :cond_1e

    .line 1260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "assets:/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    if-eqz v4, :cond_21

    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile10s:Ljava/lang/String;

    :goto_9
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1261
    .local v27, "musicPath":Ljava/lang/String;
    if-nez v25, :cond_1c

    move-object/from16 v0, p6

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->isDownloadFile:Z

    if-eqz v4, :cond_1d

    .line 1262
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    if-eqz v4, :cond_22

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile10s:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 1264
    :cond_1d
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/meicam/themehelper/NvsThemeHelper;->addMusicFile(Lcom/meicam/sdk/NvsTimeline;Ljava/lang/String;Z)V

    .line 1268
    .end local v27    # "musicPath":Ljava/lang/String;
    :cond_1e
    invoke-direct/range {p0 .. p1}, Lcom/meicam/themehelper/NvsThemeHelper;->addCaption(Lcom/meicam/sdk/NvsTimeline;)V

    .line 1271
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->addEndingFx(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Z)V

    .line 1274
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedMusicType:I

    if-nez v4, :cond_23

    .line 1275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    invoke-virtual {v4, v10, v11}, Lcom/meicam/sdk/NvsTimeline;->setThemeMusicVolumeGain(FF)V

    .line 1283
    :cond_1f
    :goto_b
    const-wide/16 v10, 0x5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v16, v0

    mul-long v22, v10, v16

    .line 1284
    .local v22, "audioFadeLen":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_is10sMode:Z

    if-eqz v4, :cond_20

    .line 1285
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v10, v10, v16

    double-to-long v0, v10

    move-wide/from16 v22, v0

    .line 1286
    :cond_20
    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/meicam/sdk/NvsTimeline;->setAudioFadeOutDuration(J)V

    goto/16 :goto_0

    .line 1260
    .end local v22    # "audioFadeLen":J
    :cond_21
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile:Ljava/lang/String;

    goto :goto_9

    .line 1262
    .restart local v27    # "musicPath":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile:Ljava/lang/String;

    move-object/from16 v27, v0

    goto :goto_a

    .line 1277
    .end local v27    # "musicPath":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/meicam/sdk/NvsTimeline;->getAudioTrackByIndex(I)Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v24

    .line 1278
    .local v24, "audioTrack":Lcom/meicam/sdk/NvsAudioTrack;
    if-eqz v24, :cond_1f

    .line 1279
    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v10}, Lcom/meicam/sdk/NvsAudioTrack;->setVolumeGain(FF)V

    goto :goto_b
.end method

.method private reBuildTimeLineExt(JZ)V
    .locals 9
    .param p1, "newDuration"    # J
    .param p3, "needFx"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1098
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mThemeAssetMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_themeAssetID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    .line 1099
    .local v2, "themeAsset":Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    if-nez v2, :cond_0

    .line 1123
    :goto_0
    return-void

    .line 1103
    :cond_0
    const/4 v6, 0x0

    .line 1104
    .local v6, "extMusicfile":Lcom/meicam/themehelper/NvsMusicFileDesc;
    iget v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mMusicFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1105
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mMusicFileList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "extMusicfile":Lcom/meicam/themehelper/NvsMusicFileDesc;
    check-cast v6, Lcom/meicam/themehelper/NvsMusicFileDesc;

    .line 1122
    .restart local v6    # "extMusicfile":Lcom/meicam/themehelper/NvsMusicFileDesc;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move-object v0, p0

    move-wide v4, p1

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLine(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Ljava/util/ArrayList;JLcom/meicam/themehelper/NvsMusicFileDesc;Z)V

    goto :goto_0

    .line 1106
    :cond_2
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusic:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1107
    new-instance v6, Lcom/meicam/themehelper/NvsMusicFileDesc;

    .end local v6    # "extMusicfile":Lcom/meicam/themehelper/NvsMusicFileDesc;
    invoke-direct {v6}, Lcom/meicam/themehelper/NvsMusicFileDesc;-><init>()V

    .line 1108
    .restart local v6    # "extMusicfile":Lcom/meicam/themehelper/NvsMusicFileDesc;
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusic:Ljava/lang/String;

    iput-object v0, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile:Ljava/lang/String;

    .line 1109
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusic:Ljava/lang/String;

    iput-object v0, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicFile10s:Ljava/lang/String;

    .line 1110
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythmPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v8

    .line 1111
    .local v8, "musicjson":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 1112
    iget-object v0, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc:Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->transDesc:Lcom/meicam/themehelper/NvsTransDesc;

    invoke-static {v8, v0, v1}, Lcom/meicam/themehelper/NvsParseHelper;->readMusicPoint(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meicam/themehelper/NvsTransDesc;)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicLen:J

    .line 1114
    :cond_3
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythm10sPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v8

    .line 1115
    if-eqz v8, :cond_4

    .line 1116
    iget-object v0, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc10s:Ljava/util/ArrayList;

    invoke-static {v8, v0, v3}, Lcom/meicam/themehelper/NvsParseHelper;->readMusicPoint(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meicam/themehelper/NvsTransDesc;)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicLen10s:J

    .line 1118
    :cond_4
    iput-object v3, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->jsonFile:Ljava/lang/String;

    .line 1119
    iput-object v3, v6, Lcom/meicam/themehelper/NvsMusicFileDesc;->jsonFile10s:Ljava/lang/String;

    goto :goto_1
.end method

.method private saveBitmapToSD(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 12
    .param p1, "bt"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 1738
    iget-object v7, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    if-nez v7, :cond_0

    .line 1739
    const-string v7, "meicam"

    const-string v9, "m_context is null,can not make path!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 1771
    :goto_0
    return-object v5

    .line 1742
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v9, "caption_bitmap"

    invoke-direct {v0, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1743
    .local v0, "captureDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1744
    const-string v7, "meicam"

    const-string v9, "Failed to make caption bitmap directory"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 1745
    goto :goto_0

    .line 1747
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ".png"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1749
    .local v3, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1750
    .local v6, "tmpFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1751
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1753
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1755
    .local v5, "target_path":Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1756
    :cond_3
    const-string v9, "meicam"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bt == null "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p1, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " target_path.isEmpty(): "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 1757
    goto/16 :goto_0

    .line 1756
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 1759
    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1761
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1762
    .local v4, "out":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p1, v7, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1763
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 1764
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1766
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1767
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    move-object v5, v8

    .line 1771
    goto/16 :goto_0

    .line 1768
    :catch_1
    move-exception v1

    .line 1769
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private setFxTrans(Lcom/meicam/sdk/NvsVideoTrack;ILcom/meicam/themehelper/NvsTransDesc;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;I)V
    .locals 15
    .param p1, "videTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p2, "transLen"    # I
    .param p3, "transDesc"    # Lcom/meicam/themehelper/NvsTransDesc;
    .param p4, "themeAsset"    # Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    .param p5, "transIdx"    # I

    .prologue
    .line 1965
    move/from16 v0, p5

    move-object/from16 v1, p1

    invoke-direct {p0, v0, v1}, Lcom/meicam/themehelper/NvsThemeHelper;->getTransType(ILcom/meicam/sdk/NvsVideoTrack;)Ljava/lang/String;

    move-result-object v13

    .line 1966
    .local v13, "transType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1967
    .local v11, "transName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1968
    .local v14, "transition":Lcom/meicam/sdk/NvsVideoTransition;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1970
    .local v12, "transNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1971
    .local v2, "fxTransXmlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "full"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1972
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide/high16 v8, 0x3fe2000000000000L    # 0.5625

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_2

    .line 1973
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v16List:Ljava/util/ArrayList;

    .line 1980
    :goto_0
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_fulltransList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_fulltransFxList:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    .line 2013
    :cond_0
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_12

    .line 2015
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2016
    .local v6, "fxTrans":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2017
    .local v7, "trans":Ljava/lang/String;
    const-string v3, "fxV3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2018
    move/from16 v0, p2

    int-to-long v8, v0

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p5

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/meicam/themehelper/NvsThemeHelper;->applyFxTransV3(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JLcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)V

    .line 2035
    .end local v6    # "fxTrans":Ljava/lang/String;
    .end local v7    # "trans":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 1974
    :cond_2
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 1975
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v18List:Ljava/util/ArrayList;

    goto :goto_0

    .line 1976
    :cond_3
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide v8, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_4

    .line 1977
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9vx73List:Ljava/util/ArrayList;

    goto :goto_0

    .line 1979
    :cond_4
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fullFx9v19List:Ljava/util/ArrayList;

    goto :goto_0

    .line 1981
    :cond_5
    const-string v3, "half"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1982
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide/high16 v8, 0x3fe2000000000000L    # 0.5625

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_6

    .line 1983
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v16List:Ljava/util/ArrayList;

    .line 1990
    :goto_3
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_halftransList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_halftransFxList:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    goto :goto_1

    .line 1984
    :cond_6
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_7

    .line 1985
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v18List:Ljava/util/ArrayList;

    goto :goto_3

    .line 1986
    :cond_7
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide v8, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_8

    .line 1987
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9vx73List:Ljava/util/ArrayList;

    goto :goto_3

    .line 1989
    :cond_8
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_halfFx9v19List:Ljava/util/ArrayList;

    goto :goto_3

    .line 1991
    :cond_9
    const-string v3, "fh"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1992
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide/high16 v8, 0x3fe2000000000000L    # 0.5625

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_a

    .line 1993
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v16List:Ljava/util/ArrayList;

    .line 2000
    :goto_4
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_hftransList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_fhtransFxList:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    goto/16 :goto_1

    .line 1994
    :cond_a
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_b

    .line 1995
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v18List:Ljava/util/ArrayList;

    goto :goto_4

    .line 1996
    :cond_b
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide v8, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_c

    .line 1997
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9vx73List:Ljava/util/ArrayList;

    goto :goto_4

    .line 1999
    :cond_c
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_fhFx9v19List:Ljava/util/ArrayList;

    goto :goto_4

    .line 2001
    :cond_d
    const-string v3, "hf"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2002
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide/high16 v8, 0x3fe2000000000000L    # 0.5625

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_e

    .line 2003
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v16List:Ljava/util/ArrayList;

    .line 2010
    :goto_5
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_hftransList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/meicam/themehelper/NvsTransDesc;->m_hftransFxList:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_transIDList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    goto/16 :goto_1

    .line 2004
    :cond_e
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_f

    .line 2005
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v18List:Ljava/util/ArrayList;

    goto :goto_5

    .line 2006
    :cond_f
    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    float-to-double v4, v3

    const-wide v8, 0x3fdebf5114f42816L    # 0.4804270462633452

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_10

    .line 2007
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9vx73List:Ljava/util/ArrayList;

    goto :goto_5

    .line 2009
    :cond_10
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;->m_hfFx9v19List:Ljava/util/ArrayList;

    goto :goto_5

    .line 2020
    .restart local v6    # "fxTrans":Ljava/lang/String;
    .restart local v7    # "trans":Ljava/lang/String;
    :cond_11
    move/from16 v0, p2

    int-to-long v8, v0

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p5

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/meicam/themehelper/NvsThemeHelper;->applyFxTransV2(Lcom/meicam/sdk/NvsVideoTrack;ILjava/lang/String;Ljava/lang/String;JLcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)V

    goto/16 :goto_2

    .line 2022
    .end local v6    # "fxTrans":Ljava/lang/String;
    .end local v7    # "trans":Ljava/lang/String;
    :cond_12
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "transName":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 2023
    .restart local v11    # "transName":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2024
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v3}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 2032
    :goto_6
    if-eqz v14, :cond_1

    .line 2033
    move/from16 v0, p2

    int-to-float v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v14, v3}, Lcom/meicam/sdk/NvsVideoTransition;->setVideoTransitionDurationScaleFactor(F)V

    goto/16 :goto_2

    .line 2026
    :cond_13
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_14

    .line 2027
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v11}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v14

    goto :goto_6

    .line 2029
    :cond_14
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v11}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v14

    goto :goto_6
.end method

.method private setImageMotion(Lcom/meicam/sdk/NvsVideoClip;Lcom/meicam/themehelper/NvsImageFileDesc;)V
    .locals 9
    .param p1, "clip"    # Lcom/meicam/sdk/NvsVideoClip;
    .param p2, "info"    # Lcom/meicam/themehelper/NvsImageFileDesc;

    .prologue
    const/4 v8, 0x0

    .line 998
    if-nez p1, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    iget v3, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 1002
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsVideoClip;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meicam/sdk/NvsStreamingContext;->getAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object v0

    .line 1003
    .local v0, "fileInfo":Lcom/meicam/sdk/NvsAVFileInfo;
    invoke-static {v0}, Lcom/meicam/themehelper/Utils;->getImgRatio(Lcom/meicam/sdk/NvsAVFileInfo;)F

    move-result v3

    iput v3, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    .line 1004
    invoke-virtual {v0, v8}, Lcom/meicam/sdk/NvsAVFileInfo;->getVideoStreamDimension(I)Lcom/meicam/sdk/NvsSize;

    move-result-object v1

    .line 1005
    .local v1, "imgSize":Lcom/meicam/sdk/NvsSize;
    invoke-direct {p0, v1}, Lcom/meicam/themehelper/NvsThemeHelper;->isLargeImg(Lcom/meicam/sdk/NvsSize;)Z

    move-result v3

    iput-boolean v3, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->isLargeImg:Z

    .line 1008
    .end local v0    # "fileInfo":Lcom/meicam/sdk/NvsAVFileInfo;
    .end local v1    # "imgSize":Lcom/meicam/sdk/NvsSize;
    :cond_2
    const/4 v2, 0x0

    .line 1009
    .local v2, "rect":Landroid/graphics/RectF;
    iget-boolean v3, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->hasFace:Z

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    if-eqz v3, :cond_3

    .line 1010
    iget-object v2, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->faceRect:Landroid/graphics/RectF;

    .line 1011
    :cond_3
    iget-boolean v3, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->isCover:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->coverStartROI:Landroid/graphics/RectF;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->coverEndROI:Landroid/graphics/RectF;

    if-eqz v3, :cond_4

    .line 1012
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->coverStartROI:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->coverEndROI:Landroid/graphics/RectF;

    invoke-virtual {p1, v3, v4}, Lcom/meicam/sdk/NvsVideoClip;->setImageMotionROI(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 1013
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/meicam/sdk/NvsVideoClip;->setImageMotionMode(I)V

    .line 1017
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/meicam/sdk/NvsVideoClip;->setSourceBackgroundMode(I)V

    .line 1019
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1020
    invoke-virtual {p1, v8}, Lcom/meicam/sdk/NvsVideoClip;->setImageMotionAnimationEnabled(Z)V

    goto :goto_0

    .line 1015
    :cond_4
    iget v3, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->imgRatio:F

    iget-boolean v4, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->isLargeImg:Z

    invoke-static {p1, v3, v4, v2}, Lcom/meicam/themehelper/Utils;->setImageMotion(Lcom/meicam/sdk/NvsVideoClip;FZLandroid/graphics/RectF;)V

    goto :goto_1
.end method

.method private setTrans(Lcom/meicam/sdk/NvsVideoTrack;ILcom/meicam/themehelper/NvsTransDesc;Ljava/util/ArrayList;I)V
    .locals 5
    .param p1, "videTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p2, "transLen"    # I
    .param p3, "transDesc"    # Lcom/meicam/themehelper/NvsTransDesc;
    .param p5, "transIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            "I",
            "Lcom/meicam/themehelper/NvsTransDesc;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1940
    .local p4, "transIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    invoke-direct {p0, p5, p1}, Lcom/meicam/themehelper/NvsThemeHelper;->getTransType(ILcom/meicam/sdk/NvsVideoTrack;)Ljava/lang/String;

    move-result-object v1

    .line 1941
    .local v1, "transType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1942
    .local v0, "transName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1944
    .local v2, "transition":Lcom/meicam/sdk/NvsVideoTransition;
    const-string v3, "full"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1945
    iget-object v3, p3, Lcom/meicam/themehelper/NvsTransDesc;->m_fulltransList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p4}, Lcom/meicam/themehelper/NvsThemeHelper;->getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1951
    :goto_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1952
    const/4 v3, 0x0

    invoke-virtual {p1, p5, v3}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 1960
    :goto_1
    if-eqz v2, :cond_0

    .line 1961
    int-to-float v3, p2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/meicam/sdk/NvsVideoTransition;->setVideoTransitionDurationScaleFactor(F)V

    .line 1962
    :cond_0
    return-void

    .line 1946
    :cond_1
    const-string v3, "half"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1947
    iget-object v3, p3, Lcom/meicam/themehelper/NvsTransDesc;->m_halftransList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p4}, Lcom/meicam/themehelper/NvsThemeHelper;->getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1949
    :cond_2
    iget-object v3, p3, Lcom/meicam/themehelper/NvsTransDesc;->m_hftransList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p4}, Lcom/meicam/themehelper/NvsThemeHelper;->getTrans(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1954
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_4

    .line 1955
    invoke-virtual {p1, p5, v0}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v2

    goto :goto_1

    .line 1957
    :cond_4
    invoke-virtual {p1, p5, v0}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v2

    goto :goto_1
.end method

.method private setTrans(Lcom/meicam/sdk/NvsVideoTrack;ILjava/util/ArrayList;Lcom/meicam/themehelper/NvsMusicPointDesc;)V
    .locals 6
    .param p1, "videTrack"    # Lcom/meicam/sdk/NvsVideoTrack;
    .param p2, "transIdx"    # I
    .param p4, "info"    # Lcom/meicam/themehelper/NvsMusicPointDesc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;",
            "Lcom/meicam/themehelper/NvsMusicPointDesc;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1917
    .local p3, "transIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    const/4 v2, 0x0

    .line 1918
    .local v2, "transName":Ljava/lang/String;
    iget-object v4, p4, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p4, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1919
    iget-object v4, p4, Lcom/meicam/themehelper/NvsMusicPointDesc;->transNames:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "transName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1921
    .restart local v2    # "transName":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1922
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 1937
    :cond_2
    :goto_0
    return-void

    .line 1924
    :cond_3
    const/4 v3, 0x0

    .line 1925
    .local v3, "transition":Lcom/meicam/sdk/NvsVideoTransition;
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1926
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1927
    .local v1, "transNa":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1928
    invoke-virtual {p1, p2, v1}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v3

    .line 1932
    .end local v1    # "transNa":Ljava/lang/String;
    :cond_4
    if-nez v3, :cond_5

    .line 1933
    invoke-virtual {p1, p2, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object v3

    .line 1934
    :cond_5
    if-eqz v3, :cond_2

    .line 1935
    iget v4, p4, Lcom/meicam/themehelper/NvsMusicPointDesc;->transLen:I

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/meicam/sdk/NvsVideoTransition;->setVideoTransitionDurationScaleFactor(F)V

    goto :goto_0

    .line 1925
    .restart local v1    # "transNa":Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private sortFileList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2520
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 2539
    :cond_0
    :goto_0
    return-void

    .line 2522
    :cond_1
    const/4 v0, 0x0

    .line 2523
    .local v0, "coverFile":Lcom/meicam/themehelper/NvsImageFileDesc;
    const/4 v1, 0x0

    .line 2524
    .local v1, "coverIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2525
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meicam/themehelper/NvsImageFileDesc;

    iget-boolean v3, v3, Lcom/meicam/themehelper/NvsImageFileDesc;->isCover:Z

    if-eqz v3, :cond_4

    .line 2526
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "coverFile":Lcom/meicam/themehelper/NvsImageFileDesc;
    check-cast v0, Lcom/meicam/themehelper/NvsImageFileDesc;

    .line 2527
    .restart local v0    # "coverFile":Lcom/meicam/themehelper/NvsImageFileDesc;
    move v1, v2

    .line 2531
    :cond_2
    if-eqz v0, :cond_3

    .line 2532
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2534
    :cond_3
    invoke-static {p1}, Lcom/meicam/themehelper/NvsParseHelper;->sortFileByName(Ljava/util/ArrayList;)V

    .line 2535
    invoke-static {p1}, Lcom/meicam/themehelper/NvsParseHelper;->sortFileByModifyTime(Ljava/util/ArrayList;)V

    .line 2537
    if-eqz v0, :cond_0

    .line 2538
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2524
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public applyTimelineTheme(Ljava/lang/String;ZZ)Z
    .locals 9
    .param p1, "themeID"    # Ljava/lang/String;
    .param p2, "isDownloadFile"    # Z
    .param p3, "showCaption"    # Z

    .prologue
    const/4 v7, 0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 173
    :cond_0
    const-string v0, "NvsThemeHelper"

    const-string v3, "helper need init"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v1

    .line 207
    :goto_0
    return v7

    .line 177
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v7, v1

    .line 178
    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mThemeAssetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    .line 181
    .local v2, "themeAsset":Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    if-eqz p2, :cond_3

    move-object v0, v6

    :goto_1
    invoke-direct {p0, v0, p1, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->installThemeAsset(Landroid/content/Context;Ljava/lang/String;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 182
    const-string v0, "NvsThemeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install theme asset error!, id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v1

    .line 183
    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    goto :goto_1

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mThemeAssetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "themeAsset":Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    check-cast v2, Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;

    .line 186
    .restart local v2    # "themeAsset":Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;
    if-nez v2, :cond_5

    move v7, v1

    .line 187
    goto :goto_0

    .line 189
    :cond_5
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v8

    .line 190
    .local v8, "streamingContext":Lcom/meicam/sdk/NvsStreamingContext;
    if-eqz v8, :cond_6

    .line 191
    invoke-virtual {v8}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    .line 193
    :cond_6
    iput-object p1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_themeAssetID:Ljava/lang/String;

    .line 195
    iput-boolean p3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_showCaption:Z

    .line 197
    iput v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedMusicType:I

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    .line 199
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    .line 200
    iput-object v6, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusic:Ljava/lang/String;

    .line 201
    iput-wide v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicStart:J

    .line 202
    iput-wide v4, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicEnd:J

    .line 204
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLine(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/themehelper/NvsThemeHelper$NvsThemeAsset;Ljava/util/ArrayList;JLcom/meicam/themehelper/NvsMusicFileDesc;Z)V

    goto :goto_0
.end method

.method public changeCaptionText(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 306
    if-nez p1, :cond_0

    .line 320
    :goto_0
    return v0

    .line 309
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 311
    :pswitch_0
    iput-object p1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1Text:Ljava/lang/String;

    .line 319
    :goto_1
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-direct {p0, v0}, Lcom/meicam/themehelper/NvsThemeHelper;->addCaption(Lcom/meicam/sdk/NvsTimeline;)V

    .line 320
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    :pswitch_1
    iput-object p1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2Text:Ljava/lang/String;

    goto :goto_1

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeMusic(Ljava/lang/String;I)Z
    .locals 19
    .param p1, "musicId"    # Ljava/lang/String;
    .param p2, "musicType"    # I

    .prologue
    .line 393
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v18

    .line 394
    .local v18, "streamingContext":Lcom/meicam/sdk/NvsStreamingContext;
    if-eqz v18, :cond_0

    .line 395
    invoke-virtual/range {v18 .. v18}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    .line 397
    :cond_0
    if-nez p1, :cond_3

    .line 398
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    .line 400
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedMusicType:I

    if-nez v2, :cond_2

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    invoke-virtual {v2, v3, v4}, Lcom/meicam/sdk/NvsTimeline;->setThemeMusicVolumeGain(FF)V

    .line 408
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 487
    :goto_1
    return v2

    .line 403
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meicam/sdk/NvsTimeline;->getAudioTrackByIndex(I)Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v8

    .line 404
    .local v8, "audioTrack":Lcom/meicam/sdk/NvsAudioTrack;
    if-eqz v8, :cond_1

    .line 405
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    invoke-virtual {v8, v2, v3}, Lcom/meicam/sdk/NvsAudioTrack;->setVolumeGain(FF)V

    goto :goto_0

    .line 411
    .end local v8    # "audioTrack":Lcom/meicam/sdk/NvsAudioTrack;
    :cond_3
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedMusicType:I

    .line 412
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    .line 414
    packed-switch p2, :pswitch_data_0

    .line 474
    const/4 v2, 0x0

    goto :goto_1

    .line 416
    :pswitch_0
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->getAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object v14

    .line 417
    .local v14, "info":Lcom/meicam/sdk/NvsAVFileInfo;
    if-nez v14, :cond_4

    .line 418
    const-string v2, "NvsThemeHelper"

    const-string v3, "loacl music format is not suported!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v2, 0x0

    goto :goto_1

    .line 421
    :cond_4
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/meicam/sdk/NvsAVFileInfo;->getAudioStreamDuration(I)J

    move-result-wide v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/meicam/themehelper/NvsThemeHelper;->changeLocalMusic(Ljava/lang/String;JJ)V

    .line 422
    const/4 v2, 0x1

    goto :goto_1

    .line 424
    .end local v14    # "info":Lcom/meicam/sdk/NvsAVFileInfo;
    :pswitch_1
    const/4 v9, 0x0

    .line 425
    .local v9, "currentSelected":Lcom/meicam/themehelper/NvsMusicFileDesc;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->mMusicFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_5

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->mMusicFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meicam/themehelper/NvsMusicFileDesc;

    .line 427
    .local v11, "entry":Lcom/meicam/themehelper/NvsMusicFileDesc;
    iget-object v2, v11, Lcom/meicam/themehelper/NvsMusicFileDesc;->id:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 428
    move-object v9, v11

    .line 429
    move-object/from16 v0, p0

    iput v13, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    .line 434
    .end local v11    # "entry":Lcom/meicam/themehelper/NvsMusicFileDesc;
    :cond_5
    const/4 v15, 0x0

    .line 435
    .local v15, "isDownloadFile":Z
    if-nez v9, :cond_6

    .line 436
    const/4 v15, 0x1

    .line 438
    :cond_6
    if-eqz v15, :cond_9

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/info.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v16

    .line 440
    .local v16, "musicInfo":Ljava/lang/String;
    if-nez v16, :cond_8

    .line 441
    const-string v2, "NvsThemeHelper"

    const-string v3, "read music info json error!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 425
    .end local v15    # "isDownloadFile":Z
    .end local v16    # "musicInfo":Ljava/lang/String;
    .restart local v11    # "entry":Lcom/meicam/themehelper/NvsMusicFileDesc;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 445
    .end local v11    # "entry":Lcom/meicam/themehelper/NvsMusicFileDesc;
    .restart local v15    # "isDownloadFile":Z
    .restart local v16    # "musicInfo":Ljava/lang/String;
    :cond_8
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 446
    .local v12, "filesobj":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/meicam/themehelper/NvsParseHelper;->GetMusicFileFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/meicam/themehelper/NvsMusicFileDesc;

    move-result-object v9

    .line 447
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->isDownloadFile:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v12    # "filesobj":Lorg/json/JSONObject;
    .end local v16    # "musicInfo":Ljava/lang/String;
    :cond_9
    :goto_3
    if-nez v9, :cond_a

    .line 453
    const-string v2, "NvsThemeHelper"

    const-string v3, "currentSelected music item is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 448
    .restart local v16    # "musicInfo":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 449
    .local v10, "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 457
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v16    # "musicInfo":Ljava/lang/String;
    :cond_a
    iget-object v2, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_c

    .line 459
    iget-object v3, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->jsonFile:Ljava/lang/String;

    if-eqz v15, :cond_e

    const/4 v2, 0x0

    :goto_4
    invoke-static {v3, v2}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v17

    .line 460
    .local v17, "musicjson":Ljava/lang/String;
    if-eqz v17, :cond_b

    .line 461
    iget-object v2, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc:Ljava/util/ArrayList;

    iget-object v3, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->transDesc:Lcom/meicam/themehelper/NvsTransDesc;

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/meicam/themehelper/NvsParseHelper;->readMusicPoint(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meicam/themehelper/NvsTransDesc;)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicLen:J

    .line 463
    :cond_b
    iget-object v3, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->jsonFile10s:Ljava/lang/String;

    if-eqz v15, :cond_f

    const/4 v2, 0x0

    :goto_5
    invoke-static {v3, v2}, Lcom/meicam/themehelper/Utils;->readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v17

    .line 464
    if-eqz v17, :cond_c

    .line 465
    iget-object v2, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->pointsDesc10s:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/meicam/themehelper/NvsParseHelper;->readMusicPoint(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meicam/themehelper/NvsTransDesc;)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/meicam/themehelper/NvsMusicFileDesc;->musicLen10s:J

    .line 468
    .end local v17    # "musicjson":Ljava/lang/String;
    :cond_c
    if-eqz v15, :cond_d

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->mMusicFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->mMusicFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedExtMusicIdx:I

    .line 477
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusic:Ljava/lang/String;

    .line 478
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicStart:J

    .line 479
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedLocalMusicEnd:J

    .line 483
    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    .line 487
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 459
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    goto :goto_4

    .line 463
    .restart local v17    # "musicjson":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    goto :goto_5

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeMusicVolumeGain(F)Z
    .locals 3
    .param p1, "volumeGain"    # F

    .prologue
    const/4 v1, 0x0

    .line 784
    iget v2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_selectedMusicType:I

    packed-switch v2, :pswitch_data_0

    .line 798
    :goto_0
    return v1

    .line 786
    :pswitch_0
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v1, p1, p1}, Lcom/meicam/sdk/NvsTimeline;->setThemeMusicVolumeGain(FF)V

    .line 797
    :cond_0
    :goto_1
    iput p1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_musicVolumeGain:F

    .line 798
    const/4 v1, 0x1

    goto :goto_0

    .line 790
    :pswitch_1
    iget-object v2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v2, v1}, Lcom/meicam/sdk/NvsTimeline;->getAudioTrackByIndex(I)Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v0

    .line 791
    .local v0, "audioTrack":Lcom/meicam/sdk/NvsAudioTrack;
    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0, p1, p1}, Lcom/meicam/sdk/NvsAudioTrack;->setVolumeGain(FF)V

    goto :goto_1

    .line 784
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public changeTimelineDuration(Z)Z
    .locals 5
    .param p1, "is10sMode"    # Z

    .prologue
    const/4 v4, 0x1

    .line 266
    if-eqz p1, :cond_0

    .line 267
    const-wide/16 v0, 0xa

    iget-wide v2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->timeBase:J

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    .line 272
    :goto_0
    return v4

    .line 269
    :cond_0
    const-wide/16 v0, -0x2

    invoke-direct {p0, v0, v1, v4}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    goto :goto_0
.end method

.method public deleteClip(I)Z
    .locals 4
    .param p1, "clipIndex"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 649
    iget-object v2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 650
    const-string v1, "NvsThemeHelper"

    const-string v2, "invalid file!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    return v0

    .line 654
    :cond_0
    iget-object v2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0}, Lcom/meicam/themehelper/NvsThemeHelper;->getMinImgCount()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 655
    const-string v1, "NvsThemeHelper"

    const-string v2, "less than min clip count!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 659
    :cond_1
    iget-object v2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p1, :cond_2

    .line 660
    const-string v1, "NvsThemeHelper"

    const-string v2, "invalid clip index!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 666
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    move v0, v1

    .line 669
    goto :goto_0
.end method

.method public getCaptionText(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 324
    const-string v0, ""

    .line 325
    .local v0, "text":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    if-eqz v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption1Text:Ljava/lang/String;

    .line 332
    :cond_0
    :goto_0
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 334
    return-object v0

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2:Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    if-eqz v1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_caption2Text:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentThemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_themeAssetID:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailImages()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 872
    const/4 v11, 0x0

    .line 929
    :cond_0
    :goto_0
    return-object v11

    .line 874
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/meicam/sdk/NvsTimeline;->getVideoTrackByIndex(I)Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object v15

    .line 875
    .local v15, "videoTrack":Lcom/meicam/sdk/NvsVideoTrack;
    if-nez v15, :cond_2

    .line 876
    const/4 v11, 0x0

    goto :goto_0

    .line 878
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v11, "sequenceDescsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;>;"
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_1
    invoke-virtual {v15}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_0

    .line 880
    invoke-virtual {v15, v9}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v14

    .line 881
    .local v14, "videoClip":Lcom/meicam/sdk/NvsVideoClip;
    if-nez v14, :cond_3

    .line 879
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 883
    :cond_3
    new-instance v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;

    invoke-direct {v10}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;-><init>()V

    .line 884
    .local v10, "sequenceDescs":Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;
    invoke-virtual {v14}, Lcom/meicam/sdk/NvsVideoClip;->getFilePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->mediaFilePath:Ljava/lang/String;

    .line 885
    invoke-virtual {v14}, Lcom/meicam/sdk/NvsVideoClip;->getTrimIn()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    .line 886
    invoke-virtual {v14}, Lcom/meicam/sdk/NvsVideoClip;->getTrimOut()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimOut:J

    .line 887
    invoke-virtual {v14}, Lcom/meicam/sdk/NvsVideoClip;->getInPoint()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    .line 888
    invoke-virtual {v14}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    .line 889
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->stillImageHint:Z

    .line 891
    const/4 v8, 0x0

    .line 892
    .local v8, "hasFxTrans":Ljava/lang/String;
    const-string v16, "hasFxTrans"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 893
    const-string v16, "hasFxTrans"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 894
    :cond_4
    if-eqz v8, :cond_6

    const-string/jumbo v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 895
    const-string v16, "fxFilePath"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 896
    .local v2, "fxFilePath":Ljava/lang/String;
    const-string v16, "fxInpoint"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v4, v16, v18

    .line 897
    .local v4, "fxInpoint":J
    iget-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    move-wide/from16 v16, v0

    add-long v16, v16, v4

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimOut:J

    .line 898
    iget-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    move-wide/from16 v16, v0

    add-long v16, v16, v4

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    .line 899
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    new-instance v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;

    invoke-direct {v12}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;-><init>()V

    .line 902
    .local v12, "sequenceDescsFx":Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;
    iput-object v2, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->mediaFilePath:Ljava/lang/String;

    .line 903
    iget-wide v0, v10, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    .line 904
    invoke-virtual {v14}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    .line 905
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    .line 906
    iget-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    move-wide/from16 v16, v0

    iget-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimOut:J

    .line 907
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->stillImageHint:Z

    .line 909
    const-string v16, "fxFileV3Path"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_5

    .line 910
    const-string v16, "fxFileV3Path"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 911
    .local v3, "fxFilePathV3":Ljava/lang/String;
    const-string v16, "fxV3Inpoint"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/meicam/sdk/NvsVideoClip;->getAttachment(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v6, v16, v18

    .line 912
    .local v6, "fxInpointV3":J
    iget-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    move-wide/from16 v16, v0

    add-long v16, v16, v6

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimOut:J

    .line 913
    iget-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    move-wide/from16 v16, v0

    add-long v16, v16, v6

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    .line 914
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    new-instance v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;

    invoke-direct {v13}, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;-><init>()V

    .line 917
    .local v13, "sequenceDescsV3":Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;
    iput-object v3, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->mediaFilePath:Ljava/lang/String;

    .line 918
    iget-wide v0, v12, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    .line 919
    invoke-virtual {v14}, Lcom/meicam/sdk/NvsVideoClip;->getOutPoint()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    .line 920
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimIn:J

    .line 921
    iget-wide v0, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    move-wide/from16 v16, v0

    iget-wide v0, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->trimOut:J

    .line 922
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v13, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->stillImageHint:Z

    .line 923
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 925
    .end local v3    # "fxFilePathV3":Ljava/lang/String;
    .end local v6    # "fxInpointV3":J
    .end local v13    # "sequenceDescsV3":Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;
    :cond_5
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 927
    .end local v2    # "fxFilePath":Ljava/lang/String;
    .end local v4    # "fxInpoint":J
    .end local v12    # "sequenceDescsFx":Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;
    :cond_6
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public getTimelinePosition(I)J
    .locals 6
    .param p1, "clipIndex"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 294
    if-gez p1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-wide v2

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/meicam/themehelper/NvsThemeHelper;->getThumbnailImages()Ljava/util/ArrayList;

    move-result-object v1

    .line 298
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 301
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;

    .line 302
    .local v0, "desc":Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;
    iget-wide v2, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->inPoint:J

    iget-wide v4, v0, Lcom/meicam/sdk/NvsMultiThumbnailSequenceView$ThumbnailSequenceDesc;->outPoint:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    goto :goto_0
.end method

.method public initHelper(Landroid/content/Context;Lcom/meicam/sdk/NvsTimeline;Ljava/util/ArrayList;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeline"    # Lcom/meicam/sdk/NvsTimeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meicam/sdk/NvsTimeline;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    iput-object p1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    .line 118
    iget-object v5, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_context:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 119
    const-string v4, "NvsThemeHelper"

    const-string v5, "Context can not be NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    return v3

    .line 123
    :cond_0
    if-nez p2, :cond_1

    .line 124
    const-string v4, "NvsThemeHelper"

    const-string/jumbo v5, "timeline can not be NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v4, :cond_3

    .line 129
    :cond_2
    const-string v4, "NvsThemeHelper"

    const-string v5, "file list is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 135
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meicam/themehelper/NvsImageFileDesc;

    invoke-virtual {v3}, Lcom/meicam/themehelper/NvsImageFileDesc;->copy()Lcom/meicam/themehelper/NvsImageFileDesc;

    move-result-object v0

    .line 136
    .local v0, "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    .end local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    :cond_4
    iput-object p2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    .line 141
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsTimeline;->getVideoRes()Lcom/meicam/sdk/NvsVideoResolution;

    move-result-object v2

    .line 142
    .local v2, "videoResolution":Lcom/meicam/sdk/NvsVideoResolution;
    iget v3, v2, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    iget v5, v2, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    sput v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    move v3, v4

    .line 155
    goto :goto_0
.end method

.method public insertClip(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "newClips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    const/4 v7, 0x1

    .line 602
    iget-object v8, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 603
    :cond_0
    const-string v7, "NvsThemeHelper"

    const-string v8, "invalid clip!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v7, 0x0

    .line 645
    :goto_0
    return v7

    .line 607
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v5, "insertClips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_6

    .line 609
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meicam/themehelper/NvsImageFileDesc;

    .line 610
    .local v2, "file":Lcom/meicam/themehelper/NvsImageFileDesc;
    iget-boolean v8, v2, Lcom/meicam/themehelper/NvsImageFileDesc;->alternative:Z

    if-eqz v8, :cond_5

    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, "exist":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    iget-object v8, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 613
    iget-object v8, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/themehelper/NvsImageFileDesc;

    .line 614
    .local v0, "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    iget-object v8, v0, Lcom/meicam/themehelper/NvsImageFileDesc;->filePath:Ljava/lang/String;

    iget-object v9, v2, Lcom/meicam/themehelper/NvsImageFileDesc;->filePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 615
    const/4 v1, 0x1

    .line 616
    const-string v8, "NvsThemeHelper"

    const-string v9, "exist file!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iput-boolean v7, v0, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    .line 621
    .end local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    :cond_2
    if-nez v1, :cond_3

    .line 622
    invoke-virtual {v2}, Lcom/meicam/themehelper/NvsImageFileDesc;->copy()Lcom/meicam/themehelper/NvsImageFileDesc;

    move-result-object v3

    .line 623
    .local v3, "filecopy":Lcom/meicam/themehelper/NvsImageFileDesc;
    iput-boolean v7, v3, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    .line 624
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    .end local v1    # "exist":Z
    .end local v3    # "filecopy":Lcom/meicam/themehelper/NvsImageFileDesc;
    .end local v6    # "j":I
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 612
    .restart local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    .restart local v1    # "exist":Z
    .restart local v6    # "j":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 627
    .end local v0    # "desc":Lcom/meicam/themehelper/NvsImageFileDesc;
    .end local v1    # "exist":Z
    .end local v6    # "j":I
    :cond_5
    invoke-virtual {v2}, Lcom/meicam/themehelper/NvsImageFileDesc;->copy()Lcom/meicam/themehelper/NvsImageFileDesc;

    move-result-object v3

    .line 628
    .restart local v3    # "filecopy":Lcom/meicam/themehelper/NvsImageFileDesc;
    iput-boolean v7, v3, Lcom/meicam/themehelper/NvsImageFileDesc;->show:Z

    .line 629
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 633
    .end local v2    # "file":Lcom/meicam/themehelper/NvsImageFileDesc;
    .end local v3    # "filecopy":Lcom/meicam/themehelper/NvsImageFileDesc;
    :cond_6
    iget-object v8, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 641
    const-wide/16 v8, -0x1

    invoke-direct {p0, v8, v9, v7}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    goto :goto_0
.end method

.method public moveClip(II)Z
    .locals 6
    .param p1, "clipIndex"    # I
    .param p2, "destClipIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 571
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v1

    .line 575
    :cond_1
    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 578
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/themehelper/NvsImageFileDesc;

    invoke-virtual {v1}, Lcom/meicam/themehelper/NvsImageFileDesc;->copy()Lcom/meicam/themehelper/NvsImageFileDesc;

    move-result-object v0

    .line 579
    .local v0, "src":Lcom/meicam/themehelper/NvsImageFileDesc;
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 580
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 582
    const-wide/16 v4, -0x1

    invoke-direct {p0, v4, v5, v2}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    move v1, v2

    .line 586
    goto :goto_0
.end method

.method public resetClip(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meicam/themehelper/NvsImageFileDesc;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, "newClips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meicam/themehelper/NvsImageFileDesc;>;"
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 591
    :cond_0
    const-string v1, "NvsThemeHelper"

    const-string v2, "invalid clip!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v0, 0x0

    .line 597
    :goto_0
    return v0

    .line 595
    :cond_1
    iget-object v1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_inputIamgeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 596
    invoke-virtual {p0, p1}, Lcom/meicam/themehelper/NvsThemeHelper;->insertClip(Ljava/util/ArrayList;)Z

    move-result v0

    .line 597
    .local v0, "suc":Z
    goto :goto_0
.end method

.method public setDefaultRhythmPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "defaultRhythmPath"    # Ljava/lang/String;
    .param p2, "defaultRhythmPath_10s"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythmPath:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythm10sPath:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythmPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythm10sPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythmPath:Ljava/lang/String;

    const-string v1, "assets:/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythmPath:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythm10sPath:Ljava/lang/String;

    const-string v1, "assets:/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_defaultRhythm10sPath:Ljava/lang/String;

    .line 167
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setThemeEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const-wide/16 v2, -0x1

    .line 842
    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timeline:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->mThemeAssetMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meicam/themehelper/NvsThemeHelper;->m_themeAssetID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    if-eqz p1, :cond_2

    .line 846
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    goto :goto_0

    .line 859
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/meicam/themehelper/NvsThemeHelper;->reBuildTimeLineExt(JZ)V

    goto :goto_0
.end method
