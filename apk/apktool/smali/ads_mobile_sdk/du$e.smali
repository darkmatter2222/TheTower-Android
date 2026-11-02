.class final Lads_mobile_sdk/du$e;
.super Lads_mobile_sdk/du$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/du;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private final f:[B

.field private final g:I

.field private final h:I


# direct methods
.method static bridge synthetic -$$Nest$fgetf(Lads_mobile_sdk/du$e;)[B
    .locals 0

    iget-object p0, p0, Lads_mobile_sdk/du$e;->f:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetg(Lads_mobile_sdk/du$e;)I
    .locals 0

    iget p0, p0, Lads_mobile_sdk/du$e;->g:I

    return p0
.end method

.method public constructor <init>([BII)V
    .locals 2

    const/4 v0, 0x0

    .line 1796
    invoke-direct {p0, v0}, Lads_mobile_sdk/du$j;-><init>(Lads_mobile_sdk/du-IA;)V

    add-int v0, p2, p3

    .line 1797
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lads_mobile_sdk/du;->a(III)I

    .line 1798
    iput-object p1, p0, Lads_mobile_sdk/du$e;->f:[B

    .line 1799
    iput p2, p0, Lads_mobile_sdk/du$e;->g:I

    .line 1800
    iput p3, p0, Lads_mobile_sdk/du$e;->h:I

    return-void
.end method


# virtual methods
.method public a(II)Lads_mobile_sdk/du;
    .locals 3

    .line 3772
    iget v0, p0, Lads_mobile_sdk/du$e;->h:I

    invoke-static {p1, p2, v0}, Lads_mobile_sdk/du;->a(III)I

    move-result p2

    if-nez p2, :cond_0

    .line 3774
    sget-object p1, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    return-object p1

    .line 3776
    :cond_0
    new-instance v0, Lads_mobile_sdk/du$e;

    iget-object v1, p0, Lads_mobile_sdk/du$e;->f:[B

    iget v2, p0, Lads_mobile_sdk/du$e;->g:I

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lads_mobile_sdk/du$e;-><init>([BII)V

    return-object v0
.end method

.method public a(Lads_mobile_sdk/cu;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5660
    iget-object v0, p0, Lads_mobile_sdk/du$e;->f:[B

    iget v1, p0, Lads_mobile_sdk/du$e;->g:I

    iget v2, p0, Lads_mobile_sdk/du$e;->h:I

    invoke-virtual {p1, v0, v1, v2}, Lads_mobile_sdk/cu;->a([BII)V

    return-void
.end method

.method public a(Lads_mobile_sdk/du;II)Z
    .locals 3

    .line 1917
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v0

    if-gt p3, v0, :cond_3

    add-int v0, p2, p3

    .line 1920
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 1925
    instance-of v1, p1, Lads_mobile_sdk/du$k;

    if-eqz v1, :cond_0

    .line 1926
    check-cast p1, Lads_mobile_sdk/du$k;

    .line 1927
    iget-object v0, p0, Lads_mobile_sdk/du$e;->f:[B

    iget v1, p0, Lads_mobile_sdk/du$e;->g:I

    invoke-static {p1}, Lads_mobile_sdk/du$k;->-$$Nest$fgetf(Lads_mobile_sdk/du$k;)[B

    move-result-object p1

    invoke-static {v0, v1, p1, p2, p3}, Lads_mobile_sdk/du;->-$$Nest$sma([BI[BII)Z

    move-result p1

    return p1

    .line 1928
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/du$e;

    if-eqz v1, :cond_1

    .line 1929
    check-cast p1, Lads_mobile_sdk/du$e;

    .line 1930
    iget-object v0, p0, Lads_mobile_sdk/du$e;->f:[B

    iget v1, p0, Lads_mobile_sdk/du$e;->g:I

    iget-object v2, p1, Lads_mobile_sdk/du$e;->f:[B

    iget p1, p1, Lads_mobile_sdk/du$e;->g:I

    add-int/2addr p1, p2

    invoke-static {v0, v1, v2, p1, p3}, Lads_mobile_sdk/du;->-$$Nest$sma([BI[BII)Z

    move-result p1

    return p1

    .line 1934
    :cond_1
    invoke-virtual {p1, p2, v0}, Lads_mobile_sdk/du;->b(II)Lads_mobile_sdk/du;

    move-result-object p1

    iget p2, p0, Lads_mobile_sdk/du$e;->g:I

    add-int/2addr p3, p2

    .line 1935
    invoke-virtual {p0, p2, p3}, Lads_mobile_sdk/du$e;->b(II)Lads_mobile_sdk/du;

    move-result-object p2

    invoke-virtual {p1, p2}, Lads_mobile_sdk/du;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1936
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1937
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

    .line 1938
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lads_mobile_sdk/du$e;->size()I

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
    .locals 2

    .line 5708
    iget-object v0, p0, Lads_mobile_sdk/du$e;->f:[B

    iget v1, p0, Lads_mobile_sdk/du$e;->g:I

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lads_mobile_sdk/yh1;->a(I[BII)I

    move-result p1

    return p1
.end method

.method public b(II)Lads_mobile_sdk/du;
    .locals 3

    .line 7551
    iget v0, p0, Lads_mobile_sdk/du$e;->h:I

    invoke-static {p1, p2, v0}, Lads_mobile_sdk/du;->a(III)I

    move-result p2

    if-nez p2, :cond_0

    .line 7553
    sget-object p1, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    return-object p1

    .line 7555
    :cond_0
    new-instance v0, Lads_mobile_sdk/du$e;

    iget-object v1, p0, Lads_mobile_sdk/du$e;->f:[B

    iget v2, p0, Lads_mobile_sdk/du$e;->g:I

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lads_mobile_sdk/du$e;-><init>([BII)V

    return-object v0
.end method

.method public b(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .line 7556
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/du$e;->f:[B

    iget v2, p0, Lads_mobile_sdk/du$e;->g:I

    iget v3, p0, Lads_mobile_sdk/du$e;->h:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public b([BIII)V
    .locals 2

    .line 1855
    iget-object v0, p0, Lads_mobile_sdk/du$e;->f:[B

    iget v1, p0, Lads_mobile_sdk/du$e;->g:I

    add-int/2addr v1, p2

    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public b(Lads_mobile_sdk/du;)Z
    .locals 2

    .line 3761
    instance-of v0, p1, Lads_mobile_sdk/du$k;

    if-nez v0, :cond_1

    instance-of v0, p1, Lads_mobile_sdk/du$e;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3767
    :cond_0
    invoke-virtual {p1, p0}, Lads_mobile_sdk/du;->b(Lads_mobile_sdk/du;)Z

    move-result p1

    return p1

    .line 3768
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lads_mobile_sdk/du$e;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lads_mobile_sdk/du$e;->a(Lads_mobile_sdk/du;II)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1869
    iget-object v0, p0, Lads_mobile_sdk/du$e;->f:[B

    iget v1, p0, Lads_mobile_sdk/du$e;->g:I

    iget v2, p0, Lads_mobile_sdk/du$e;->h:I

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public d(I)B
    .locals 2

    .line 1822
    iget-object v0, p0, Lads_mobile_sdk/du$e;->f:[B

    iget v1, p0, Lads_mobile_sdk/du$e;->g:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public g()Lads_mobile_sdk/my;
    .locals 4

    .line 1952
    iget-object v0, p0, Lads_mobile_sdk/du$e;->f:[B

    iget v1, p0, Lads_mobile_sdk/du$e;->g:I

    iget v2, p0, Lads_mobile_sdk/du$e;->h:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/my;->a([BIIZ)Lads_mobile_sdk/my;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1827
    iget v0, p0, Lads_mobile_sdk/du$e;->h:I

    return v0
.end method
