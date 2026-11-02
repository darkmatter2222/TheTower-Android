.class final Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$VectorRq;
.super Ljava/lang/Object;
.source "MlDsaArithmeticUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VectorRq"
.end annotation


# instance fields
.field final vector:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;


# direct methods
.method constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-array v0, p1, [Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;

    iput-object v0, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$VectorRq;->vector:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$VectorRq;->vector:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;

    new-instance v2, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;

    invoke-direct {v2}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
