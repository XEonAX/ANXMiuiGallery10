.class Lcom/miui/internal/variable/VariableExceptionHandler$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/VariableExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final kS:Lcom/miui/internal/variable/VariableExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/miui/internal/variable/VariableExceptionHandler;

    invoke-direct {v0}, Lcom/miui/internal/variable/VariableExceptionHandler;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/VariableExceptionHandler$Holder;->kS:Lcom/miui/internal/variable/VariableExceptionHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
