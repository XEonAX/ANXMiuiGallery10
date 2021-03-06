.class public Lorg/keyczar/DsaPrivateKey;
.super Lorg/keyczar/KeyczarKey;
.source "DsaPrivateKey.java"

# interfaces
.implements Lorg/keyczar/KeyczarPrivateKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/keyczar/DsaPrivateKey$DsaSigningStream;
    }
.end annotation


# static fields
.field private static final KEY_GEN_ALGORITHM:Ljava/lang/String; = "DSA"

.field private static final SIG_ALGORITHM:Ljava/lang/String; = "SHA1withDSA"


# instance fields
.field private jcePrivateKey:Ljava/security/interfaces/DSAPrivateKey;

.field private final publicKey:Lorg/keyczar/DsaPublicKey;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field

.field private final x:Ljava/lang/String;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;-><init>(I)V

    .line 78
    iput-object v1, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    .line 79
    iput-object v1, p0, Lorg/keyczar/DsaPrivateKey;->x:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/DSAPrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;-><init>(I)V

    .line 70
    new-instance v0, Lorg/keyczar/DsaPublicKey;

    invoke-direct {v0, p1}, Lorg/keyczar/DsaPublicKey;-><init>(Ljava/security/interfaces/DSAPrivateKey;)V

    iput-object v0, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    .line 71
    iput-object p1, p0, Lorg/keyczar/DsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/DSAPrivateKey;

    .line 72
    iget-object v0, p0, Lorg/keyczar/DsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/DsaPrivateKey;->x:Ljava/lang/String;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lorg/keyczar/DsaPrivateKey;)Lorg/keyczar/DsaPublicKey;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    return-object v0
.end method

.method static synthetic access$100(Lorg/keyczar/DsaPrivateKey;)Ljava/security/interfaces/DSAPrivateKey;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/keyczar/DsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/DSAPrivateKey;

    return-object v0
.end method

.method static generate()Lorg/keyczar/DsaPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lorg/keyczar/DefaultKeyType;->DSA_PRIV:Lorg/keyczar/DefaultKeyType;

    invoke-virtual {v0}, Lorg/keyczar/DefaultKeyType;->defaultSize()I

    move-result v0

    invoke-static {v0}, Lorg/keyczar/DsaPrivateKey;->generate(I)Lorg/keyczar/DsaPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method static generate(I)Lorg/keyczar/DsaPrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 59
    const-string v0, "DSA"

    invoke-static {v0, p0}, Lorg/keyczar/util/Util;->generateKeyPair(Ljava/lang/String;I)Ljava/security/KeyPair;

    move-result-object v0

    .line 60
    new-instance v1, Lorg/keyczar/DsaPrivateKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    invoke-direct {v1, v0}, Lorg/keyczar/DsaPrivateKey;-><init>(Ljava/security/interfaces/DSAPrivateKey;)V

    return-object v1
.end method

.method private initFromJson()Lorg/keyczar/DsaPrivateKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    invoke-virtual {v0}, Lorg/keyczar/DsaPublicKey;->initFromJson()V

    .line 112
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/keyczar/DsaPrivateKey;->x:Ljava/lang/String;

    invoke-static {v1}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 113
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    iget-object v2, v2, Lorg/keyczar/DsaPublicKey;->p:Ljava/lang/String;

    invoke-static {v2}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 114
    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    iget-object v3, v3, Lorg/keyczar/DsaPublicKey;->q:Ljava/lang/String;

    invoke-static {v3}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 115
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    iget-object v4, v4, Lorg/keyczar/DsaPublicKey;->g:Ljava/lang/String;

    invoke-static {v4}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 117
    :try_start_0
    const-string v4, "DSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 118
    new-instance v5, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v5, v0, v1, v2, v3}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 119
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    iput-object v0, p0, Lorg/keyczar/DsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/DSAPrivateKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-object p0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static read(Ljava/lang/String;)Lorg/keyczar/DsaPrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson_nex/Gson;

    move-result-object v0

    const-class v1, Lorg/keyczar/DsaPrivateKey;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/DsaPrivateKey;

    .line 65
    invoke-direct {v0}, Lorg/keyczar/DsaPrivateKey;->initFromJson()Lorg/keyczar/DsaPrivateKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic getJceKey()Ljava/security/Key;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/keyczar/DsaPrivateKey;->getJceKey()Ljava/security/interfaces/DSAPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method protected getJceKey()Ljava/security/interfaces/DSAPrivateKey;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/keyczar/DsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/DSAPrivateKey;

    return-object v0
.end method

.method public getKeyGenAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "DSA"

    return-object v0
.end method

.method public getPublic()Lorg/keyczar/KeyczarPublicKey;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/keyczar/DsaPrivateKey;->publicKey:Lorg/keyczar/DsaPublicKey;

    return-object v0
.end method

.method protected getStream()Lorg/keyczar/interfaces/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;

    invoke-direct {v0, p0}, Lorg/keyczar/DsaPrivateKey$DsaSigningStream;-><init>(Lorg/keyczar/DsaPrivateKey;)V

    return-object v0
.end method

.method public getType()Lorg/keyczar/interfaces/KeyType;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lorg/keyczar/DefaultKeyType;->DSA_PRIV:Lorg/keyczar/DefaultKeyType;

    return-object v0
.end method

.method protected hash()[B
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/keyczar/DsaPrivateKey;->getPublic()Lorg/keyczar/KeyczarPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/keyczar/KeyczarPublicKey;->hash()[B

    move-result-object v0

    return-object v0
.end method
