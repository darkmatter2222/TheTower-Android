.class abstract Lads_mobile_sdk/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/ao$a;
    }
.end annotation


# static fields
.field private static volatile a:I = 0x64


# direct methods
.method public static a([BI)D
    .locals 0

    .line 1912
    invoke-static {p0, p1}, Lads_mobile_sdk/ao;->c([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static a(I[BIILads_mobile_sdk/ao$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 7582
    invoke-static {p0}, Lads_mobile_sdk/u24;->a(I)I

    move-result v0

    if-eqz v0, :cond_8

    .line 7585
    invoke-static {p0}, Lads_mobile_sdk/u24;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 7615
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->c()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    .line 7616
    iget v0, p4, Lads_mobile_sdk/ao$a;->e:I

    add-int/2addr v0, v1

    iput v0, p4, Lads_mobile_sdk/ao$a;->e:I

    .line 7617
    invoke-static {v0}, Lads_mobile_sdk/ao;->a(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    .line 7619
    invoke-static {p1, p2, p4}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 7620
    iget v0, p4, Lads_mobile_sdk/ao$a;->a:I

    if-ne v0, p0, :cond_2

    goto :goto_1

    .line 7624
    :cond_2
    invoke-static {v0, p1, p2, p3, p4}, Lads_mobile_sdk/ao;->a(I[BIILads_mobile_sdk/ao$a;)I

    move-result p2

    goto :goto_0

    .line 7626
    :cond_3
    :goto_1
    iget p1, p4, Lads_mobile_sdk/ao$a;->e:I

    sub-int/2addr p1, v1

    iput p1, p4, Lads_mobile_sdk/ao$a;->e:I

    if-gt p2, p3, :cond_4

    if-ne v0, p0, :cond_4

    return p2

    .line 7628
    :cond_4
    invoke-static {}, Lads_mobile_sdk/np1;->h()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    .line 7629
    :cond_5
    array-length p0, p1

    invoke-static {p1, p2, p0, p4}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p0

    .line 7630
    iget p1, p4, Lads_mobile_sdk/ao$a;->a:I

    add-int/2addr p0, p1

    return p0

    :cond_6
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 7631
    :cond_7
    invoke-static {p1, p2, p4}, Lads_mobile_sdk/ao;->e([BILads_mobile_sdk/ao$a;)I

    move-result p0

    return p0

    .line 7632
    :cond_8
    invoke-static {}, Lads_mobile_sdk/np1;->c()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static a(I[BIILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .line 1504
    check-cast p4, Lads_mobile_sdk/ct;

    .line 1505
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->e([BILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 1506
    iget-wide v0, p5, Lads_mobile_sdk/ao$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-virtual {p4, v0}, Lads_mobile_sdk/ct;->a(Z)V

    :goto_1
    if-ge p2, p3, :cond_3

    .line 1508
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v0

    .line 1509
    iget v5, p5, Lads_mobile_sdk/ao$a;->a:I

    if-eq p0, v5, :cond_1

    goto :goto_3

    .line 1512
    :cond_1
    invoke-static {p1, v0, p5}, Lads_mobile_sdk/ao;->e([BILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 1513
    iget-wide v5, p5, Lads_mobile_sdk/ao$a;->b:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    invoke-virtual {p4, v0}, Lads_mobile_sdk/ct;->a(Z)V

    goto :goto_1

    :cond_3
    :goto_3
    return p2
.end method

.method public static a(I[BIILads_mobile_sdk/zv3;Lads_mobile_sdk/ao$a;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 5626
    invoke-static {p0}, Lads_mobile_sdk/u24;->a(I)I

    move-result v0

    if-eqz v0, :cond_9

    .line 5629
    invoke-static {p0}, Lads_mobile_sdk/u24;->b(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    .line 5671
    invoke-static {p1, p2}, Lads_mobile_sdk/ao;->b([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lads_mobile_sdk/zv3;->a(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 5670
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->c()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    .line 5686
    :cond_1
    invoke-static {}, Lads_mobile_sdk/zv3;->f()Lads_mobile_sdk/zv3;

    move-result-object v6

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    .line 5689
    iget v2, p5, Lads_mobile_sdk/ao$a;->e:I

    add-int/2addr v2, v1

    iput v2, p5, Lads_mobile_sdk/ao$a;->e:I

    .line 5690
    invoke-static {v2}, Lads_mobile_sdk/ao;->a(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    .line 5692
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v4

    .line 5693
    iget v2, p5, Lads_mobile_sdk/ao$a;->a:I

    if-ne v2, v0, :cond_2

    move p2, v4

    goto :goto_1

    :cond_2
    move-object v3, p1

    move v5, p3

    move-object v7, p5

    .line 5697
    invoke-static/range {v2 .. v7}, Lads_mobile_sdk/ao;->a(I[BIILads_mobile_sdk/zv3;Lads_mobile_sdk/ao$a;)I

    move-result p2

    goto :goto_0

    :cond_3
    :goto_1
    move v5, p3

    move-object v7, p5

    .line 5699
    iget p1, v7, Lads_mobile_sdk/ao$a;->e:I

    sub-int/2addr p1, v1

    iput p1, v7, Lads_mobile_sdk/ao$a;->e:I

    if-gt p2, v5, :cond_4

    if-ne v2, v0, :cond_4

    .line 5703
    invoke-virtual {p4, p0, v6}, Lads_mobile_sdk/zv3;->a(ILjava/lang/Object;)V

    return p2

    .line 5704
    :cond_4
    invoke-static {}, Lads_mobile_sdk/np1;->h()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    :cond_5
    move-object v3, p1

    move-object v7, p5

    .line 5705
    array-length p1, v3

    invoke-static {v3, p2, p1, v7}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 5706
    iget p2, v7, Lads_mobile_sdk/ao$a;->a:I

    if-nez p2, :cond_6

    .line 5708
    sget-object p3, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    invoke-virtual {p4, p0, p3}, Lads_mobile_sdk/zv3;->a(ILjava/lang/Object;)V

    goto :goto_2

    .line 5710
    :cond_6
    invoke-static {v3, p1, p2}, Lads_mobile_sdk/du;->a([BII)Lads_mobile_sdk/du;

    move-result-object p3

    invoke-virtual {p4, p0, p3}, Lads_mobile_sdk/zv3;->a(ILjava/lang/Object;)V

    :goto_2
    add-int/2addr p1, p2

    return p1

    :cond_7
    move-object v3, p1

    .line 5711
    invoke-static {v3, p2}, Lads_mobile_sdk/ao;->c([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lads_mobile_sdk/zv3;->a(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_8
    move-object v3, p1

    move-object v7, p5

    .line 5712
    invoke-static {v3, p2, v7}, Lads_mobile_sdk/ao;->e([BILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 5713
    iget-wide p2, v7, Lads_mobile_sdk/ao$a;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lads_mobile_sdk/zv3;->a(ILjava/lang/Object;)V

    return p1

    .line 5714
    :cond_9
    invoke-static {}, Lads_mobile_sdk/np1;->c()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static a(I[BIILjava/lang/Object;Lads_mobile_sdk/tw1;Lads_mobile_sdk/yv3;Lads_mobile_sdk/ao$a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Ljava/lang/Object;",
            "Lads_mobile_sdk/tw1;",
            "Lads_mobile_sdk/yv3<",
            "Lads_mobile_sdk/zv3;",
            "Lads_mobile_sdk/zv3;",
            ">;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 p6, p0, 0x3

    .line 2684
    iget-object v0, p7, Lads_mobile_sdk/ao$a;->d:Lads_mobile_sdk/er0;

    .line 2685
    invoke-virtual {v0, p5, p6}, Lads_mobile_sdk/er0;->a(Lads_mobile_sdk/tw1;I)Lads_mobile_sdk/vz0$c;

    .line 2688
    invoke-static {p4}, Lads_mobile_sdk/ww1;->f(Ljava/lang/Object;)Lads_mobile_sdk/zv3;

    move-result-object p4

    move-object p5, p7

    .line 2689
    invoke-static/range {p0 .. p5}, Lads_mobile_sdk/ao;->a(I[BIILads_mobile_sdk/zv3;Lads_mobile_sdk/ao$a;)I

    move-result p0

    return p0
.end method

.method public static a(I[BILads_mobile_sdk/ao$a;)I
    .locals 2

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    .line 5794
    aget-byte v1, p1, p2

    if-ltz v1, :cond_0

    shl-int/lit8 p1, v1, 0x7

    or-int/2addr p0, p1

    .line 5796
    iput p0, p3, Lads_mobile_sdk/ao$a;->a:I

    return v0

    :cond_0
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    add-int/lit8 v1, p2, 0x2

    .line 5801
    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    .line 5803
    iput p0, p3, Lads_mobile_sdk/ao$a;->a:I

    return v1

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x3

    .line 5808
    aget-byte v1, p1, v1

    if-ltz v1, :cond_2

    shl-int/lit8 p1, v1, 0x15

    or-int/2addr p0, p1

    .line 5810
    iput p0, p3, Lads_mobile_sdk/ao$a;->a:I

    return v0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr p0, v1

    add-int/lit8 p2, p2, 0x4

    .line 5815
    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    .line 5817
    iput p0, p3, Lads_mobile_sdk/ao$a;->a:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 5822
    aget-byte p2, p1, p2

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_0

    .line 5824
    :cond_4
    iput p0, p3, Lads_mobile_sdk/ao$a;->a:I

    return v0
.end method

.method public static a(J[BILads_mobile_sdk/ao$a;)I
    .locals 7

    const-wide/16 v0, 0x7f

    and-long/2addr p0, v0

    add-int/lit8 v0, p3, 0x1

    .line 5967
    aget-byte p3, p2, p3

    and-int/lit8 v1, p3, 0x7f

    int-to-long v1, v1

    const/4 v3, 0x7

    shl-long/2addr v1, v3

    or-long/2addr p0, v1

    move v1, v3

    :goto_0
    if-gez p3, :cond_0

    add-int/lit8 p3, v0, 0x1

    .line 5971
    aget-byte v0, p2, v0

    add-int/2addr v1, v3

    and-int/lit8 v2, v0, 0x7f

    int-to-long v4, v2

    shl-long/2addr v4, v1

    or-long/2addr p0, v4

    move v6, v0

    move v0, p3

    move p3, v6

    goto :goto_0

    .line 5975
    :cond_0
    iput-wide p0, p4, Lads_mobile_sdk/ao$a;->b:J

    return v0
.end method

.method public static a(Lads_mobile_sdk/la3;I[BIILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/la3<",
            "*>;I[BII",
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/Object;",
            ">;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, -0x8

    or-int/lit8 v5, v0, 0x4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    .line 3685
    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/ao;->a(Lads_mobile_sdk/la3;[BIIILads_mobile_sdk/ao$a;)I

    move-result p0

    .line 3686
    iget-object p2, v6, Lads_mobile_sdk/ao$a;->c:Ljava/lang/Object;

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p0, v4, :cond_1

    .line 3688
    invoke-static {v2, p0, v6}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v3

    .line 3689
    iget p2, v6, Lads_mobile_sdk/ao$a;->a:I

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 3692
    :cond_0
    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/ao;->a(Lads_mobile_sdk/la3;[BIIILads_mobile_sdk/ao$a;)I

    move-result p0

    .line 3693
    iget-object p2, v6, Lads_mobile_sdk/ao$a;->c:Ljava/lang/Object;

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method

.method public static a(Lads_mobile_sdk/la3;[BIIILads_mobile_sdk/ao$a;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lads_mobile_sdk/la3<",
            "TT;>;[BIII",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2931
    invoke-interface {p0}, Lads_mobile_sdk/la3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 2932
    invoke-static/range {v0 .. v6}, Lads_mobile_sdk/ao;->a(Ljava/lang/Object;Lads_mobile_sdk/la3;[BIIILads_mobile_sdk/ao$a;)I

    move-result p0

    .line 2933
    invoke-interface {v1, v0}, Lads_mobile_sdk/la3;->c(Ljava/lang/Object;)V

    .line 2934
    iput-object v0, v6, Lads_mobile_sdk/ao$a;->c:Ljava/lang/Object;

    return p0
.end method

.method public static a(Lads_mobile_sdk/la3;[BIILads_mobile_sdk/ao$a;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lads_mobile_sdk/la3<",
            "TT;>;[BII",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4046
    invoke-interface {p0}, Lads_mobile_sdk/la3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 4047
    invoke-static/range {v0 .. v5}, Lads_mobile_sdk/ao;->a(Ljava/lang/Object;Lads_mobile_sdk/la3;[BIILads_mobile_sdk/ao$a;)I

    move-result p0

    .line 4048
    invoke-interface {v1, v0}, Lads_mobile_sdk/la3;->c(Ljava/lang/Object;)V

    .line 4049
    iput-object v0, v5, Lads_mobile_sdk/ao$a;->c:Ljava/lang/Object;

    return p0
.end method

.method public static a(Ljava/lang/Object;Lads_mobile_sdk/la3;[BIIILads_mobile_sdk/ao$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lads_mobile_sdk/la3<",
            "TT;>;[BIII",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6250
    check-cast p1, Lads_mobile_sdk/ww1;

    .line 6251
    iget v0, p6, Lads_mobile_sdk/ao$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p6, Lads_mobile_sdk/ao$a;->e:I

    .line 6252
    invoke-static {v0}, Lads_mobile_sdk/ao;->a(I)V

    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    .line 6254
    invoke-virtual/range {p0 .. p6}, Lads_mobile_sdk/ww1;->a(Ljava/lang/Object;[BIIILads_mobile_sdk/ao$a;)I

    move-result p0

    .line 6255
    iget p2, p6, Lads_mobile_sdk/ao$a;->e:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p6, Lads_mobile_sdk/ao$a;->e:I

    .line 6256
    iput-object p1, p6, Lads_mobile_sdk/ao$a;->c:Ljava/lang/Object;

    return p0
.end method

.method public static a(Ljava/lang/Object;Lads_mobile_sdk/la3;[BIILads_mobile_sdk/ao$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lads_mobile_sdk/la3<",
            "TT;>;[BII",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6509
    invoke-static {p2, p3, p4, p5}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p3

    .line 6510
    iget p4, p5, Lads_mobile_sdk/ao$a;->a:I

    .line 6511
    iget v0, p5, Lads_mobile_sdk/ao$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Lads_mobile_sdk/ao$a;->e:I

    .line 6512
    invoke-static {v0}, Lads_mobile_sdk/ao;->a(I)V

    add-int/2addr p4, p3

    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    .line 6513
    invoke-interface/range {p0 .. p5}, Lads_mobile_sdk/la3;->a(Ljava/lang/Object;[BIILads_mobile_sdk/ao$a;)V

    .line 6514
    iget p0, p5, Lads_mobile_sdk/ao$a;->e:I

    add-int/lit8 p0, p0, -0x1

    iput p0, p5, Lads_mobile_sdk/ao$a;->e:I

    .line 6515
    iput-object p1, p5, Lads_mobile_sdk/ao$a;->c:Ljava/lang/Object;

    return p4
.end method

.method public static a([BIILads_mobile_sdk/ao$a;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 3809
    invoke-static {p0, p1, p3}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result p0

    .line 3810
    iget p1, p3, Lads_mobile_sdk/ao$a;->a:I

    if-ltz p1, :cond_1

    sub-int/2addr p2, p0

    if-gt p1, p2, :cond_0

    return p0

    .line 3814
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    .line 3815
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static a([BILads_mobile_sdk/ao$a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 1729
    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 1730
    iget v0, p2, Lads_mobile_sdk/ao$a;->a:I

    if-nez v0, :cond_0

    .line 1732
    sget-object p0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    iput-object p0, p2, Lads_mobile_sdk/ao$a;->c:Ljava/lang/Object;

    return p1

    .line 1735
    :cond_0
    invoke-static {p0, p1, v0}, Lads_mobile_sdk/du;->a([BII)Lads_mobile_sdk/du;

    move-result-object p0

    iput-object p0, p2, Lads_mobile_sdk/ao$a;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1
.end method

.method public static a([BILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 4601
    check-cast p2, Lads_mobile_sdk/ct;

    .line 4602
    array-length v0, p0

    invoke-static {p0, p1, v0, p3}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 4603
    iget v0, p3, Lads_mobile_sdk/ao$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 4606
    invoke-static {p0, p1, p3}, Lads_mobile_sdk/ao;->e([BILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 4607
    iget-wide v1, p3, Lads_mobile_sdk/ao$a;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Lads_mobile_sdk/ct;->a(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    return p1

    .line 4610
    :cond_2
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method private static a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 1113
    sget v0, Lads_mobile_sdk/ao;->a:I

    if-ge p0, v0, :cond_0

    return-void

    .line 1114
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->i()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static b(I[BIILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 682
    array-length v0, p1

    invoke-static {p1, p2, v0, p5}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 683
    iget v0, p5, Lads_mobile_sdk/ao$a;->a:I

    if-nez v0, :cond_0

    .line 685
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 687
    :cond_0
    invoke-static {p1, p2, v0}, Lads_mobile_sdk/du;->a([BII)Lads_mobile_sdk/du;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/2addr p2, v0

    :goto_1
    if-ge p2, p3, :cond_3

    .line 691
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v0

    .line 692
    iget v1, p5, Lads_mobile_sdk/ao$a;->a:I

    if-eq p0, v1, :cond_1

    goto :goto_2

    .line 695
    :cond_1
    array-length p2, p1

    invoke-static {p1, v0, p2, p5}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 696
    iget v0, p5, Lads_mobile_sdk/ao$a;->a:I

    if-nez v0, :cond_2

    .line 698
    sget-object v0, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 700
    :cond_2
    invoke-static {p1, p2, v0}, Lads_mobile_sdk/du;->a([BII)Lads_mobile_sdk/du;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    return p2
.end method

.method public static b(Lads_mobile_sdk/la3;I[BIILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/la3<",
            "*>;I[BII",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1580
    invoke-static {p0, p2, p3, p4, p6}, Lads_mobile_sdk/ao;->a(Lads_mobile_sdk/la3;[BIILads_mobile_sdk/ao$a;)I

    move-result p3

    .line 1581
    iget-object v0, p6, Lads_mobile_sdk/ao$a;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    .line 1583
    invoke-static {p2, p3, p6}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v0

    .line 1584
    iget v1, p6, Lads_mobile_sdk/ao$a;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 1587
    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lads_mobile_sdk/ao;->a(Lads_mobile_sdk/la3;[BIILads_mobile_sdk/ao$a;)I

    move-result p3

    .line 1588
    iget-object v0, p6, Lads_mobile_sdk/ao$a;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public static b([BI)I
    .locals 2

    .line 857
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static b([BILads_mobile_sdk/ao$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 2319
    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 2320
    iget v0, p2, Lads_mobile_sdk/ao$a;->a:I

    if-nez v0, :cond_0

    .line 2322
    const-string p0, ""

    iput-object p0, p2, Lads_mobile_sdk/ao$a;->c:Ljava/lang/Object;

    return p1

    .line 2325
    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lads_mobile_sdk/ao$a;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1
.end method

.method public static b([BILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 2121
    check-cast p2, Lads_mobile_sdk/co0;

    .line 2122
    array-length v0, p0

    invoke-static {p0, p1, v0, p3}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 2123
    iget p3, p3, Lads_mobile_sdk/ao$a;->a:I

    add-int v0, p1, p3

    .line 2125
    invoke-virtual {p2}, Lads_mobile_sdk/co0;->size()I

    move-result v1

    div-int/lit8 p3, p3, 0x8

    add-int/2addr p3, v1

    invoke-virtual {p2, p3}, Lads_mobile_sdk/co0;->d(I)V

    :goto_0
    if-ge p1, v0, :cond_0

    .line 2127
    invoke-static {p0, p1}, Lads_mobile_sdk/ao;->a([BI)D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lads_mobile_sdk/co0;->a(D)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 2131
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static c(I[BIILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .line 373
    check-cast p4, Lads_mobile_sdk/co0;

    .line 374
    invoke-static {p1, p2}, Lads_mobile_sdk/ao;->a([BI)D

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lads_mobile_sdk/co0;->a(D)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    .line 377
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v0

    .line 378
    iget v1, p5, Lads_mobile_sdk/ao$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 381
    :cond_0
    invoke-static {p1, v0}, Lads_mobile_sdk/ao;->a([BI)D

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lads_mobile_sdk/co0;->a(D)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static c([BILads_mobile_sdk/ao$a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 1234
    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 1235
    iget v0, p2, Lads_mobile_sdk/ao$a;->a:I

    if-nez v0, :cond_0

    .line 1237
    const-string p0, ""

    iput-object p0, p2, Lads_mobile_sdk/ao$a;->c:Ljava/lang/Object;

    return p1

    .line 1240
    :cond_0
    invoke-static {p0, p1, v0}, Lads_mobile_sdk/hx3;->a([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lads_mobile_sdk/ao$a;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1
.end method

.method public static c([BILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 1022
    check-cast p2, Lads_mobile_sdk/xh1;

    .line 1023
    array-length v0, p0

    invoke-static {p0, p1, v0, p3}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 1024
    iget p3, p3, Lads_mobile_sdk/ao$a;->a:I

    add-int v0, p1, p3

    .line 1026
    invoke-virtual {p2}, Lads_mobile_sdk/xh1;->size()I

    move-result v1

    div-int/lit8 p3, p3, 0x4

    add-int/2addr p3, v1

    invoke-virtual {p2, p3}, Lads_mobile_sdk/xh1;->d(I)V

    :goto_0
    if-ge p1, v0, :cond_0

    .line 1028
    invoke-static {p0, p1}, Lads_mobile_sdk/ao;->b([BI)I

    move-result p3

    invoke-virtual {p2, p3}, Lads_mobile_sdk/xh1;->b(I)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 1032
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static c([BI)J
    .locals 7

    .line 546
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static d([BI)F
    .locals 0

    .line 512
    invoke-static {p0, p1}, Lads_mobile_sdk/ao;->b([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static d(I[BIILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .line 322
    check-cast p4, Lads_mobile_sdk/xh1;

    .line 323
    invoke-static {p1, p2}, Lads_mobile_sdk/ao;->b([BI)I

    move-result v0

    invoke-virtual {p4, v0}, Lads_mobile_sdk/xh1;->b(I)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    .line 326
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v0

    .line 327
    iget v1, p5, Lads_mobile_sdk/ao$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 330
    :cond_0
    invoke-static {p1, v0}, Lads_mobile_sdk/ao;->b([BI)I

    move-result p2

    invoke-virtual {p4, p2}, Lads_mobile_sdk/xh1;->b(I)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static d([BILads_mobile_sdk/ao$a;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 1086
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 1088
    iput p1, p2, Lads_mobile_sdk/ao$a;->a:I

    return v0

    .line 1091
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lads_mobile_sdk/ao;->a(I[BILads_mobile_sdk/ao$a;)I

    move-result p0

    return p0
.end method

.method public static d([BILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 1007
    check-cast p2, Lads_mobile_sdk/au1;

    .line 1008
    array-length v0, p0

    invoke-static {p0, p1, v0, p3}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 1009
    iget p3, p3, Lads_mobile_sdk/ao$a;->a:I

    add-int v0, p1, p3

    .line 1011
    invoke-virtual {p2}, Lads_mobile_sdk/au1;->size()I

    move-result v1

    div-int/lit8 p3, p3, 0x8

    add-int/2addr p3, v1

    invoke-virtual {p2, p3}, Lads_mobile_sdk/au1;->d(I)V

    :goto_0
    if-ge p1, v0, :cond_0

    .line 1013
    invoke-static {p0, p1}, Lads_mobile_sdk/ao;->c([BI)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lads_mobile_sdk/au1;->a(J)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 1017
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static e(I[BIILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .line 339
    check-cast p4, Lads_mobile_sdk/au1;

    .line 340
    invoke-static {p1, p2}, Lads_mobile_sdk/ao;->c([BI)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lads_mobile_sdk/au1;->a(J)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    .line 343
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v0

    .line 344
    iget v1, p5, Lads_mobile_sdk/ao$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 347
    :cond_0
    invoke-static {p1, v0}, Lads_mobile_sdk/ao;->c([BI)J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lads_mobile_sdk/au1;->a(J)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static e([BILads_mobile_sdk/ao$a;)I
    .locals 5

    add-int/lit8 v0, p1, 0x1

    .line 1002
    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 1004
    iput-wide v1, p2, Lads_mobile_sdk/ao$a;->b:J

    return v0

    .line 1007
    :cond_0
    invoke-static {v1, v2, p0, v0, p2}, Lads_mobile_sdk/ao;->a(J[BILads_mobile_sdk/ao$a;)I

    move-result p0

    return p0
.end method

.method public static e([BILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 861
    check-cast p2, Lads_mobile_sdk/kx0;

    .line 862
    array-length v0, p0

    invoke-static {p0, p1, v0, p3}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 863
    iget p3, p3, Lads_mobile_sdk/ao$a;->a:I

    add-int v0, p1, p3

    .line 865
    invoke-virtual {p2}, Lads_mobile_sdk/kx0;->size()I

    move-result v1

    div-int/lit8 p3, p3, 0x4

    add-int/2addr p3, v1

    invoke-virtual {p2, p3}, Lads_mobile_sdk/kx0;->d(I)V

    :goto_0
    if-ge p1, v0, :cond_0

    .line 867
    invoke-static {p0, p1}, Lads_mobile_sdk/ao;->d([BI)F

    move-result p3

    invoke-virtual {p2, p3}, Lads_mobile_sdk/kx0;->a(F)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 871
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static f(I[BIILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .line 356
    check-cast p4, Lads_mobile_sdk/kx0;

    .line 357
    invoke-static {p1, p2}, Lads_mobile_sdk/ao;->d([BI)F

    move-result v0

    invoke-virtual {p4, v0}, Lads_mobile_sdk/kx0;->a(F)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    .line 360
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v0

    .line 361
    iget v1, p5, Lads_mobile_sdk/ao$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 364
    :cond_0
    invoke-static {p1, v0}, Lads_mobile_sdk/ao;->d([BI)F

    move-result p2

    invoke-virtual {p4, p2}, Lads_mobile_sdk/kx0;->a(F)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static f([BILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 934
    check-cast p2, Lads_mobile_sdk/xh1;

    .line 935
    array-length v0, p0

    invoke-static {p0, p1, v0, p3}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 936
    iget v0, p3, Lads_mobile_sdk/ao$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 939
    invoke-static {p0, p1, p3}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 940
    iget v1, p3, Lads_mobile_sdk/ao$a;->a:I

    invoke-static {v1}, Lads_mobile_sdk/my;->b(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lads_mobile_sdk/xh1;->b(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 943
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static g(I[BIILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .line 1004
    check-cast p4, Lads_mobile_sdk/xh1;

    .line 1005
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 1006
    iget v0, p5, Lads_mobile_sdk/ao$a;->a:I

    invoke-static {v0}, Lads_mobile_sdk/my;->b(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lads_mobile_sdk/xh1;->b(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    .line 1008
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v0

    .line 1009
    iget v1, p5, Lads_mobile_sdk/ao$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 1012
    :cond_0
    invoke-static {p1, v0, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 1013
    iget v0, p5, Lads_mobile_sdk/ao$a;->a:I

    invoke-static {v0}, Lads_mobile_sdk/my;->b(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lads_mobile_sdk/xh1;->b(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static g([BILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 588
    check-cast p2, Lads_mobile_sdk/au1;

    .line 589
    array-length v0, p0

    invoke-static {p0, p1, v0, p3}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 590
    iget v0, p3, Lads_mobile_sdk/ao$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 593
    invoke-static {p0, p1, p3}, Lads_mobile_sdk/ao;->e([BILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 594
    iget-wide v1, p3, Lads_mobile_sdk/ao$a;->b:J

    invoke-static {v1, v2}, Lads_mobile_sdk/my;->a(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lads_mobile_sdk/au1;->a(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 597
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static h(I[BIILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .line 874
    check-cast p4, Lads_mobile_sdk/au1;

    .line 875
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->e([BILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 876
    iget-wide v0, p5, Lads_mobile_sdk/ao$a;->b:J

    invoke-static {v0, v1}, Lads_mobile_sdk/my;->a(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lads_mobile_sdk/au1;->a(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    .line 878
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v0

    .line 879
    iget v1, p5, Lads_mobile_sdk/ao$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 882
    :cond_0
    invoke-static {p1, v0, p5}, Lads_mobile_sdk/ao;->e([BILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 883
    iget-wide v0, p5, Lads_mobile_sdk/ao$a;->b:J

    invoke-static {v0, v1}, Lads_mobile_sdk/my;->a(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lads_mobile_sdk/au1;->a(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static h([BILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    check-cast p2, Lads_mobile_sdk/xh1;

    .line 442
    array-length v0, p0

    invoke-static {p0, p1, v0, p3}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 443
    iget v0, p3, Lads_mobile_sdk/ao$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 446
    invoke-static {p0, p1, p3}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 447
    iget v1, p3, Lads_mobile_sdk/ao$a;->a:I

    invoke-virtual {p2, v1}, Lads_mobile_sdk/xh1;->b(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 450
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static i(I[BIILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 1075
    array-length v0, p1

    invoke-static {p1, p2, v0, p5}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 1076
    iget v0, p5, Lads_mobile_sdk/ao$a;->a:I

    const-string v1, ""

    if-nez v0, :cond_0

    .line 1078
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1080
    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1081
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/2addr p2, v0

    :goto_1
    if-ge p2, p3, :cond_3

    .line 1085
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v0

    .line 1086
    iget v2, p5, Lads_mobile_sdk/ao$a;->a:I

    if-eq p0, v2, :cond_1

    goto :goto_2

    .line 1089
    :cond_1
    array-length p2, p1

    invoke-static {p1, v0, p2, p5}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 1090
    iget v0, p5, Lads_mobile_sdk/ao$a;->a:I

    if-nez v0, :cond_2

    .line 1092
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1094
    :cond_2
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1095
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    return p2
.end method

.method public static i([BILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    check-cast p2, Lads_mobile_sdk/au1;

    .line 459
    array-length v0, p0

    invoke-static {p0, p1, v0, p3}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 460
    iget v0, p3, Lads_mobile_sdk/ao$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 463
    invoke-static {p0, p1, p3}, Lads_mobile_sdk/ao;->e([BILads_mobile_sdk/ao$a;)I

    move-result p1

    .line 464
    iget-wide v1, p3, Lads_mobile_sdk/ao$a;->b:J

    invoke-virtual {p2, v1, v2}, Lads_mobile_sdk/au1;->a(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 467
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static j(I[BIILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 643
    array-length v0, p1

    invoke-static {p1, p2, v0, p5}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 644
    iget v0, p5, Lads_mobile_sdk/ao$a;->a:I

    const-string v1, ""

    if-nez v0, :cond_0

    .line 646
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int v2, p2, v0

    .line 648
    invoke-static {p1, p2, v2}, Lads_mobile_sdk/hx3;->b([BII)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 651
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 652
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move p2, v2

    :goto_1
    if-ge p2, p3, :cond_4

    .line 656
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v0

    .line 657
    iget v2, p5, Lads_mobile_sdk/ao$a;->a:I

    if-eq p0, v2, :cond_1

    goto :goto_2

    .line 660
    :cond_1
    array-length p2, p1

    invoke-static {p1, v0, p2, p5}, Lads_mobile_sdk/ao;->a([BIILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 661
    iget v0, p5, Lads_mobile_sdk/ao$a;->a:I

    if-nez v0, :cond_2

    .line 663
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int v2, p2, v0

    .line 665
    invoke-static {p1, p2, v2}, Lads_mobile_sdk/hx3;->b([BII)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 668
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 669
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 670
    :cond_3
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    :cond_4
    :goto_2
    return p2

    .line 671
    :cond_5
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static k(I[BIILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .line 288
    check-cast p4, Lads_mobile_sdk/xh1;

    .line 289
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 290
    iget v0, p5, Lads_mobile_sdk/ao$a;->a:I

    invoke-virtual {p4, v0}, Lads_mobile_sdk/xh1;->b(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    .line 292
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v0

    .line 293
    iget v1, p5, Lads_mobile_sdk/ao$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 296
    :cond_0
    invoke-static {p1, v0, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 297
    iget v0, p5, Lads_mobile_sdk/ao$a;->a:I

    invoke-virtual {p4, v0}, Lads_mobile_sdk/xh1;->b(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static l(I[BIILads_mobile_sdk/yh1$f;Lads_mobile_sdk/ao$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lads_mobile_sdk/yh1$f<",
            "*>;",
            "Lads_mobile_sdk/ao$a;",
            ")I"
        }
    .end annotation

    .line 305
    check-cast p4, Lads_mobile_sdk/au1;

    .line 306
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->e([BILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 307
    iget-wide v0, p5, Lads_mobile_sdk/ao$a;->b:J

    invoke-virtual {p4, v0, v1}, Lads_mobile_sdk/au1;->a(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    .line 309
    invoke-static {p1, p2, p5}, Lads_mobile_sdk/ao;->d([BILads_mobile_sdk/ao$a;)I

    move-result v0

    .line 310
    iget v1, p5, Lads_mobile_sdk/ao$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 313
    :cond_0
    invoke-static {p1, v0, p5}, Lads_mobile_sdk/ao;->e([BILads_mobile_sdk/ao$a;)I

    move-result p2

    .line 314
    iget-wide v0, p5, Lads_mobile_sdk/ao$a;->b:J

    invoke-virtual {p4, v0, v1}, Lads_mobile_sdk/au1;->a(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method
