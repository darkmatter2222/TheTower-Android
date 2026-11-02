.class public final Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;
.super Ljava/lang/Object;
.source "HpkeEncrypt.java"

# interfaces
.implements Lcom/google/crypto/tink/HybridEncrypt;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final EMPTY_ASSOCIATED_DATA:[B


# instance fields
.field private final aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

.field private final kdf:Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

.field private final kem:Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

.field private final outputPrefix:[B

.field private final recipientPublicKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    new-array v0, v0, [B

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->EMPTY_ASSOCIATED_DATA:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;Lcom/google/crypto/tink/util/Bytes;)V
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
            "recipientPublicKey",
            "kem",
            "kdf",
            "aead",
            "outputPrefix"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->recipientPublicKey:[B

    .line 49
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->kem:Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

    .line 50
    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->kdf:Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

    .line 51
    iput-object p4, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    .line 52
    invoke-virtual {p5}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->outputPrefix:[B

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/hybrid/HpkePublicKey;)Lcom/google/crypto/tink/HybridEncrypt;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getParameters()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;

    .line 59
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getPublicKeyBytes()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v2

    .line 60
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/hybrid/internal/HpkePrimitiveFactory;->createKem(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

    move-result-object v3

    .line 61
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKdfId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    move-result-object v4

    invoke-static {v4}, Lcom/google/crypto/tink/hybrid/internal/HpkePrimitiveFactory;->createKdf(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

    move-result-object v4

    .line 62
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getAeadId()Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/internal/HpkePrimitiveFactory;->createAead(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    move-result-object v5

    .line 63
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;-><init>(Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;Lcom/google/crypto/tink/util/Bytes;)V

    return-object v1
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

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 71
    new-array p2, v0, [B

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->recipientPublicKey:[B

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->kem:Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->kdf:Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

    iget-object v4, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    invoke-static {v1, v2, v3, v4, p2}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->createSenderContext([BLcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;[B)Lcom/google/crypto/tink/hybrid/internal/HpkeContext;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->getEncapsulatedKey()[B

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->outputPrefix:[B

    array-length v2, v2

    array-length v3, v1

    add-int/2addr v2, v3

    .line 76
    sget-object v3, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->EMPTY_ASSOCIATED_DATA:[B

    invoke-virtual {p2, p1, v2, v3}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->seal([BI[B)[B

    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->outputPrefix:[B

    array-length v2, p2

    invoke-static {p2, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object p2, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->outputPrefix:[B

    array-length p2, p2

    array-length v2, v1

    invoke-static {v1, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
