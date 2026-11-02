.class Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;
.super Ljava/lang/Object;
.source "DeterministicAeadWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/DeterministicAead;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/daead/DeterministicAeadWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedDeterministicAead"
.end annotation


# instance fields
.field private final allDaeads:Lcom/google/crypto/tink/internal/PrefixMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrefixMap<",
            "Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;",
            ">;"
        }
    .end annotation
.end field

.field private final decLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

.field private final encLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

.field private final primary:Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;Lcom/google/crypto/tink/internal/PrefixMap;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;Lcom/google/crypto/tink/internal/MonitoringClient$Logger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "primary",
            "allDaeads",
            "encLogger",
            "decLogger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;",
            "Lcom/google/crypto/tink/internal/PrefixMap<",
            "Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;",
            ">;",
            "Lcom/google/crypto/tink/internal/MonitoringClient$Logger;",
            "Lcom/google/crypto/tink/internal/MonitoringClient$Logger;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;->primary:Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;

    .line 90
    iput-object p2, p0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;->allDaeads:Lcom/google/crypto/tink/internal/PrefixMap;

    .line 91
    iput-object p3, p0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;->encLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    .line 92
    iput-object p4, p0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;->decLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    return-void
.end method


# virtual methods
.method public decryptDeterministically([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;->allDaeads:Lcom/google/crypto/tink/internal/PrefixMap;

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

    check-cast v1, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;

    .line 113
    :try_start_0
    iget-object v2, v1, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;->daead:Lcom/google/crypto/tink/DeterministicAead;

    invoke-interface {v2, p1, p2}, Lcom/google/crypto/tink/DeterministicAead;->decryptDeterministically([B[B)[B

    move-result-object v2

    .line 114
    iget-object v3, p0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;->decLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iget v1, v1, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;->id:I

    array-length v4, p1

    int-to-long v4, v4

    invoke-interface {v3, v1, v4, v5}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;->decLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {p1}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    .line 122
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "decryption failed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encryptDeterministically([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;->primary:Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;

    iget-object v0, v0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;->daead:Lcom/google/crypto/tink/DeterministicAead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/DeterministicAead;->encryptDeterministically([B[B)[B

    move-result-object p2

    .line 100
    iget-object v0, p0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;->encLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iget-object v1, p0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;->primary:Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;

    iget v1, v1, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$DeterministicAeadWithId;->id:I

    array-length p1, p1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 103
    iget-object p2, p0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;->encLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {p2}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    .line 104
    throw p1
.end method
