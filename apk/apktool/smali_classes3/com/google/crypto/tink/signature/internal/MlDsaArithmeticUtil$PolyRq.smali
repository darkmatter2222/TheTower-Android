.class final Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;
.super Ljava/lang/Object;
.source "MlDsaArithmeticUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PolyRq"
.end annotation


# instance fields
.field final polynomial:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;


# direct methods
.method constructor <init>()V
    .locals 5

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 169
    new-array v1, v0, [Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    iput-object v1, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;->polynomial:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 171
    iget-object v3, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;->polynomial:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    new-instance v4, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    invoke-direct {v4, v1}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;-><init>(I)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static copyFromVector(Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingTq;)Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;-><init>()V

    .line 164
    iget-object p0, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingTq;->vector:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    iget-object v1, v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;->polynomial:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 201
    :cond_0
    instance-of v0, p1, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 204
    :cond_1
    check-cast p1, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;

    .line 205
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;->polynomial:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    iget-object p1, p1, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;->polynomial:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;->polynomial:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method plus(Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;)Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 178
    iget-object v2, v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;->polynomial:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    iget-object v3, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;->polynomial:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;->polynomial:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->plus(Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;)Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method power2Round()Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRqPair;
    .locals 6

    .line 185
    new-instance v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;

    invoke-direct {v0}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;-><init>()V

    .line 186
    new-instance v1, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;

    invoke-direct {v1}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;->polynomial:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;->power2Round()Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZqPair;

    move-result-object v3

    .line 190
    iget-object v4, v0, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;->polynomial:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    iget-object v5, v3, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZqPair;->r1:Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    aput-object v5, v4, v2

    .line 191
    iget-object v4, v1, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;->polynomial:[Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    iget-object v3, v3, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZqPair;->r0:Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$RingZq;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    new-instance v2, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRqPair;

    invoke-direct {v2, v0, v1}, Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRqPair;-><init>(Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;Lcom/google/crypto/tink/signature/internal/MlDsaArithmeticUtil$PolyRq;)V

    return-object v2
.end method
