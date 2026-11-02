.class public final Lcom/google/crypto/tink/signature/MlDsaParameters;
.super Lcom/google/crypto/tink/signature/SignatureParameters;
.source "MlDsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;,
        Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;
    }
.end annotation


# instance fields
.field private final mlDsaInstance:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

.field private final variant:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mlDsaInstance",
            "variant"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignatureParameters;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->mlDsaInstance:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    .line 81
    iput-object p2, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->variant:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;)Lcom/google/crypto/tink/signature/MlDsaParameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mlDsaInstance",
            "variant"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/google/crypto/tink/signature/MlDsaParameters;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/signature/MlDsaParameters;-><init>(Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;)V

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

    .line 94
    instance-of v0, p1, Lcom/google/crypto/tink/signature/MlDsaParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 97
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/signature/MlDsaParameters;

    .line 98
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getMlDsaInstance()Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getMlDsaInstance()Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getMlDsaInstance()Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->mlDsaInstance:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    return-object v0
.end method

.method public getVariant()Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->variant:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->variant:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->mlDsaInstance:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->variant:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    const-class v2, Lcom/google/crypto/tink/signature/MlDsaParameters;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ML-DSA Parameters (ML-DSA instance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->mlDsaInstance:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->variant:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
