.class public final Lcom/google/crypto/tink/subtle/PrfAesCmac;
.super Ljava/lang/Object;
.source "PrfAesCmac.java"

# interfaces
.implements Lcom/google/crypto/tink/prf/Prf;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;
    }
.end annotation


# instance fields
.field private final prf:Lcom/google/crypto/tink/prf/Prf;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)V
    .locals 0
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/PrfAesCmac;->create(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac;->prf:Lcom/google/crypto/tink/prf/Prf;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

    .line 53
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/PrfAesCmac;->createAesCmacPrfKey([B)Lcom/google/crypto/tink/prf/AesCmacPrfKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/subtle/PrfAesCmac;-><init>(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)V

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;
    .locals 3
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

    .line 79
    invoke-static {p0}, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->create(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;

    move-result-object v0

    .line 81
    :try_start_0
    invoke-static {p0}, Lcom/google/crypto/tink/prf/internal/PrfAesCmacConscrypt;->create(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;

    move-result-object p0

    .line 85
    new-instance v1, Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/google/crypto/tink/subtle/PrfAesCmac$PrfImplementation;-><init>(Lcom/google/crypto/tink/prf/Prf;Lcom/google/crypto/tink/prf/Prf;Lcom/google/crypto/tink/subtle/PrfAesCmac$1;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private static createAesCmacPrfKey([B)Lcom/google/crypto/tink/prf/AesCmacPrfKey;
    .locals 2
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

    .line 39
    array-length v0, p0

    .line 41
    invoke-static {v0}, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->create(I)Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/crypto/tink/util/SecretBytes;->copyFrom([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    .line 40
    invoke-static {v0, p0}, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->create(Lcom/google/crypto/tink/prf/AesCmacPrfParameters;Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/prf/AesCmacPrfKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compute([BI)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "data",
            "outputLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/PrfAesCmac;->prf:Lcom/google/crypto/tink/prf/Prf;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    move-result-object p1

    return-object p1
.end method
