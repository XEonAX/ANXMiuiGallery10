.class Lcom/miui/internal/util/DirectIndexedFileExtractor$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/util/DirectIndexedFileExtractor;->tryExtractDirectIndexedFiles(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic jk:[Ljava/lang/String;

.field final synthetic jl:Landroid/content/Context;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    .line 46
    iput-object p1, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->jk:[Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->jl:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    .line 49
    iget-object p1, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->jk:[Ljava/lang/String;

    const/4 v0, 0x0

    array-length v1, p1

    :goto_4
    if-ge v0, v1, :cond_18

    aget-object v2, p1, v0

    .line 50
    const-string v3, ".idf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 51
    iget-object v3, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->jl:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 54
    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 46
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
