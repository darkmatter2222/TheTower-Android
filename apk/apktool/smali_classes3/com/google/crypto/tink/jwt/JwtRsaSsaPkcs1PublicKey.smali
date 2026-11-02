.class public final Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;
.super Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;
.source "JwtRsaSsaPkcs1PublicKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;
    }
.end annotation


# instance fields
.field private final idRequirement:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final kid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

.field private final rsaSsaPkcs1PublicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "rsaSsaPkcs1PublicKey",
            "idRequirement",
            "kid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;",
            "Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    .line 165
    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->rsaSsaPkcs1PublicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    .line 166
    iput-object p3, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->idRequirement:Ljava/util/Optional;

    .line 167
    iput-object p4, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->kid:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 37
    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->toRsaSsaPkcs1PublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;
    .locals 2

    .line 176
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$1;)V

    return-object v0
.end method

.method private static getHashType(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    return-object p0

    .line 48
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS384:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    sget-object p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA384:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    return-object p0

    .line 51
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS512:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    sget-object p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    return-object p0

    .line 54
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toRsaSsaPkcs1PublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "modulus"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getModulusSizeBits()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getHashType(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 65
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object p0

    .line 67
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;->setParameters(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;->setModulus(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    move-result-object p0

    return-object p0
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

    .line 217
    instance-of v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 220
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    .line 221
    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->rsaSsaPkcs1PublicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->rsaSsaPkcs1PublicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    .line 222
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->kid:Ljava/util/Optional;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->kid:Ljava/util/Optional;

    .line 223
    invoke-virtual {v0, v2}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->idRequirement:Ljava/util/Optional;

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->idRequirement:Ljava/util/Optional;

    .line 224
    invoke-virtual {p1, v0}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->idRequirement:Ljava/util/Optional;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getKid()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->kid:Ljava/util/Optional;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->rsaSsaPkcs1PublicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/jwt/JwtSignatureParameters;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method

.method getRsaSsaPkcs1PublicKey()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->rsaSsaPkcs1PublicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    return-object v0
.end method
