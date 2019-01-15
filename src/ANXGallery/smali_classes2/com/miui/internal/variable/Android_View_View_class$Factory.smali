.class public Lcom/miui/internal/variable/Android_View_View_class$Factory;
.super Lcom/miui/internal/variable/AbsClassFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_View_View_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_View_View_class$Factory$Holder;
    }
.end annotation


# instance fields
.field private kD:Lcom/miui/internal/variable/Android_View_View_class;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 172
    invoke-direct {p0}, Lcom/miui/internal/variable/AbsClassFactory;-><init>()V

    .line 173
    const-string v0, "Android_View_View_class"

    .line 174
    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_View_View_class;

    iput-object v0, p0, Lcom/miui/internal/variable/Android_View_View_class$Factory;->kD:Lcom/miui/internal/variable/Android_View_View_class;

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/variable/Android_View_View_class$1;)V
    .registers 2

    .line 164
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;
    .registers 1

    .line 178
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class$Factory$Holder;->kE:Lcom/miui/internal/variable/Android_View_View_class$Factory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/miui/internal/variable/Android_View_View_class;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/miui/internal/variable/Android_View_View_class$Factory;->kD:Lcom/miui/internal/variable/Android_View_View_class;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 164
    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    return-object v0
.end method
