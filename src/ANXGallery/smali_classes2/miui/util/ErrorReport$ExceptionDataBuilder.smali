.class Lmiui/util/ErrorReport$ExceptionDataBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/ErrorReport$DataBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ErrorReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExceptionDataBuilder"
.end annotation


# instance fields
.field private Ja:Landroid/content/Context;

.field private Jb:Ljava/lang/String;

.field private Jd:Landroid/app/ApplicationErrorReport$CrashInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 4

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p1, p0, Lmiui/util/ErrorReport$ExceptionDataBuilder;->Ja:Landroid/content/Context;

    .line 378
    iput-object p2, p0, Lmiui/util/ErrorReport$ExceptionDataBuilder;->Jb:Ljava/lang/String;

    .line 379
    iput-object p3, p0, Lmiui/util/ErrorReport$ExceptionDataBuilder;->Jd:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 380
    return-void
.end method


# virtual methods
.method public ds()Lorg/json/JSONObject;
    .registers 4

    .line 384
    iget-object v0, p0, Lmiui/util/ErrorReport$ExceptionDataBuilder;->Ja:Landroid/content/Context;

    iget-object v1, p0, Lmiui/util/ErrorReport$ExceptionDataBuilder;->Jb:Ljava/lang/String;

    iget-object v2, p0, Lmiui/util/ErrorReport$ExceptionDataBuilder;->Jd:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-static {v0, v1, v2}, Lmiui/util/ErrorReport;->getExceptionData(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
