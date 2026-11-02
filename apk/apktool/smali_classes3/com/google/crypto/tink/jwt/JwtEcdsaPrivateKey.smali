.class public final Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;
.super Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;
.source "JwtEcdsaPrivateKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final ecdsaPrivateKey:Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

.field public final publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;Lcom/google/crypto/tink/signature/EcdsaPrivateKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "ecdsaPrivateKey"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    .line 55
    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->ecdsaPrivateKey:Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "privateValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->builder()Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getEcdsaPublicKey()Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/signature/EcdsaPublicKey;)Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->setPrivateValue(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->build()Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    move-result-object p1

    .line 50
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;-><init>(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;Lcom/google/crypto/tink/signature/EcdsaPrivateKey;)V

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

    .line 80
    instance-of v0, p1, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;

    .line 84
    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->ecdsaPrivateKey:Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->ecdsaPrivateKey:Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method getEcdsaPrivateKey()Lcom/google/crypto/tink/signature/EcdsaPrivateKey;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->ecdsaPrivateKey:Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/jwt/JwtSignatureParameters;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateValue()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->ecdsaPrivateKey:Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->getPrivateValue()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/Key;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    move-result-object v0

    return-object v0
.end method
