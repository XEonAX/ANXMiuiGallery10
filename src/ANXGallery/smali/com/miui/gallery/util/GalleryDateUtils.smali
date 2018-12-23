.class public Lcom/miui/gallery/util/GalleryDateUtils;
.super Ljava/lang/Object;
.source "GalleryDateUtils.java"


# static fields
.field private static final CALENDAR_POOL:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static sDateCache:Lmiui/util/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/cache/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLocalLanguage:Ljava/lang/String;

.field private static sToday:Ljava/lang/String;

.field private static sYesterday:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/miui/gallery/util/GalleryDateUtils$1;

    invoke-direct {v0}, Lcom/miui/gallery/util/GalleryDateUtils$1;-><init>()V

    const/4 v1, 0x1

    .line 22
    invoke-static {v0, v1}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/GalleryDateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    .line 61
    new-instance v0, Lmiui/util/cache/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lmiui/util/cache/LruCache;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/util/GalleryDateUtils;->sDateCache:Lmiui/util/cache/LruCache;

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/GalleryDateUtils;->sLocalLanguage:Ljava/lang/String;

    return-void
.end method

.method public static acquire()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/miui/gallery/util/GalleryDateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0
.end method

.method private static clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/miui/gallery/util/GalleryDateUtils;->sToday:Ljava/lang/String;

    .line 67
    sput-object v0, Lcom/miui/gallery/util/GalleryDateUtils;->sYesterday:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/miui/gallery/util/GalleryDateUtils;->sDateCache:Lmiui/util/cache/LruCache;

    invoke-virtual {v0}, Lmiui/util/cache/LruCache;->clear()V

    .line 69
    return-void
.end method

.method public static daysBeforeToday(J)J
    .locals 12
    .param p0, "past"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 143
    .local v2, "current":J
    cmp-long v1, p0, v2

    if-ltz v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-wide v4

    .line 144
    :cond_1
    invoke-static {}, Lcom/miui/gallery/util/GalleryDateUtils;->acquire()Ljava/util/Calendar;

    move-result-object v0

    .line 145
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 146
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 147
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 148
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 149
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 150
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 151
    .local v6, "startOfTodayMillis":J
    cmp-long v1, v6, p0

    if-lez v1, :cond_0

    .line 152
    invoke-static {p0, p1, v6, v7}, Lcom/miui/gallery/util/GalleryDateUtils;->daysBetween(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long v4, v8, v10

    .line 153
    .local v4, "ret":J
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryDateUtils;->release(Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method public static daysBetween(JJ)J
    .locals 4
    .param p0, "start"    # J
    .param p2, "end"    # J

    .prologue
    .line 138
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v2, p2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static format(J)I
    .locals 4
    .param p0, "timeInMillis"    # J

    .prologue
    .line 39
    invoke-static {}, Lcom/miui/gallery/util/GalleryDateUtils;->acquire()Ljava/util/Calendar;

    move-result-object v0

    .line 40
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 41
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 42
    .local v1, "date":I
    shl-int/lit8 v1, v1, 0x4

    .line 43
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    .line 44
    shl-int/lit8 v1, v1, 0x5

    .line 45
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    or-int/2addr v1, v2

    .line 46
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryDateUtils;->release(Ljava/util/Calendar;)V

    .line 47
    return v1
.end method

.method public static format(I)J
    .locals 5
    .param p0, "date"    # I

    .prologue
    .line 51
    invoke-static {}, Lcom/miui/gallery/util/GalleryDateUtils;->acquire()Ljava/util/Calendar;

    move-result-object v0

    .line 52
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x5

    shr-int/lit8 v4, p0, 0x5

    shl-int/lit8 v4, v4, 0x5

    sub-int v4, p0, v4

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 53
    shr-int/lit8 p0, p0, 0x5

    .line 54
    const/4 v1, 0x2

    shr-int/lit8 v4, p0, 0x4

    shl-int/lit8 v4, v4, 0x4

    sub-int v4, p0, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 55
    const/4 v1, 0x1

    shr-int/lit8 v4, p0, 0x4

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 56
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 57
    .local v2, "ret":J
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryDateUtils;->release(Ljava/util/Calendar;)V

    .line 58
    return-wide v2
.end method

.method public static formatRelativeDate(J)Ljava/lang/String;
    .locals 14
    .param p0, "time"    # J

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "cacheDate":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "nowLanguage":Ljava/lang/String;
    sget-object v11, Lcom/miui/gallery/util/GalleryDateUtils;->sLocalLanguage:Ljava/lang/String;

    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 98
    sget-object v11, Lcom/miui/gallery/util/GalleryDateUtils;->sDateCache:Lmiui/util/cache/LruCache;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lmiui/util/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cacheDate":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 103
    .restart local v0    # "cacheDate":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 134
    .end local v0    # "cacheDate":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 100
    .restart local v0    # "cacheDate":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/GalleryDateUtils;->clearCache()V

    .line 101
    sput-object v6, Lcom/miui/gallery/util/GalleryDateUtils;->sLocalLanguage:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v11

    invoke-interface {v11}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/StringBuilder;

    .line 107
    .local v10, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v11, Lcom/miui/gallery/util/GalleryDateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v11}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 109
    .local v1, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 111
    .local v4, "now":J
    const/16 v2, 0x1000

    .line 112
    .local v2, "flags":I
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 113
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 114
    .local v7, "nowYear":I
    const/4 v11, 0x6

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 116
    .local v3, "nowDayOfYear":I
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 117
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v7, v11, :cond_2

    const/4 v9, 0x1

    .line 118
    .local v9, "sameYear":Z
    :goto_2
    if-eqz v9, :cond_3

    const/4 v11, 0x6

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v3, v11, :cond_3

    .line 119
    invoke-static {}, Lcom/miui/gallery/util/GalleryDateUtils;->getTodayTip()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :goto_3
    sget-object v11, Lcom/miui/gallery/util/GalleryDateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v11, v1}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, "result":Ljava/lang/String;
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v11

    invoke-interface {v11, v10}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 133
    sget-object v11, Lcom/miui/gallery/util/GalleryDateUtils;->sDateCache:Lmiui/util/cache/LruCache;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v8, v13}, Lmiui/util/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v0, v8

    .line 134
    goto :goto_1

    .line 117
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "sameYear":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 120
    .restart local v9    # "sameYear":Z
    :cond_3
    if-eqz v9, :cond_4

    const/4 v11, 0x6

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    sub-int/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_4

    cmp-long v11, p0, v4

    if-gez v11, :cond_4

    .line 121
    invoke-static {}, Lcom/miui/gallery/util/GalleryDateUtils;->getYesterdayTip()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 122
    :cond_4
    if-eqz v9, :cond_5

    .line 123
    or-int/lit16 v2, v2, 0x180

    .line 124
    invoke-static {v10, p0, p1, v2}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JI)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 126
    :cond_5
    or-int/lit16 v2, v2, 0x380

    .line 127
    invoke-static {v10, p0, p1, v2}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JI)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static getTodayTip()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/miui/gallery/util/GalleryDateUtils;->sToday:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e04d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/GalleryDateUtils;->sToday:Ljava/lang/String;

    .line 74
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/GalleryDateUtils;->sToday:Ljava/lang/String;

    return-object v0
.end method

.method private static getYesterdayTip()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/miui/gallery/util/GalleryDateUtils;->sYesterday:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e055e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/GalleryDateUtils;->sYesterday:Ljava/lang/String;

    .line 81
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/GalleryDateUtils;->sYesterday:Ljava/lang/String;

    return-object v0
.end method

.method public static isSameDate(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 6
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    if-ne p0, p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static release(Ljava/util/Calendar;)V
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 34
    sget-object v0, Lcom/miui/gallery/util/GalleryDateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v0, p0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 35
    return-void
.end method
