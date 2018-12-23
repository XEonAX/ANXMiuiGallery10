.class public Lcom/miui/gallery/provider/GalleryProvider;
.super Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;
.source "GalleryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;
    }
.end annotation


# instance fields
.field private mContentResolver:Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;

.field private mInitializeListener:Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 79
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "album"

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "media"

    const/16 v3, 0x33

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "media/#"

    const/16 v3, 0x34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "album_media"

    const/16 v3, 0x35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "share_album_media/#"

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "persons"

    const/16 v3, 0x36

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "ignore_persons"

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "person"

    const/16 v3, 0x37

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "gallery_cloud"

    const/16 v3, 0x38

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "gallery_cloud/#"

    const/16 v3, 0x3a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloud_owner_sububi/#"

    const/16 v3, 0x3b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "share_image"

    const/16 v3, 0x39

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "share_image/#"

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "share_image_sububi/#"

    const/16 v3, 0x3d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "person_recommend"

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "peopleFace"

    const/16 v3, 0x3f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloud_and_share"

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "owner_and_other_album"

    const/16 v3, 0x42

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "other_share_album"

    const/16 v3, 0x43

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloud_write_bulk_notify"

    const/16 v3, 0x44

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "person_item"

    const/16 v3, 0x45

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "share_user"

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "share_user/#"

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloud_user"

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloud_user/#"

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "people_face_cover"

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "discovery_message"

    const/16 v3, 0x4b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "discovery_message/#"

    const/16 v3, 0x4c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "recent_discovered_media"

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "recent_discovered_cover"

    const/16 v3, 0x4e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloudControl"

    const/16 v3, 0x4f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloudControl/#"

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "people_cover"

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "image_face"

    const/16 v3, 0x53

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "people_tag"

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "favorites"

    const/16 v3, 0x55

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "extended_cloud"

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "pick_cloud_and_share"

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "persons_item"

    const/16 v3, 0x58

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;-><init>()V

    .line 855
    new-instance v0, Lcom/miui/gallery/provider/GalleryProvider$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/provider/GalleryProvider$1;-><init>(Lcom/miui/gallery/provider/GalleryProvider;)V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryProvider;->mInitializeListener:Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;

    .line 862
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/provider/GalleryProvider;Landroid/net/Uri;Landroid/database/ContentObserver;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/provider/GalleryProvider;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Landroid/database/ContentObserver;
    .param p3, "x3"    # Landroid/content/ContentValues;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/provider/GalleryProvider;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$200()Landroid/content/UriMatcher;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/UriMatcher;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method private buildNonProcessingSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "originalSelection"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-static {}, Lcom/miui/gallery/provider/ProcessingMediaManager;->queryProcessingMediaPaths()Ljava/util/List;

    move-result-object v1

    .line 367
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "localFile NOT IN ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 370
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 371
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 372
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 373
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_1
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 380
    .end local v0    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local p1    # "originalSelection":Ljava/lang/String;
    :cond_2
    return-object p1
.end method

.method private doInsertWithNoNotify(Landroid/net/Uri;ILandroid/content/ContentValues;)J
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "matchResult"    # I
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 438
    sget-object v6, Lcom/miui/gallery/provider/GalleryProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v6}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 439
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, -0x1

    .line 440
    .local v2, "id":J
    sparse-switch p2, :sswitch_data_0

    .line 476
    :goto_0
    return-wide v4

    .line 447
    :sswitch_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 449
    :try_start_0
    const-string v6, "cloud"

    invoke-virtual {p0, v1, v6, p3}, Lcom/miui/gallery/provider/GalleryProvider;->onPreInsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 450
    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 451
    const-string v6, "cloud"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, p3, v8}, Lcom/miui/gallery/provider/GalleryProvider;->appendValuesForCloud(Landroid/content/ContentValues;Z)Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 452
    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 453
    iget-object v4, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v4, v2, v3, p3}, Lcom/miui/gallery/provider/cache/MediaManager;->insert(JLandroid/content/ContentValues;)J

    .line 454
    const-string v4, "serverType"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "serverType"

    .line 455
    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Numbers;->equals(Ljava/lang/Number;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 456
    const-string v4, "attributes"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 457
    .local v0, "attr":Ljava/lang/Long;
    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    if-nez v0, :cond_2

    const-wide/16 v4, 0x0

    :goto_1
    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/miui/gallery/provider/cache/MediaManager;->insertAttributes(JJ)V

    .line 459
    .end local v0    # "attr":Ljava/lang/Long;
    :cond_0
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getInstance()Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    move-result-object v4

    invoke-virtual {v4, v2, v3, p3}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->recordNewImage(JLandroid/content/ContentValues;)V

    .line 464
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-wide v4, v2

    .line 468
    goto :goto_0

    .line 457
    .restart local v0    # "attr":Ljava/lang/Long;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    goto :goto_1

    .line 466
    .end local v0    # "attr":Ljava/lang/Long;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 470
    :sswitch_1
    const-string v4, "shareImage"

    invoke-virtual {p0, p3, v8}, Lcom/miui/gallery/provider/GalleryProvider;->appendValuesForCloud(Landroid/content/ContentValues;Z)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v1, v4, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    goto :goto_0

    .line 472
    :sswitch_2
    const-string v4, "peopleFace"

    invoke-virtual {p0, p3, v8}, Lcom/miui/gallery/provider/GalleryProvider;->appendValuesForCloud(Landroid/content/ContentValues;Z)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v1, v4, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    goto :goto_0

    .line 474
    :sswitch_3
    const-string v4, "recentDiscoveredMedia"

    const/4 v5, 0x5

    invoke-virtual {v1, v4, v7, p3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    goto :goto_0

    .line 440
    nop

    :sswitch_data_0
    .sparse-switch
        0x38 -> :sswitch_0
        0x39 -> :sswitch_1
        0x3f -> :sswitch_2
        0x44 -> :sswitch_0
        0x4d -> :sswitch_3
    .end sparse-switch
.end method

.method private getSha1ListFromFavorites(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 12
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "onlyFavoriteItems"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    const/4 v9, 0x0

    .line 824
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz p3, :cond_0

    .line 825
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    const-string p1, "isFavorite NOT NULL AND isFavorite> 0"

    .line 833
    :cond_0
    :goto_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    const-string v1, "favorites"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sha1"

    aput-object v4, v2, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/provider/GalleryDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 838
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 839
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 840
    .local v10, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 841
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 842
    .local v11, "sha1":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 843
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 851
    .end local v10    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "sha1":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 829
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (isFavorite NOT NULL AND isFavorite> 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    goto :goto_0

    .line 851
    .restart local v10    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {v9}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .end local v10    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return-object v10

    .line 848
    :cond_4
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 851
    invoke-static {v9}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2
.end method

.method private isBlockedByMediaManager(I)Z
    .locals 1
    .param p1, "uriCode"    # I

    .prologue
    .line 133
    packed-switch p1, :pswitch_data_0

    .line 138
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 136
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private needDelayNotify(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 747
    sget-object v1, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 748
    .local v0, "matchResult":I
    packed-switch v0, :pswitch_data_0

    .line 752
    const-string v1, "delay_notify"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    return v1

    .line 750
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method private needNotifyUpdate(ILandroid/content/ContentValues;)Z
    .locals 2
    .param p1, "matchResult"    # I
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, 0x1

    .line 633
    const/16 v1, 0x3a

    if-ne p1, v1, :cond_1

    .line 648
    :cond_0
    :goto_0
    return v0

    .line 636
    :cond_1
    const/16 v1, 0x3f

    if-eq p1, v1, :cond_0

    .line 639
    const/16 v1, 0x44

    if-ne p1, v1, :cond_2

    const-string v1, "sha1"

    .line 640
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "specialTypeFlags"

    .line 641
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    :cond_2
    const/16 v1, 0x55

    if-ne p1, v1, :cond_3

    const-string v1, "sha1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 648
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 731
    invoke-static {p1, p3}, Lcom/miui/gallery/provider/GalleryProvider;->shouldRequestSync(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/gallery/provider/GalleryProvider;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 732
    return-void
.end method

.method private notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Landroid/content/ContentValues;I)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "syncReason"    # I

    .prologue
    .line 735
    invoke-static {p1, p3}, Lcom/miui/gallery/provider/GalleryProvider;->shouldRequestSync(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/miui/gallery/provider/GalleryProvider;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 736
    return-void
.end method

.method private notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "sync"    # Z
    .param p4, "syncReason"    # I

    .prologue
    .line 739
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryProvider;->needDelayNotify(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryProvider;->mContentResolver:Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->notifyChangeDelay(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryProvider;->mContentResolver:Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    goto :goto_0
.end method

.method private parseSelection(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionFormat"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 384
    check-cast p3, [Ljava/lang/Object;

    .end local p3    # "selectionArgs":[Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "constructSelection":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private registerNotifyUri(Landroid/database/Cursor;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "matchResult"    # I

    .prologue
    .line 757
    packed-switch p2, :pswitch_data_0

    .line 819
    :goto_0
    :pswitch_0
    return-void

    .line 760
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 763
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 767
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 770
    :pswitch_4
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 773
    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 776
    :pswitch_6
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->IGNORE_PERSONS_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 779
    :pswitch_7
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 782
    :pswitch_8
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 785
    :pswitch_9
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OTHER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 788
    :pswitch_a
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_ALL:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 792
    :pswitch_b
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$ShareUser;->SHARE_USER_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 796
    :pswitch_c
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$CloudUser;->CLOUD_USER_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 799
    :pswitch_d
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 802
    :pswitch_e
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$RecentDiscoveredMedia;->URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 805
    :pswitch_f
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$RecentDiscoveredMedia;->URI_COVER:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 808
    :pswitch_10
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 811
    :pswitch_11
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Favorites;->URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 814
    :pswitch_12
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$ExtendedCloud;->URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 757
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private static shouldRequestSync(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, 0x0

    .line 718
    const-string v1, "URI_PARAM_REQUEST_SYNC"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 719
    const-string v1, "URI_PARAM_REQUEST_SYNC"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 727
    :cond_0
    :goto_0
    return v0

    .line 721
    :cond_1
    if-eqz p1, :cond_0

    const-string v1, "localFlag"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    const-string v1, "localFlag"

    .line 723
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 722
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 684
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/cache/MediaManager;->initialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 685
    const/4 v1, 0x0

    .line 695
    :goto_0
    return-object v1

    .line 688
    :cond_0
    sget-object v2, Lcom/miui/gallery/provider/GalleryProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 689
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 691
    :try_start_0
    invoke-super {p0, p1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 692
    .local v1, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 653
    sget-object v5, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 654
    .local v2, "matchResult":I
    invoke-direct {p0, v2}, Lcom/miui/gallery/provider/GalleryProvider;->isBlockedByMediaManager(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v5}, Lcom/miui/gallery/provider/cache/MediaManager;->initialized()Z

    move-result v5

    if-nez v5, :cond_1

    .line 655
    const/4 v3, 0x0

    .line 678
    :cond_0
    :goto_0
    return v3

    .line 658
    :cond_1
    const/4 v3, 0x0

    .line 659
    .local v3, "rows":I
    if-eqz p2, :cond_0

    .line 660
    sget-object v5, Lcom/miui/gallery/provider/GalleryProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 661
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 662
    const/4 v4, 0x0

    .line 664
    .local v4, "valuesInserted":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    array-length v5, p2

    if-ge v1, v5, :cond_3

    .line 665
    aget-object v5, p2, v1

    invoke-direct {p0, p1, v2, v5}, Lcom/miui/gallery/provider/GalleryProvider;->doInsertWithNoNotify(Landroid/net/Uri;ILandroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 666
    add-int/lit8 v3, v3, 0x1

    .line 667
    aget-object v4, p2, v1

    .line 664
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 670
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 674
    if-lez v3, :cond_0

    .line 675
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1, v5, v4, v6}, Lcom/miui/gallery/provider/GalleryProvider;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Landroid/content/ContentValues;I)V

    goto :goto_0

    .line 672
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 701
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/cache/MediaManager;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v6, v7

    .line 711
    :goto_0
    return-object v6

    .line 705
    :cond_0
    sget-object v0, Lcom/miui/gallery/provider/GalleryProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 706
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->canHandle(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    invoke-virtual {p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->call(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 708
    .local v6, "result":Landroid/os/Bundle;
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const-string/jumbo v2, "should_request_sync"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "sync_reason"

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v0, v7, v2, v3}, Lcom/miui/gallery/provider/GalleryProvider;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    goto :goto_0

    .line 711
    .end local v6    # "result":Landroid/os/Bundle;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 482
    sget-object v6, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 483
    .local v2, "matchResult":I
    invoke-direct {p0, v2}, Lcom/miui/gallery/provider/GalleryProvider;->isBlockedByMediaManager(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v6}, Lcom/miui/gallery/provider/cache/MediaManager;->initialized()Z

    move-result v6

    if-nez v6, :cond_1

    .line 484
    const/4 v0, 0x0

    .line 544
    :cond_0
    :goto_0
    return v0

    .line 487
    :cond_1
    sget-object v6, Lcom/miui/gallery/provider/GalleryProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v6}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 488
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sparse-switch v2, :sswitch_data_0

    .line 536
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 490
    :sswitch_0
    const/4 v0, -0x1

    .line 540
    .local v0, "count":I
    :cond_2
    :goto_1
    if-lez v0, :cond_0

    .line 541
    invoke-direct {p0, p1, v8, v8}, Lcom/miui/gallery/provider/GalleryProvider;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 493
    .end local v0    # "count":I
    :sswitch_1
    const/4 v0, -0x1

    .line 494
    .restart local v0    # "count":I
    goto :goto_1

    .line 497
    .end local v0    # "count":I
    :sswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/miui/gallery/provider/GalleryProvider;->genIDSelection(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, "selectById":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v6, v3, v8}, Lcom/miui/gallery/provider/cache/MediaManager;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 499
    const-string v6, "cloud"

    invoke-virtual {v1, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 500
    .restart local v0    # "count":I
    if-lez v0, :cond_2

    .line 501
    invoke-virtual {p0, v3}, Lcom/miui/gallery/provider/GalleryProvider;->deleteAttributes(Ljava/lang/String;)V

    goto :goto_1

    .line 505
    .end local v0    # "count":I
    .end local v3    # "selectById":Ljava/lang/String;
    :sswitch_3
    const-string v6, "shareImage"

    invoke-virtual {v1, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 506
    .restart local v0    # "count":I
    goto :goto_1

    .line 508
    .end local v0    # "count":I
    :sswitch_4
    const-string v6, "peopleFace"

    invoke-virtual {v1, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 509
    .restart local v0    # "count":I
    goto :goto_1

    .line 511
    .end local v0    # "count":I
    :sswitch_5
    const-string v6, "shareUser"

    invoke-virtual {v1, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 512
    .restart local v0    # "count":I
    goto :goto_1

    .line 514
    .end local v0    # "count":I
    :sswitch_6
    const-string v6, "cloudUser"

    invoke-virtual {v1, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 515
    .restart local v0    # "count":I
    goto :goto_1

    .line 517
    .end local v0    # "count":I
    :sswitch_7
    const-string v6, "discoveryMessage"

    invoke-virtual {v1, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 518
    .restart local v0    # "count":I
    goto :goto_1

    .line 520
    .end local v0    # "count":I
    :sswitch_8
    const-string v6, "recentDiscoveredMedia"

    invoke-virtual {v1, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 521
    .restart local v0    # "count":I
    goto :goto_1

    .line 523
    .end local v0    # "count":I
    :sswitch_9
    const-string v6, "cloudControl"

    invoke-virtual {v1, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 524
    .restart local v0    # "count":I
    goto :goto_1

    .line 526
    .end local v0    # "count":I
    :sswitch_a
    const-string v6, "favorites"

    invoke-virtual {v1, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 527
    .restart local v0    # "count":I
    if-lez v0, :cond_2

    .line 528
    const/4 v6, 0x1

    invoke-direct {p0, p2, p3, v6}, Lcom/miui/gallery/provider/GalleryProvider;->getSha1ListFromFavorites(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    .line 529
    .local v5, "sha1List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 530
    .local v4, "sha1":Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v7, v4}, Lcom/miui/gallery/provider/cache/MediaManager;->removeFromFavorites(Ljava/lang/String;)V

    goto :goto_2

    .line 488
    nop

    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_0
        0x34 -> :sswitch_1
        0x38 -> :sswitch_2
        0x39 -> :sswitch_3
        0x3f -> :sswitch_4
        0x44 -> :sswitch_2
        0x46 -> :sswitch_5
        0x48 -> :sswitch_6
        0x4b -> :sswitch_7
        0x4d -> :sswitch_8
        0x4f -> :sswitch_9
        0x55 -> :sswitch_a
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x0

    .line 390
    sget-object v6, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 391
    .local v1, "matchResult":I
    invoke-direct {p0, v1}, Lcom/miui/gallery/provider/GalleryProvider;->isBlockedByMediaManager(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v6}, Lcom/miui/gallery/provider/cache/MediaManager;->initialized()Z

    move-result v6

    if-nez v6, :cond_0

    .line 434
    :goto_0
    return-object v5

    .line 394
    :cond_0
    sget-object v6, Lcom/miui/gallery/provider/GalleryProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v6}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 395
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, -0x1

    .line 396
    .local v2, "id":J
    sparse-switch v1, :sswitch_data_0

    .line 429
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 401
    :sswitch_0
    invoke-direct {p0, p1, v1, p2}, Lcom/miui/gallery/provider/GalleryProvider;->doInsertWithNoNotify(Landroid/net/Uri;ILandroid/content/ContentValues;)J

    move-result-wide v2

    .line 431
    :cond_1
    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2

    .line 432
    const/4 v6, 0x1

    invoke-direct {p0, p1, v5, p2, v6}, Lcom/miui/gallery/provider/GalleryProvider;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Landroid/content/ContentValues;I)V

    .line 434
    :cond_2
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 404
    :sswitch_1
    const-string v6, "shareUser"

    invoke-virtual {v0, v6, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 405
    goto :goto_1

    .line 407
    :sswitch_2
    const-string v6, "cloudUser"

    invoke-virtual {v0, v6, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 408
    goto :goto_1

    .line 410
    :sswitch_3
    const-string v6, "discoveryMessage"

    invoke-virtual {v0, v6, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 411
    goto :goto_1

    .line 413
    :sswitch_4
    const-string v6, "recentDiscoveredMedia"

    invoke-virtual {v0, v6, v5, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 414
    goto :goto_1

    .line 416
    :sswitch_5
    const-string v6, "cloudControl"

    invoke-virtual {v0, v6, v5, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 417
    goto :goto_1

    .line 419
    :sswitch_6
    const-string v6, "favorites"

    invoke-virtual {v0, v6, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 420
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    const-string v6, "sha1"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "isFavorite"

    .line 421
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 422
    const-string v6, "sha1"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, "sha1":Ljava/lang/String;
    const-string v6, "isFavorite"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    .line 424
    iget-object v6, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v6, v4}, Lcom/miui/gallery/provider/cache/MediaManager;->insertToFavorites(Ljava/lang/String;)V

    goto :goto_1

    .line 396
    nop

    :sswitch_data_0
    .sparse-switch
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3f -> :sswitch_0
        0x44 -> :sswitch_0
        0x46 -> :sswitch_1
        0x48 -> :sswitch_2
        0x4b -> :sswitch_3
        0x4d -> :sswitch_4
        0x4f -> :sswitch_5
        0x55 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->onCreate()Z

    .line 125
    new-instance v0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;-><init>(Lcom/miui/gallery/provider/GalleryProvider;Lcom/miui/gallery/provider/GalleryProvider$1;)V

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryProvider;->mContentResolver:Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;

    .line 126
    invoke-static {}, Lcom/miui/gallery/provider/cache/MediaManager;->getInstance()Lcom/miui/gallery/provider/cache/MediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryProvider;->mInitializeListener:Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/provider/cache/MediaManager;->addInitializeListener(Lcom/miui/gallery/provider/cache/MediaManager$InitializeListener;)V

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    sget-object v1, Lcom/miui/gallery/provider/GalleryProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/provider/cache/MediaManager;->load(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 62
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 145
    sget-object v6, Lcom/miui/gallery/provider/GalleryProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v6}, Lcom/miui/gallery/provider/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 146
    .local v13, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v49, 0x0

    .line 148
    .local v49, "cursor":Landroid/database/Cursor;
    sget-object v6, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v57

    .line 149
    .local v57, "matchResult":I
    const/16 v28, 0x0

    .line 150
    .local v28, "removeDuplicateItems":Z
    const/16 v52, 0x0

    .line 152
    .local v52, "generateHeaders":Z
    const/4 v12, 0x0

    .line 153
    .local v12, "bundle":Landroid/os/Bundle;
    packed-switch v57, :pswitch_data_0

    .line 356
    :pswitch_0
    invoke-super/range {p0 .. p5}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 359
    .end local v52    # "generateHeaders":Z
    .local v37, "generateHeaders":Z
    :goto_0
    if-eqz v49, :cond_0

    .line 360
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v57

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/GalleryProvider;->registerNotifyUri(Landroid/database/Cursor;I)V

    :cond_0
    move-object/from16 v50, v49

    .line 362
    .end local v49    # "cursor":Landroid/database/Cursor;
    .local v50, "cursor":Landroid/database/Cursor;
    :goto_1
    return-object v50

    .line 156
    .end local v37    # "generateHeaders":Z
    .end local v50    # "cursor":Landroid/database/Cursor;
    .restart local v49    # "cursor":Landroid/database/Cursor;
    .restart local v52    # "generateHeaders":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v6}, Lcom/miui/gallery/provider/cache/MediaManager;->ensureMinimumPartDone()V

    .line 157
    const-string v6, "remove_duplicate_items"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v28

    .line 158
    const-string v6, "generate_headers"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v37

    .line 159
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    const-string v6, "remove_processing_items"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v59

    .line 160
    .local v59, "removeProcessingItems":Z
    new-instance v12, Landroid/os/Bundle;

    .end local v12    # "bundle":Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 161
    .restart local v12    # "bundle":Landroid/os/Bundle;
    const-string v6, "extra_generate_header"

    move/from16 v0, v37

    invoke-virtual {v12, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    if-eqz v59, :cond_1

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/miui/gallery/provider/GalleryProvider;->buildNonProcessingSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 165
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    if-eqz v28, :cond_5

    const-string v11, "sha1"

    :goto_2
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v6 .. v12}, Lcom/miui/gallery/provider/cache/MediaManager;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v49

    .line 167
    if-eqz v49, :cond_2

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v57

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/GalleryProvider;->registerNotifyUri(Landroid/database/Cursor;I)V

    .line 172
    :cond_2
    const/16 v6, 0x41

    move/from16 v0, v57

    if-ne v0, v6, :cond_4

    .line 173
    const-string v10, "sha1"

    move-object v6, v13

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    invoke-static/range {v6 .. v11}, Lcom/miui/gallery/provider/ShareMediaManager;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v61

    .line 174
    .local v61, "shareMediaCursor":Landroid/database/Cursor;
    if-eqz v61, :cond_3

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move/from16 v2, v57

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/GalleryProvider;->registerNotifyUri(Landroid/database/Cursor;I)V

    .line 177
    :cond_3
    new-instance v50, Landroid/database/MergeCursor;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/database/Cursor;

    const/4 v7, 0x0

    aput-object v49, v6, v7

    const/4 v7, 0x1

    aput-object v61, v6, v7

    move-object/from16 v0, v50

    invoke-direct {v0, v6}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v49    # "cursor":Landroid/database/Cursor;
    .restart local v50    # "cursor":Landroid/database/Cursor;
    move-object/from16 v49, v50

    .end local v50    # "cursor":Landroid/database/Cursor;
    .end local v61    # "shareMediaCursor":Landroid/database/Cursor;
    .restart local v49    # "cursor":Landroid/database/Cursor;
    :cond_4
    move-object/from16 v50, v49

    .line 179
    .end local v49    # "cursor":Landroid/database/Cursor;
    .restart local v50    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_1

    .line 165
    .end local v50    # "cursor":Landroid/database/Cursor;
    .restart local v49    # "cursor":Landroid/database/Cursor;
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 181
    .end local v37    # "generateHeaders":Z
    .end local v59    # "removeProcessingItems":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_2
    const-string v6, "remove_duplicate_items"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v28

    .line 182
    const-string v6, "generate_headers"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v37

    .line 183
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    const-string v6, "remove_processing_items"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v59

    .line 184
    .restart local v59    # "removeProcessingItems":Z
    new-instance v12, Landroid/os/Bundle;

    .end local v12    # "bundle":Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 185
    .restart local v12    # "bundle":Landroid/os/Bundle;
    const-string v6, "extra_generate_header"

    move/from16 v0, v37

    invoke-virtual {v12, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    if-eqz v59, :cond_6

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/miui/gallery/provider/GalleryProvider;->buildNonProcessingSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 189
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    if-eqz v28, :cond_7

    const-string v11, "sha1"

    :goto_3
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v6 .. v12}, Lcom/miui/gallery/provider/cache/MediaManager;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v49

    .line 190
    goto/16 :goto_0

    .line 189
    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 192
    .end local v37    # "generateHeaders":Z
    .end local v59    # "removeProcessingItems":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_3
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/ShareAlbumManager;->getOriginalAlbumId(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v56

    .line 193
    .local v56, "localId":Ljava/lang/String;
    const-string v6, "remove_duplicate_items"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v28

    .line 194
    const-string v6, "localGroupId = %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v56, v7, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->parseSelection(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v28, :cond_8

    const-string v10, "sha1"

    :goto_4
    move-object v6, v13

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    invoke-static/range {v6 .. v11}, Lcom/miui/gallery/provider/ShareMediaManager;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 197
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 194
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    .line 199
    .end local v56    # "localId":Ljava/lang/String;
    :pswitch_4
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v56

    .line 200
    .restart local v56    # "localId":Ljava/lang/String;
    const-string v14, "cloud"

    const-string v6, "_id = %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v56, v7, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->parseSelection(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v15, p2

    move-object/from16 v17, p4

    move-object/from16 v20, p5

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 203
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 205
    .end local v37    # "generateHeaders":Z
    .end local v56    # "localId":Ljava/lang/String;
    .restart local v52    # "generateHeaders":Z
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v56

    .restart local v56    # "localId":Ljava/lang/String;
    move/from16 v37, v52

    .line 207
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 209
    .end local v37    # "generateHeaders":Z
    .end local v56    # "localId":Ljava/lang/String;
    .restart local v52    # "generateHeaders":Z
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getDistinct(Landroid/net/Uri;)Z

    move-result v14

    const-string v15, "shareImage"

    .line 210
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getGroupBy(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getHaving(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v21, p5

    .line 209
    invoke-virtual/range {v13 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 211
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 213
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v56

    .line 214
    .restart local v56    # "localId":Ljava/lang/String;
    const-string v14, "shareImage"

    const-string v6, "_id = %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v56, v7, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->parseSelection(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v15, p2

    move-object/from16 v17, p4

    move-object/from16 v20, p5

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 217
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 220
    .end local v37    # "generateHeaders":Z
    .end local v56    # "localId":Ljava/lang/String;
    .restart local v52    # "generateHeaders":Z
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v56

    .restart local v56    # "localId":Ljava/lang/String;
    move/from16 v37, v52

    .line 221
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 223
    .end local v37    # "generateHeaders":Z
    .end local v56    # "localId":Ljava/lang/String;
    .restart local v52    # "generateHeaders":Z
    :pswitch_9
    const-string v6, "join_video"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v20

    .line 224
    .local v20, "joinVideo":Z
    const-string v6, "join_face"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v21

    .line 225
    .local v21, "joinFace":Z
    const-string v6, "join_share"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v22

    .line 226
    .local v22, "joinShare":Z
    const-string v6, "join_pano"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v23

    .line 227
    .local v23, "joinPano":Z
    const-string v6, "join_recent"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v24

    .line 228
    .local v24, "joinRecent":Z
    const-string v6, "join_favorites"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v25

    .line 229
    .local v25, "joinFavorites":Z
    const-string v6, "exclude_empty_album"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v26

    .line 230
    .local v26, "excludeEmptyAlbum":Z
    const-string v6, "all_except_deleted"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v27

    .line 231
    .local v27, "queryAllExistAlbum":Z
    const-string v6, "media_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 232
    .local v58, "mediaTypeString":Ljava/lang/String;
    if-nez v58, :cond_9

    const/16 v29, 0x0

    .line 233
    .local v29, "mediaType":Ljava/lang/Integer;
    :goto_5
    const-string v6, "remove_duplicate_items"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v28

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object v15, v13

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-static/range {v14 .. v29}, Lcom/miui/gallery/provider/AlbumManager;->query(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZLjava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 238
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 232
    .end local v29    # "mediaType":Ljava/lang/Integer;
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :cond_9
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    goto :goto_5

    .line 240
    .end local v20    # "joinVideo":Z
    .end local v21    # "joinFace":Z
    .end local v22    # "joinShare":Z
    .end local v23    # "joinPano":Z
    .end local v24    # "joinRecent":Z
    .end local v25    # "joinFavorites":Z
    .end local v26    # "excludeEmptyAlbum":Z
    .end local v27    # "queryAllExistAlbum":Z
    .end local v58    # "mediaTypeString":Ljava/lang/String;
    :pswitch_a
    invoke-static {}, Lcom/miui/gallery/provider/FaceManager;->buildPersonsQuery()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 241
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 243
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_b
    invoke-static {}, Lcom/miui/gallery/provider/FaceManager;->buildIgnorePersonsQuery()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 244
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 246
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_c
    const/4 v6, 0x0

    aget-object v6, p4, v6

    const/4 v7, 0x1

    aget-object v7, p4, v7

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2, v6, v7}, Lcom/miui/gallery/provider/FaceManager;->buildOnePersonQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 247
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 249
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_d
    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/miui/gallery/provider/FaceManager;->buildOnePersonItemQuery([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 250
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 252
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_e
    const/4 v6, 0x0

    aget-object v6, p4, v6

    const/4 v7, 0x1

    aget-object v7, p4, v7

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2, v6, v7}, Lcom/miui/gallery/provider/FaceManager;->buildPersonsItemQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 253
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 255
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_f
    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/provider/FaceManager;->buildRecommendFacesOfOnePersonQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 256
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 258
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getDistinct(Landroid/net/Uri;)Z

    move-result v31

    const-string v32, "cloud"

    .line 259
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getGroupBy(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getHaving(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v30, v13

    move-object/from16 v33, p2

    move-object/from16 v34, p3

    move-object/from16 v35, p4

    move-object/from16 v38, p5

    .line 258
    invoke-virtual/range {v30 .. v39}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 260
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 262
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_11
    const-string v31, "peopleFace"

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getGroupBy(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getHaving(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v30, v13

    move-object/from16 v32, p2

    move-object/from16 v33, p3

    move-object/from16 v34, p4

    move-object/from16 v37, p5

    invoke-virtual/range {v30 .. v38}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 263
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 265
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v13

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v6 .. v11}, Lcom/miui/gallery/provider/ShareAlbumManager;->query(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 266
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 268
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_13
    const-string v31, "shareAlbum"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v30, v13

    move-object/from16 v32, p2

    move-object/from16 v33, p3

    move-object/from16 v34, p4

    move-object/from16 v37, p5

    invoke-virtual/range {v30 .. v37}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 269
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 271
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_14
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getDistinct(Landroid/net/Uri;)Z

    move-result v31

    const-string v32, "shareUser"

    .line 272
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getGroupBy(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getHaving(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v30, v13

    move-object/from16 v33, p2

    move-object/from16 v34, p3

    move-object/from16 v35, p4

    move-object/from16 v38, p5

    .line 271
    invoke-virtual/range {v30 .. v39}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 273
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 275
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_15
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getDistinct(Landroid/net/Uri;)Z

    move-result v31

    const-string v32, "cloudUser"

    .line 276
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getGroupBy(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getHaving(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v30, v13

    move-object/from16 v33, p2

    move-object/from16 v34, p3

    move-object/from16 v35, p4

    move-object/from16 v38, p5

    .line 275
    invoke-virtual/range {v30 .. v39}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 277
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 279
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_16
    invoke-static {v13}, Lcom/miui/gallery/provider/AlbumManager;->queryFaceAlbumCover(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 280
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 282
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_17
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getDistinct(Landroid/net/Uri;)Z

    move-result v31

    const-string v32, "discoveryMessage"

    .line 283
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getGroupBy(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getHaving(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v30, v13

    move-object/from16 v33, p2

    move-object/from16 v34, p3

    move-object/from16 v35, p4

    move-object/from16 v38, p5

    .line 282
    invoke-virtual/range {v30 .. v39}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 284
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 286
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_18
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v56

    .line 287
    .restart local v56    # "localId":Ljava/lang/String;
    const-string v31, "discoveryMessage"

    const-string v6, "_id = %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v56, v7, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->parseSelection(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v30, v13

    move-object/from16 v32, p2

    move-object/from16 v34, p4

    move-object/from16 v37, p5

    invoke-virtual/range {v30 .. v37}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 290
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 292
    .end local v37    # "generateHeaders":Z
    .end local v56    # "localId":Ljava/lang/String;
    .restart local v52    # "generateHeaders":Z
    :pswitch_19
    const-string v6, "remove_duplicate_items"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v28

    .line 293
    const-string v6, "generate_headers"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v37

    .line 294
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    const-string v6, "remove_processing_items"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v59

    .line 295
    .restart local v59    # "removeProcessingItems":Z
    if-eqz v59, :cond_a

    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/miui/gallery/provider/GalleryProvider;->buildNonProcessingSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 298
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getGroupBy(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v30, v13

    move-object/from16 v31, p2

    move-object/from16 v32, p3

    move-object/from16 v33, p4

    move-object/from16 v35, p5

    move/from16 v36, v28

    invoke-static/range {v30 .. v37}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object v49

    .line 299
    goto/16 :goto_0

    .line 301
    .end local v37    # "generateHeaders":Z
    .end local v59    # "removeProcessingItems":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_1a
    const-string v6, "remove_duplicate_items"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v28

    .line 304
    :try_start_0
    const-string v6, "album_cover_count"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v48

    .line 309
    .local v48, "coverCount":I
    :goto_6
    move/from16 v0, v48

    move/from16 v1, v28

    invoke-static {v13, v0, v1}, Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->queryAlbumCover(Landroid/database/sqlite/SQLiteDatabase;IZ)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 310
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 305
    .end local v37    # "generateHeaders":Z
    .end local v48    # "coverCount":I
    .restart local v52    # "generateHeaders":Z
    :catch_0
    move-exception v51

    .line 306
    .local v51, "e":Ljava/lang/NumberFormatException;
    const-string v6, "GalleryProvider"

    invoke-virtual/range {v51 .. v51}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/16 v48, 0x1

    .restart local v48    # "coverCount":I
    goto :goto_6

    .line 312
    .end local v48    # "coverCount":I
    .end local v51    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1b
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getDistinct(Landroid/net/Uri;)Z

    move-result v39

    const-string v40, "cloudControl"

    .line 313
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getGroupBy(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v44

    .line 314
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getHaving(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v38, v13

    move-object/from16 v41, p2

    move-object/from16 v42, p3

    move-object/from16 v43, p4

    move-object/from16 v46, p5

    .line 312
    invoke-virtual/range {v38 .. v47}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 315
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 317
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_1c
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v56

    .line 318
    .restart local v56    # "localId":Ljava/lang/String;
    const-string v39, "cloudControl"

    const-string v6, "_id = %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v56, v7, v8

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->parseSelection(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v38, v13

    move-object/from16 v40, p2

    move-object/from16 v42, p4

    move-object/from16 v45, p5

    .line 318
    invoke-virtual/range {v38 .. v45}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 321
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 323
    .end local v37    # "generateHeaders":Z
    .end local v56    # "localId":Ljava/lang/String;
    .restart local v52    # "generateHeaders":Z
    :pswitch_1d
    const-string v6, "serverId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 324
    .local v60, "serverId":Ljava/lang/String;
    const-string v6, "_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 325
    .local v54, "id":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v60

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/provider/FaceManager;->buildPeopleCoverQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 327
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 329
    .end local v37    # "generateHeaders":Z
    .end local v54    # "id":Ljava/lang/String;
    .end local v60    # "serverId":Ljava/lang/String;
    .restart local v52    # "generateHeaders":Z
    :pswitch_1e
    const-string v6, "serverId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 330
    .restart local v60    # "serverId":Ljava/lang/String;
    const-string v6, "image_server_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 331
    .local v55, "imageServerId":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v60

    move-object/from16 v2, v55

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/provider/FaceManager;->buildImageFaceQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 333
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 335
    .end local v37    # "generateHeaders":Z
    .end local v55    # "imageServerId":Ljava/lang/String;
    .end local v60    # "serverId":Ljava/lang/String;
    .restart local v52    # "generateHeaders":Z
    :pswitch_1f
    invoke-static {}, Lcom/miui/gallery/provider/FaceManager;->buildPeopleTagQuery()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 337
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 339
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_20
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getDistinct(Landroid/net/Uri;)Z

    move-result v39

    const-string v40, "favorites"

    .line 340
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getGroupBy(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v44

    .line 341
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getHaving(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v38, v13

    move-object/from16 v41, p2

    move-object/from16 v42, p3

    move-object/from16 v43, p4

    move-object/from16 v46, p5

    .line 339
    invoke-virtual/range {v38 .. v47}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 343
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 345
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_21
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getDistinct(Landroid/net/Uri;)Z

    move-result v39

    const-string v40, "extended_cloud"

    .line 346
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getGroupBy(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v44

    .line 347
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getHaving(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v38, v13

    move-object/from16 v41, p2

    move-object/from16 v42, p3

    move-object/from16 v43, p4

    move-object/from16 v46, p5

    .line 345
    invoke-virtual/range {v38 .. v47}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 349
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 351
    .end local v37    # "generateHeaders":Z
    .restart local v52    # "generateHeaders":Z
    :pswitch_22
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/UriUtil;->getGroupBy(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v53

    .line 352
    .local v53, "groupBy":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v53

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/picker/helper/PickerSqlHelper;->buildPickerResultQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/GalleryProvider;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    move/from16 v37, v52

    .line 354
    .end local v52    # "generateHeaders":Z
    .restart local v37    # "generateHeaders":Z
    goto/16 :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_a
        :pswitch_c
        :pswitch_10
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_f
        :pswitch_11
        :pswitch_3
        :pswitch_1
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_d
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_b
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_e
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 549
    sget-object v9, Lcom/miui/gallery/provider/GalleryProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 550
    .local v4, "matchResult":I
    invoke-direct {p0, v4}, Lcom/miui/gallery/provider/GalleryProvider;->isBlockedByMediaManager(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v9}, Lcom/miui/gallery/provider/cache/MediaManager;->initialized()Z

    move-result v9

    if-nez v9, :cond_0

    .line 629
    :goto_0
    return v8

    .line 554
    :cond_0
    sget-object v9, Lcom/miui/gallery/provider/GalleryProvider;->sDBHelper:Lcom/miui/gallery/provider/GalleryDBHelper;

    invoke-virtual {v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 555
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 556
    .local v0, "count":I
    packed-switch v4, :pswitch_data_0

    .line 618
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 621
    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 625
    invoke-direct {p0, v4, p2}, Lcom/miui/gallery/provider/GalleryProvider;->needNotifyUpdate(ILandroid/content/ContentValues;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 626
    invoke-direct {p0, p1, v10, p2}, Lcom/miui/gallery/provider/GalleryProvider;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Landroid/content/ContentValues;)V

    :cond_2
    move v8, v0

    .line 629
    goto :goto_0

    .line 558
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 559
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    if-ne v8, v2, :cond_3

    const-string/jumbo v8, "sync_status"

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 560
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "only support key: sync_status"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 563
    :cond_4
    invoke-virtual {p0, p3, p4}, Lcom/miui/gallery/provider/GalleryProvider;->genIDSelection(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 564
    .local v5, "selectById":Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v8, v5, v10, p2}, Lcom/miui/gallery/provider/cache/MediaManager;->update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 566
    goto :goto_1

    .line 569
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "selectById":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0, p2, v8}, Lcom/miui/gallery/provider/GalleryProvider;->appendValuesForCloud(Landroid/content/ContentValues;Z)Landroid/content/ContentValues;

    .line 570
    invoke-virtual {p0, p3, p4}, Lcom/miui/gallery/provider/GalleryProvider;->genIDSelection(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 571
    .restart local v5    # "selectById":Ljava/lang/String;
    const-string v8, "attributes"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 572
    const-string v8, "cloud"

    invoke-virtual {p0, v1, v8, v5, p2}, Lcom/miui/gallery/provider/GalleryProvider;->updateAttributes(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 574
    :cond_5
    iget-object v8, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v8, v5, v10, p2}, Lcom/miui/gallery/provider/cache/MediaManager;->update(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 575
    const-string v8, "cloud"

    invoke-virtual {v1, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 577
    goto :goto_1

    .line 579
    .end local v5    # "selectById":Ljava/lang/String;
    :pswitch_3
    const-string v8, "shareAlbum"

    invoke-virtual {v1, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 580
    goto :goto_1

    .line 582
    :pswitch_4
    const-string v9, "shareImage"

    invoke-virtual {p0, p2, v8}, Lcom/miui/gallery/provider/GalleryProvider;->appendValuesForCloud(Landroid/content/ContentValues;Z)Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v1, v9, v8, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 583
    goto :goto_1

    .line 585
    :pswitch_5
    const-string v8, "peopleFace"

    invoke-virtual {v1, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 586
    goto :goto_1

    .line 589
    :pswitch_6
    const-string v8, "shareUser"

    invoke-virtual {v1, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 590
    goto :goto_1

    .line 593
    :pswitch_7
    const-string v8, "cloudUser"

    invoke-virtual {v1, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 594
    goto :goto_1

    .line 597
    :pswitch_8
    const-string v8, "discoveryMessage"

    invoke-virtual {v1, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 598
    goto :goto_1

    .line 601
    :pswitch_9
    const-string v8, "cloudControl"

    invoke-virtual {v1, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 602
    goto/16 :goto_1

    .line 604
    :pswitch_a
    const-string v9, "favorites"

    invoke-virtual {v1, v9, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 605
    if-lez v0, :cond_1

    const-string v9, "isFavorite"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 606
    const-string v9, "isFavorite"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_6

    .line 607
    .local v2, "isFavorite":Z
    :goto_2
    invoke-direct {p0, p3, p4, v8}, Lcom/miui/gallery/provider/GalleryProvider;->getSha1ListFromFavorites(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v7

    .line 608
    .local v7, "sha1List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 609
    .local v6, "sha1":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 610
    iget-object v9, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v9, v6}, Lcom/miui/gallery/provider/cache/MediaManager;->insertToFavorites(Ljava/lang/String;)V

    goto :goto_3

    .end local v2    # "isFavorite":Z
    .end local v6    # "sha1":Ljava/lang/String;
    .end local v7    # "sha1List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    move v2, v8

    .line 606
    goto :goto_2

    .line 612
    .restart local v2    # "isFavorite":Z
    .restart local v6    # "sha1":Ljava/lang/String;
    .restart local v7    # "sha1List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    iget-object v9, p0, Lcom/miui/gallery/provider/GalleryProvider;->mMediaManager:Lcom/miui/gallery/provider/cache/MediaManager;

    invoke-virtual {v9, v6}, Lcom/miui/gallery/provider/cache/MediaManager;->removeFromFavorites(Ljava/lang/String;)V

    goto :goto_3

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method
