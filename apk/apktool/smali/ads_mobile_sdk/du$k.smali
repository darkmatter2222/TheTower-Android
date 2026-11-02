.class final Lads_mobile_sdk/du$k;
.super Lads_mobile_sdk/du$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/du;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# instance fields
.field private final f:[B


# direct methods
.method static bridge synthetic -$$Nest$fgetf(Lads_mobile_sdk/du$k;)[B
    .locals 0

    iget-object p0, p0, Lads_mobile_sdk/du$k;->f:[B

    return-object p0
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1603
    invoke-direct {p0, v0}, Lads_mobile_sdk/du$j;-><init>(Lads_mobile_sdk/du-IA;)V

    .line 1605
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1607
    iput-object p1, p0, Lads_mobile_sdk/du$k;->f:[B

    return-void
.end method


# virtual methods
.method public a(II)Lads_mobile_sdk/du;
    .locals 2

    .line 3379
    invoke-virtual {p0}, Lads_mobile_sdk/du$k;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lads_mobile_sdk/du;->a(III)I

    move-result p2

    if-nez p2, :cond_0

    .line 3382
    sget-object p1, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    return-object p1

    .line 3385
    :cond_0
    new-instance v0, Lads_mobile_sdk/du$e;

    iget-object v1, p0, Lads_mobile_sdk/du$k;->f:[B

    invoke-direct {v0, v1, p1, p2}, Lads_mobile_sdk/du$e;-><init>([BII)V

    return-object v0
.end method

.method public a(Lads_mobile_sdk/cu;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5066
    iget-object v0, p0, Lads_mobile_sdk/du$k;->f:[B

    invoke-virtual {p0}, Lads_mobile_sdk/du$k;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lads_mobile_sdk/cu;->a([BII)V

    return-void
.end method

.method public a(Lads_mobile_sdk/du;II)Z
    .locals 3

    .line 1730
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v0

    if-gt p3, v0, :cond_3

    add-int v0, p2, p3

    .line 1733
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 1738
    instance-of v1, p1, Lads_mobile_sdk/du$k;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1739
    check-cast p1, Lads_mobile_sdk/du$k;

    .line 1740
    iget-object v0, p0, Lads_mobile_sdk/du$k;->f:[B

    iget-object p1, p1, Lads_mobile_sdk/du$k;->f:[B

    invoke-static {v0, v2, p1, p2, p3}, Lads_mobile_sdk/du;->-$$Nest$sma([BI[BII)Z

    move-result p1

    return p1

    .line 1741
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/du$e;

    if-eqz v1, :cond_1

    .line 1742
    check-cast p1, Lads_mobile_sdk/du$e;

    .line 1743
    iget-object v0, p0, Lads_mobile_sdk/du$k;->f:[B

    invoke-static {p1}, Lads_mobile_sdk/du$e;->-$$Nest$fgetf(Lads_mobile_sdk/du$e;)[B

    move-result-object v1

    invoke-static {p1}, Lads_mobile_sdk/du$e;->-$$Nest$fgetg(Lads_mobile_sdk/du$e;)I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {v0, v2, v1, p1, p3}, Lads_mobile_sdk/du;->-$$Nest$sma([BI[BII)Z

    move-result p1

    return p1

    .line 1746
    :cond_1
    invoke-virtual {p1, p2, v0}, Lads_mobile_sdk/du;->b(II)Lads_mobile_sdk/du;

    move-result-object p1

    invoke-virtual {p0, v2, p3}, Lads_mobile_sdk/du$k;->b(II)Lads_mobile_sdk/du;

    move-result-object p2

    invoke-virtual {p1, p2}, Lads_mobile_sdk/du;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1747
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1748
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ran off end of other: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1749
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lads_mobile_sdk/du$k;->size()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Length too large: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(III)I
    .locals 1

    .line 5122
    iget-object v0, p0, Lads_mobile_sdk/du$k;->f:[B

    invoke-static {p1, v0, p2, p3}, Lads_mobile_sdk/yh1;->a(I[BII)I

    move-result p1

    return p1
.end method

.method public b(II)Lads_mobile_sdk/du;
    .locals 2

    .line 6763
    invoke-virtual {p0}, Lads_mobile_sdk/du$k;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lads_mobile_sdk/du;->a(III)I

    move-result p2

    if-nez p2, :cond_0

    .line 6766
    sget-object p1, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    return-object p1

    .line 6769
    :cond_0
    new-instance v0, Lads_mobile_sdk/du$e;

    iget-object v1, p0, Lads_mobile_sdk/du$k;->f:[B

    invoke-direct {v0, v1, p1, p2}, Lads_mobile_sdk/du$e;-><init>([BII)V

    return-object v0
.end method

.method public b(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 6770
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/du$k;->f:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public b([BIII)V
    .locals 1

    .line 1656
    iget-object v0, p0, Lads_mobile_sdk/du$k;->f:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final b(Lads_mobile_sdk/du;)Z
    .locals 2

    .line 3364
    instance-of v0, p1, Lads_mobile_sdk/du$k;

    if-eqz v0, :cond_0

    .line 3365
    iget-object v0, p0, Lads_mobile_sdk/du$k;->f:[B

    check-cast p1, Lads_mobile_sdk/du$k;

    iget-object p1, p1, Lads_mobile_sdk/du$k;->f:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 3366
    :cond_0
    instance-of v0, p1, Lads_mobile_sdk/du$e;

    if-eqz v0, :cond_1

    .line 3367
    invoke-virtual {p0}, Lads_mobile_sdk/du$k;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lads_mobile_sdk/du$k;->a(Lads_mobile_sdk/du;II)Z

    move-result p1

    return p1

    .line 3371
    :cond_1
    invoke-virtual {p1, p0}, Lads_mobile_sdk/du;->b(Lads_mobile_sdk/du;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1666
    iget-object v0, p0, Lads_mobile_sdk/du$k;->f:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public d(I)B
    .locals 1

    .line 1617
    iget-object v0, p0, Lads_mobile_sdk/du$k;->f:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public g()Lads_mobile_sdk/my;
    .locals 4

    .line 1766
    iget-object v0, p0, Lads_mobile_sdk/du$k;->f:[B

    invoke-virtual {p0}, Lads_mobile_sdk/du$k;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lads_mobile_sdk/my;->a([BIIZ)Lads_mobile_sdk/my;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1622
    iget-object v0, p0, Lads_mobile_sdk/du$k;->f:[B

    array-length v0, v0

    return v0
.end method
