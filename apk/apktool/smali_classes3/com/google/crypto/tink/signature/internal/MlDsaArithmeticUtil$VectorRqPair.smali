.class final Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$VectorRqPair;
.super Ljava/lang/Object;
.source "MlDsaArithmeticUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VectorRqPair"
.end annotation


# instance fields
.field s1:Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$VectorRq;

.field s2:Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$VectorRq;


# direct methods
.method constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "l1",
            "l2"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$VectorRq;

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$VectorRq;-><init>(I)V

    iput-object v0, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$VectorRqPair;->s1:Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$VectorRq;

    .line 133
    new-instance p1, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$VectorRq;

    invoke-direct {p1, p2}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$VectorRq;-><init>(I)V

    iput-object p1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$VectorRqPair;->s2:Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$VectorRq;

    return-void
.end method
