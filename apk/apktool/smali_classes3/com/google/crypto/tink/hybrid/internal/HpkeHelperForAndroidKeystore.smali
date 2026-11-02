.class public final Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;
.super Ljava/lang/Object;
.source "HpkeHelperForAndroidKeystore.java"


# static fields
.field private static final EMPTY_ASSOCIATED_DATA:[B


# instance fields
.field private final aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

.field private final kdf:Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

.field private final kem:Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

.field private final publicKeyByteArray:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [B

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;->EMPTY_ASSOCIATED_DATA:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "kem",
            "kdf",
            "aead",
            "publicKeyByteArray"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;->kem:Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

    .line 46
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;->kdf:Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

    .line 47
    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;->aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    .line 48
    iput-object p4, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;->publicKeyByteArray:[B

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/hybrid/HpkePublicKey;)Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiverPublicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getParameters()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;->validateParameters(Lcom/google/crypto/tink/hybrid/HpkeParameters;)V

    .line 64
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/hybrid/internal/HpkePrimitiveFactory;->createKem(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKdfId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/hybrid/internal/HpkePrimitiveFactory;->createKdf(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

    move-result-object v2

    .line 66
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getAeadId()Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/internal/HpkePrimitiveFactory;->createAead(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    move-result-object v0

    .line 67
    new-instance v3, Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;

    .line 68
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getPublicKeyBytes()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    invoke-direct {v3, v1, v2, v0, p0}, Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;-><init>(Lcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;[B)V

    return-object v3
.end method

.method private static validateParameters(Lcom/google/crypto/tink/hybrid/HpkeParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKdfId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getAeadId()Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_128_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getAeadId()Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_256_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "HpkeHelperForAndroidKeystore currently only supports AES_128_GCM and AES_256_GCM."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getVariant()Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 87
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "HpkeHelperForAndroidKeystore currently only supports Variant.NO_PREFIX"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "HpkeHelperForAndroidKeystore currently only supports HKDF_SHA256."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "HpkeHelperForAndroidKeystore currently only supports DHKEM_P256_HKDF_SHA256."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public decryptUnauthenticatedWithEncapsulatedKeyAndP256SharedSecret([B[B[BI[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "encapsulatedKey",
            "dhSharedSecret",
            "ciphertext",
            "ciphertextOffset",
            "contextInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-nez p5, :cond_0

    const/4 p5, 0x0

    .line 108
    new-array p5, p5, [B

    :cond_0
    move-object v6, p5

    .line 111
    sget-object p5, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P256:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    .line 112
    invoke-static {p5}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->fromCurve(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;

    move-result-object p5

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;->publicKeyByteArray:[B

    .line 113
    invoke-virtual {p5, p2, p1, v0}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->deriveKemSharedSecret([B[B[B)[B

    move-result-object v2

    .line 114
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->BASE_MODE:[B

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;->kem:Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

    iget-object v4, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;->kdf:Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

    iget-object v5, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;->aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    move-object v1, p1

    .line 115
    invoke-static/range {v0 .. v6}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->createContext([B[B[BLcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;[B)Lcom/google/crypto/tink/hybrid/internal/HpkeContext;

    move-result-object p1

    .line 117
    sget-object p2, Lcom/google/crypto/tink/hybrid/internal/HpkeHelperForAndroidKeystore;->EMPTY_ASSOCIATED_DATA:[B

    invoke-virtual {p1, p3, p4, p2}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->open([BI[B)[B

    move-result-object p1

    return-object p1
.end method
