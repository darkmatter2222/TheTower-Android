.class public Lcom/google/crypto/tink/signature/SlhDsaParameters;
.super Lcom/google/crypto/tink/signature/SignatureParameters;
.source "SlhDsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;,
        Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;,
        Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;
    }
.end annotation


# static fields
.field public static final SLH_DSA_128_PRIVATE_KEY_SIZE_BYTES:I = 0x40


# instance fields
.field private final hashType:Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

.field private final privateKeySize:I

.field private final signatureType:Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

.field private final variant:Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;ILcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashType",
            "privateKeySizeBytes",
            "signatureType",
            "variant"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignatureParameters;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->hashType:Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    .line 104
    iput p2, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->privateKeySize:I

    .line 105
    iput-object p3, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->signatureType:Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    .line 106
    iput-object p4, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->variant:Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    return-void
.end method

.method public static createSlhDsaWithSha2And128S(Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;)Lcom/google/crypto/tink/signature/SlhDsaParameters;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/google/crypto/tink/signature/SlhDsaParameters;

    sget-object v1, Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;->SHA2:Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    const/16 v2, 0x40

    sget-object v3, Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;->SMALL_SIGNATURE:Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;-><init>(Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;ILcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 127
    instance-of v0, p1, Lcom/google/crypto/tink/signature/SlhDsaParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 130
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/signature/SlhDsaParameters;

    .line 131
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getHashType()Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getHashType()Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getSignatureType()Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getSignatureType()Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 133
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 134
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getPrivateKeySize()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->getPrivateKeySize()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getHashType()Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->hashType:Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    return-object v0
.end method

.method public getPrivateKeySize()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->privateKeySize:I

    return v0
.end method

.method public getSignatureType()Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->signatureType:Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    return-object v0
.end method

.method public getVariant()Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->variant:Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->variant:Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->hashType:Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    iget v1, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->privateKeySize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->signatureType:Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    iget-object v3, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->variant:Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    const-class v4, Lcom/google/crypto/tink/signature/SlhDsaParameters;

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SLH-DSA-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->hashType:Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;

    .line 150
    invoke-virtual {v1}, Lcom/google/crypto/tink/signature/SlhDsaParameters$HashType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->privateKeySize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->signatureType:Lcom/google/crypto/tink/signature/SlhDsaParameters$SignatureType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instance, variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/signature/SlhDsaParameters;->variant:Lcom/google/crypto/tink/signature/SlhDsaParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
