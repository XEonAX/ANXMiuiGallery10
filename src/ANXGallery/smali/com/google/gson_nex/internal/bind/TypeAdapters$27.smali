.class final Lcom/google/gson_nex/internal/bind/TypeAdapters$27;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/google/gson_nex/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson_nex/internal/bind/TypeAdapters;->newFactory(Lcom/google/gson_nex/reflect/TypeToken;Lcom/google/gson_nex/TypeAdapter;)Lcom/google/gson_nex/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcom/google/gson_nex/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/google/gson_nex/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/google/gson_nex/reflect/TypeToken;Lcom/google/gson_nex/TypeAdapter;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lcom/google/gson_nex/internal/bind/TypeAdapters$27;->val$type:Lcom/google/gson_nex/reflect/TypeToken;

    iput-object p2, p0, Lcom/google/gson_nex/internal/bind/TypeAdapters$27;->val$typeAdapter:Lcom/google/gson_nex/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson_nex/Gson;Lcom/google/gson_nex/reflect/TypeToken;)Lcom/google/gson_nex/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson_nex/Gson;",
            "Lcom/google/gson_nex/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson_nex/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/gson_nex/internal/bind/TypeAdapters$27;->val$type:Lcom/google/gson_nex/reflect/TypeToken;

    invoke-virtual {p2, v0}, Lcom/google/gson_nex/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gson_nex/internal/bind/TypeAdapters$27;->val$typeAdapter:Lcom/google/gson_nex/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
