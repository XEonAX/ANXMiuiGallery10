.class public Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;
.super Lcom/miui/internal/variable/AbsClassFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static final s:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private kq:Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory$1;

    invoke-direct {v0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory$1;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;->s:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/miui/internal/variable/AbsClassFactory;-><init>()V

    .line 35
    new-instance v0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;

    invoke-direct {v0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;->kq:Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$1;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;
    .registers 1

    .line 39
    sget-object v0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;->s:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;->kq:Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;->get()Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;

    move-result-object v0

    return-object v0
.end method
