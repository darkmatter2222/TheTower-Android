.class Lcom/google/crypto/tink/hybrid/HybridDecryptWrapper$WrappedHybridDecrypt;
.super Ljava/lang/Object;
.source "HybridDecryptWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/HybridDecrypt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/hybrid/HybridDecryptWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedHybridDecrypt"
.end annotation


# instance fields
.field private final allHybridDecrypts:Lcom/google/crypto/tink/internal/PrefixMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrefixMap<",
            "Lcom/google/crypto/tink/hybrid/HybridDecryptWrapper$HybridDecryptWithId;",
            ">;"
        }
    .end annotation
.end field

.field private final decLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/internal/PrefixMap;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "allHybridDecrypts",
            "decLogger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/internal/PrefixMap<",
            "Lcom/google/crypto/tink/hybrid/HybridDecryptWrapper$HybridDecryptWithId;",
            ">;",
            "Lcom/google/crypto/tink/internal/MonitoringClient$Logger;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/HybridDecryptWrapper$WrappedHybridDecrypt;->allHybridDecrypts:Lcom/google/crypto/tink/internal/PrefixMap;

    .line 82
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/HybridDecryptWrapper$WrappedHybridDecrypt;->decLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "contextInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HybridDecryptWrapper$WrappedHybridDecrypt;->allHybridDecrypts:Lcom/google/crypto/tink/internal/PrefixMap;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/PrefixMap;->getAllWithMatchingPrefix([B)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/hybrid/HybridDecryptWrapper$HybridDecryptWithId;

    .line 91
    :try_start_0
    iget-object v2, v1, Lcom/google/crypto/tink/hybrid/HybridDecryptWrapper$HybridDecryptWithId;->hybridDecrypt:Lcom/google/crypto/tink/HybridDecrypt;

    invoke-interface {v2, p1, p2}, Lcom/google/crypto/tink/HybridDecrypt;->decrypt([B[B)[B

    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/HybridDecryptWrapper$WrappedHybridDecrypt;->decLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iget v1, v1, Lcom/google/crypto/tink/hybrid/HybridDecryptWrapper$HybridDecryptWithId;->id:I

    array-length v4, p1

    int-to-long v4, v4

    invoke-interface {v3, v1, v4, v5}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/google/crypto/tink/hybrid/HybridDecryptWrapper$WrappedHybridDecrypt;->decLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {p1}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    .line 100
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "decryption failed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
