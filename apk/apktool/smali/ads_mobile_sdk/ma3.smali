.class abstract Lads_mobile_sdk/ma3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lads_mobile_sdk/yv3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yv3<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lads_mobile_sdk/aw3;

    invoke-direct {v0}, Lads_mobile_sdk/aw3;-><init>()V

    sput-object v0, Lads_mobile_sdk/ma3;->a:Lads_mobile_sdk/yv3;

    return-void
.end method

.method public static a(ILads_mobile_sdk/f;Lads_mobile_sdk/la3;)I
    .locals 0

    .line 2223
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Lads_mobile_sdk/ma3;->a(Lads_mobile_sdk/f;Lads_mobile_sdk/la3;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static a(ILads_mobile_sdk/tw1;Lads_mobile_sdk/la3;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 772
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1, p2}, Lads_mobile_sdk/ma3;->a(Lads_mobile_sdk/tw1;Lads_mobile_sdk/la3;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static a(ILjava/lang/Object;Lads_mobile_sdk/la3;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Lads_mobile_sdk/la3<",
            "*>;)I"
        }
    .end annotation

    .line 6400
    check-cast p1, Lads_mobile_sdk/f;

    invoke-static {p0, p1, p2}, Lads_mobile_sdk/ma3;->a(ILads_mobile_sdk/f;Lads_mobile_sdk/la3;)I

    move-result p0

    return p0
.end method

.method public static a(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lads_mobile_sdk/du;",
            ">;)I"
        }
    .end annotation

    .line 4927
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4931
    :cond_0
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    mul-int/2addr p0, v0

    .line 4932
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 4933
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/du;

    invoke-static {v0}, Lads_mobile_sdk/oy;->a(Lads_mobile_sdk/du;)I

    move-result v0

    add-int/2addr p0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static a(ILjava/util/List;Lads_mobile_sdk/la3;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lads_mobile_sdk/tw1;",
            ">;",
            "Lads_mobile_sdk/la3<",
            "*>;)I"
        }
    .end annotation

    .line 5721
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5727
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/tw1;

    invoke-static {p0, v3, p2}, Lads_mobile_sdk/ma3;->a(ILads_mobile_sdk/tw1;Lads_mobile_sdk/la3;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static a(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 3550
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 3556
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    .line 3557
    invoke-static {p1}, Lads_mobile_sdk/oy;->d(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_1
    const/4 p2, 0x1

    .line 3559
    invoke-static {p0, p2}, Lads_mobile_sdk/oy;->a(IZ)I

    move-result p0

    mul-int/2addr p0, p1

    return p0
.end method

.method public static a(Lads_mobile_sdk/f;Lads_mobile_sdk/la3;)I
    .locals 0

    .line 2920
    invoke-virtual {p0, p1}, Lads_mobile_sdk/f;->a(Lads_mobile_sdk/la3;)I

    move-result p0

    .line 2921
    invoke-static {p0}, Lads_mobile_sdk/oy;->d(I)I

    move-result p0

    return p0
.end method

.method public static a(Lads_mobile_sdk/tw1;Lads_mobile_sdk/la3;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1533
    check-cast p0, Lads_mobile_sdk/f;

    invoke-virtual {p0, p1}, Lads_mobile_sdk/f;->a(Lads_mobile_sdk/la3;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 4184
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static a()Lads_mobile_sdk/yv3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lads_mobile_sdk/yv3<",
            "**>;"
        }
    .end annotation

    .line 13031
    sget-object v0, Lads_mobile_sdk/ma3;->a:Lads_mobile_sdk/yv3;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;IILjava/lang/Object;Lads_mobile_sdk/yv3;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "IITUB;",
            "Lads_mobile_sdk/yv3<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 12136
    invoke-virtual {p4, p0}, Lads_mobile_sdk/yv3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    int-to-long v0, p2

    .line 12138
    invoke-virtual {p4, p3, p1, v0, v1}, Lads_mobile_sdk/yv3;->b(Ljava/lang/Object;IJ)V

    return-object p3
.end method

.method public static a(Ljava/lang/Object;ILjava/util/List;Lads_mobile_sdk/yh1$b;Ljava/lang/Object;Lads_mobile_sdk/yv3;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lads_mobile_sdk/yh1$b;",
            "TUB;",
            "Lads_mobile_sdk/yv3<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p3, :cond_0

    return-object p4

    .line 7394
    :cond_0
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    .line 7396
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 7398
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 7399
    invoke-interface {p3, v4}, Lads_mobile_sdk/yh1$b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v1, v2, :cond_1

    .line 7401
    invoke-interface {p2, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7406
    :cond_2
    invoke-static {p0, p1, v4, p4, p5}, Lads_mobile_sdk/ma3;->a(Ljava/lang/Object;IILjava/lang/Object;Lads_mobile_sdk/yv3;)Ljava/lang/Object;

    move-result-object p4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eq v2, v0, :cond_4

    .line 7411
    invoke-interface {p2, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_4
    return-object p4

    .line 7414
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7415
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7416
    invoke-interface {p3, v0}, Lads_mobile_sdk/yh1$b;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 7418
    invoke-static {p0, p1, v0, p4, p5}, Lads_mobile_sdk/ma3;->a(Ljava/lang/Object;IILjava/lang/Object;Lads_mobile_sdk/yv3;)Ljava/lang/Object;

    move-result-object p4

    .line 7420
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_7
    return-object p4
.end method

.method public static a(ILjava/util/List;Lads_mobile_sdk/py;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lads_mobile_sdk/du;",
            ">;",
            "Lads_mobile_sdk/py;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 12699
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12700
    invoke-virtual {p2, p0, p1}, Lads_mobile_sdk/py;->a(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static a(ILjava/util/List;Lads_mobile_sdk/py;Lads_mobile_sdk/la3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lads_mobile_sdk/py;",
            "Lads_mobile_sdk/la3<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 13029
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13030
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->a(ILjava/util/List;Lads_mobile_sdk/la3;)V

    :cond_0
    return-void
.end method

.method public static a(ILjava/util/List;Lads_mobile_sdk/py;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lads_mobile_sdk/py;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 12411
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12412
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->a(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static a(Lads_mobile_sdk/fr0;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lads_mobile_sdk/qr0$b<",
            "TFT;>;>(",
            "Lads_mobile_sdk/fr0<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    .line 8340
    invoke-virtual {p0, p2}, Lads_mobile_sdk/fr0;->a(Ljava/lang/Object;)Lads_mobile_sdk/qr0;

    move-result-object p2

    .line 8341
    invoke-virtual {p2}, Lads_mobile_sdk/qr0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8342
    invoke-virtual {p0, p1}, Lads_mobile_sdk/fr0;->b(Ljava/lang/Object;)Lads_mobile_sdk/qr0;

    move-result-object p0

    .line 8343
    invoke-virtual {p0, p2}, Lads_mobile_sdk/qr0;->a(Lads_mobile_sdk/qr0;)V

    :cond_0
    return-void
.end method

.method public static a(Lads_mobile_sdk/ku1;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lads_mobile_sdk/ku1;",
            "TT;TT;J)V"
        }
    .end annotation

    .line 9257
    invoke-static {p1, p3, p4}, Lads_mobile_sdk/hw3;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lads_mobile_sdk/hw3;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 9258
    invoke-interface {p0, v0, p2}, Lads_mobile_sdk/ku1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 9260
    invoke-static {p1, p3, p4, p0}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static a(Lads_mobile_sdk/yv3;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lads_mobile_sdk/yv3<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    .line 10189
    invoke-virtual {p0, p1}, Lads_mobile_sdk/yv3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10190
    invoke-virtual {p0, p2}, Lads_mobile_sdk/yv3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 10191
    invoke-virtual {p0, v0, p2}, Lads_mobile_sdk/yv3;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 10192
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/yv3;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 11100
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 2304
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2308
    :cond_0
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    mul-int/2addr p0, v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2321
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 2322
    instance-of v3, v2, Lads_mobile_sdk/du;

    if-eqz v3, :cond_1

    .line 2323
    check-cast v2, Lads_mobile_sdk/du;

    invoke-static {v2}, Lads_mobile_sdk/oy;->a(Lads_mobile_sdk/du;)I

    move-result v2

    goto :goto_1

    .line 2325
    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lads_mobile_sdk/oy;->a(Ljava/lang/String;)I

    move-result v2

    :goto_1
    add-int/2addr v2, p0

    move p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method public static b(ILjava/util/List;Lads_mobile_sdk/la3;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lads_mobile_sdk/la3<",
            "*>;)I"
        }
    .end annotation

    .line 1653
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1657
    :cond_0
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    mul-int/2addr p0, v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1659
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1661
    check-cast v2, Lads_mobile_sdk/f;

    invoke-static {v2, p2}, Lads_mobile_sdk/ma3;->a(Lads_mobile_sdk/f;Lads_mobile_sdk/la3;)I

    move-result v2

    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static b(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 464
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 468
    :cond_0
    invoke-static {p1}, Lads_mobile_sdk/ma3;->b(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 471
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    .line 472
    invoke-static {p1}, Lads_mobile_sdk/oy;->d(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    .line 474
    :cond_1
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 917
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 924
    :cond_0
    instance-of v2, p0, Lads_mobile_sdk/xh1;

    if-eqz v2, :cond_2

    .line 925
    check-cast p0, Lads_mobile_sdk/xh1;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 927
    invoke-virtual {p0, v1}, Lads_mobile_sdk/xh1;->c(I)I

    move-result v3

    invoke-static {v3}, Lads_mobile_sdk/oy;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 931
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lads_mobile_sdk/oy;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static b(ILjava/util/List;Lads_mobile_sdk/py;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lads_mobile_sdk/py;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3078
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3079
    invoke-virtual {p2, p0, p1}, Lads_mobile_sdk/py;->b(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static b(ILjava/util/List;Lads_mobile_sdk/py;Lads_mobile_sdk/la3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lads_mobile_sdk/py;",
            "Lads_mobile_sdk/la3<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2797
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2798
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->b(ILjava/util/List;Lads_mobile_sdk/la3;)V

    :cond_0
    return-void
.end method

.method public static b(ILjava/util/List;Lads_mobile_sdk/py;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lads_mobile_sdk/py;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2494
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2495
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->c(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static c(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 592
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    mul-int/lit8 p1, p1, 0x4

    .line 598
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    .line 599
    invoke-static {p1}, Lads_mobile_sdk/oy;->d(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    .line 601
    :cond_1
    invoke-static {p0, v0}, Lads_mobile_sdk/oy;->b(II)I

    move-result p0

    mul-int/2addr p0, p1

    return p0
.end method

.method public static c(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 1189
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static c(ILjava/util/List;Lads_mobile_sdk/py;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lads_mobile_sdk/py;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1454
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1455
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->e(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static d(ILjava/util/List;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 610
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    mul-int/lit8 p1, p1, 0x8

    .line 616
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    .line 617
    invoke-static {p1}, Lads_mobile_sdk/oy;->d(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_1
    const-wide/16 v0, 0x0

    .line 619
    invoke-static {p0, v0, v1}, Lads_mobile_sdk/oy;->a(IJ)I

    move-result p0

    mul-int/2addr p0, p1

    return p0
.end method

.method public static d(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 1225
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static d(ILjava/util/List;Lads_mobile_sdk/py;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lads_mobile_sdk/py;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1474
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->g(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static e(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 500
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 504
    :cond_0
    invoke-static {p1}, Lads_mobile_sdk/ma3;->e(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 507
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    .line 508
    invoke-static {p1}, Lads_mobile_sdk/oy;->d(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    .line 510
    :cond_1
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 989
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 996
    :cond_0
    instance-of v2, p0, Lads_mobile_sdk/xh1;

    if-eqz v2, :cond_2

    .line 997
    check-cast p0, Lads_mobile_sdk/xh1;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 999
    invoke-virtual {p0, v1}, Lads_mobile_sdk/xh1;->c(I)I

    move-result v3

    invoke-static {v3}, Lads_mobile_sdk/oy;->c(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 1003
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lads_mobile_sdk/oy;->c(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static e(ILjava/util/List;Lads_mobile_sdk/py;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lads_mobile_sdk/py;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1212
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->i(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static f(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 356
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 360
    :cond_0
    invoke-static {p1}, Lads_mobile_sdk/ma3;->f(Ljava/util/List;)I

    move-result v0

    if-eqz p2, :cond_1

    .line 363
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    .line 364
    invoke-static {v0}, Lads_mobile_sdk/oy;->d(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    .line 366
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    mul-int/2addr p0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static f(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 701
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 708
    :cond_0
    instance-of v2, p0, Lads_mobile_sdk/au1;

    if-eqz v2, :cond_2

    .line 709
    check-cast p0, Lads_mobile_sdk/au1;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 711
    invoke-virtual {p0, v1}, Lads_mobile_sdk/au1;->f(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lads_mobile_sdk/oy;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 715
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lads_mobile_sdk/oy;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static f(ILjava/util/List;Lads_mobile_sdk/py;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lads_mobile_sdk/py;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 892
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->k(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static g(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 572
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 577
    :cond_0
    invoke-static {p1}, Lads_mobile_sdk/ma3;->g(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 580
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    .line 581
    invoke-static {p1}, Lads_mobile_sdk/oy;->d(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    .line 583
    :cond_1
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static g(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1134
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1141
    :cond_0
    instance-of v2, p0, Lads_mobile_sdk/xh1;

    if-eqz v2, :cond_2

    .line 1142
    check-cast p0, Lads_mobile_sdk/xh1;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1144
    invoke-virtual {p0, v1}, Lads_mobile_sdk/xh1;->c(I)I

    move-result v3

    invoke-static {v3}, Lads_mobile_sdk/oy;->g(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 1148
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lads_mobile_sdk/oy;->g(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static g(ILjava/util/List;Lads_mobile_sdk/py;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lads_mobile_sdk/py;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1373
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1374
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->m(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static h(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 428
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 432
    :cond_0
    invoke-static {p1}, Lads_mobile_sdk/ma3;->h(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 435
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    .line 436
    invoke-static {p1}, Lads_mobile_sdk/oy;->d(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    .line 438
    :cond_1
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static h(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 845
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 852
    :cond_0
    instance-of v2, p0, Lads_mobile_sdk/au1;

    if-eqz v2, :cond_2

    .line 853
    check-cast p0, Lads_mobile_sdk/au1;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 855
    invoke-virtual {p0, v1}, Lads_mobile_sdk/au1;->f(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lads_mobile_sdk/oy;->d(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 859
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lads_mobile_sdk/oy;->d(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static h(ILjava/util/List;Lads_mobile_sdk/py;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lads_mobile_sdk/py;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1044
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->o(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static i(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 536
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 540
    :cond_0
    invoke-static {p1}, Lads_mobile_sdk/ma3;->i(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 543
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    .line 544
    invoke-static {p1}, Lads_mobile_sdk/oy;->d(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    .line 546
    :cond_1
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static i(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1061
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1068
    :cond_0
    instance-of v2, p0, Lads_mobile_sdk/xh1;

    if-eqz v2, :cond_2

    .line 1069
    check-cast p0, Lads_mobile_sdk/xh1;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1071
    invoke-virtual {p0, v1}, Lads_mobile_sdk/xh1;->c(I)I

    move-result v3

    invoke-static {v3}, Lads_mobile_sdk/oy;->i(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 1075
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lads_mobile_sdk/oy;->i(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static i(ILjava/util/List;Lads_mobile_sdk/py;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lads_mobile_sdk/py;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1332
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1333
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->q(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static j(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 392
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 396
    :cond_0
    invoke-static {p1}, Lads_mobile_sdk/ma3;->j(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 399
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    .line 400
    invoke-static {p1}, Lads_mobile_sdk/oy;->d(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    .line 402
    :cond_1
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static j(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 773
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 780
    :cond_0
    instance-of v2, p0, Lads_mobile_sdk/au1;

    if-eqz v2, :cond_2

    .line 781
    check-cast p0, Lads_mobile_sdk/au1;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 783
    invoke-virtual {p0, v1}, Lads_mobile_sdk/au1;->f(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lads_mobile_sdk/oy;->e(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 787
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lads_mobile_sdk/oy;->e(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public static j(ILjava/util/List;Lads_mobile_sdk/py;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lads_mobile_sdk/py;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1004
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->s(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static k(ILjava/util/List;Lads_mobile_sdk/py;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lads_mobile_sdk/py;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 241
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->u(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static l(ILjava/util/List;Lads_mobile_sdk/py;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lads_mobile_sdk/py;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 201
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->w(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static m(ILjava/util/List;Lads_mobile_sdk/py;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lads_mobile_sdk/py;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 233
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->y(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static n(ILjava/util/List;Lads_mobile_sdk/py;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lads_mobile_sdk/py;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 193
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p2, p0, p1, p3}, Lads_mobile_sdk/py;->A(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method
