.class Landroid/support/v4/app/ActivityOptionsCompat24;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat24.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field private final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method private constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0
    .param p1, "activityOptions"    # Landroid/app/ActivityOptions;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat24;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 93
    return-void
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat24;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElements"    # [Landroid/view/View;
    .param p2, "sharedElementNames"    # [Ljava/lang/String;

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "pairs":[Landroid/util/Pair;
    if-eqz p1, :cond_0

    .line 65
    array-length v2, p1

    new-array v1, v2, [Landroid/util/Pair;

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 67
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Landroid/support/v4/app/ActivityOptionsCompat24;

    .line 71
    invoke-static {p0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/ActivityOptionsCompat24;-><init>(Landroid/app/ActivityOptions;)V

    return-object v2
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat24;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
