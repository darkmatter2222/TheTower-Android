.class public Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;
.super Ljava/lang/Object;
.source "SlhDsaPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/SlhDsaPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    .line 52
    iput-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    .line 53
    iput-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/signature/SlhDsaPublicKey$1;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;-><init>()V

    return-void
.end method

.method private getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    if-ne v0, v1, :cond_0

    .line 78
    sget-object v0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown SlhDsaParameters.Variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    .line 84
    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/signature/SlhDsaPublicKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    if-eqz v0, :cond_9

    .line 91
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "IdRequirement must be null for variant NO_PREFIX"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 96
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Id requirement missing for parameters\' variant TINK"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    if-eqz v0, :cond_8

    .line 102
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getHashType()Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;->SHA2:Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    if-ne v0, v1, :cond_7

    .line 108
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getPrivateKeySize()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 114
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getSignatureType()Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;->SMALL_SIGNATURE:Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    if-ne v0, v1, :cond_5

    .line 120
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    invoke-virtual {v0}, Lcom/google/crypto/tink/util/Bytes;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 128
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v5

    .line 129
    new-instance v2, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;

    iget-object v3, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    iget-object v4, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    iget-object v6, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;-><init>(Lcom/google/crypto/tink/signature/SlhDsaParameters;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/signature/SlhDsaPublicKey$1;)V

    return-object v2

    .line 121
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect public key size for SLH-DSA-SHA2-128S: should be 32, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    .line 125
    invoke-virtual {v2}, Lcom/google/crypto/tink/util/Bytes;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown SLH-DSA signature type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    .line 117
    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getSignatureType()Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; only \"S\" (SMALL_SIGNATURE) is currently supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown SLH-DSA private key size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    .line 111
    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getPrivateKeySize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; only security level 128 (private key size 64) is currently supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown SLH-DSA hash type option "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    .line 105
    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getHashType()Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; only SHA2 is currently supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without public key bytes"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idRequirement"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-object p0
.end method

.method public setParameters(Lcom/google/crypto/tink/signature/SlhDsaParameters;)Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    return-object p0
.end method

.method public setSerializedPublicKey(Lcom/google/crypto/tink/util/Bytes;)Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedPublicKey"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    return-object p0
.end method
