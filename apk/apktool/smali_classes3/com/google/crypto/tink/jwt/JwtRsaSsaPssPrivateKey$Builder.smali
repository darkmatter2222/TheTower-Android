.class public Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;
.super Ljava/lang/Object;
.source "JwtRsaSsaPssPrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private d:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/crypto/tink/util/SecretBigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private dP:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/crypto/tink/util/SecretBigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private dQ:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/crypto/tink/util/SecretBigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/crypto/tink/util/SecretBigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private publicKey:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/crypto/tink/util/SecretBigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private qInv:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/crypto/tink/util/SecretBigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->publicKey:Ljava/util/Optional;

    .line 40
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->d:Ljava/util/Optional;

    .line 41
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->p:Ljava/util/Optional;

    .line 42
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->q:Ljava/util/Optional;

    .line 43
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->dP:Ljava/util/Optional;

    .line 44
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->dQ:Ljava/util/Optional;

    .line 45
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->qInv:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->publicKey:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->p:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->q:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->d:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->dP:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->dQ:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->qInv:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->builder()Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->publicKey:Ljava/util/Optional;

    .line 134
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->getRsaSsaPssPublicKey()Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->p:Ljava/util/Optional;

    .line 135
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->q:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->setPrimes(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->d:Ljava/util/Optional;

    .line 136
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->setPrivateExponent(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->dP:Ljava/util/Optional;

    .line 137
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->dQ:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->setPrimeExponents(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->qInv:Ljava/util/Optional;

    .line 138
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->setCrtCoefficient(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->publicKey:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$1;)V

    return-object v1

    .line 130
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without CRT coefficient"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without prime exponents"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without private exponent"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without prime factors"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without a RSA SSA PSS public key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCrtCoefficient(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qInv"
        }
    .end annotation

    .line 110
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->qInv:Ljava/util/Optional;

    return-object p0
.end method

.method public setPrimeExponents(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dP",
            "dQ"
        }
    .end annotation

    .line 96
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->dP:Ljava/util/Optional;

    .line 97
    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->dQ:Ljava/util/Optional;

    return-object p0
.end method

.method public setPrimes(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    .line 69
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->p:Ljava/util/Optional;

    .line 70
    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->q:Ljava/util/Optional;

    return-object p0
.end method

.method public setPrivateExponent(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 83
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->d:Ljava/util/Optional;

    return-object p0
.end method

.method public setPublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .line 56
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->publicKey:Ljava/util/Optional;

    return-object p0
.end method
