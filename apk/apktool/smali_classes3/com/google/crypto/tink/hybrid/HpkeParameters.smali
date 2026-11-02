.class public final Lcom/google/crypto/tink/hybrid/HpkeParameters;
.super Lcom/google/crypto/tink/hybrid/HybridParameters;
.source "HpkeParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;,
        Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;,
        Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;,
        Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;,
        Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;,
        Lcom/google/crypto/tink/hybrid/HpkeParameters$AlgorithmIdentifier;
    }
.end annotation


# instance fields
.field private final aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

.field private final kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

.field private final kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

.field private final variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)V
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
            "variant"
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/HybridParameters;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 180
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 181
    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 182
    iput-object p4, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;Lcom/google/crypto/tink/hybrid/HpkeParameters$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/hybrid/HpkeParameters;-><init>(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;
    .locals 2

    .line 186
    new-instance v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;-><init>(Lcom/google/crypto/tink/hybrid/HpkeParameters$1;)V

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

    .line 212
    instance-of v0, p1, Lcom/google/crypto/tink/hybrid/HpkeParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 215
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/hybrid/HpkeParameters;

    .line 216
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    iget-object v2, p1, Lcom/google/crypto/tink/hybrid/HpkeParameters;->kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    iget-object v2, p1, Lcom/google/crypto/tink/hybrid/HpkeParameters;->kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    iget-object v2, p1, Lcom/google/crypto/tink/hybrid/HpkeParameters;->aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    iget-object p1, p1, Lcom/google/crypto/tink/hybrid/HpkeParameters;->variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getAeadId()Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    return-object v0
.end method

.method public getKdfId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    return-object v0
.end method

.method public getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    return-object v0
.end method

.method public getVariant()Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    const-class v4, Lcom/google/crypto/tink/hybrid/HpkeParameters;

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HPKE Parameters (Variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->variant:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", KemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->kem:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", KdfId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->kdf:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AeadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/HpkeParameters;->aead:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
