.class public Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;
.super Lcom/miui/internal/variable/AbsClassFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory$Holder;
    }
.end annotation


# instance fields
.field private kk:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/miui/internal/variable/AbsClassFactory;-><init>()V

    .line 41
    const-string v0, "Android_Graphics_Drawable_Drawable_class"

    .line 42
    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    iput-object v0, p0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->kk:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$1;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;
    .registers 1

    .line 46
    sget-object v0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory$Holder;->kl:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->kk:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    return-object v0
.end method
