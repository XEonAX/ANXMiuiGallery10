.class public Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "InputFaceNameFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;,
        Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;,
        Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;,
        Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;
    }
.end annotation


# static fields
.field public static sDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public static sProjection:[Ljava/lang/String;


# instance fields
.field private mGetContactInfoHelper:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

.field private mHandler:Landroid/os/Handler;

.field private mInputTextChanged:Z

.field private mInputView:Landroid/widget/EditText;

.field private mIsRelationSetted:Z

.field private mListView:Landroid/widget/ListView;

.field protected mLoader:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

.field private mMergeAdapter:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;

.field private mOnlyHasContactResult:Z

.field private mOnlyUseContactAdapter:Z

.field private mOriginalName:Ljava/lang/String;

.field private mOriginalSetLocalId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v1, 0x7f0200e7

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 83
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 84
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 88
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 89
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;

    invoke-direct {v1, v3}, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;-><init>(Z)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->usingRegionDecoderFace(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->sDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 529
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->CONTACT_ID:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->DISPLAY_NAME:Ljava/lang/String;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->NUMBER:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->PHOTO_URI:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->PHOTO_THUMBNAIL_URI:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mHandler:Landroid/os/Handler;

    .line 623
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->stopFaceLoaderAndFinish()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mInputView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mGetContactInfoHelper:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getFaceSuggest(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mOnlyHasContactResult:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mOnlyHasContactResult:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getContactTipRowCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mMergeAdapter:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->changeMergeResultCursor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->isAccessContactAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->disappearView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->displayView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;)Lcom/miui/gallery/model/DisplayFolderItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getDisplayItemByName(Ljava/lang/String;)Lcom/miui/gallery/model/DisplayFolderItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Lcom/miui/gallery/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->validateIsRepeatName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mOriginalName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mOnlyUseContactAdapter:Z

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mIsRelationSetted:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->onOkClick(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mInputTextChanged:Z

    return p1
.end method

.method private changeMergeResultCursor(Ljava/lang/String;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$5;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;)V

    new-instance v2, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$6;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    .line 320
    return-void
.end method

.method private disappearView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 453
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 454
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 456
    :cond_0
    return-void
.end method

.method private displayView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 448
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :cond_0
    return-void
.end method

.method public static getContactInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/miui/gallery/model/PeopleContactInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 459
    new-instance v8, Lcom/miui/gallery/model/PeopleContactInfo;

    invoke-direct {v8}, Lcom/miui/gallery/model/PeopleContactInfo;-><init>()V

    .line 460
    .local v8, "contact":Lcom/miui/gallery/model/PeopleContactInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 461
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 462
    .local v1, "contactUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 464
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 466
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const-string v0, "display_name"

    .line 468
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 467
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/gallery/model/PeopleContactInfo;->name:Ljava/lang/String;

    .line 469
    invoke-static {v7}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getPhoneNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/gallery/model/PeopleContactInfo;->phone:Ljava/lang/String;

    .line 470
    invoke-static {v7}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getCoverPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/gallery/model/PeopleContactInfo;->coverPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :cond_0
    if-eqz v7, :cond_1

    .line 474
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 490
    .end local v1    # "contactUri":Landroid/net/Uri;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v8

    .line 473
    .restart local v1    # "contactUri":Landroid/net/Uri;
    .restart local v7    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 474
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 478
    .end local v1    # "contactUri":Landroid/net/Uri;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 479
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_1

    .line 480
    const-string v0, "name"

    const-string v2, ""

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/gallery/model/PeopleContactInfo;->name:Ljava/lang/String;

    .line 481
    const-string v0, "phone"

    const-string v2, ""

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/gallery/model/PeopleContactInfo;->phone:Ljava/lang/String;

    .line 482
    const-string v0, "is_repeat_name"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v8, Lcom/miui/gallery/model/PeopleContactInfo;->isRepeatName:Z

    .line 483
    iget-boolean v0, v8, Lcom/miui/gallery/model/PeopleContactInfo;->isRepeatName:Z

    if-eqz v0, :cond_4

    .line 484
    const-string v0, "repeat_local_group_id"

    const-string v2, ""

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/gallery/model/PeopleContactInfo;->localGroupId:Ljava/lang/String;

    .line 486
    :cond_4
    const-string v0, "relation_with_me"

    const-string v2, ""

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    .line 487
    const-string v0, "relation_with_me_text"

    const-string v2, ""

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMeText:Ljava/lang/String;

    goto :goto_0
.end method

.method private getContactTipRowCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 344
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->sProjection:[Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 345
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0e0126

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "tip":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    const-string v4, "contact"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v5, v2, v3

    const/4 v3, 0x4

    aput-object v5, v2, v3

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 348
    return-object v0

    .line 345
    .end local v1    # "tip":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getCoverPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cur"    # Landroid/database/Cursor;

    .prologue
    .line 503
    const-string v0, ""

    .line 505
    .local v0, "path":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->PHOTO_URI:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 506
    if-nez v0, :cond_0

    .line 507
    sget-object v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->PHOTO_THUMBNAIL_URI:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 511
    :cond_0
    :goto_0
    return-object v0

    .line 509
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getDisplayItemByName(Ljava/lang/String;)Lcom/miui/gallery/model/DisplayFolderItem;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mLoader:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    const-wide/16 v4, 0x2710

    .line 353
    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->tryToGetLoadedItems(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 354
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DisplayFolderItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/DisplayFolderItem;

    .line 355
    .local v0, "each":Lcom/miui/gallery/model/DisplayFolderItem;
    iget-object v3, v0, Lcom/miui/gallery/model/DisplayFolderItem;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    .end local v0    # "each":Lcom/miui/gallery/model/DisplayFolderItem;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFaceSuggest(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 326
    const/16 v3, 0x64

    .line 327
    .local v3, "id":I
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->sProjection:[Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 328
    .local v0, "cursor":Landroid/database/MatrixCursor;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "folderName":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mLoader:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    const-wide/16 v6, 0x2710

    .line 330
    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->tryToGetLoadedItems(J)Ljava/util/ArrayList;

    move-result-object v4

    .line 331
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DisplayFolderItem;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/model/DisplayFolderItem;

    .line 332
    .local v1, "each":Lcom/miui/gallery/model/DisplayFolderItem;
    iget-object v6, v1, Lcom/miui/gallery/model/DisplayFolderItem;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 333
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v1, Lcom/miui/gallery/model/DisplayFolderItem;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "face"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v9, v6, v7

    const/4 v7, 0x4

    aput-object v9, v6, v7

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 328
    .end local v1    # "each":Lcom/miui/gallery/model/DisplayFolderItem;
    .end local v2    # "folderName":Ljava/lang/String;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DisplayFolderItem;>;"
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 338
    .restart local v2    # "folderName":Ljava/lang/String;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DisplayFolderItem;>;"
    :cond_2
    return-object v0
.end method

.method public static getPhoneNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cur"    # Landroid/database/Cursor;

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 496
    .local v0, "phone":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->NUMBER:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 499
    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "phone":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 497
    .restart local v0    # "phone":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 441
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 442
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 444
    return-void
.end method

.method private initEditText()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mInputView:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$4;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 249
    return-void
.end method

.method private initFaceNameLoader()V
    .locals 5

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "selectedFoldersLocalId":[J
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mOriginalSetLocalId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    const/4 v1, 0x1

    new-array v0, v1, [J

    .line 417
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mOriginalSetLocalId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 419
    :cond_0
    new-instance v1, Lcom/miui/gallery/ui/renameface/FaceFolderItemsLoader;

    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v3, 0x0

    new-instance v4, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$9;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$9;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)V

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/gallery/ui/renameface/FaceFolderItemsLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/ui/renameface/FolderItemsLoader$LoaderUpdatedItems;[J)V

    iput-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mLoader:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    .line 432
    return-void
.end method

.method private initListView(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 375
    const v0, 0x7f12010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mListView:Landroid/widget/ListView;

    .line 376
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mMergeAdapter:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 378
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$7;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$7;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 392
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$8;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$8;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 411
    return-void
.end method

.method private initMergeNameAdapter()V
    .locals 2

    .prologue
    .line 435
    new-instance v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mGetContactInfoHelper:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    .line 436
    new-instance v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mMergeAdapter:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;

    .line 437
    return-void
.end method

.method private initTitleBar()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x1

    .line 150
    iget-object v4, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v4}, Lcom/miui/gallery/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040096

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 152
    .local v3, "topBarCustomView":Landroid/view/View;
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 154
    .local v1, "layoutParams":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v4, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v4}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Lmiui/app/ActionBar;->setDisplayOptions(II)V

    .line 157
    iget-object v4, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v4}, Lcom/miui/gallery/activity/BaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 159
    const v4, 0x7f12018c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mInputView:Landroid/widget/EditText;

    .line 160
    iget-object v4, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mOriginalName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mInputView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v4, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 165
    :cond_0
    const v4, 0x7f120135

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, "cancelView":Landroid/view/View;
    new-instance v4, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$1;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v4, 0x7f120136

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 173
    .local v2, "ok":Landroid/view/View;
    new-instance v4, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$2;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$2;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method private isAccessContactAllowed()Z
    .locals 1

    .prologue
    .line 252
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-static {v0}, Lcom/miui/gallery/util/PermissionUtils$CtaPrivacyPermissions;->isPrivacyAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private onOkClick(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isRepeatName"    # Z
    .param p3, "phone"    # Ljava/lang/String;
    .param p4, "relation"    # Ljava/lang/String;
    .param p5, "relationText"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v2, "is_repeat_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    const-string v2, "phone"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    const-string v2, "relation_with_me"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 211
    const-string v2, "relation_with_me_text"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_2
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 214
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/miui/gallery/activity/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 215
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->hideSoftKeyboard()V

    .line 216
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->stopFaceLoaderAndFinish()V

    .line 217
    return-void
.end method

.method public static sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "sqlString"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x27

    .line 608
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 611
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 612
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 613
    .local v0, "c":C
    if-ne v0, v6, :cond_0

    .line 614
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 616
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 620
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "sqlString":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method private stopFaceLoaderAndFinish()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mLoader:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->cancel()V

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 119
    return-void
.end method

.method private validateIsRepeatName(Ljava/lang/String;)Z
    .locals 6
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "folderName":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mLoader:Lcom/miui/gallery/ui/renameface/FolderItemsLoader;

    const-wide/16 v4, 0x12c

    .line 368
    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/ui/renameface/FolderItemsLoader;->tryToGetLoadedItems(J)Ljava/util/ArrayList;

    move-result-object v2

    .line 370
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DisplayFolderItem;>;"
    invoke-static {v2, v1}, Lcom/miui/gallery/ui/renameface/FaceAlbumRenameHandler;->getDisplayFolderItem(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/miui/gallery/model/DisplayFolderItem;

    move-result-object v0

    .line 371
    .local v0, "displayFolderItem":Lcom/miui/gallery/model/DisplayFolderItem;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "face_input_name"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->stopFaceLoaderAndFinish()V

    .line 123
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onDestroyView()V

    .line 142
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->hideSoftKeyboard()V

    .line 143
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 97
    const v3, 0x7f040098

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 98
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 99
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "only_use_contact"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mOnlyUseContactAdapter:Z

    .line 102
    const-string v3, "original_name"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mOriginalName:Ljava/lang/String;

    .line 103
    const-string v3, "is_relation_setted"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mIsRelationSetted:Z

    .line 104
    const-string v3, "original_path_album_local_id"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mOriginalSetLocalId:Ljava/lang/String;

    .line 106
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mOnlyHasContactResult:Z

    .line 107
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->initTitleBar()V

    .line 108
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->initEditText()V

    .line 109
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->initFaceNameLoader()V

    .line 110
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->initMergeNameAdapter()V

    .line 111
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->initListView(Landroid/view/View;)V

    .line 112
    return-object v2
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStart()V

    .line 128
    invoke-virtual {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->updateNameList()V

    .line 129
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStop()V

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mMergeAdapter:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mMergeAdapter:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 137
    :cond_0
    return-void
.end method

.method public showSetRelationDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 221
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f0e03de

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$3;

    invoke-direct {v5, p0, p1, p2}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$3;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1, v3, v4, v5}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->createRelationSetDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;)V

    .line 229
    return-void
.end method

.method public updateNameList()V
    .locals 2

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "text":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mInputTextChanged:Z

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mOnlyUseContactAdapter:Z

    if-eqz v1, :cond_1

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mOnlyHasContactResult:Z

    .line 262
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mGetContactInfoHelper:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    invoke-static {v1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->access$900(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;)V

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->mMergeAdapter:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->notifyDataSetChanged()V

    .line 267
    return-void

    .line 264
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->changeMergeResultCursor(Ljava/lang/String;)V

    goto :goto_0
.end method
