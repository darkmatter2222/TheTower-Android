.class final Lcom/google/crypto/tink/mac/internal/ChunkedMacVerificationFromComputation;
.super Ljava/lang/Object;
.source "ChunkedMacVerificationFromComputation.java"

# interfaces
.implements Lcom/google/crypto/tink/mac/ChunkedMacVerification;


# instance fields
.field private final macComputation:Lcom/google/crypto/tink/mac/ChunkedMacComputation;

.field private final tag:Lcom/google/crypto/tink/util/Bytes;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/mac/ChunkedMacComputation;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "macComputation",
            "tag"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/crypto/tink/mac/internal/ChunkedMacVerificationFromComputation;->macComputation:Lcom/google/crypto/tink/mac/ChunkedMacComputation;

    .line 34
    invoke-static {p2}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/mac/internal/ChunkedMacVerificationFromComputation;->tag:Lcom/google/crypto/tink/util/Bytes;

    return-void
.end method

.method static create(Lcom/google/crypto/tink/mac/ChunkedMacComputation;[B)Lcom/google/crypto/tink/mac/ChunkedMacVerification;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "macComputation",
            "tag"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/google/crypto/tink/mac/internal/ChunkedMacVerificationFromComputation;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/mac/internal/ChunkedMacVerificationFromComputation;-><init>(Lcom/google/crypto/tink/mac/ChunkedMacComputation;[B)V

    return-object v0
.end method


# virtual methods
.method public update(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/crypto/tink/mac/internal/ChunkedMacVerificationFromComputation;->macComputation:Lcom/google/crypto/tink/mac/ChunkedMacComputation;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/mac/ChunkedMacComputation;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public verifyMac()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/crypto/tink/mac/internal/ChunkedMacVerificationFromComputation;->macComputation:Lcom/google/crypto/tink/mac/ChunkedMacComputation;

    invoke-interface {v0}, Lcom/google/crypto/tink/mac/ChunkedMacComputation;->computeMac()[B

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/google/crypto/tink/mac/internal/ChunkedMacVerificationFromComputation;->tag:Lcom/google/crypto/tink/util/Bytes;

    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/util/Bytes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid MAC"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
