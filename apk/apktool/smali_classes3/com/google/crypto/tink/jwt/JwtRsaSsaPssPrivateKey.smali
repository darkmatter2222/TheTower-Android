.class public final Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;
.super Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;
.source "JwtRsaSsaPssPrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;
    }
.end annotation


# instance fields
.field private final publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

.field private final rsaSsaPssPrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "rsaSsaPssPrivateKey"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    .line 147
    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->rsaSsaPssPrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;
    .locals 2

    .line 156
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$1;)V

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
    instance-of v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 222
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;

    .line 223
    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->rsaSsaPssPrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->rsaSsaPssPrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    .line 224
    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

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
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->rsaSsaPssPrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->getCrtCoefficient()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/jwt/JwtSignatureParameters;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeExponentP()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->rsaSsaPssPrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->getPrimeExponentP()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeExponentQ()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->rsaSsaPssPrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->getPrimeExponentQ()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeP()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->rsaSsaPssPrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->getPrimeP()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeQ()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->rsaSsaPssPrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->getPrimeQ()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateExponent()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->rsaSsaPssPrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->getPrivateExponent()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/Key;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    move-result-object v0

    return-object v0
.end method

.method getRsaSsaPssPrivateKey()Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->rsaSsaPssPrivateKey:Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    return-object v0
.end method
