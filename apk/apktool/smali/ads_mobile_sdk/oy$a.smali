.class final Lads_mobile_sdk/oy$a;
.super Lads_mobile_sdk/oy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/oy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final c:[B

.field private final d:I

.field private final e:I

.field private f:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x0

    .line 1131
    invoke-direct {p0, p1, p2, p3, v0}, Lads_mobile_sdk/oy$a;-><init>([BIILads_mobile_sdk/oy$b;)V

    return-void
.end method

.method public constructor <init>([BIILads_mobile_sdk/oy$b;)V
    .locals 2

    const/4 p4, 0x0

    .line 2265
    invoke-direct {p0, p4}, Lads_mobile_sdk/oy;-><init>(Lads_mobile_sdk/oy-IA;)V

    if-eqz p1, :cond_1

    or-int p4, p2, p3

    .line 2269
    array-length v0, p1

    add-int v1, p2, p3

    sub-int/2addr v0, v1

    or-int/2addr p4, v0

    if-ltz p4, :cond_0

    .line 2278
    iput-object p1, p0, Lads_mobile_sdk/oy$a;->c:[B

    .line 2279
    iput p2, p0, Lads_mobile_sdk/oy$a;->d:I

    .line 2280
    iput p2, p0, Lads_mobile_sdk/oy$a;->f:I

    .line 2281
    iput v1, p0, Lads_mobile_sdk/oy$a;->e:I

    return-void

    .line 2282
    :cond_0
    new-instance p4, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length p1, p1

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Array range is invalid. Buffer.length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2284
    const-string p1, ", offset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2285
    const-string p1, ", length="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 2286
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1285
    iget v0, p0, Lads_mobile_sdk/oy$a;->f:I

    .line 1287
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/oy$a;->c:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v0, 0x1

    :try_start_1
    aput-byte p1, v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1291
    iput v2, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :catch_0
    move-exception p1

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1292
    :goto_0
    new-instance v1, Lads_mobile_sdk/oy$c;

    iget v2, p0, Lads_mobile_sdk/oy$a;->e:I

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p1}, Lads_mobile_sdk/oy$c;-><init>(IIILjava/lang/Throwable;)V

    throw v1
.end method

.method public final a([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2775
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy$a;->d([BII)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final b(ILads_mobile_sdk/tw1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 3686
    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/oy$a;->l(II)V

    const/4 v2, 0x2

    .line 3687
    invoke-virtual {p0, v2, p1}, Lads_mobile_sdk/oy$a;->m(II)V

    .line 3688
    invoke-virtual {p0, v1, p2}, Lads_mobile_sdk/oy$a;->c(ILads_mobile_sdk/tw1;)V

    const/4 p1, 0x4

    .line 3689
    invoke-virtual {p0, v0, p1}, Lads_mobile_sdk/oy$a;->l(II)V

    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 4886
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 4887
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1192
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    int-to-byte p1, p2

    .line 1193
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$a;->a(B)V

    return-void
.end method

.method public final b(Lads_mobile_sdk/du;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2423
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lads_mobile_sdk/oy$a;->p(I)V

    .line 2424
    invoke-virtual {p1, p0}, Lads_mobile_sdk/du;->a(Lads_mobile_sdk/cu;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4888
    sget-boolean v0, Lads_mobile_sdk/hx3;->b:Z

    if-eqz v0, :cond_0

    .line 4889
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 4890
    array-length v0, p1

    invoke-virtual {p0, v0}, Lads_mobile_sdk/oy$a;->p(I)V

    .line 4891
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lads_mobile_sdk/oy$a;->d([BII)V

    return-void

    .line 4896
    :cond_0
    iget v0, p0, Lads_mobile_sdk/oy$a;->f:I

    .line 4898
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lads_mobile_sdk/oy;->i(I)I

    move-result v1

    add-int v2, v0, v1

    .line 4899
    iput v2, p0, Lads_mobile_sdk/oy$a;->f:I

    .line 4900
    iget-object v3, p0, Lads_mobile_sdk/oy$a;->c:[B

    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-static {p1, v3, v2, v4}, Lads_mobile_sdk/hx3;->a(Ljava/lang/String;[BII)I

    move-result p1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    .line 4902
    invoke-static {p1}, Lads_mobile_sdk/oy;->i(I)I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 4904
    iget-object v1, p0, Lads_mobile_sdk/oy$a;->c:[B

    add-int v4, v0, v3

    invoke-static {v1, v2, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4911
    :cond_1
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I

    .line 4912
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$a;->p(I)V

    add-int/2addr v0, v3

    add-int/2addr v0, p1

    .line 4913
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4915
    new-instance v0, Lads_mobile_sdk/oy$c;

    invoke-direct {v0, p1}, Lads_mobile_sdk/oy$c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c(ILads_mobile_sdk/du;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2441
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 2442
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$a;->b(Lads_mobile_sdk/du;)V

    return-void
.end method

.method public final c(ILads_mobile_sdk/tw1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 3697
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 3698
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$a;->c(Lads_mobile_sdk/tw1;)V

    return-void
.end method

.method public final c(Lads_mobile_sdk/tw1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4977
    invoke-interface {p1}, Lads_mobile_sdk/tw1;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lads_mobile_sdk/oy$a;->p(I)V

    .line 4978
    invoke-interface {p1, p0}, Lads_mobile_sdk/tw1;->a(Lads_mobile_sdk/oy;)V

    return-void
.end method

.method public final c([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1237
    invoke-virtual {p0, p3}, Lads_mobile_sdk/oy$a;->p(I)V

    .line 1238
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy$a;->d([BII)V

    return-void
.end method

.method public final d()I
    .locals 2

    .line 1545
    iget v0, p0, Lads_mobile_sdk/oy$a;->e:I

    iget v1, p0, Lads_mobile_sdk/oy$a;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d(ILads_mobile_sdk/du;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 4295
    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/oy$a;->l(II)V

    const/4 v2, 0x2

    .line 4296
    invoke-virtual {p0, v2, p1}, Lads_mobile_sdk/oy$a;->m(II)V

    .line 4297
    invoke-virtual {p0, v1, p2}, Lads_mobile_sdk/oy$a;->c(ILads_mobile_sdk/du;)V

    const/4 p1, 0x4

    .line 4298
    invoke-virtual {p0, v0, p1}, Lads_mobile_sdk/oy$a;->l(II)V

    return-void
.end method

.method public final d([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3019
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/oy$a;->c:[B

    iget v1, p0, Lads_mobile_sdk/oy$a;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3023
    iget p1, p0, Lads_mobile_sdk/oy$a;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :catch_0
    move-exception p1

    .line 3024
    new-instance p2, Lads_mobile_sdk/oy$c;

    iget v0, p0, Lads_mobile_sdk/oy$a;->f:I

    iget v1, p0, Lads_mobile_sdk/oy$a;->e:I

    invoke-direct {p2, v0, v1, p3, p1}, Lads_mobile_sdk/oy$c;-><init>(IIILjava/lang/Throwable;)V

    throw p2
.end method

.method public final f(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1185
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 1186
    invoke-virtual {p0, p2, p3}, Lads_mobile_sdk/oy$a;->g(J)V

    return-void
.end method

.method public final g(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1454
    iget v0, p0, Lads_mobile_sdk/oy$a;->f:I

    const/16 v1, 0x8

    .line 1456
    :try_start_0
    iget-object v2, p0, Lads_mobile_sdk/oy$a;->c:[B

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    shr-long v4, p1, v1

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1457
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1458
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x3

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1459
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x4

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1460
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x5

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1461
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x6

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1462
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x7

    const/16 v4, 0x38

    shr-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 1463
    aput-byte p1, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    .line 1468
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :catch_0
    move-exception p1

    .line 1469
    new-instance p2, Lads_mobile_sdk/oy$c;

    iget v2, p0, Lads_mobile_sdk/oy$a;->e:I

    invoke-direct {p2, v0, v2, v1, p1}, Lads_mobile_sdk/oy$c;-><init>(IIILjava/lang/Throwable;)V

    throw p2
.end method

.method public final h(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1173
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 1174
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$a;->l(I)V

    return-void
.end method

.method public final i(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1161
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 1162
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$a;->m(I)V

    return-void
.end method

.method public final j(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1179
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 1180
    invoke-virtual {p0, p2, p3}, Lads_mobile_sdk/oy$a;->k(J)V

    return-void
.end method

.method public final k(J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1380
    iget v0, p0, Lads_mobile_sdk/oy$a;->f:I

    const-wide/16 v1, -0x80

    and-long v3, p1, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1383
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/oy$a;->c:[B

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    .line 1384
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    .line 1387
    :cond_0
    iget-object v3, p0, Lads_mobile_sdk/oy$a;->c:[B

    long-to-int v4, p1

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    const/4 v4, 0x7

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_1

    add-int/lit8 p1, v0, 0x1

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1390
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x2

    .line 1391
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_1
    add-int/lit8 v4, v0, 0x1

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1394
    aput-byte v7, v3, v4

    const/16 v4, 0xe

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_2

    add-int/lit8 p1, v0, 0x2

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1397
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x3

    .line 1398
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_2
    add-int/lit8 v4, v0, 0x2

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1401
    aput-byte v7, v3, v4

    const/16 v4, 0x15

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_3

    add-int/lit8 p1, v0, 0x3

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1404
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x4

    .line 1405
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_3
    add-int/lit8 v4, v0, 0x3

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1408
    aput-byte v7, v3, v4

    const/16 v4, 0x1c

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_4

    add-int/lit8 p1, v0, 0x4

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1411
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x5

    .line 1412
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_4
    add-int/lit8 v4, v0, 0x4

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1415
    aput-byte v7, v3, v4

    const/16 v4, 0x23

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_5

    add-int/lit8 p1, v0, 0x5

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1418
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x6

    .line 1419
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_5
    add-int/lit8 v4, v0, 0x5

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1422
    aput-byte v7, v3, v4

    const/16 v4, 0x2a

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_6

    add-int/lit8 p1, v0, 0x6

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1425
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x7

    .line 1426
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_6
    add-int/lit8 v4, v0, 0x6

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1429
    aput-byte v7, v3, v4

    const/16 v4, 0x31

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_7

    add-int/lit8 p1, v0, 0x7

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1432
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x8

    .line 1433
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_7
    add-int/lit8 v4, v0, 0x7

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1436
    aput-byte v7, v3, v4

    const/16 v4, 0x38

    ushr-long v7, p1, v4

    and-long/2addr v1, v7

    cmp-long v1, v1, v5

    if-nez v1, :cond_8

    add-int/lit8 p1, v0, 0x8

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1439
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x9

    .line 1440
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_8
    add-int/lit8 v1, v0, 0x8

    long-to-int v2, v7

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 1443
    aput-byte v2, v3, v1

    add-int/lit8 v1, v0, 0x9

    const/16 v2, 0x3f

    ushr-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 1444
    aput-byte p1, v3, v1

    add-int/lit8 p1, v0, 0xa

    .line 1445
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1448
    new-instance p2, Lads_mobile_sdk/oy$c;

    iget v1, p0, Lads_mobile_sdk/oy$a;->e:I

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, v2, p1}, Lads_mobile_sdk/oy$c;-><init>(IIILjava/lang/Throwable;)V

    throw p2
.end method

.method public final l(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1365
    iget v0, p0, Lads_mobile_sdk/oy$a;->f:I

    const/4 v1, 0x4

    .line 1367
    :try_start_0
    iget-object v2, p0, Lads_mobile_sdk/oy$a;->c:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 1368
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    .line 1369
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 1370
    aput-byte p1, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    .line 1375
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :catch_0
    move-exception p1

    .line 1376
    new-instance v2, Lads_mobile_sdk/oy$c;

    iget v3, p0, Lads_mobile_sdk/oy$a;->e:I

    invoke-direct {v2, v0, v3, v1, p1}, Lads_mobile_sdk/oy$c;-><init>(IIILjava/lang/Throwable;)V

    throw v2
.end method

.method public final l(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2532
    invoke-static {p1, p2}, Lads_mobile_sdk/u24;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$a;->p(I)V

    return-void
.end method

.method public final m(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1297
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$a;->p(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 1301
    iget p1, p0, Lads_mobile_sdk/oy$a;->f:I

    .line 1303
    :try_start_0
    iget-object v2, p0, Lads_mobile_sdk/oy$a;->c:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    add-int/lit8 v3, p1, 0x1

    long-to-int v4, v0

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    :try_start_1
    aput-byte v4, v2, p1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v4, p1, 0x2

    const/4 v5, 0x7

    ushr-long v5, v0, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 1304
    :try_start_2
    aput-byte v5, v2, v3
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v3, p1, 0x3

    const/16 v5, 0xe

    ushr-long v5, v0, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 1305
    :try_start_3
    aput-byte v5, v2, v4
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v4, p1, 0x4

    const/16 v5, 0x15

    ushr-long v5, v0, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 1306
    :try_start_4
    aput-byte v5, v2, v3
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v3, p1, 0x5

    const/16 v5, 0x1c

    ushr-long/2addr v0, v5

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 1307
    :try_start_5
    aput-byte v0, v2, v4
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v0, p1, 0x6

    const/4 v1, -0x1

    .line 1308
    :try_start_6
    aput-byte v1, v2, v3
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    add-int/lit8 v3, p1, 0x7

    .line 1309
    :try_start_7
    aput-byte v1, v2, v0
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    add-int/lit8 v0, p1, 0x8

    .line 1310
    :try_start_8
    aput-byte v1, v2, v3
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    add-int/lit8 v3, p1, 0x9

    .line 1311
    :try_start_9
    aput-byte v1, v2, v0
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_2

    add-int/lit8 p1, p1, 0xa

    const/4 v0, 0x1

    .line 1312
    :try_start_a
    aput-byte v0, v2, v3
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3

    .line 1316
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :catch_0
    move-exception p1

    move v3, v0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_0
    move v4, v3

    goto :goto_1

    :catch_3
    move-exception v0

    move v4, p1

    move-object p1, v0

    .line 1317
    :goto_1
    new-instance v0, Lads_mobile_sdk/oy$c;

    iget v1, p0, Lads_mobile_sdk/oy$a;->e:I

    const/16 v2, 0xa

    invoke-direct {v0, v4, v1, v2, p1}, Lads_mobile_sdk/oy$c;-><init>(IIILjava/lang/Throwable;)V

    throw v0
.end method

.method public final m(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2484
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 2485
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$a;->p(I)V

    return-void
.end method

.method public final p(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1322
    iget v0, p0, Lads_mobile_sdk/oy$a;->f:I

    and-int/lit8 v1, p1, -0x80

    if-nez v1, :cond_0

    .line 1325
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/oy$a;->c:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    add-int/lit8 v2, v0, 0x1

    int-to-byte p1, p1

    :try_start_1
    aput-byte p1, v1, v0

    .line 1326
    iput v2, p0, Lads_mobile_sdk/oy$a;->f:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    move v0, v2

    goto :goto_1

    .line 1329
    :cond_0
    :try_start_2
    iget-object v1, p0, Lads_mobile_sdk/oy$a;->c:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5

    add-int/lit8 v2, v0, 0x1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    :try_start_3
    aput-byte v3, v1, v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v4, v3, -0x80

    if-nez v4, :cond_1

    add-int/lit8 v0, v0, 0x2

    int-to-byte p1, v3

    .line 1333
    :try_start_4
    aput-byte p1, v1, v2

    .line 1334
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5

    return-void

    :cond_1
    add-int/lit8 v4, v0, 0x2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1337
    :try_start_5
    aput-byte v3, v1, v2
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    ushr-int/lit8 v2, p1, 0xe

    and-int/lit8 v3, v2, -0x80

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x3

    int-to-byte p1, v2

    .line 1341
    :try_start_6
    aput-byte p1, v1, v4

    .line 1342
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    return-void

    :cond_2
    add-int/lit8 v3, v0, 0x3

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 1345
    :try_start_7
    aput-byte v2, v1, v4
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    ushr-int/lit8 v2, p1, 0x15

    and-int/lit8 v4, v2, -0x80

    if-nez v4, :cond_3

    add-int/lit8 v0, v0, 0x4

    int-to-byte p1, v2

    .line 1349
    :try_start_8
    aput-byte p1, v1, v3

    .line 1350
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5

    return-void

    :cond_3
    add-int/lit8 v4, v0, 0x4

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 1353
    :try_start_9
    aput-byte v2, v1, v3
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    ushr-int/lit8 p1, p1, 0x1c

    add-int/lit8 v0, v0, 0x5

    int-to-byte p1, p1

    .line 1356
    :try_start_a
    aput-byte p1, v1, v4

    .line 1357
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5

    return-void

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move v2, v3

    goto :goto_0

    :catch_3
    move-exception p1

    move v2, v4

    goto :goto_0

    :catch_4
    move-exception p1

    :goto_0
    move v4, v2

    goto :goto_2

    :catch_5
    move-exception p1

    :goto_1
    move v4, v0

    .line 1359
    :goto_2
    new-instance v0, Lads_mobile_sdk/oy$c;

    iget v1, p0, Lads_mobile_sdk/oy$a;->e:I

    const/4 v2, 0x1

    invoke-direct {v0, v4, v1, v2, p1}, Lads_mobile_sdk/oy$c;-><init>(IIILjava/lang/Throwable;)V

    throw v0
.end method
