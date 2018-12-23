.class Lmiui/external/SdkEntranceHelper;
.super Ljava/lang/Object;
.source "SdkConstants.java"

# interfaces
.implements Lmiui/external/SdkConstants;


# static fields
.field private static final SDK_ENTRANCE_CLASS:Ljava/lang/String; = "miui.core.SdkManager"

.field private static final SDK_ENTRANCE_FALLBACK_CLASS:Ljava/lang/String; = "com.miui.internal.core.SdkManager"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSdkEntrance()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v1, "miui.core.SdkManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 46
    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    const-string v2, "com.miui.internal.core.SdkManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 44
    nop

    .line 45
    const-string v2, "miuisdk"

    const-string v3, "using legacy sdk"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-object v0

    .line 41
    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 42
    .local v2, "e1":Ljava/lang/ClassNotFoundException;
    const-string v3, "miuisdk"

    const-string v4, "no sdk found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    throw v2
.end method
