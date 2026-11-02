.class public final Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;
.super Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;
.source "JwtRsaSsaPssPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;
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

.field private final parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

.field private final rsaSsaPssPublicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;Ljava/util/Optional;Ljava/util/Optional;)V
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
            "rsaSsaPssPublicKey",
            "idRequirement",
            "kid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;",
            "Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    .line 178
    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->rsaSsaPssPublicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    .line 179
    iput-object p3, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->idRequirement:Ljava/util/Optional;

    .line 180
    iput-object p4, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->kid:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;
    .locals 2

    .line 189
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$1;)V

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

    .line 230
    instance-of v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 233
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    .line 234
    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->rsaSsaPssPublicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->rsaSsaPssPublicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    .line 235
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->kid:Ljava/util/Optional;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->kid:Ljava/util/Optional;

    .line 236
    invoke-virtual {v0, v2}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->idRequirement:Ljava/util/Optional;

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->idRequirement:Ljava/util/Optional;

    .line 237
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

    .line 225
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->idRequirement:Ljava/util/Optional;

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

    .line 214
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->kid:Ljava/util/Optional;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->rsaSsaPssPublicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/jwt/JwtSignatureParameters;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method getRsaSsaPssPublicKey()Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->rsaSsaPssPublicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    return-object v0
.end method
