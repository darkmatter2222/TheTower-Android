.class public Lcom/google/crypto/tink/signature/MlDsaPublicKey;
.super Lcom/google/crypto/tink/signature/SignaturePublicKey;
.source "MlDsaPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;
    }
.end annotation


# static fields
.field private static final MLDSA65_PUBLIC_KEY_BYTES:I = 0x7a0


# instance fields
.field private final idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field private final parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;

.field private final serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/signature/MlDsaParameters;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
    .locals 0
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "serializedPublicKey",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignaturePublicKey;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;

    .line 48
    iput-object p2, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    .line 49
    iput-object p3, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 50
    iput-object p4, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/signature/MlDsaParameters;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/signature/MlDsaPublicKey$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;-><init>(Lcom/google/crypto/tink/signature/MlDsaParameters;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;
    .locals 2

    .line 125
    new-instance v0, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/MlDsaPublicKey$Builder;-><init>(Lcom/google/crypto/tink/signature/MlDsaPublicKey$1;)V

    return-object v0
.end method


# virtual methods
.method public equalsKey(Lcom/google/crypto/tink/Key;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 155
    instance-of v0, p1, Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 158
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    .line 159
    iget-object v0, p1, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/signature/MlDsaParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    .line 160
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/Bytes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->idRequirement:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->idRequirement:Ljava/lang/Integer;

    .line 161
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/MlDsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/signature/MlDsaParameters;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->parameters:Lcom/google/crypto/tink/signature/MlDsaParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/signature/SignatureParameters;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/MlDsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedPublicKey()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method
