.class final Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRqPair;
.super Ljava/lang/Object;
.source "MlDsaArithmeticUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PolyRqPair"
.end annotation


# instance fields
.field final t0Bold:Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;

.field final t1Bold:Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t1Bold",
            "t0Bold"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRqPair;->t1Bold:Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;

    .line 154
    iput-object p2, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRqPair;->t0Bold:Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;

    return-void
.end method
