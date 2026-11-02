.class public final Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;
.super Ljava/lang/Object;
.source "AuthHpkeHelperForAndroidKeystore.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final EMPTY_ASSOCIATED_DATA:[B


# instance fields
.field private final aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

.field private final kdf:Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

.field private final kem:Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

.field private final ourPublicKeyByteArray:[B

.field private final theirPublicKeyByteArray:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [B

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->EMPTY_ASSOCIATED_DATA:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "kem",
            "kdf",
            "aead",
            "ourPublicKeyByteArray",
            "theirPublicKeyByteArray"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->kem:Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

    .line 60
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->kdf:Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

    .line 61
    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    .line 62
    iput-object p4, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->ourPublicKeyByteArray:[B

    .line 63
    iput-object p5, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->theirPublicKeyByteArray:[B

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/hybrid/HpkePublicKey;Lcom/google/crypto/tink/hybrid/HpkePublicKey;)Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ourPublicKey",
            "theirPublicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getParameters()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getParameters()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getParameters()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->validateParameters(Lcom/google/crypto/tink/hybrid/HpkeParameters;)V

    .line 83
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/hybrid/internal/HpkePrimitiveFactory;->createKem(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

    move-result-object v3

    .line 84
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKdfId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/hybrid/internal/HpkePrimitiveFactory;->createKdf(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

    move-result-object v4

    .line 85
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getAeadId()Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/internal/HpkePrimitiveFactory;->createAead(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    move-result-object v5

    .line 86
    new-instance v2, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;

    .line 90
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getPublicKeyBytes()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v6

    .line 91
    invoke-virtual {p1}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getPublicKeyBytes()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;-><init>(Lcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;[B[B)V

    return-object v2

    .line 78
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ourPublicKey.getParameters() must be equal to theirPublicKey.getParameters()"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 96
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKdfId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getAeadId()Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_128_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getAeadId()Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_256_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AuthHpkeHelperForAndroidKeystore currently only supports AeadId.AES_128_GCM and AeadId.AES_256_GCM."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getVariant()Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 111
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AuthHpkeHelperForAndroidKeystore currently only supports Variant.NO_PREFIX"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AuthHpkeHelperForAndroidKeystore currently only supports KdfId.HKDF_SHA256."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AuthHpkeHelperForAndroidKeystore currently only supports KemId.DHKEM_P256_HKDF_SHA256."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public decryptAuthenticatedWithEncapsulatedKeyAndP256SharedSecret([B[B[B[BI[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "encapsulatedKey",
            "dhSharedSecret1",
            "dhSharedSecret2",
            "ciphertext",
            "ciphertextOffset",
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 132
    filled-new-array {p2, p3}, [[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p2

    .line 133
    sget-object p3, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P256:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    .line 134
    invoke-static {p3}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->fromCurve(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;

    move-result-object p3

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->ourPublicKeyByteArray:[B

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->theirPublicKeyByteArray:[B

    .line 135
    invoke-virtual {p3, p2, p1, v0, v1}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->deriveKemSharedSecret([B[B[B[B)[B

    move-result-object v4

    .line 137
    sget-object v2, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->AUTH_MODE:[B

    iget-object v5, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->kem:Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

    iget-object v6, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->kdf:Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

    iget-object v7, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    move-object v3, p1

    move-object v8, p6

    .line 138
    invoke-static/range {v2 .. v8}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->createContext([B[B[BLcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;[B)Lcom/google/crypto/tink/hybrid/internal/HpkeContext;

    move-result-object p1

    .line 140
    sget-object p2, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->EMPTY_ASSOCIATED_DATA:[B

    invoke-virtual {p1, p4, p5, p2}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->open([BI[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encryptAuthenticatedWithEncapsulatedKeyAndP256SharedSecret(Ljava/security/spec/ECPoint;[B[B[B[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "emphemeralPublicKey",
            "dhSharedSecret1",
            "dhSharedSecret2",
            "plaintext",
            "contextInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P256:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    sget-object v1, Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;->UNCOMPRESSED:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    .line 160
    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->pointEncode(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;Ljava/security/spec/ECPoint;)[B

    move-result-object v3

    .line 162
    filled-new-array {p2, p3}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    .line 163
    sget-object p2, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P256:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    .line 164
    invoke-static {p2}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->fromCurve(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;

    move-result-object p2

    iget-object p3, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->theirPublicKeyByteArray:[B

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->ourPublicKeyByteArray:[B

    .line 165
    invoke-virtual {p2, p1, v3, p3, v0}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->deriveKemSharedSecret([B[B[B[B)[B

    move-result-object v4

    .line 170
    sget-object v2, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->AUTH_MODE:[B

    iget-object v5, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->kem:Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

    iget-object v6, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->kdf:Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

    iget-object v7, p0, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    move-object v8, p5

    .line 171
    invoke-static/range {v2 .. v8}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->createContext([B[B[BLcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;[B)Lcom/google/crypto/tink/hybrid/internal/HpkeContext;

    move-result-object p1

    .line 179
    sget-object p2, Lcom/google/crypto/tink/hybrid/internal/AuthHpkeHelperForAndroidKeystore;->EMPTY_ASSOCIATED_DATA:[B

    .line 180
    invoke-virtual {p1, p4, p2}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->seal([B[B)[B

    move-result-object p1

    filled-new-array {v3, p1}, [[B

    move-result-object p1

    .line 179
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method
