.class public Lcom/miui/gallery/card/core/LayoutParamsHelper;
.super Ljava/lang/Object;
.source "LayoutParamsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    }
.end annotation


# instance fields
.field private mItemMaxHeight:I

.field private mItemMinHeight:I

.field private mLayoutSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 30
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMinHeight:I

    .line 31
    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    .line 33
    return-void
.end method

.method private getRatio(Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;)F
    .locals 5
    .param p1, "imageSize"    # Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    .prologue
    .line 43
    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    .local v1, "ratio":F
    :try_start_0
    iget v2, p1, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    int-to-float v2, v2

    iget v3, p1, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 46
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    :goto_0
    return v2

    :cond_0
    move v2, v1

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LayoutParamsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRatio error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 50
    goto :goto_0
.end method


# virtual methods
.method public getLayoutSize(I)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 186
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 187
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget-object v0, p0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    iget v2, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    iget-object v0, p0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    invoke-direct {v1, v2, v0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    move-object v0, v1

    .line 189
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLayoutSizes(Ljava/util/List;II)V
    .locals 16
    .param p2, "parentWidth"    # I
    .param p3, "decorationWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "imageSizes":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;>;"
    const/4 v7, 0x0

    .line 65
    .local v7, "rowIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 67
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v3, 0x0

    .local v3, "imageIndex":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_0

    .line 72
    const-string v13, "LayoutParamsHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Row index:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    add-int/lit8 v7, v7, 0x1

    .line 74
    new-instance v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    invoke-direct {v9}, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;-><init>()V

    .line 75
    .local v9, "size1":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    new-instance v10, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    invoke-direct {v10}, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;-><init>()V

    .line 76
    .local v10, "size2":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    new-instance v11, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    invoke-direct {v11}, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;-><init>()V

    .line 84
    .local v11, "size3":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    .line 85
    .local v1, "firstImageSize":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    move/from16 v0, p2

    iput v0, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    .line 86
    iget v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->getRatio(Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;)F

    move-result v14

    div-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 87
    iget v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMinHeight:I

    if-ge v13, v14, :cond_2

    .line 88
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMinHeight:I

    iput v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 89
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v13, "LayoutParamsHelper"

    invoke-static {v13, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 94
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 95
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ne v3, v13, :cond_4

    .line 97
    iget v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    if-le v13, v14, :cond_3

    .line 98
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    iput v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 100
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v13, "LayoutParamsHelper"

    invoke-static {v13, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 104
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    .line 105
    .local v8, "secondImageSize":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->getRatio(Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;)F

    move-result v4

    .line 106
    .local v4, "ratio1":F
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->getRatio(Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;)F

    move-result v5

    .line 108
    .local v5, "ratio2":F
    sub-int v13, p2, p3

    int-to-float v13, v13

    add-float v14, v4, v5

    div-float/2addr v13, v14

    float-to-int v2, v13

    .line 109
    .local v2, "height":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMinHeight:I

    if-ge v2, v13, :cond_6

    .line 111
    iget v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    if-le v13, v14, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    :goto_3
    iput v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 112
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v3, v3, -0x1

    .line 114
    const-string v13, "LayoutParamsHelper"

    invoke-static {v13, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 111
    :cond_5
    iget v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    goto :goto_3

    .line 118
    :cond_6
    iput v2, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 119
    int-to-float v13, v2

    mul-float/2addr v13, v4

    float-to-int v13, v13

    iput v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    .line 120
    iput v2, v10, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 121
    int-to-float v13, v2

    mul-float/2addr v13, v5

    float-to-int v13, v13

    iput v13, v10, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 126
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ne v3, v13, :cond_8

    .line 128
    iget v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    if-le v13, v14, :cond_7

    .line 130
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    iput v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 131
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    iput v13, v10, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 134
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    const-string v13, "LayoutParamsHelper"

    invoke-static {v13, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v13, "LayoutParamsHelper"

    invoke-static {v13, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 140
    :cond_8
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    .line 141
    .local v12, "thirdImageSize":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->getRatio(Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;)F

    move-result v6

    .line 142
    .local v6, "ratio3":F
    mul-int/lit8 v13, p3, 0x2

    sub-int v13, p2, v13

    int-to-float v13, v13

    add-float v14, v4, v5

    add-float/2addr v14, v6

    div-float/2addr v13, v14

    float-to-int v2, v13

    .line 143
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMinHeight:I

    if-ge v2, v13, :cond_a

    .line 145
    iget v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    if-le v13, v14, :cond_9

    .line 146
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    iput v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 147
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    iput v13, v10, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 149
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v3, v3, -0x1

    .line 153
    const-string v13, "LayoutParamsHelper"

    invoke-static {v13, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const-string v13, "LayoutParamsHelper"

    invoke-static {v13, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 158
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    if-le v2, v13, :cond_b

    .line 159
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    iput v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 160
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    iput v13, v10, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 161
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    iput v13, v11, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 168
    :goto_4
    int-to-float v13, v2

    mul-float/2addr v13, v4

    float-to-int v13, v13

    iput v13, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    .line 169
    int-to-float v13, v2

    mul-float/2addr v13, v5

    float-to-int v13, v13

    iput v13, v10, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    .line 170
    int-to-float v13, v2

    mul-float/2addr v13, v6

    float-to-int v13, v13

    iput v13, v11, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    .line 172
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v13, "LayoutParamsHelper"

    invoke-static {v13, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-string v13, "LayoutParamsHelper"

    invoke-static {v13, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-string v13, "LayoutParamsHelper"

    invoke-static {v13, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 163
    :cond_b
    iput v2, v9, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 164
    iput v2, v10, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 165
    iput v2, v11, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    goto :goto_4
.end method
