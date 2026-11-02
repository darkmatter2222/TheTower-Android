.class public Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;
.super Ljava/lang/Object;
.source "MlDsaPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/MlDsaPublicKey;
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

.field private parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;
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

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;

    .line 56
    iput-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    .line 57
    iput-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/signature/MlDsaPublicKey$1;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;-><init>()V

    return-void
.end method

.method private getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    if-ne v0, v1, :cond_0

    .line 82
    sget-object v0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    if-ne v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown MlDsaParameters.Variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;

    .line 88
    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/signature/MlDsaPublicKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;

    if-eqz v0, :cond_7

    .line 95
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Id requirement present for parameters\' variant NO_PREFIX"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 100
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Id requirement missing for parameters\' variant TINK"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    if-eqz v0, :cond_6

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getMlDsaInstance()Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;->ML_DSA_65:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    if-ne v0, v1, :cond_5

    .line 110
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    invoke-virtual {v0}, Lcom/google/crypto/tink/util/Bytes;->size()I

    move-result v0

    const/16 v1, 0x7a0

    if-ne v0, v1, :cond_4

    .line 114
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v5

    .line 115
    new-instance v2, Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    iget-object v3, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;

    iget-object v4, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    iget-object v6, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;-><init>(Lcom/google/crypto/tink/signature/MlDsaParameters;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/signature/MlDsaPublicKey$1;)V

    return-object v2

    .line 111
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Incorrect public key size for ML-DSA-65"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Unknown ML-DSA instance; only ML-DSA-65 is currently supported"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without public key bytes"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;
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

    .line 75
    iput-object p1, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-object p0
.end method

.method public setParameters(Lcom/google/crypto/tink/signature/MlDsaParameters;)Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;

    return-object p0
.end method

.method public setSerializedPublicKey(Lcom/google/crypto/tink/util/Bytes;)Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedPublicKey"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    return-object p0
.end method
