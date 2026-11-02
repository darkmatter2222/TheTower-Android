.class public Lcom/google/crypto/tink/signature/MlDsaPrivateKey;
.super Lcom/google/crypto/tink/signature/SignaturePrivateKey;
.source "MlDsaPrivateKey.java"


# static fields
.field private static final MLDSA_SEED_BYTES:I = 0x20


# instance fields
.field private final privateSeed:Lcom/google/crypto/tink/util/SecretBytes;

.field private final publicKey:Lcom/google/crypto/tink/signature/MlDsaPublicKey;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/signature/MlDsaPublicKey;Lcom/google/crypto/tink/util/SecretBytes;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "privateSeed"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignaturePrivateKey;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    .line 38
    iput-object p2, p0, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->privateSeed:Lcom/google/crypto/tink/util/SecretBytes;

    return-void
.end method

.method public static createWithoutVerification(Lcom/google/crypto/tink/signature/MlDsaPublicKey;Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/signature/MlDsaPrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mlDsaPublicKey",
            "privateSeed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/MlDsaParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getMlDsaInstance()Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;->ML_DSA_65:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    if-ne v0, v1, :cond_0

    .line 66
    new-instance v0, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;-><init>(Lcom/google/crypto/tink/signature/MlDsaPublicKey;Lcom/google/crypto/tink/util/SecretBytes;)V

    return-object v0

    .line 54
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Unknown ML-DSA instance; only ML-DSA-65 is currently supported"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Incorrect private seed size for ML-DSA"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 80
    instance-of v0, p1, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;

    .line 84
    iget-object v0, p1, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->privateSeed:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object p1, p1, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->privateSeed:Lcom/google/crypto/tink/util/SecretBytes;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/util/SecretBytes;->equalsSecretBytes(Lcom/google/crypto/tink/util/SecretBytes;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/MlDsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/signature/MlDsaParameters;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/MlDsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/MlDsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/signature/SignatureParameters;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/MlDsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateSeed()Lcom/google/crypto/tink/util/SecretBytes;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->privateSeed:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/Key;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/signature/MlDsaPublicKey;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/signature/SignaturePublicKey;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/MlDsaPublicKey;

    move-result-object v0

    return-object v0
.end method
