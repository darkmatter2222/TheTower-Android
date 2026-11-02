.class public Lcom/google/crypto/tink/signature/SlhDsaPublicKey;
.super Lcom/google/crypto/tink/signature/SignaturePublicKey;
.source "SlhDsaPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;
    }
.end annotation


# static fields
.field private static final SLH_DSA_SHA2_128S_PUBLIC_KEY_BYTES:I = 0x20


# instance fields
.field private final idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field private final parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

.field private final serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/signature/SlhDsaParameters;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
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

    .line 42
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignaturePublicKey;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    .line 44
    iput-object p2, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    .line 45
    iput-object p3, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 46
    iput-object p4, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/signature/SlhDsaParameters;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/signature/SlhDsaPublicKey$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;-><init>(Lcom/google/crypto/tink/signature/SlhDsaParameters;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;
    .locals 2

    .line 139
    new-instance v0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey$Builder;-><init>(Lcom/google/crypto/tink/signature/SlhDsaPublicKey$1;)V

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

    .line 169
    instance-of v0, p1, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 172
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;

    .line 173
    iget-object v0, p1, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/signature/SlhDsaParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    .line 174
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/Bytes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->idRequirement:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->idRequirement:Ljava/lang/Integer;

    .line 175
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

    .line 164
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/SlhDsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/signature/SignatureParameters;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/SlhDsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/signature/SlhDsaParameters;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->parameters:Lcom/google/crypto/tink/signature/SlhDsaParameters;

    return-object v0
.end method

.method public getSerializedPublicKey()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/crypto/tink/signature/SlhDsaPublicKey;->serializedPublicKey:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method
