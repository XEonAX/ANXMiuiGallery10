.class public Lcom/miui/gallery/cloud/peopleface/syncoperation/IgnorePeopleOperation;
.super Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
.source "IgnorePeopleOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected buildRequest(Landroid/accounts/Account;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/RequestOperationBase$Request;
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    move-object v1, p2

    check-cast v1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    .line 51
    .local v1, "requestFaceItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    iget-object v2, v1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v2, v2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/cloud/HostManager$PeopleFace;->getPeopleIgnoreUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "ignoreGroupUrl":Ljava/lang/String;
    new-instance v2, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    invoke-direct {v2}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;-><init>()V

    .line 54
    invoke-virtual {v2, v0}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setUrl(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 55
    invoke-virtual {v2, v3}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setMethod(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v2

    iget v3, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    .line 56
    invoke-virtual {v2, v3}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setRetryTimes(I)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v2

    iget-boolean v3, p2, Lcom/miui/gallery/cloud/RequestItemBase;->needReRequest:Z

    .line 57
    invoke-virtual {v2, v3}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->setNeedReRequest(Z)Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/RequestOperationBase$Request$Builder;->build()Lcom/miui/gallery/cloud/RequestOperationBase$Request;

    move-result-object v2

    return-object v2
.end method

.method protected onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .locals 5
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;

    .prologue
    .line 29
    instance-of v2, p1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    if-nez v2, :cond_0

    .line 33
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 45
    :goto_0
    return-object v2

    :cond_0
    move-object v1, p1

    .line 35
    check-cast v1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    .line 36
    .local v1, "requestFaceItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    iget-object v2, v1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v2, v2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    :try_start_0
    sget-object v2, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v4, v4, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_1
    sget-object v2, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->NotRetryError:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 45
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;->onPreRequest(Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v2

    goto :goto_0
.end method

.method protected onRequestError(Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "result"    # Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .param p2, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p3, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    if-eq p1, v0, :cond_0

    .line 82
    iget v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    .line 84
    :cond_0
    return-void
.end method

.method protected onRequestSuccess(Lcom/miui/gallery/cloud/RequestItemBase;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestItemBase;
    .param p2, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    move-object v1, p1

    check-cast v1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    .line 64
    .local v1, "requestCloudItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    const-string v3, "record"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 66
    .local v0, "ignoreJson":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/peopleface/syncoperation/IgnorePeopleOperation;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "response record null"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {v0}, Lcom/miui/gallery/cloud/peopleface/FaceAlbumUtil;->getContentValuesForPeopleFace(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v2

    .line 72
    .local v2, "values":Landroid/content/ContentValues;
    sget-object v3, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    iget-object v4, v1, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;->face:Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v4, v4, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/miui/gallery/cloud/CloudUtils;->updateToLocalDBForSync(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0
.end method
