.class final Lads_mobile_sdk/oy$d;
.super Lads_mobile_sdk/oy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/oy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final c:[B

.field private final d:I

.field private e:I

.field private f:I

.field private final g:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1873
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy;-><init>(Lads_mobile_sdk/oy-IA;)V

    if-eqz p1, :cond_1

    .line 1877
    iput-object p1, p0, Lads_mobile_sdk/oy$d;->g:Ljava/io/OutputStream;

    if-ltz p2, :cond_0

    const/16 p1, 0x14

    .line 1886
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p2, p1, [B

    iput-object p2, p0, Lads_mobile_sdk/oy$d;->c:[B

    .line 1887
    iput p1, p0, Lads_mobile_sdk/oy$d;->d:I

    return-void

    .line 1888
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1889
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2415
    iget-object v0, p0, Lads_mobile_sdk/oy$d;->g:Ljava/io/OutputStream;

    iget-object v1, p0, Lads_mobile_sdk/oy$d;->c:[B

    iget v2, p0, Lads_mobile_sdk/oy$d;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2416
    iput v3, p0, Lads_mobile_sdk/oy$d;->e:I

    return-void
.end method

.method private t(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2409
    iget v0, p0, Lads_mobile_sdk/oy$d;->d:I

    iget v1, p0, Lads_mobile_sdk/oy$d;->e:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 2410
    invoke-direct {p0}, Lads_mobile_sdk/oy$d;->e()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2229
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    iget v1, p0, Lads_mobile_sdk/oy$d;->d:I

    if-ne v0, v1, :cond_0

    .line 2230
    invoke-direct {p0}, Lads_mobile_sdk/oy$d;->e()V

    .line 2233
    :cond_0
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->b(B)V

    return-void
.end method

.method public a([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4599
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy$d;->d([BII)V

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4236
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    if-lez v0, :cond_0

    .line 4238
    invoke-direct {p0}, Lads_mobile_sdk/oy$d;->e()V

    :cond_0
    return-void
.end method

.method public final b(B)V
    .locals 2

    .line 1907
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 1908
    iget-object v1, p0, Lads_mobile_sdk/oy$d;->c:[B

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1910
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 1911
    iget p1, p0, Lads_mobile_sdk/oy$d;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void
.end method

.method public b(ILads_mobile_sdk/tw1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 10760
    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/oy$d;->l(II)V

    const/4 v2, 0x2

    .line 10761
    invoke-virtual {p0, v2, p1}, Lads_mobile_sdk/oy$d;->m(II)V

    .line 10762
    invoke-virtual {p0, v1, p2}, Lads_mobile_sdk/oy$d;->c(ILads_mobile_sdk/tw1;)V

    const/4 p1, 0x4

    .line 10763
    invoke-virtual {p0, v0, p1}, Lads_mobile_sdk/oy$d;->l(II)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 12907
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->l(II)V

    .line 12908
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 6375
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    const/4 v0, 0x0

    .line 6376
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->n(II)V

    int-to-byte p1, p2

    .line 6377
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->b(B)V

    return-void
.end method

.method public b(Lads_mobile_sdk/du;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8553
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lads_mobile_sdk/oy$d;->p(I)V

    .line 8554
    invoke-virtual {p1, p0}, Lads_mobile_sdk/du;->a(Lads_mobile_sdk/cu;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 15183
    invoke-static {v0}, Lads_mobile_sdk/oy;->i(I)I

    move-result v1

    add-int v2, v1, v0

    .line 15187
    iget v3, p0, Lads_mobile_sdk/oy$d;->d:I

    if-le v2, v3, :cond_0

    .line 15192
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 15193
    invoke-static {p1, v1, v2, v0}, Lads_mobile_sdk/hx3;->a(Ljava/lang/String;[BII)I

    move-result p1

    .line 15194
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->p(I)V

    .line 15195
    invoke-virtual {p0, v1, v2, p1}, Lads_mobile_sdk/oy$d;->a([BII)V

    return-void

    .line 15200
    :cond_0
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_1

    .line 15202
    invoke-direct {p0}, Lads_mobile_sdk/oy$d;->e()V

    .line 15207
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lads_mobile_sdk/oy;->i(I)I

    move-result v0

    .line 15208
    iget v2, p0, Lads_mobile_sdk/oy$d;->e:I

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    .line 15212
    :try_start_0
    iput v1, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 15213
    iget-object v3, p0, Lads_mobile_sdk/oy$d;->c:[B

    iget v4, p0, Lads_mobile_sdk/oy$d;->d:I

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Lads_mobile_sdk/hx3;->a(Ljava/lang/String;[BII)I

    move-result p1

    .line 15216
    iput v2, p0, Lads_mobile_sdk/oy$d;->e:I

    sub-int v1, p1, v2

    sub-int/2addr v1, v0

    .line 15218
    invoke-virtual {p0, v1}, Lads_mobile_sdk/oy$d;->s(I)V

    .line 15219
    iput p1, p0, Lads_mobile_sdk/oy$d;->e:I

    goto :goto_0

    .line 15221
    :cond_2
    invoke-static {p1}, Lads_mobile_sdk/hx3;->a(Ljava/lang/String;)I

    move-result v1

    .line 15222
    invoke-virtual {p0, v1}, Lads_mobile_sdk/oy$d;->s(I)V

    .line 15223
    iget-object v0, p0, Lads_mobile_sdk/oy$d;->c:[B

    iget v2, p0, Lads_mobile_sdk/oy$d;->e:I

    invoke-static {p1, v0, v2, v1}, Lads_mobile_sdk/hx3;->a(Ljava/lang/String;[BII)I

    move-result p1

    iput p1, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 15225
    :goto_0
    iget p1, p0, Lads_mobile_sdk/oy$d;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Lads_mobile_sdk/oy$d;->f:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15227
    new-instance v0, Lads_mobile_sdk/oy$c;

    invoke-direct {v0, p1}, Lads_mobile_sdk/oy$c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c(ILads_mobile_sdk/du;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 4333
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->l(II)V

    .line 4334
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$d;->b(Lads_mobile_sdk/du;)V

    return-void
.end method

.method public c(ILads_mobile_sdk/tw1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 6533
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->l(II)V

    .line 6534
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$d;->c(Lads_mobile_sdk/tw1;)V

    return-void
.end method

.method public c(Lads_mobile_sdk/tw1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8757
    invoke-interface {p1}, Lads_mobile_sdk/tw1;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lads_mobile_sdk/oy$d;->p(I)V

    .line 8758
    invoke-interface {p1, p0}, Lads_mobile_sdk/tw1;->a(Lads_mobile_sdk/oy;)V

    return-void
.end method

.method public c([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2182
    invoke-virtual {p0, p3}, Lads_mobile_sdk/oy$d;->p(I)V

    .line 2183
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy$d;->d([BII)V

    return-void
.end method

.method public final d()I
    .locals 2

    .line 4579
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(ILads_mobile_sdk/du;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 4575
    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/oy$d;->l(II)V

    const/4 v2, 0x2

    .line 4576
    invoke-virtual {p0, v2, p1}, Lads_mobile_sdk/oy$d;->m(II)V

    .line 4577
    invoke-virtual {p0, v1, p2}, Lads_mobile_sdk/oy$d;->c(ILads_mobile_sdk/du;)V

    const/4 p1, 0x4

    .line 4578
    invoke-virtual {p0, v0, p1}, Lads_mobile_sdk/oy$d;->l(II)V

    return-void
.end method

.method public d([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2333
    iget v0, p0, Lads_mobile_sdk/oy$d;->d:I

    iget v1, p0, Lads_mobile_sdk/oy$d;->e:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 2335
    iget-object v0, p0, Lads_mobile_sdk/oy$d;->c:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2336
    iget p1, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 2337
    iget p1, p0, Lads_mobile_sdk/oy$d;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    .line 2342
    :cond_0
    iget-object v2, p0, Lads_mobile_sdk/oy$d;->c:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 2345
    iget v1, p0, Lads_mobile_sdk/oy$d;->d:I

    iput v1, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 2346
    iget v1, p0, Lads_mobile_sdk/oy$d;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    .line 2347
    invoke-direct {p0}, Lads_mobile_sdk/oy$d;->e()V

    .line 2352
    iget v0, p0, Lads_mobile_sdk/oy$d;->d:I

    if-gt p3, v0, :cond_1

    .line 2354
    iget-object v0, p0, Lads_mobile_sdk/oy$d;->c:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2355
    iput p3, p0, Lads_mobile_sdk/oy$d;->e:I

    goto :goto_0

    .line 2358
    :cond_1
    iget-object v0, p0, Lads_mobile_sdk/oy$d;->g:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2360
    :goto_0
    iget p1, p0, Lads_mobile_sdk/oy$d;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void
.end method

.method public f(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    .line 2130
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    const/4 v0, 0x1

    .line 2131
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->n(II)V

    .line 2132
    invoke-virtual {p0, p2, p3}, Lads_mobile_sdk/oy$d;->l(J)V

    return-void
.end method

.method public g(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 2266
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    .line 2267
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy$d;->l(J)V

    return-void
.end method

.method public h(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 2116
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    const/4 v0, 0x5

    .line 2117
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->n(II)V

    .line 2118
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$d;->q(I)V

    return-void
.end method

.method public i(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 2102
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    const/4 v0, 0x0

    .line 2103
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->n(II)V

    .line 2104
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$d;->r(I)V

    return-void
.end method

.method public j(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 2123
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    const/4 v0, 0x0

    .line 2124
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->n(II)V

    .line 2125
    invoke-virtual {p0, p2, p3}, Lads_mobile_sdk/oy$d;->m(J)V

    return-void
.end method

.method public k(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 2260
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    .line 2261
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy$d;->m(J)V

    return-void
.end method

.method public l(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 4346
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    .line 4347
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->q(I)V

    return-void
.end method

.method public l(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6444
    invoke-static {p1, p2}, Lads_mobile_sdk/u24;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->p(I)V

    return-void
.end method

.method public final l(J)V
    .locals 7

    .line 2082
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 2083
    iget-object v1, p0, Lads_mobile_sdk/oy$d;->c:[B

    add-int/lit8 v2, v0, 0x1

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v3, v0, 0x2

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 2084
    aput-byte v5, v1, v2

    add-int/lit8 v2, v0, 0x3

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 2085
    aput-byte v5, v1, v3

    add-int/lit8 v3, v0, 0x4

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 2086
    aput-byte v5, v1, v2

    add-int/lit8 v2, v0, 0x5

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 2087
    aput-byte v5, v1, v3

    add-int/lit8 v3, v0, 0x6

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 2088
    aput-byte v5, v1, v2

    add-int/lit8 v2, v0, 0x7

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 2089
    aput-byte v5, v1, v3

    add-int/2addr v0, v4

    const/16 v3, 0x38

    shr-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 2090
    aput-byte p1, v1, v2

    .line 2091
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 2092
    iget p1, p0, Lads_mobile_sdk/oy$d;->f:I

    add-int/2addr p1, v4

    iput p1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void
.end method

.method public m(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 4298
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->p(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 4301
    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/oy$d;->k(J)V

    return-void
.end method

.method public m(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 6410
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    const/4 v0, 0x0

    .line 6411
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->n(II)V

    .line 6412
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$d;->s(I)V

    return-void
.end method

.method public final m(J)V
    .locals 12

    .line 1984
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 1985
    iget v1, p0, Lads_mobile_sdk/oy$d;->f:I

    const-wide/16 v2, -0x80

    and-long v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1987
    iget-object v2, p0, Lads_mobile_sdk/oy$d;->c:[B

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 1988
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x1

    .line 1989
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    .line 1992
    :cond_0
    iget-object v4, p0, Lads_mobile_sdk/oy$d;->c:[B

    long-to-int v5, p1

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    const/4 v5, 0x7

    ushr-long v8, p1, v5

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_1

    add-int/lit8 p1, v0, 0x1

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 1995
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x2

    .line 1996
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x2

    .line 1997
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_1
    add-int/lit8 v10, v0, 0x1

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2000
    aput-byte v8, v4, v10

    const/16 v8, 0xe

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_2

    add-int/lit8 p1, v0, 0x2

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 2003
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x3

    .line 2004
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x3

    .line 2005
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_2
    add-int/lit8 v10, v0, 0x2

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2008
    aput-byte v8, v4, v10

    const/16 v8, 0x15

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_3

    add-int/lit8 p1, v0, 0x3

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 2011
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x4

    .line 2012
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x4

    .line 2013
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_3
    add-int/lit8 v10, v0, 0x3

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2016
    aput-byte v8, v4, v10

    const/16 v8, 0x1c

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_4

    add-int/lit8 p1, v0, 0x4

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 2019
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x5

    .line 2020
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x5

    .line 2021
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_4
    add-int/lit8 v10, v0, 0x4

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2024
    aput-byte v8, v4, v10

    const/16 v8, 0x23

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_5

    add-int/lit8 p1, v0, 0x5

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 2027
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x6

    .line 2028
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x6

    .line 2029
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_5
    add-int/lit8 v10, v0, 0x5

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2032
    aput-byte v8, v4, v10

    const/16 v8, 0x2a

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_6

    add-int/lit8 p1, v0, 0x6

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 2035
    aput-byte p2, v4, p1

    add-int/2addr v0, v5

    .line 2036
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/2addr v1, v5

    .line 2037
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_6
    add-int/lit8 v5, v0, 0x6

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2040
    aput-byte v8, v4, v5

    const/16 v5, 0x31

    ushr-long v8, p1, v5

    and-long v10, v8, v2

    cmp-long v5, v10, v6

    if-nez v5, :cond_7

    add-int/lit8 p1, v0, 0x7

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 2043
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x8

    .line 2044
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x8

    .line 2045
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_7
    add-int/lit8 v5, v0, 0x7

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2048
    aput-byte v8, v4, v5

    const/16 v5, 0x38

    ushr-long v8, p1, v5

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    add-int/lit8 p1, v0, 0x8

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 2051
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x9

    .line 2052
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x9

    .line 2053
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_8
    add-int/lit8 v2, v0, 0x8

    long-to-int v3, v8

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 2056
    aput-byte v3, v4, v2

    add-int/lit8 v2, v0, 0x9

    const/16 v3, 0x3f

    ushr-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 2057
    aput-byte p1, v4, v2

    add-int/lit8 v0, v0, 0xa

    .line 2058
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0xa

    .line 2059
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void
.end method

.method public final n(II)V
    .locals 0

    .line 1919
    invoke-static {p1, p2}, Lads_mobile_sdk/u24;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->s(I)V

    return-void
.end method

.method public p(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 2248
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    .line 2249
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->s(I)V

    return-void
.end method

.method public final q(I)V
    .locals 5

    .line 2068
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 2069
    iget-object v1, p0, Lads_mobile_sdk/oy$d;->c:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 2070
    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x3

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    .line 2071
    aput-byte v4, v1, v3

    add-int/lit8 v0, v0, 0x4

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 2072
    aput-byte p1, v1, v2

    .line 2073
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 2074
    iget p1, p0, Lads_mobile_sdk/oy$d;->f:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void
.end method

.method public final r(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1928
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->s(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 1931
    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/oy$d;->m(J)V

    return-void
.end method

.method public final s(I)V
    .locals 5

    .line 1940
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 1941
    iget v1, p0, Lads_mobile_sdk/oy$d;->f:I

    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_0

    .line 1943
    iget-object v2, p0, Lads_mobile_sdk/oy$d;->c:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 1944
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x1

    .line 1945
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    .line 1948
    :cond_0
    iget-object v2, p0, Lads_mobile_sdk/oy$d;->c:[B

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v4, v3, -0x80

    if-nez v4, :cond_1

    add-int/lit8 p1, v0, 0x1

    int-to-byte v3, v3

    .line 1951
    aput-byte v3, v2, p1

    add-int/lit8 v0, v0, 0x2

    .line 1952
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x2

    .line 1953
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_1
    add-int/lit8 v4, v0, 0x1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1956
    aput-byte v3, v2, v4

    ushr-int/lit8 v3, p1, 0xe

    and-int/lit8 v4, v3, -0x80

    if-nez v4, :cond_2

    add-int/lit8 p1, v0, 0x2

    int-to-byte v3, v3

    .line 1959
    aput-byte v3, v2, p1

    add-int/lit8 v0, v0, 0x3

    .line 1960
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x3

    .line 1961
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_2
    add-int/lit8 v4, v0, 0x2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1964
    aput-byte v3, v2, v4

    ushr-int/lit8 v3, p1, 0x15

    and-int/lit8 v4, v3, -0x80

    if-nez v4, :cond_3

    add-int/lit8 p1, v0, 0x3

    int-to-byte v3, v3

    .line 1967
    aput-byte v3, v2, p1

    add-int/lit8 v0, v0, 0x4

    .line 1968
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x4

    .line 1969
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_3
    add-int/lit8 v4, v0, 0x3

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1972
    aput-byte v3, v2, v4

    add-int/lit8 v3, v0, 0x4

    ushr-int/lit8 p1, p1, 0x1c

    int-to-byte p1, p1

    .line 1973
    aput-byte p1, v2, v3

    add-int/lit8 v0, v0, 0x5

    .line 1974
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x5

    .line 1975
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void
.end method
