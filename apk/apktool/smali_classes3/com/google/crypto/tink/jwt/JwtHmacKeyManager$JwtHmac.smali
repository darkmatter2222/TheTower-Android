.class final Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;
.super Ljava/lang/Object;
.source "JwtHmacKeyManager.java"

# interfaces
.implements Lcom/google/crypto/tink/jwt/JwtMac;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JwtHmac"
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final jwtHmacKey:Lcom/google/crypto/tink/jwt/JwtHmacKey;

.field private final mac:Lcom/google/crypto/tink/Mac;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/Mac;Lcom/google/crypto/tink/jwt/JwtHmacKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "plainMac",
            "jwtHmacKey"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p2}, Lcom/google/crypto/tink/jwt/JwtHmacKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->getStandardName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;->algorithm:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;->mac:Lcom/google/crypto/tink/Mac;

    .line 65
    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;->jwtHmacKey:Lcom/google/crypto/tink/jwt/JwtHmacKey;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/Mac;Lcom/google/crypto/tink/jwt/JwtHmacKey;Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;-><init>(Lcom/google/crypto/tink/Mac;Lcom/google/crypto/tink/jwt/JwtHmacKey;)V

    return-void
.end method


# virtual methods
.method public computeMacAndEncode(Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawJwt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;->jwtHmacKey:Lcom/google/crypto/tink/jwt/JwtHmacKey;

    .line 71
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtHmacKey;->getKid()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/jwt/JwtFormat;->createUnsignedCompact(Ljava/lang/String;Ljava/util/Optional;Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;->mac:Lcom/google/crypto/tink/Mac;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/Mac;->computeMac([B)[B

    move-result-object v0

    .line 72
    invoke-static {p1, v0}, Lcom/google/crypto/tink/jwt/JwtFormat;->createSignedCompact(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public verifyMacAndDecode(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;)Lcom/google/crypto/tink/jwt/VerifiedJwt;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compact",
            "validator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 79
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JwtFormat;->splitSignedCompact(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/JwtFormat$Parts;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;->mac:Lcom/google/crypto/tink/Mac;

    iget-object v1, p1, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->signatureOrMac:[B

    iget-object v2, p1, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->unsignedCompact:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/crypto/tink/Mac;->verifyMac([B[B)V

    .line 81
    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->header:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/jwt/internal/JsonUtil;->parseJson(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;->jwtHmacKey:Lcom/google/crypto/tink/jwt/JwtHmacKey;

    .line 84
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtHmacKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->getStandardName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;->jwtHmacKey:Lcom/google/crypto/tink/jwt/JwtHmacKey;

    .line 85
    invoke-virtual {v2}, Lcom/google/crypto/tink/jwt/JwtHmacKey;->getKid()Ljava/util/Optional;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;->jwtHmacKey:Lcom/google/crypto/tink/jwt/JwtHmacKey;

    .line 86
    invoke-virtual {v3}, Lcom/google/crypto/tink/jwt/JwtHmacKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->allowKidAbsent()Z

    move-result v3

    .line 82
    invoke-static {v0, v1, v2, v3}, Lcom/google/crypto/tink/jwt/JwtFormat;->validateHeader(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/util/Optional;Z)V

    .line 87
    invoke-static {v0}, Lcom/google/crypto/tink/jwt/JwtFormat;->getTypeHeader(Lcom/google/gson/JsonObject;)Ljava/util/Optional;

    move-result-object v0

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;->payload:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/jwt/RawJwt;->fromJsonPayload(Ljava/util/Optional;Ljava/lang/String;)Lcom/google/crypto/tink/jwt/RawJwt;

    move-result-object p1

    .line 88
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/jwt/JwtValidator;->validate(Lcom/google/crypto/tink/jwt/RawJwt;)Lcom/google/crypto/tink/jwt/VerifiedJwt;

    move-result-object p1

    return-object p1
.end method
