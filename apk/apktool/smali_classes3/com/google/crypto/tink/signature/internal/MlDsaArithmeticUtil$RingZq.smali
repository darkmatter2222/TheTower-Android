.class final Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;
.super Ljava/lang/Object;
.source "MlDsaArithmeticUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RingZq"
.end annotation


# static fields
.field static final INVALID:Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

.field static final Q:I = 0x7fe001


# instance fields
.field final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 227
    new-instance v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;-><init>(I)V

    sput-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->INVALID:Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const v0, 0x7fe001

    if-lt p1, v0, :cond_1

    .line 233
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->INVALID:Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    if-eqz v0, :cond_1

    .line 234
    iget p1, v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->r:I

    iput p1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->r:I

    return-void

    .line 237
    :cond_1
    iput p1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->r:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 273
    :cond_0
    instance-of v1, p1, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 276
    :cond_1
    check-cast p1, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    .line 277
    iget v1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->r:I

    iget p1, p1, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->r:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method minus(Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;)Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 245
    new-instance v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    iget v1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->r:I

    iget p1, p1, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->r:I

    sub-int/2addr v1, p1

    const p1, 0x7fe001

    add-int/2addr v1, p1

    rem-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;-><init>(I)V

    return-object v0
.end method

.method multiply(Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;)Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 249
    new-instance v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    iget v1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->r:I

    int-to-long v1, v1

    iget p1, p1, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->r:I

    int-to-long v3, p1

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x7fe001

    rem-long/2addr v1, v3

    long-to-int p1, v1

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;-><init>(I)V

    return-object v0
.end method

.method negative()Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;
    .locals 3

    .line 253
    new-instance v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    iget v1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->r:I

    const v2, 0x7fe001

    sub-int v1, v2, v1

    rem-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;-><init>(I)V

    return-object v0
.end method

.method plus(Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;)Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    iget v1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->r:I

    iget p1, p1, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->r:I

    add-int/2addr v1, p1

    const p1, 0x7fe001

    rem-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;-><init>(I)V

    return-object v0
.end method

.method power2Round()Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZqPair;
    .locals 4

    .line 258
    iget v0, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->r:I

    const v1, 0x7fe001

    rem-int/2addr v0, v1

    add-int/lit16 v2, v0, 0xfff

    and-int/lit16 v2, v2, 0x1fff

    const v3, -0x7fd002

    sub-int/2addr v2, v3

    .line 259
    rem-int/2addr v2, v1

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 264
    rem-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xd

    .line 265
    new-instance v1, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZqPair;

    invoke-direct {v1, v0, v2}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZqPair;-><init>(II)V

    return-object v1
.end method
