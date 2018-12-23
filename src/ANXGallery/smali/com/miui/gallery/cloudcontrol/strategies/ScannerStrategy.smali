.class public Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
.super Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
.source "ScannerStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;,
        Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;,
        Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFolder;,
        Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;
    }
.end annotation


# static fields
.field public static final CLOUD_FIRST_MERGER:Lcom/miui/gallery/cloudcontrol/Merger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/cloudcontrol/Merger",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFileSizeLimitStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "file_size_limit"
    .end annotation
.end field

.field private mSpecialTypeMediaStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "special_type_media"
    .end annotation
.end field

.field private mStreamFileStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream_file"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$1;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->CLOUD_FIRST_MERGER:Lcom/miui/gallery/cloudcontrol/Merger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;-><init>()V

    .line 157
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mStreamFileStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
    .param p1, "x1"    # Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mStreamFileStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mFileSizeLimitStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
    .param p1, "x1"    # Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mFileSizeLimitStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mSpecialTypeMediaStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
    .param p1, "x1"    # Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mSpecialTypeMediaStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    return-object p1
.end method

.method public static createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;-><init>()V

    .line 51
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mStreamFileStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    .line 52
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mFileSizeLimitStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    .line 53
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mSpecialTypeMediaStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    .line 54
    return-object v0
.end method


# virtual methods
.method public doAdditionalProcessing()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;->doAdditionalProcessing()V

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mStreamFileStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mStreamFileStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    invoke-static {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;->access$000(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mFileSizeLimitStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mFileSizeLimitStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->doAdditionalProcessing()V

    .line 47
    :cond_1
    return-void
.end method

.method public getFileSizeStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mFileSizeLimitStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mFileSizeLimitStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    move-result-object v0

    goto :goto_0
.end method

.method public getSpecialTypeMediaStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mSpecialTypeMediaStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mSpecialTypeMediaStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    move-result-object v0

    goto :goto_0
.end method

.method public getStreamFileStrategy()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mStreamFileStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->mStreamFileStrategy:Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;->createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    move-result-object v0

    goto :goto_0
.end method
