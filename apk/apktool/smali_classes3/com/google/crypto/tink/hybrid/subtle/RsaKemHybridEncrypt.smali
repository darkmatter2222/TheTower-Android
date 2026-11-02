.class public final Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;
.super Ljava/lang/Object;
.source "RsaKemHybridEncrypt.java"

# interfaces
.implements Lcom/google/crypto/tink/HybridEncrypt;


# instance fields
.field private final aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

.field private final hkdfHmacAlgo:Ljava/lang/String;

.field private final hkdfSalt:[B

.field private final recipientPublicKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;[BLcom/google/crypto/tink/aead/subtle/AeadFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x0
        }
        names = {
            "recipientPublicKey",
            "hkdfHmacAlgo",
            "hkdfSalt",
            "aeadFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->validateRsaModulus(Ljava/math/BigInteger;)V

    .line 47
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->recipientPublicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 48
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->hkdfHmacAlgo:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->hkdfSalt:[B

    .line 50
    iput-object p4, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

    return-void
.end method


# virtual methods
.method public encrypt([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "contextInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->recipientPublicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->generateSecret(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->recipientPublicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->rsaEncrypt(Ljava/security/PublicKey;[B)[B

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->hkdfHmacAlgo:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->hkdfSalt:[B

    iget-object v4, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

    .line 66
    invoke-interface {v4}, Lcom/google/crypto/tink/aead/subtle/AeadFactory;->getKeySizeInBytes()I

    move-result v4

    .line 65
    invoke-static {v2, v0, v3, p2, v4}, Lcom/google/crypto/tink/subtle/Hkdf;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object p2

    .line 68
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

    invoke-interface {v0, p2}, Lcom/google/crypto/tink/aead/subtle/AeadFactory;->createAead([B)Lcom/google/crypto/tink/Aead;

    move-result-object p2

    .line 69
    sget-object v0, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->EMPTY_AAD:[B

    invoke-interface {p2, p1, v0}, Lcom/google/crypto/tink/Aead;->encrypt([B[B)[B

    move-result-object p1

    .line 70
    array-length p2, v1

    array-length v0, p1

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
