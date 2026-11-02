.class Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$WrappedHybridEncrypt;
.super Ljava/lang/Object;
.source "HybridEncryptWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/HybridEncrypt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedHybridEncrypt"
.end annotation


# instance fields
.field private final encLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

.field private final primary:Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$HybridEncryptWithId;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$HybridEncryptWithId;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primary",
            "encLogger"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$WrappedHybridEncrypt;->primary:Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$HybridEncryptWithId;

    .line 62
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$WrappedHybridEncrypt;->encLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    return-void
.end method


# virtual methods
.method public encrypt([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "contextInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$WrappedHybridEncrypt;->primary:Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$HybridEncryptWithId;

    iget-object v0, v0, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$HybridEncryptWithId;->hybridEncrypt:Lcom/google/crypto/tink/HybridEncrypt;

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$WrappedHybridEncrypt;->primary:Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$HybridEncryptWithId;

    iget-object v0, v0, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$HybridEncryptWithId;->hybridEncrypt:Lcom/google/crypto/tink/HybridEncrypt;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/HybridEncrypt;->encrypt([B[B)[B

    move-result-object p2

    .line 74
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$WrappedHybridEncrypt;->encLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$WrappedHybridEncrypt;->primary:Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$HybridEncryptWithId;

    iget v1, v1, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$HybridEncryptWithId;->id:I

    array-length p1, p1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 77
    iget-object p2, p0, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$WrappedHybridEncrypt;->encLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {p2}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    .line 78
    throw p1

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper$WrappedHybridEncrypt;->encLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {p1}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    .line 70
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset without primary key"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
