.class public Lcom/miui/gallery/util/IntentUtil;
.super Ljava/lang/Object;
.source "IntentUtil.java"


# static fields
.field private static final CONTACT_PHOTO_CLASS:[Ljava/lang/String;

.field private static final CONTACT_PHOTO_PACKAGE:[Ljava/lang/String;

.field private static final PLAY_VIDEO_CLASS:[Ljava/lang/String;

.field private static final PLAY_VIDEO_PACKAGE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.jeejen.family.miui"

    aput-object v1, v0, v2

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/util/IntentUtil;->CONTACT_PHOTO_PACKAGE:[Ljava/lang/String;

    .line 101
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.jeejen.contact.ui.AttachPhotoActivity"

    aput-object v1, v0, v2

    const-string v1, "com.android.contacts.activities.AttachPhotoActivity"

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/util/IntentUtil;->CONTACT_PHOTO_CLASS:[Ljava/lang/String;

    .line 105
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.miui.videoplayer"

    aput-object v1, v0, v2

    const-string v1, "com.miui.video"

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/util/IntentUtil;->PLAY_VIDEO_PACKAGE:[Ljava/lang/String;

    .line 109
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.miui.videoplayer.VideoPlayerActivity"

    aput-object v1, v0, v2

    const-string v1, "com.miui.videoplayer.VideoPlayerActivity"

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/util/IntentUtil;->PLAY_VIDEO_CLASS:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 89
    invoke-static {}, Lcom/miui/gallery/util/IntentUtil;->recordUriGenerateError()V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Landroid/content/Intent;[Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # [Landroid/net/Uri;

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/IntentUtil;->dispatchImageUrisInternalIntent(Landroid/app/Activity;Landroid/content/Intent;[Landroid/net/Uri;)V

    return-void
.end method

.method public static checkCreationCondition(Landroid/app/Activity;I)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "ops"    # I

    .prologue
    .line 922
    packed-switch p1, :pswitch_data_0

    .line 930
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 924
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 926
    :pswitch_1
    invoke-static {}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->getInstance()Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->checkAbleOrDownload(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 928
    :pswitch_2
    invoke-static {}, Lcom/miui/gallery/util/PrintInstallHelper;->getInstance()Lcom/miui/gallery/util/PrintInstallHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/PrintInstallHelper;->ensurePrintFucntionAvailable()Z

    move-result v0

    goto :goto_0

    .line 922
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createShortCutForBabyAlbum(Landroid/content/Context;ZJLjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "isOtherShared"    # Z
    .param p2, "albumUniformLocalId"    # J
    .param p4, "albumName"    # Ljava/lang/String;
    .param p5, "face"    # Landroid/graphics/Bitmap;
    .param p6, "peopleId"    # Ljava/lang/String;
    .param p7, "thumbnailInfo"    # Ljava/lang/String;
    .param p8, "babyInfo"    # Ljava/lang/String;
    .param p9, "sharerInfo"    # Ljava/lang/String;

    .prologue
    .line 508
    new-instance v5, Landroid/content/Intent;

    const-string v0, "com.miui.gallery.action.VIEW_SHARED_BABY_ALBUM"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    .local v5, "intent":Landroid/content/Intent;
    const-string v0, "album_id"

    invoke-virtual {v5, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 510
    const-string v0, "album_name"

    invoke-virtual {v5, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v0, "other_share_album"

    invoke-virtual {v5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 512
    const-string v0, "people_id"

    invoke-virtual {v5, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string/jumbo v0, "thumbnail_info_of_baby"

    invoke-virtual {v5, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    const-string v0, "baby_info"

    invoke-virtual {v5, v0, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v0, "baby_sharer_info"

    invoke-virtual {v5, v0, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "id":Ljava/lang/String;
    :goto_0
    const v4, 0x7f020056

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/ShortcutUtil;->createShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/content/Intent;)V

    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1

    .end local p4    # "albumName":Ljava/lang/String;
    :goto_1
    invoke-static {p4}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->recordBabyAlbumHasShortcut(Ljava/lang/String;)V

    .line 519
    return-void

    .end local v1    # "id":Ljava/lang/String;
    .restart local p4    # "albumName":Ljava/lang/String;
    :cond_0
    move-object v1, p6

    .line 516
    goto :goto_0

    .restart local v1    # "id":Ljava/lang/String;
    :cond_1
    move-object p4, v1

    .line 518
    goto :goto_1
.end method

.method private static dispatchImageUrisInternalIntent(Landroid/app/Activity;Landroid/content/Intent;[Landroid/net/Uri;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "imageUris"    # [Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 981
    array-length v3, p2

    if-nez v3, :cond_0

    .line 982
    const-string v3, "IntentUtil"

    const-string v4, "No result Uris to dispatch!"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    :goto_0
    return-void

    .line 985
    :cond_0
    const-string v3, ""

    invoke-static {p0, v3}, Lcom/miui/gallery/provider/GalleryOpenProvider;->needReturnContentUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 986
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 987
    aget-object v3, p2, v2

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/provider/GalleryOpenProvider;->translateToContent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, p2, v2

    .line 986
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 990
    .end local v2    # "i":I
    :cond_1
    new-instance v0, Landroid/content/ClipData;

    const-string v3, "data"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "image/*"

    aput-object v5, v4, v6

    const-string/jumbo v5, "text/uri-list"

    aput-object v5, v4, v7

    new-instance v5, Landroid/content/ClipData$Item;

    aget-object v6, p2, v6

    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v0, v3, v4, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 991
    .local v0, "clip":Landroid/content/ClipData;
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 992
    new-instance v3, Landroid/content/ClipData$Item;

    aget-object v4, p2, v2

    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 991
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 994
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 995
    invoke-virtual {p1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 997
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 998
    :catch_0
    move-exception v1

    .line 999
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "IntentUtil"

    invoke-static {v3, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static doCreation(Landroid/app/Activity;ILjava/util/List;Lcom/miui/gallery/picker/helper/Picker$ImageType;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "creationOps"    # I
    .param p3, "imageType"    # Lcom/miui/gallery/picker/helper/Picker$ImageType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;",
            ">;",
            "Lcom/miui/gallery/picker/helper/Picker$ImageType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 936
    .local p2, "checkedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/adapter/BaseMediaAdapter$CheckedItem;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    const-string v0, "IntentUtil"

    const-string v1, "No selected Item!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :goto_0
    return-void

    .line 940
    :cond_0
    new-instance v0, Lcom/miui/gallery/picker/uri/UriGenerator;

    new-instance v1, Lcom/miui/gallery/util/IntentUtil$3;

    invoke-direct {v1, p1, p0}, Lcom/miui/gallery/util/IntentUtil$3;-><init>(ILandroid/app/Activity;)V

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/miui/gallery/picker/uri/UriGenerator;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/miui/gallery/picker/helper/Picker$ImageType;Lcom/miui/gallery/picker/uri/UriGenerator$UriGenerateListener;)V

    .line 971
    invoke-virtual {v0}, Lcom/miui/gallery/picker/uri/UriGenerator;->generate()V

    goto :goto_0
.end method

.method private static ensureMimeType(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    .end local p1    # "mimeType":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "mimeType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static enterGalleryAppSetting(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 606
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 607
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 608
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    const-string v1, "package"

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 610
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 611
    return-void
.end method

.method public static enterGallerySetting(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 601
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/activity/GallerySettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 602
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 603
    return-void
.end method

.method public static enterPrivateAlbum(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.VIEW_ALBUM_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "album_id"

    const-wide/16 v2, -0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 580
    const-string v1, "album_name"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e043d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v1, "album_server_id"

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v1, "album_unwriteable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 583
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 584
    return-void
.end method

.method public static getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 855
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 858
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 859
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 862
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_1

    .line 863
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v2

    .line 864
    .local v2, "referrer":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 865
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    .end local v2    # "referrer":Landroid/net/Uri;
    :cond_1
    return-object v0
.end method

.method public static gotoAppDetailTraffic(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 736
    new-instance v2, Landroid/content/Intent;

    const-string v4, "miui.intent.action.NETWORKASSISTANT_APP_DETAIL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 738
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string/jumbo v4, "title_type"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 740
    const-string/jumbo v4, "sort_type"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 741
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 743
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    const/4 v3, 0x1

    .line 748
    :goto_0
    return v3

    .line 745
    :catch_0
    move-exception v1

    .line 746
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "IntentUtil"

    const-string v5, "can\'t go to traffic page"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static gotoBugreport(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 763
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "miui.intent.action.BUGREPORT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v1, "i":Landroid/content/Intent;
    const-string v4, "packageName"

    const-string v5, "com.miui.gallery"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 766
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return v3

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "IntentUtil"

    const-string v5, "can\'t go to bug report app"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    const-string v4, "http://www.miui.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 776
    .end local v1    # "i":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 777
    .local v2, "inner":Ljava/lang/Exception;
    const-string v3, "IntentUtil"

    const-string v4, "can\'t go to www.miui.com"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static gotoDailyAlbumDetailPage(Landroid/app/Activity;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "date"    # I

    .prologue
    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.VIEW_ALBUM_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "daily_album"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    const-string v1, "daily_album_date"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    const-string v1, "album_name"

    .line 273
    invoke-static {p1}, Lcom/miui/gallery/util/GalleryDateUtils;->format(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/util/GalleryDateUtils;->formatRelativeDate(J)Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v1, "album_unwriteable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    const-string v1, "album_id"

    const-wide/32 v2, 0x7ffffffb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 276
    const-string v1, "album_server_id"

    const-wide/32 v2, -0x7ffffffb

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 278
    return-void
.end method

.method public static gotoDeepClean(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 728
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.GARBAGE_DEEPCLEAN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IntentUtil"

    const-string v3, "can\'t goto deep clean page"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static gotoMiCloudVipPage(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 717
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.cloudservice"

    const-string v4, "com.miui.cloudservice.ui.MiCloudHybridActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 719
    const-string v2, "com.miui.sdk.hybrid.extra.URL"

    const-string v3, "https://i.mi.com/vip?source=miui_gallery&ext=miui_gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IntentUtil"

    const-string v3, "can\'t goto micloud vip page"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static gotoPhotoDetailPage(Landroid/app/Activity;Lcom/miui/gallery/model/BaseDataItem;Z)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "dataItem"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "isFromLocked"    # Z

    .prologue
    .line 260
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/gallery/activity/PhotoDetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "photo_detail_target"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 263
    const-string v2, "StartActivityWhenLocked"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 265
    const/16 v2, 0x26

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 266
    return-void
.end method

.method private static gotoPhotoPage(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;JLjava/lang/String;IZLjava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "adapterView"    # Landroid/view/ViewGroup;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "position"    # I
    .param p4, "count"    # I
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "data"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p9, "albumId"    # J
    .param p11, "albumName"    # Ljava/lang/String;
    .param p12, "operationMask"    # I
    .param p13, "fromRecommendFacePage"    # Z
    .param p14, "recommendFaceId"    # Ljava/lang/String;
    .param p16, "isPreview"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/net/Uri;",
            "II",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/model/ImageLoadParams;",
            "J",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/photoview/ItemViewInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p15, "specialItemViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/photoview/ItemViewInfo;>;"
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getPreviewPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/util/IntentUtil$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/util/IntentUtil$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 175
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "photo_data"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 177
    const-string v4, "photo_init_position"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    const-string v4, "photo_count"

    invoke-virtual {v3, v4, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    const-string v4, "photo_selection"

    invoke-virtual {v3, v4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    if-eqz p6, :cond_1

    .line 183
    const-string v4, "photo_selection_args"

    invoke-virtual {v3, v4, p6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 185
    :cond_1
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 186
    const-string v4, "photo_order_by"

    move-object/from16 v0, p7

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_2
    if-eqz p8, :cond_3

    .line 189
    const-string v4, "photo_transition_data"

    move-object/from16 v0, p8

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    :cond_3
    const-string v4, "from_gallery"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    if-eqz p1, :cond_8

    .line 193
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/ui/PhotoPageDataCache;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/miui/gallery/ui/PhotoPageDataCache;->setItemViewParent(Landroid/view/ViewGroup;)V

    .line 197
    :cond_4
    :goto_0
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 198
    const-string v4, "album_name"

    move-object/from16 v0, p11

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_5
    const-string v4, "album_id"

    move-wide/from16 v0, p9

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 201
    const-string/jumbo v4, "support_operation_mask"

    move/from16 v0, p12

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string v4, "from_recommend_face_page"

    move/from16 v0, p13

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    const-string v4, "recommend_face_id"

    move-object/from16 v0, p14

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v4, "photo_enter_transit"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    const-string v4, "photo_preview_mode"

    move/from16 v0, p16

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 206
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/ui/PhotoPageDataCache;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/gallery/ui/PhotoPageDataCache;->setArguments(Landroid/os/Bundle;)V

    .line 207
    if-eqz p8, :cond_7

    .line 208
    new-instance v4, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v5, Lcom/miui/gallery/Config$ThumbConfig;->THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 209
    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    const/4 v5, 0x0

    .line 210
    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->syncLoadFromThumbCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 211
    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 212
    .local v2, "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    invoke-virtual/range {p8 .. p8}, Lcom/miui/gallery/model/ImageLoadParams;->getFileLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 213
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerFileLength(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    invoke-virtual/range {p8 .. p8}, Lcom/miui/gallery/model/ImageLoadParams;->getFileLength()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->fileLength(J)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 215
    :cond_6
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Lcom/miui/gallery/model/ImageLoadParams;->setDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 217
    move-object/from16 v0, p8

    invoke-static {p0, v0}, Lcom/miui/gallery/ui/PhotoPageDataCache;->preLoad(Landroid/content/Context;Lcom/miui/gallery/model/ImageLoadParams;)V

    .line 219
    .end local v2    # "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    :cond_7
    return-void

    .line 194
    :cond_8
    if-eqz p15, :cond_4

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 195
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/ui/PhotoPageDataCache;

    move-result-object v4

    move-object/from16 v0, p15

    invoke-virtual {v4, v0}, Lcom/miui/gallery/ui/PhotoPageDataCache;->setAppointedItemViewInfos(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public static gotoPhotoPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;)V
    .locals 18
    .param p0, "fragment"    # Lcom/miui/gallery/ui/BaseMediaFragment;
    .param p1, "adapterView"    # Landroid/view/ViewGroup;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "position"    # I
    .param p4, "count"    # I
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "data"    # Lcom/miui/gallery/model/ImageLoadParams;

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v17}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;JLjava/lang/String;IZLjava/lang/String;Ljava/util/ArrayList;Z)V

    .line 139
    return-void
.end method

.method public static gotoPhotoPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;JLjava/lang/String;I)V
    .locals 19
    .param p0, "fragment"    # Lcom/miui/gallery/ui/BaseMediaFragment;
    .param p1, "adapterView"    # Landroid/view/ViewGroup;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "position"    # I
    .param p4, "count"    # I
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "data"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p9, "albumId"    # J
    .param p11, "albumName"    # Ljava/lang/String;
    .param p12, "operationMask"    # I

    .prologue
    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-static/range {v1 .. v17}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;JLjava/lang/String;IZLjava/lang/String;Ljava/util/ArrayList;Z)V

    .line 150
    return-void
.end method

.method public static gotoPhotoPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;Ljava/lang/String;)V
    .locals 18
    .param p0, "fragment"    # Lcom/miui/gallery/ui/BaseMediaFragment;
    .param p1, "adapterView"    # Landroid/view/ViewGroup;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "position"    # I
    .param p4, "count"    # I
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "data"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p9, "albumName"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/16 v10, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v12, p9

    invoke-static/range {v1 .. v17}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;JLjava/lang/String;IZLjava/lang/String;Ljava/util/ArrayList;Z)V

    .line 145
    return-void
.end method

.method public static gotoPhotoPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 18
    .param p0, "fragment"    # Lcom/miui/gallery/ui/BaseMediaFragment;
    .param p1, "adapterView"    # Landroid/view/ViewGroup;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "position"    # I
    .param p4, "count"    # I
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "data"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p9, "albumName"    # Ljava/lang/String;
    .param p10, "fromRecommendFacePage"    # Z
    .param p11, "recommendFaceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/ui/BaseMediaFragment;",
            "Landroid/view/ViewGroup;",
            "Landroid/net/Uri;",
            "II",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/model/ImageLoadParams;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/photoview/ItemViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p12, "viewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/photoview/ItemViewInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/16 v10, -0x1

    const/4 v13, -0x1

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v12, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-static/range {v1 .. v17}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;JLjava/lang/String;IZLjava/lang/String;Ljava/util/ArrayList;Z)V

    .line 156
    return-void
.end method

.method public static gotoPhotoPageFromPicker(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;Ljava/util/ArrayList;)V
    .locals 18
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/miui/gallery/model/ImageLoadParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/model/ImageLoadParams;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/photoview/ItemViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p6, "viewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/photoview/ItemViewInfo;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v16, p6

    invoke-static/range {v1 .. v17}, Lcom/miui/gallery/util/IntentUtil;->gotoPhotoPage(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;JLjava/lang/String;IZLjava/lang/String;Ljava/util/ArrayList;Z)V

    .line 161
    return-void
.end method

.method public static gotoPreviewSelectPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;[J[I)V
    .locals 12
    .param p0, "fragment"    # Lcom/miui/gallery/ui/BaseMediaFragment;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "position"    # I
    .param p3, "count"    # I
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "data"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p8, "selectedIds"    # [J
    .param p9, "selectedPositions"    # [I

    .prologue
    .line 223
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v11}, Lcom/miui/gallery/util/IntentUtil;->gotoPreviewSelectPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;[J[ILjava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public static gotoPreviewSelectPage(Lcom/miui/gallery/ui/BaseMediaFragment;Landroid/net/Uri;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/model/ImageLoadParams;[J[ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "fragment"    # Lcom/miui/gallery/ui/BaseMediaFragment;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "position"    # I
    .param p3, "count"    # I
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "data"    # Lcom/miui/gallery/model/ImageLoadParams;
    .param p8, "selectedIds"    # [J
    .param p9, "selectedPositions"    # [I
    .param p10, "targetPackage"    # Ljava/lang/String;
    .param p11, "targetClass"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/BaseMediaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/activity/PhotoPreviewSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 230
    const-string v1, "photo_init_position"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v1, "photo_count"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    const-string v1, "photo_selection"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    :cond_0
    if-eqz p5, :cond_1

    .line 236
    const-string v1, "photo_selection_args"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    :cond_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    const-string v1, "photo_order_by"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    :cond_2
    if-eqz p7, :cond_3

    .line 242
    const-string v1, "photo_transition_data"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 244
    :cond_3
    if-eqz p8, :cond_4

    .line 245
    const-string v1, "photo_preview_selected_ids"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 247
    :cond_4
    if-eqz p9, :cond_5

    .line 248
    const-string v1, "photo_preview_selected_positions"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 250
    :cond_5
    if-eqz p10, :cond_6

    .line 251
    const-string v1, "assistant_target_package"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    :cond_6
    if-eqz p11, :cond_7

    .line 254
    const-string v1, "assistant_target_class"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    :cond_7
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BaseMediaFragment;->startActivity(Landroid/content/Intent;)V

    .line 257
    return-void
.end method

.method public static gotoPrivacyPolicy(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 851
    invoke-static {}, Lcom/miui/gallery/util/CtaUtils$Licence;->getPrivacyIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 852
    return-void
.end method

.method public static gotoSettings(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 753
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    const/4 v1, 0x1

    .line 758
    :goto_0
    return v1

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IntentUtil"

    const-string v2, "can\'t go to settings page"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static gotoStoryAlbum(Landroid/app/Activity;J)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "cardId"    # J

    .prologue
    .line 914
    if-eqz p0, :cond_0

    .line 915
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/card/ui/detail/StoryAlbumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 916
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "card"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 917
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 919
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static gotoTrashBin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 701
    invoke-static {p0}, Lcom/miui/gallery/util/PrivacyAgreementUtils;->isCloudServiceAgreementEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 702
    const-string v2, "IntentUtil"

    const-string v3, "can not go to trashBin because cloud privacy denied"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-static {p0}, Lcom/miui/gallery/util/IntentUtil;->startCloudMainPage(Landroid/content/Context;)Z

    .line 713
    :goto_0
    return-void

    .line 706
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.gallery.action.VIEW_WEB"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "url"

    invoke-static {}, Lcom/miui/gallery/request/HostManager;->getTrashBinUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 709
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 710
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "from"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string/jumbo v2, "trash_bin"

    const-string v3, "enter_trash_bin_page"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static gotoTurnOnSyncSwitch(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 587
    if-nez p0, :cond_0

    .line 598
    :goto_0
    return-void

    .line 590
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-nez v1, :cond_1

    .line 591
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.action.MICLOUD_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 594
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/activity/CloudSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 595
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.miui.gallery.cloud.provider.SYNC_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static guideToLoginXiaomiAccount(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 693
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gallery/activity/CloudGuideWelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 694
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 695
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 697
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 698
    return-void
.end method

.method public static guideToLoginXiaomiAccount(Landroid/content/Context;Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Lcom/miui/gallery/util/GalleryIntent$CloudGuideSource;

    .prologue
    .line 687
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 688
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "cloud_guide_source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 689
    invoke-static {p0, v0}, Lcom/miui/gallery/util/IntentUtil;->guideToLoginXiaomiAccount(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 690
    return-void
.end method

.method public static isSpeechInputSupported()Z
    .locals 2

    .prologue
    .line 819
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isPad()Z

    move-result v1

    if-nez v1, :cond_0

    .line 820
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mibrain.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.xiaomi.mibrain.speech"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isIntentSupported(Landroid/content/Intent;)Z

    move-result v1

    .line 824
    :goto_0
    return v1

    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static jumpToExplore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 797
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 798
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 799
    sget-boolean v2, Lcom/miui/os/Rom;->IS_INTERNATIONAL:Z

    if-eqz v2, :cond_0

    .line 800
    const-string v2, "com.mi.android.globalFileexplor"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    :goto_0
    const-string v2, "explorer_path"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 809
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 802
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "com.android.fileexplorer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 806
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static pickFace(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IZ)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "localId"    # Ljava/lang/String;
    .param p5, "pickCount"    # I
    .param p6, "needPickFaceServerId"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p4, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.PICK_FACE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "server_id_of_album"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    const-string v1, "local_id_of_album"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const-string v1, "album_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    const-string v1, "pick_face_direct"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 566
    const-string v1, "need_pick_face_id"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 567
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 568
    const-string v1, "pick_face_ids_in"

    const-string v2, ","

    .line 569
    invoke-static {v2, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 568
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    :cond_0
    const-string v1, "pick-upper-bound"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    const-string v1, "picker_result_set"

    const/4 v2, 0x0

    .line 573
    invoke-static {v2}, Lcom/miui/gallery/picker/PickerActivity;->copyPicker(Lcom/miui/gallery/picker/helper/Picker;)Ljava/util/ArrayList;

    move-result-object v2

    .line 572
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 574
    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 575
    return-void
.end method

.method public static pickPeople(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "candidateName"    # Ljava/lang/String;

    .prologue
    .line 553
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.PICK_PEOPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pick_people"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 555
    const-string v1, "pick_people_candidate_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 557
    return-void
.end method

.method public static playVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ZI)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "showGalleryWhenLocked"    # Z
    .param p4, "requestOrientation"    # I

    .prologue
    .line 311
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 312
    .local v4, "i":Landroid/content/Intent;
    invoke-static {p1, p2}, Lcom/miui/gallery/util/IntentUtil;->ensureMimeType(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 313
    const-string v5, "*/*"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    const-string/jumbo p2, "video/*"

    .line 317
    :cond_0
    :try_start_0
    const-string v5, "IntentUtil"

    const-string/jumbo v6, "showGalleryWhenLocked: %s, requestOrientation: %d"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    const-string v5, "com.miui.videoplayer.LOCAL_VIDEO_PLAY"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-static {v4, p1, p2}, Lcom/miui/gallery/util/IntentUtil;->setDataAndType(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 320
    const-string v5, "StartActivityWhenLocked"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    const-string v5, "com.miui.video.extra.play_video_request_orientation"

    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    instance-of v5, p0, Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 323
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 324
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "callingPackage":Ljava/lang/String;
    const-string v5, "IntentUtil"

    const-string v6, "play video extra calling package: %s"

    invoke-static {v5, v6, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    const-string v5, "miui_video_extra_calling_package"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const/16 v5, 0x2d

    invoke-virtual {v1, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 339
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "callingPackage":Ljava/lang/String;
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 331
    :catch_0
    move-exception v3

    .line 332
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "IntentUtil"

    const-string v6, "local video player not found!"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-static {v4, p1, p2}, Lcom/miui/gallery/util/IntentUtil;->setDataAndType(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 336
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v3

    .line 337
    .local v3, "e":Ljava/lang/Exception;
    const v5, 0x7f0e0550

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static recordUriGenerateError()V
    .locals 2

    .prologue
    .line 975
    const-string v0, "IntentUtil"

    const-string v1, "checkedItem Uri generate error"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v0, "creation"

    const-string v1, "checked_item_uri_error"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    return-void
.end method

.method public static removeAllShortCutForBabyAlbums(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 523
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->getBabyAlbumsHasShortcut()Ljava/util/ArrayList;

    move-result-object v1

    .line 524
    .local v1, "babyNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 525
    .local v0, "babyAlbumName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/miui/gallery/util/IntentUtil;->removeShortCutForBabyAlbumByName(Landroid/content/Context;Ljava/lang/String;)V

    .line 526
    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->removeBabyAlbumShortcut(Ljava/lang/String;)V

    goto :goto_0

    .line 528
    .end local v0    # "babyAlbumName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static removeShortCutForBabyAlbumByName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 532
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v1, "shortcutintent":Landroid/content/Intent;
    const-string v2, "ro.miui.product.home"

    const-string v3, "com.miui.home"

    invoke-static {v2, v3}, Lcom/android/internal/SystemPropertiesCompat;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    .line 536
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 541
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 542
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 543
    return-void

    .line 538
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "shortcut_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static setDataAndType(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/provider/GalleryOpenProvider;->needReturnContentUri()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/provider/GalleryOpenProvider;->translateToContent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static showOnMap(Landroid/content/Context;DD)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 458
    const/4 v4, 0x1

    .line 464
    .local v4, "ret":Z
    :try_start_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "http://maps.google.com/maps?f=q&q=(%f,%f)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 465
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    .line 464
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, "uri":Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    const-string v7, "com.google.android.apps.maps"

    const-string v8, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .local v0, "compName":Landroid/content/ComponentName;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    .line 469
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 470
    .local v3, "mapsIntent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 486
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v3    # "mapsIntent":Landroid/content/Intent;
    .end local v5    # "uri":Ljava/lang/String;
    :goto_0
    return v4

    .line 471
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v7, "IntentUtil"

    const-string v8, "GMM activity not found!"

    invoke-static {v7, v8, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "geo:%f,%f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 476
    .local v6, "url":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 477
    .restart local v3    # "mapsIntent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 478
    .end local v3    # "mapsIntent":Landroid/content/Intent;
    .end local v6    # "url":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 479
    .local v2, "ee":Landroid/content/ActivityNotFoundException;
    const-string v7, "IntentUtil"

    const-string v8, "GEO activity not found!"

    invoke-static {v7, v8, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    const/4 v4, 0x0

    goto :goto_0

    .line 482
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "ee":Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 483
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 484
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static startAdvancedRefocusAction(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Activity;Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 13
    .param p0, "mediaItem"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 614
    invoke-virtual {p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->getView()Landroid/view/View;

    move-result-object v10

    const v11, 0x7f120013

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 615
    .local v8, "transitionView":Landroid/view/View;
    invoke-virtual {p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v2

    .line 616
    .local v2, "imageView":Landroid/widget/ImageView;
    const/4 v9, 0x0

    .line 617
    .local v9, "width":I
    const/4 v1, 0x0

    .line 618
    .local v1, "height":I
    const/16 v10, 0x9

    new-array v5, v10, [F

    .line 619
    .local v5, "matrix":[F
    if-eqz v2, :cond_0

    .line 620
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 621
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 623
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 624
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 627
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.miui.extraphoto.action.VIEW_ADVANCED_REFOCUS"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .local v3, "intent":Landroid/content/Intent;
    const-string v10, "com.miui.extraphoto"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 630
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v10, "extra_screen_brightness"

    iget v11, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 631
    const-string v10, "extra_path"

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    const/4 v7, 0x0

    .line 633
    .local v7, "options":Landroid/support/v4/app/ActivityOptionsCompat;
    if-lez v9, :cond_1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/gallery/compat/view/WindowCompat;->supportActivityTransitions(Landroid/view/Window;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 634
    const-string v10, "extra_preview_image_width"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    const-string v10, "extra_preview_image_height"

    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 636
    const-string v10, "extra_preview_image_matrix"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 637
    const-string v10, "extra_has_transition"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 638
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/support/v4/util/Pair;

    const/4 v11, 0x0

    const-string/jumbo v12, "tag_transition_view"

    .line 640
    invoke-static {v8, v12}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "tag_transition_view_menu"

    .line 641
    invoke-static {v8, v12}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v12

    aput-object v12, v10, v11

    .line 638
    invoke-static {p1, v10}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/support/v4/util/Pair;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v7

    .line 644
    :cond_1
    if-nez v7, :cond_2

    const/4 v6, 0x0

    .line 645
    .local v6, "optBundle":Landroid/os/Bundle;
    :goto_0
    if-eqz p2, :cond_3

    .line 646
    const/16 v10, 0x2c

    invoke-virtual {p1, p2, v3, v10, v6}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 650
    :goto_1
    return-void

    .line 644
    .end local v6    # "optBundle":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v7}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0

    .line 648
    .restart local v6    # "optBundle":Landroid/os/Bundle;
    :cond_3
    const/16 v10, 0x2c

    invoke-virtual {p1, v3, v10, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method public static startCameraActivity(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 546
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x14000000

    .line 547
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 549
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 550
    return-void
.end method

.method public static startCloudMainPage(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 785
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.action.MICLOUD_MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    const/4 v2, 0x1

    .line 791
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "IntentUtil"

    const-string v3, "cloud main page start fail"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static startDualActionInternal(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Fragment;ZLjava/lang/String;)V
    .locals 5
    .param p0, "mediaItem"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "isFromLocked"    # Z
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 665
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 672
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.miui.extraphoto"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseDataItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/IntentUtil;->setDataAndType(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 675
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 676
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "StartActivityWhenLocked"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 678
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 680
    const/16 v3, 0x25

    :try_start_0
    invoke-virtual {p1, v2, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 681
    :catch_0
    move-exception v1

    .line 682
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "IntentUtil"

    invoke-static {v3, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static startEditAction(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Activity;Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 24
    .param p0, "mediaItem"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 359
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 360
    .local v11, "intent":Landroid/content/Intent;
    const/16 v16, 0x0

    .line 361
    .local v16, "options":Landroid/support/v4/app/ActivityOptionsCompat;
    const-string v20, "allow_use_on_offline_global"

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->allowUseOnOfflineGlobal()Z

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 364
    const v20, 0x7f0e04e9

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 365
    const/16 v20, 0x0

    .line 454
    :goto_0
    return v20

    .line 368
    :cond_0
    :try_start_0
    const-string v20, "com.miui.gallery.video.editor.activity.VideoEditorActivity"

    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 370
    .local v12, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v20, "extra_screen_brightness"

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 371
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/miui/gallery/util/BrightnessProvider;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 372
    move-object/from16 v0, p1

    check-cast v0, Lcom/miui/gallery/util/BrightnessProvider;

    move-object v7, v0

    .line 373
    .local v7, "brightnessProvider":Lcom/miui/gallery/util/BrightnessProvider;
    const-string v20, "photo-brightness-manual"

    invoke-interface {v7}, Lcom/miui/gallery/util/BrightnessProvider;->getManualBrightness()F

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 374
    const-string v20, "photo-brightness-auto"

    invoke-interface {v7}, Lcom/miui/gallery/util/BrightnessProvider;->getAutoBrightness()F

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v7    # "brightnessProvider":Lcom/miui/gallery/util/BrightnessProvider;
    .end local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_1
    new-instance v20, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v20

    const-string/jumbo v21, "video/*"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 442
    const-string v20, "extra_is_secret"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    const-string v20, "extra_secret_key"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/model/BaseDataItem;->getSecretKey()[B

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 444
    const-string v20, "photo_secret_id"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 447
    :cond_3
    if-nez v16, :cond_b

    const/4 v15, 0x0

    .line 448
    .local v15, "optBundle":Landroid/os/Bundle;
    :goto_3
    if-eqz p2, :cond_c

    .line 449
    const/16 v20, 0x1e

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v11, v2, v15}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 453
    :goto_4
    const-string v20, "IntentUtil"

    const-string/jumbo v21, "startEditor"

    invoke-static/range {v20 .. v21}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 376
    .end local v15    # "optBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v9

    .line 377
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 381
    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/model/BaseDataItem;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v20

    if-nez v20, :cond_5

    .line 382
    const v20, 0x7f0e0324

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 383
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 385
    :cond_5
    const-class v20, Lcom/miui/gallery/editor/photo/app/PhotoEditor;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/model/BaseDataItem;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v20

    const-string v21, "image/*"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 388
    .restart local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v20, "extra_screen_brightness"

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 389
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/miui/gallery/util/BrightnessProvider;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v7, p1

    .line 390
    check-cast v7, Lcom/miui/gallery/util/BrightnessProvider;

    .line 391
    .restart local v7    # "brightnessProvider":Lcom/miui/gallery/util/BrightnessProvider;
    const-string v20, "photo-brightness-manual"

    invoke-interface {v7}, Lcom/miui/gallery/util/BrightnessProvider;->getManualBrightness()F

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 392
    const-string v20, "photo-brightness-auto"

    invoke-interface {v7}, Lcom/miui/gallery/util/BrightnessProvider;->getAutoBrightness()F

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 394
    .end local v7    # "brightnessProvider":Lcom/miui/gallery/util/BrightnessProvider;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 395
    .local v4, "activityIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 396
    .local v5, "appLocked":Z
    if-eqz v4, :cond_7

    .line 397
    const-string/jumbo v20, "skip_interception"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 400
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 402
    .local v18, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v10

    .line 403
    .local v10, "imageView":Landroid/widget/ImageView;
    if-eqz v10, :cond_8

    .line 404
    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 405
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v0, v8, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object v6, v8

    .line 406
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 407
    .local v6, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/model/BaseDataItem;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generatePreviewPhotoKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 408
    .local v14, "memoryCacheKey":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v20

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->referenceToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 409
    const-string v20, "IntentUtil"

    const-string v21, "cache preview: %s"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v14}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
    .end local v6    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v14    # "memoryCacheKey":Ljava/lang/String;
    :cond_8
    if-nez v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/miui/gallery/compat/view/WindowCompat;->supportActivityTransitions(Landroid/view/Window;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 414
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 415
    if-eqz v10, :cond_2

    .line 416
    invoke-virtual/range {p2 .. p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->getView()Landroid/view/View;

    move-result-object v20

    const v21, 0x7f120013

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 417
    .local v19, "transitionView":Landroid/view/View;
    if-nez v19, :cond_9

    .line 418
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "photo view not found"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 421
    :cond_9
    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 422
    .restart local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_a

    .line 423
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 426
    :cond_a
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Landroid/support/v4/util/Pair;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x7f0e0701

    .line 427
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const v22, 0x7f0e0702

    .line 428
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v22

    aput-object v22, v20, v21

    .line 426
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/support/v4/util/Pair;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v16

    .line 430
    const-string v20, "extra_custom_transition"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 431
    const-string v20, "extra_image_width"

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    const-string v20, "extra_image_height"

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    invoke-virtual {v10}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v13

    .line 434
    .local v13, "matrix":Landroid/graphics/Matrix;
    const/16 v20, 0x9

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 435
    .local v17, "raw":[F
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 436
    const-string v20, "extra_image_matrix"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    goto/16 :goto_2

    .line 447
    .end local v4    # "activityIntent":Landroid/content/Intent;
    .end local v5    # "appLocked":Z
    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "imageView":Landroid/widget/ImageView;
    .end local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "matrix":Landroid/graphics/Matrix;
    .end local v17    # "raw":[F
    .end local v18    # "res":Landroid/content/res/Resources;
    .end local v19    # "transitionView":Landroid/view/View;
    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v15

    goto/16 :goto_3

    .line 451
    .restart local v15    # "optBundle":Landroid/os/Bundle;
    :cond_c
    const/16 v20, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1, v15}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto/16 :goto_4
.end method

.method public static startFancyColorAction(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Fragment;Z)V
    .locals 1
    .param p0, "mediaItem"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "isFromLocked"    # Z

    .prologue
    .line 653
    const-string v0, "com.miui.extraphoto.action.FANCY_COLOR"

    invoke-static {p0, p1, p2, v0}, Lcom/miui/gallery/util/IntentUtil;->startDualActionInternal(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Fragment;ZLjava/lang/String;)V

    .line 654
    return-void
.end method

.method public static startFreeViewAction(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Fragment;Z)V
    .locals 1
    .param p0, "mediaItem"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "isFromLocked"    # Z

    .prologue
    .line 661
    const-string v0, "com.miui.extraphoto.action.VIEW_3D"

    invoke-static {p0, p1, p2, v0}, Lcom/miui/gallery/util/IntentUtil;->startDualActionInternal(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Fragment;ZLjava/lang/String;)V

    .line 662
    return-void
.end method

.method public static startPhotoMovie(Landroid/app/Activity;Ljava/util/List;JILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "cardId"    # J
    .param p4, "template"    # I
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "subTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/model/MediaInfo;",
            ">;JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 873
    .local p1, "mediaInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/model/MediaInfo;>;"
    invoke-static {}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->getInstance()Lcom/miui/gallery/util/MovieLibraryLoaderHelper;

    move-result-object v7

    new-instance v8, Lcom/miui/gallery/util/IntentUtil$2;

    invoke-direct {v8}, Lcom/miui/gallery/util/IntentUtil$2;-><init>()V

    invoke-virtual {v7, p0, v8}, Lcom/miui/gallery/util/MovieLibraryLoaderHelper;->checkAbleOrDownload(Landroid/app/Activity;Lcom/miui/gallery/util/MovieLibraryLoaderHelper$DownloadStateListener;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 887
    const/4 v1, 0x0

    .line 888
    .local v1, "clip":Landroid/content/ClipData;
    const/4 v4, 0x0

    .line 889
    .local v4, "photoCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    const/16 v7, 0x14

    if-ge v4, v7, :cond_4

    .line 890
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 889
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 893
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/card/model/MediaInfo;

    invoke-virtual {v7}, Lcom/miui/gallery/card/model/MediaInfo;->getUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/gallery/provider/GalleryOpenProvider;->translateToContent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 894
    .local v6, "uri":Landroid/net/Uri;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/card/model/MediaInfo;

    invoke-virtual {v7}, Lcom/miui/gallery/card/model/MediaInfo;->getSha1()Ljava/lang/String;

    move-result-object v5

    .line 895
    .local v5, "sha1":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 896
    new-instance v1, Landroid/content/ClipData;

    .end local v1    # "clip":Landroid/content/ClipData;
    const-string v7, "data"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "image/*"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "text/uri-list"

    aput-object v10, v8, v9

    new-instance v9, Landroid/content/ClipData$Item;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10, v6}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-direct {v1, v7, v8, v9}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 900
    .restart local v1    # "clip":Landroid/content/ClipData;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 898
    :cond_3
    new-instance v7, Landroid/content/ClipData$Item;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v6}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v1, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_3

    .line 902
    .end local v5    # "sha1":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/miui/gallery/movie/ui/activity/MovieActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 903
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "movie_extra_preview_mode"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 904
    const-string v7, "card_id"

    invoke-virtual {v3, v7, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 905
    const-string v7, "card_title"

    move-object/from16 v0, p5

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    const-string v7, "card_sub_title"

    move-object/from16 v0, p6

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    const-string v7, "movie_extra_template"

    move/from16 v0, p4

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 908
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 909
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static startRefocusAction(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Fragment;Z)V
    .locals 1
    .param p0, "mediaItem"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "isFromLocked"    # Z

    .prologue
    .line 657
    const-string v0, "com.miui.extraphoto.action.VIEW_REFOCUS"

    invoke-static {p0, p1, p2, v0}, Lcom/miui/gallery/util/IntentUtil;->startDualActionInternal(Lcom/miui/gallery/model/BaseDataItem;Landroid/app/Fragment;ZLjava/lang/String;)V

    .line 658
    return-void
.end method

.method public static startSpeechInput(Landroid/app/Activity;IZLjava/util/ArrayList;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "needNLP"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "IZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 830
    .local p3, "suggestedSpeechTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.mibrain.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 831
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.xiaomi.mibrain.speech"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    const-string v2, "miref"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const-string v2, "appId"

    const-string v3, "2882303761517492012"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    const-string v2, "appToken"

    const-string v3, "527730249789"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string v2, "client_id"

    const-string v3, "2882303761517492012"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    const-string v2, "api_key"

    const-string v3, "NwRthN_W6eI4dvXX47gZIlZdwBoDMT5t2Xu-7uciaqw"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    const-string/jumbo v2, "sign_secret"

    const-string/jumbo v3, "wyRVnz7UEHQqNcwYAvANxiXBL25taWWPsSQGHbWIcNcEVYrU72NO0MBZjkqXuOk-iOXXiAnrMlZo78sJDhFreg"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    const-string v2, "needNlp"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 839
    invoke-static {p3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    const-string/jumbo v2, "suggestedSpeechTexts"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 842
    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    const/4 v2, 0x1

    .line 847
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return v2

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "IntentUtil"

    const-string v3, "Start speech input error"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const/4 v2, 0x0

    goto :goto_0
.end method
