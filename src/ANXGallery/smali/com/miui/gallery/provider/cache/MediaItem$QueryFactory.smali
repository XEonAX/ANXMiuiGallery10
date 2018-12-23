.class public Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cache/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocationFilter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$AlbumServerIdFilter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$MineTypeFilter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$AliasCreateDateFilter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$ServerIdFilter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$ServerTagFilter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SyncStateFilter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$Sha1Filter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$ThumbnailFilter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFlagFilter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TypeFilter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$AlbumFilter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$IdFilter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SizeComparator;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleComparator;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TimeComparator;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SortTimeComparator;,
        Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$DateModifiedComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/provider/cache/CacheItem$QueryFactory",
        "<",
        "Lcom/miui/gallery/provider/cache/MediaItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLUMN_MAPPER:Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

.field private static IS_FAVORITE_FILTER:Lcom/miui/gallery/provider/cache/Filter$CompareFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/provider/cache/Filter$CompareFilter",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static NOT_HIDDEN_FILTER:Lcom/miui/gallery/provider/cache/Filter$CompareFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/provider/cache/Filter$CompareFilter",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHA1_MERGER:Lcom/miui/gallery/provider/cache/CacheItem$Merger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/provider/cache/CacheItem$Merger",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static SHOW_IN_HOMEPAGE_FILTER:Lcom/miui/gallery/provider/cache/Filter$CompareFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/provider/cache/Filter$CompareFilter",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 703
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$1;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;->SHA1_MERGER:Lcom/miui/gallery/provider/cache/CacheItem$Merger;

    .line 797
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$2;

    const/16 v1, 0x18

    invoke-direct {v0, v1, v2, v2}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$2;-><init>(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;->SHOW_IN_HOMEPAGE_FILTER:Lcom/miui/gallery/provider/cache/Filter$CompareFilter;

    .line 813
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$3;

    const/16 v1, 0x1b

    invoke-direct {v0, v1, v2, v2}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$3;-><init>(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;->NOT_HIDDEN_FILTER:Lcom/miui/gallery/provider/cache/Filter$CompareFilter;

    .line 829
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$4;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v2, v2}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$4;-><init>(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;->IS_FAVORITE_FILTER:Lcom/miui/gallery/provider/cache/Filter$CompareFilter;

    .line 1262
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$5;

    invoke-direct {v0}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$5;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;->COLUMN_MAPPER:Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1243
    return-void
.end method


# virtual methods
.method public getComparator(IZ)Ljava/util/Comparator;
    .locals 1
    .param p1, "index"    # I
    .param p2, "desc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 648
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TimeComparator;

    invoke-direct {v0, p2}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TimeComparator;-><init>(Z)V

    .line 658
    :goto_0
    return-object v0

    .line 649
    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 650
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleComparator;

    invoke-direct {v0, p2}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleComparator;-><init>(Z)V

    goto :goto_0

    .line 651
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 652
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SizeComparator;

    invoke-direct {v0, p2}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SizeComparator;-><init>(Z)V

    goto :goto_0

    .line 653
    :cond_2
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_3

    .line 654
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$DateModifiedComparator;

    invoke-direct {v0, p2}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$DateModifiedComparator;-><init>(Z)V

    goto :goto_0

    .line 655
    :cond_3
    const/16 v0, 0x24

    if-ne p1, v0, :cond_4

    .line 656
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SortTimeComparator;

    invoke-direct {v0, p2}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SortTimeComparator;-><init>(Z)V

    goto :goto_0

    .line 658
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter(ILcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)Lcom/miui/gallery/provider/cache/Filter$CompareFilter;
    .locals 1
    .param p1, "index"    # I
    .param p2, "comparator"    # Lcom/miui/gallery/provider/cache/Filter$Comparator;
    .param p3, "rawArguments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/miui/gallery/provider/cache/Filter$Comparator;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/provider/cache/Filter$CompareFilter",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    .line 664
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;->SHOW_IN_HOMEPAGE_FILTER:Lcom/miui/gallery/provider/cache/Filter$CompareFilter;

    .line 700
    :goto_0
    return-object v0

    .line 665
    :cond_0
    if-nez p1, :cond_1

    .line 666
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$IdFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$IdFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 668
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$AlbumFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$AlbumFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 670
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TypeFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TypeFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 672
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$Sha1Filter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$Sha1Filter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_4
    const/16 v0, 0x14

    if-ne p1, v0, :cond_5

    .line 674
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SyncStateFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$SyncStateFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 676
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$TitleFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_6
    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    .line 678
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFileFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 680
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$ThumbnailFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$ThumbnailFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto :goto_0

    .line 681
    :cond_8
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_9

    .line 682
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFlagFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocalFlagFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_9
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_a

    .line 684
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;->NOT_HIDDEN_FILTER:Lcom/miui/gallery/provider/cache/Filter$CompareFilter;

    goto :goto_0

    .line 685
    :cond_a
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_b

    .line 686
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$ServerTagFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$ServerTagFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :cond_b
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_c

    .line 688
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$ServerIdFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$ServerIdFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_c
    const/16 v0, 0x13

    if-ne p1, v0, :cond_d

    .line 690
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$AliasCreateDateFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$AliasCreateDateFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :cond_d
    const/16 v0, 0x21

    if-ne p1, v0, :cond_e

    .line 692
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;->IS_FAVORITE_FILTER:Lcom/miui/gallery/provider/cache/Filter$CompareFilter;

    goto :goto_0

    .line 693
    :cond_e
    const/16 v0, 0xb

    if-ne p1, v0, :cond_f

    .line 694
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$MineTypeFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$MineTypeFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 695
    :cond_f
    const/16 v0, 0x22

    if-ne p1, v0, :cond_10

    .line 696
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$AlbumServerIdFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$AlbumServerIdFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 697
    :cond_10
    const/16 v0, 0xc

    if-ne p1, v0, :cond_11

    .line 698
    new-instance v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocationFilter;

    invoke-direct {v0, p2, p3}, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory$LocationFilter;-><init>(Lcom/miui/gallery/provider/cache/Filter$Comparator;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 700
    :cond_11
    sget-object v0, Lcom/miui/gallery/provider/cache/Filter;->NOT_SUPPORTED_FILTER:Lcom/miui/gallery/provider/cache/Filter$CompareFilter;

    goto/16 :goto_0
.end method

.method public getMapper()Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;
    .locals 1

    .prologue
    .line 634
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;->COLUMN_MAPPER:Lcom/miui/gallery/provider/cache/CacheItem$ColumnMapper;

    return-object v0
.end method

.method public getMerger(I)Lcom/miui/gallery/provider/cache/CacheItem$Merger;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/miui/gallery/provider/cache/CacheItem$Merger",
            "<",
            "Lcom/miui/gallery/provider/cache/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 639
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 640
    sget-object v0, Lcom/miui/gallery/provider/cache/MediaItem$QueryFactory;->SHA1_MERGER:Lcom/miui/gallery/provider/cache/CacheItem$Merger;

    .line 642
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
