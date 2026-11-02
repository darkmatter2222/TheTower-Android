.class final Lcom/google/crypto/tink/signature/internal/MlDsaConstants$Params;
.super Ljava/lang/Object;
.source "MlDsaConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/internal/MlDsaConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Params"
.end annotation


# instance fields
.field final bitlen2Eta:I

.field final eta:I

.field final k:B

.field final l:B

.field final pkLength:I

.field final skLength:I


# direct methods
.method constructor <init>(BBIIIILcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "k",
            "l",
            "eta",
            "pkLength",
            "bitlen2Eta",
            "skLength",
            "instance"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;->ML_DSA_65:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    const-string v1, ", "

    if-ne p7, v0, :cond_1

    const/4 p7, 0x6

    if-ne p1, p7, :cond_0

    const/4 p7, 0x5

    if-ne p2, p7, :cond_0

    const/4 p7, 0x4

    if-ne p3, p7, :cond_0

    if-ne p5, p7, :cond_0

    const/16 p7, 0x7a0

    if-ne p4, p7, :cond_0

    const/16 p7, 0xfc0

    if-ne p6, p7, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p6, Ljava/lang/StringBuilder;

    const-string p7, "Wrong parameters for ML-DSA-65: (k, l, eta, bitlen2Eta) was ("

    invoke-direct {p6, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "), expected (6, 5, 4, 4)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 77
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;->ML_DSA_87:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    if-ne p7, v0, :cond_3

    const/16 p7, 0x8

    if-ne p1, p7, :cond_2

    const/4 p7, 0x7

    if-ne p2, p7, :cond_2

    const/4 p7, 0x2

    if-ne p3, p7, :cond_2

    const/4 p7, 0x3

    if-ne p5, p7, :cond_2

    const/16 p7, 0xa20

    if-ne p4, p7, :cond_2

    const/16 p7, 0x1320

    if-ne p6, p7, :cond_2

    .line 100
    :goto_0
    iput-byte p1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaConstants$Params;->k:B

    .line 101
    iput-byte p2, p0, Lcom/google/crypto/tink/signature/internal/MlDsaConstants$Params;->l:B

    .line 102
    iput p3, p0, Lcom/google/crypto/tink/signature/internal/MlDsaConstants$Params;->eta:I

    .line 103
    iput p5, p0, Lcom/google/crypto/tink/signature/internal/MlDsaConstants$Params;->bitlen2Eta:I

    .line 104
    iput p4, p0, Lcom/google/crypto/tink/signature/internal/MlDsaConstants$Params;->pkLength:I

    .line 105
    iput p6, p0, Lcom/google/crypto/tink/signature/internal/MlDsaConstants$Params;->skLength:I

    return-void

    .line 84
    :cond_2
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p6, Ljava/lang/StringBuilder;

    const-string p7, "Wrong parameters for ML-DSA-87: (k, l, eta, bitlen2Eta) was ("

    invoke-direct {p6, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "), expected (8, 7, 2, 3)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 97
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MlDsaInstance not ML_DSA_65 nor ML_DSA_87"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
