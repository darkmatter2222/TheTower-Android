.class public final Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;
.super Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;
.source "JwtRsaSsaPkcs1PrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;
    }
.end annotation


# instance fields
.field private final publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

.field private final rsaSsaPkcs1PrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "rsaSsaPkcs1PrivateKey"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    .line 147
    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->rsaSsaPkcs1PrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;
    .locals 2

    .line 156
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$1;)V

    return-object v0
.end method


# virtual methods
.method public equalsKey(Lcom/google/crypto/tink/Key;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 219
    instance-of v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 222
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;

    .line 223
    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->rsaSsaPkcs1PrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->rsaSsaPkcs1PrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    .line 224
    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getCrtCoefficient()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->rsaSsaPkcs1PrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->getCrtCoefficient()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/jwt/JwtSignatureParameters;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeExponentP()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->rsaSsaPkcs1PrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->getPrimeExponentP()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeExponentQ()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->rsaSsaPkcs1PrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->getPrimeExponentQ()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeP()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->rsaSsaPkcs1PrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->getPrimeP()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeQ()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->rsaSsaPkcs1PrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->getPrimeQ()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateExponent()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->rsaSsaPkcs1PrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->getPrivateExponent()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/Key;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    move-result-object v0

    return-object v0
.end method

.method getRsaSsaPkcs1PrivateKey()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->rsaSsaPkcs1PrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    return-object v0
.end method
