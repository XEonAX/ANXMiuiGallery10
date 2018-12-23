.class public Lcom/miui/gallery/ui/PhotoPageFaceItem;
.super Lcom/miui/gallery/ui/PhotoPageItem;
.source "PhotoPageFaceItem.java"

# interfaces
.implements Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$PhotoViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;,
        Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;,
        Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;
    }
.end annotation


# instance fields
.field private mFaceHandler:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

.field private mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

.field private mFaceNameLablesManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->isCheckInAction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/PhotoPageFaceItem;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem;
    .param p1, "x1"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->bindFaceAnymore(Lcom/miui/gallery/model/BaseDataItem;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/PhotoPageFaceItem;)Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFaceItem;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHandler:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    return-object v0
.end method

.method static synthetic access$900(FFLcom/miui/gallery/cloud/peopleface/PeopleFace;I)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .param p3, "x3"    # I

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->getFaceRect(FFLcom/miui/gallery/cloud/peopleface/PeopleFace;I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method private bindFaceAnymore(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 63
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/model/CloudItem;

    .line 64
    .local v0, "cloudItem":Lcom/miui/gallery/model/CloudItem;
    const/4 v1, 0x0

    .line 65
    .local v1, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/peopleface/PeopleFace;>;"
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceNameLablesManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->access$300(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/miui/gallery/model/CloudItem;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    invoke-static {}, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;->getInstance()Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/gallery/model/CloudItem;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;->requestFacesOfThePhoto(Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$PhotoViewProvider;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceNameLablesManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;

    invoke-static {v2, v0, v1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->access$400(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;Lcom/miui/gallery/model/CloudItem;Ljava/util/ArrayList;)V

    .line 72
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-virtual {v2, v0, v1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->bindViewAndData(Lcom/miui/gallery/model/CloudItem;Ljava/util/ArrayList;)V

    .line 73
    return-void
.end method

.method private static getFaceRect(FFLcom/miui/gallery/cloud/peopleface/PeopleFace;I)Landroid/graphics/RectF;
    .locals 20
    .param p0, "imageWidth"    # F
    .param p1, "imageHeight"    # F
    .param p2, "faceInfo"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .param p3, "orientation"    # I

    .prologue
    .line 151
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceXScale:D

    .line 152
    .local v8, "faceXScale":D
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceYScale:D

    .line 153
    .local v10, "faceYScale":D
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceWScale:D

    .line 154
    .local v6, "faceWScale":D
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceHScale:D

    .line 157
    .local v2, "faceHScale":D
    const/4 v12, 0x0

    .line 158
    .local v12, "isFlip":Z
    packed-switch p3, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    if-eqz v12, :cond_0

    .line 188
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v8

    sub-double v8, v16, v6

    .line 192
    :cond_0
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v8

    move-wide/from16 v0, v16

    double-to-float v14, v0

    .line 193
    .local v14, "x":F
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    move-wide/from16 v0, v16

    double-to-float v15, v0

    .line 194
    .local v15, "y":F
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    move-wide/from16 v0, v16

    double-to-float v13, v0

    .line 195
    .local v13, "w":F
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    move-wide/from16 v0, v16

    double-to-float v5, v0

    .line 196
    .local v5, "h":F
    new-instance v4, Landroid/graphics/RectF;

    add-float v16, v14, v13

    add-float v17, v15, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v14, v15, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 197
    .local v4, "faceRect":Landroid/graphics/RectF;
    return-object v4

    .line 160
    .end local v4    # "faceRect":Landroid/graphics/RectF;
    .end local v5    # "h":F
    .end local v13    # "w":F
    .end local v14    # "x":F
    .end local v15    # "y":F
    :pswitch_1
    const/4 v12, 0x1

    goto :goto_0

    .line 164
    :pswitch_2
    const/4 v12, 0x1

    .line 166
    :pswitch_3
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceYScale:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceHScale:D

    move-wide/from16 v18, v0

    sub-double v8, v16, v18

    .line 167
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceXScale:D

    .line 168
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceHScale:D

    .line 169
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceWScale:D

    .line 170
    goto :goto_0

    .line 172
    :pswitch_4
    const/4 v12, 0x1

    .line 174
    :pswitch_5
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceXScale:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceWScale:D

    move-wide/from16 v18, v0

    sub-double v8, v16, v18

    .line 175
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceYScale:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceHScale:D

    move-wide/from16 v18, v0

    sub-double v10, v16, v18

    .line 176
    goto/16 :goto_0

    .line 178
    :pswitch_6
    const/4 v12, 0x1

    .line 180
    :pswitch_7
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceYScale:D

    .line 181
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceXScale:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceWScale:D

    move-wide/from16 v18, v0

    sub-double v10, v16, v18

    .line 182
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceHScale:D

    .line 183
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->faceWScale:D

    goto/16 :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method private isCheckInAction()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->inAction()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
    .locals 1
    .param p1, "exitInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isExiting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->onExiting()Z

    .line 142
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V

    .line 143
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->onDraw(Landroid/graphics/Canvas;)V

    .line 109
    :cond_0
    return-void
.end method

.method protected doOnMatrixChanged(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnMatrixChanged(Landroid/graphics/RectF;)V

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceNameLablesManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceNameLablesManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->onMatrixChanged()V

    .line 84
    :cond_1
    return-void
.end method

.method public onActionBarVisibleChanged(Ljava/lang/Boolean;I)V
    .locals 1
    .param p1, "visible"    # Ljava/lang/Boolean;
    .param p2, "actionBarHeight"    # I

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->onActionBarVisibleChanged(Ljava/lang/Boolean;I)V

    .line 203
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->bindFaceAnymore(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 204
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 208
    packed-switch p1, :pswitch_data_0

    .line 229
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageItem;->onActivityResult(IILandroid/content/Intent;)V

    .line 230
    return-void

    .line 210
    :pswitch_0
    const/4 v1, 0x0

    .line 211
    .local v1, "contact1":Lcom/miui/gallery/model/PeopleContactInfo;
    if-eqz p3, :cond_1

    if-ne p2, v2, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getContactInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/miui/gallery/model/PeopleContactInfo;

    move-result-object v1

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHandler:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->mRemoveFromFaceAlbumHandler:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHandler:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->mRemoveFromFaceAlbumHandler:Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/ui/renameface/RemoveFromFaceAlbumHandler;->finishWhenGetContact(Lcom/miui/gallery/model/PeopleContactInfo;)V

    goto :goto_0

    .line 219
    .end local v1    # "contact1":Lcom/miui/gallery/model/PeopleContactInfo;
    :pswitch_1
    const/4 v0, 0x0

    .line 220
    .local v0, "contact":Lcom/miui/gallery/model/PeopleContactInfo;
    if-eqz p3, :cond_2

    if-ne p2, v2, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getContactInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/miui/gallery/model/PeopleContactInfo;

    move-result-object v0

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHandler:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHandler:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->mFaceAlbumRenameHandler:Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->finishWhenGetContact(Lcom/miui/gallery/model/PeopleContactInfo;)V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onDetachedFromWindow()V

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->onDestroy()V

    .line 124
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onFinishInflate()V

    .line 57
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;Lcom/miui/gallery/ui/PhotoPageFaceItem$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceNameLablesManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;

    .line 58
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;Lcom/miui/gallery/ui/PhotoPageFaceItem$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    .line 59
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;-><init>(Lcom/miui/gallery/ui/PhotoPageFaceItem;Lcom/miui/gallery/ui/PhotoPageFaceItem$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHandler:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    .line 60
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHandler:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHandler:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHandler;->notifyChanged()V

    .line 116
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 94
    invoke-super/range {p0 .. p5}, Lcom/miui/gallery/ui/PhotoPageItem;->onLayout(ZIIII)V

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceNameLablesManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->access$300(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceNameLablesManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;->access$500(Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceNameLabelsManager;ZIIII)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFaceItem;->mFaceHighLightManager:Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/PhotoPageFaceItem$FaceHighLightManager;->onLayout(ZIIII)V

    .line 101
    :cond_1
    return-void
.end method

.method public swapItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->swapItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFaceItem;->bindFaceAnymore(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 90
    return-void
.end method
