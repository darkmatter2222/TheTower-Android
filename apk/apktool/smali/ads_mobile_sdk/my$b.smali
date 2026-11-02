.class final Lads_mobile_sdk/my$b;
.super Lads_mobile_sdk/my;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/my;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final h:Ljava/io/InputStream;

.field private final i:[B

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1631
    invoke-direct {p0, v0}, Lads_mobile_sdk/my;-><init>(Lads_mobile_sdk/my-IA;)V

    const v0, 0x7fffffff

    .line 1632
    iput v0, p0, Lads_mobile_sdk/my$b;->o:I

    .line 1635
    const-string v0, "input"

    invoke-static {p1, v0}, Lads_mobile_sdk/yh1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x8

    if-ge p2, v0, :cond_0

    move p2, v0

    .line 1639
    :cond_0
    iput-object p1, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    .line 1640
    new-array p1, p2, [B

    iput-object p1, p0, Lads_mobile_sdk/my$b;->i:[B

    const/4 p1, 0x0

    .line 1641
    iput p1, p0, Lads_mobile_sdk/my$b;->j:I

    .line 1642
    iput p1, p0, Lads_mobile_sdk/my$b;->l:I

    .line 1643
    iput p1, p0, Lads_mobile_sdk/my$b;->n:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;ILads_mobile_sdk/my-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lads_mobile_sdk/my$b;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private G()V
    .locals 3

    .line 2283
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    iget v1, p0, Lads_mobile_sdk/my$b;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lads_mobile_sdk/my$b;->j:I

    .line 2284
    iget v1, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v1, v0

    .line 2285
    iget v2, p0, Lads_mobile_sdk/my$b;->o:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 2287
    iput v1, p0, Lads_mobile_sdk/my$b;->k:I

    sub-int/2addr v0, v1

    .line 2288
    iput v0, p0, Lads_mobile_sdk/my$b;->j:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2290
    iput v0, p0, Lads_mobile_sdk/my$b;->k:I

    return-void
.end method

.method private H()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2085
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 2086
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->I()V

    return-void

    .line 2088
    :cond_0
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->J()V

    return-void
.end method

.method private I()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 2094
    iget-object v1, p0, Lads_mobile_sdk/my$b;->i:[B

    iget v2, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lads_mobile_sdk/my$b;->l:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2098
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->f()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method private J()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 2103
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->B()B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2107
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->f()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method private static a(Ljava/io/InputStream;[BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3358
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_0
    .catch Lads_mobile_sdk/np1; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3360
    invoke-virtual {p0}, Lads_mobile_sdk/np1;->j()V

    .line 3361
    throw p0
.end method

.method private static a(Ljava/io/InputStream;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7681
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0
    :try_end_0
    .catch Lads_mobile_sdk/np1; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 7683
    invoke-virtual {p0}, Lads_mobile_sdk/np1;->j()V

    .line 7684
    throw p0
.end method

.method private a(IZ)Lads_mobile_sdk/du;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5978
    invoke-direct {p0, p1}, Lads_mobile_sdk/my$b;->h(I)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5982
    array-length p1, v0

    invoke-static {v0, v1, p1, p2}, Lads_mobile_sdk/du;->a([BIIZ)Lads_mobile_sdk/du;

    move-result-object p1

    return-object p1

    .line 5985
    :cond_0
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 5986
    iget v2, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int v3, v2, v0

    .line 5989
    iget v4, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v4, v2

    iput v4, p0, Lads_mobile_sdk/my$b;->n:I

    .line 5990
    iput v1, p0, Lads_mobile_sdk/my$b;->l:I

    .line 5991
    iput v1, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int v2, p1, v3

    .line 5998
    invoke-direct {p0, v2}, Lads_mobile_sdk/my$b;->i(I)Ljava/util/List;

    move-result-object v2

    .line 6001
    new-array p1, p1, [B

    .line 6004
    iget-object v4, p0, Lads_mobile_sdk/my$b;->i:[B

    invoke-static {v4, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6008
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 6009
    array-length v4, v2

    invoke-static {v2, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6010
    array-length v2, v2

    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 6013
    invoke-static {p1}, Lads_mobile_sdk/hx3;->a([B)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 6014
    :cond_2
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 6016
    :cond_3
    :goto_1
    invoke-static {p1}, Lads_mobile_sdk/du;->b([B)Lads_mobile_sdk/du;

    move-result-object p1

    return-object p1
.end method

.method private static a(III)Z
    .locals 0

    if-lt p2, p0, :cond_1

    sub-int/2addr p2, p0

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1674
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_0
    .catch Lads_mobile_sdk/np1; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1676
    invoke-virtual {p0}, Lads_mobile_sdk/np1;->j()V

    .line 1677
    throw p0
.end method

.method private b(Z)Lads_mobile_sdk/du;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3616
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    .line 3617
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    iget v2, p0, Lads_mobile_sdk/my$b;->l:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 3620
    iget-object v1, p0, Lads_mobile_sdk/my$b;->i:[B

    invoke-static {v1, v2, v0, p1}, Lads_mobile_sdk/du;->a([BIIZ)Lads_mobile_sdk/du;

    move-result-object p1

    .line 3621
    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/my$b;->l:I

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    .line 3625
    sget-object p1, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    return-object p1

    :cond_1
    if-ltz v0, :cond_2

    .line 3630
    invoke-direct {p0, v0, p1}, Lads_mobile_sdk/my$b;->a(IZ)Lads_mobile_sdk/du;

    move-result-object p1

    return-object p1

    .line 3631
    :cond_2
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method private b(IZ)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6106
    invoke-direct {p0, p1}, Lads_mobile_sdk/my$b;->h(I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 6108
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_0
    return-object v0

    .line 6111
    :cond_1
    iget p2, p0, Lads_mobile_sdk/my$b;->l:I

    .line 6112
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int v1, v0, p2

    .line 6115
    iget v2, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v2, v0

    iput v2, p0, Lads_mobile_sdk/my$b;->n:I

    const/4 v0, 0x0

    .line 6116
    iput v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 6117
    iput v0, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int v2, p1, v1

    .line 6124
    invoke-direct {p0, v2}, Lads_mobile_sdk/my$b;->i(I)Ljava/util/List;

    move-result-object v2

    .line 6127
    new-array p1, p1, [B

    .line 6130
    iget-object v3, p0, Lads_mobile_sdk/my$b;->i:[B

    invoke-static {v3, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6134
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 6135
    array-length v3, v2

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6136
    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private h(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 4351
    sget-object p1, Lads_mobile_sdk/yh1;->a:[B

    return-object p1

    :cond_0
    if-ltz p1, :cond_8

    .line 4358
    iget v0, p0, Lads_mobile_sdk/my$b;->n:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v0, v1

    .line 4359
    iget v1, p0, Lads_mobile_sdk/my;->d:I

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result v1

    if-nez v1, :cond_7

    .line 4364
    iget v1, p0, Lads_mobile_sdk/my$b;->o:I

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4368
    iget p1, p0, Lads_mobile_sdk/my$b;->o:I

    if-lt p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 4369
    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$b;->k(I)V

    .line 4371
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 4374
    :cond_2
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_4

    .line 4378
    iget-object v2, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    invoke-static {v2}, Lads_mobile_sdk/my$b;->b(Ljava/io/InputStream;)I

    move-result v2

    if-gt v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 4381
    :cond_4
    :goto_0
    new-array v1, p1, [B

    .line 4384
    iget-object v2, p0, Lads_mobile_sdk/my$b;->i:[B

    iget v3, p0, Lads_mobile_sdk/my$b;->l:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4385
    iget v2, p0, Lads_mobile_sdk/my$b;->n:I

    iget v3, p0, Lads_mobile_sdk/my$b;->j:I

    add-int/2addr v2, v3

    iput v2, p0, Lads_mobile_sdk/my$b;->n:I

    .line 4386
    iput v4, p0, Lads_mobile_sdk/my$b;->l:I

    .line 4387
    iput v4, p0, Lads_mobile_sdk/my$b;->j:I

    :goto_1
    if-ge v0, p1, :cond_6

    .line 4392
    iget-object v2, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-static {v2, v1, v0, v3}, Lads_mobile_sdk/my$b;->a(Ljava/io/InputStream;[BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 4396
    iget v3, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v3, v2

    iput v3, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v0, v2

    goto :goto_1

    .line 4397
    :cond_5
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    :cond_6
    return-object v1

    .line 4398
    :cond_7
    invoke-static {}, Lads_mobile_sdk/np1;->k()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 4399
    :cond_8
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method private i(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1959
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez p1, :cond_2

    const/16 v1, 0x1000

    .line 1963
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 1966
    iget-object v4, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-static {v4, v2, v3, v5}, Lads_mobile_sdk/my$b;->a(Ljava/io/InputStream;[BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1970
    iget v5, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v5, v4

    iput v5, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 1971
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr p1, v1

    .line 1977
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private j(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4135
    invoke-direct {p0, p1}, Lads_mobile_sdk/my$b;->m(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4138
    iget v0, p0, Lads_mobile_sdk/my$b;->n:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lads_mobile_sdk/my;->d:I

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4139
    invoke-static {}, Lads_mobile_sdk/np1;->k()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 4141
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method private l(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_8

    .line 4500
    iget v0, p0, Lads_mobile_sdk/my$b;->n:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v0, v1

    .line 4501
    iget v1, p0, Lads_mobile_sdk/my;->d:I

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result v1

    if-nez v1, :cond_7

    .line 4505
    iget v1, p0, Lads_mobile_sdk/my$b;->o:I

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4509
    iget p1, p0, Lads_mobile_sdk/my$b;->o:I

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    .line 4510
    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$b;->k(I)V

    .line 4512
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 4516
    :cond_1
    iget v0, p0, Lads_mobile_sdk/my$b;->n:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lads_mobile_sdk/my$b;->n:I

    .line 4517
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 4518
    iput v1, p0, Lads_mobile_sdk/my$b;->j:I

    .line 4519
    iput v1, p0, Lads_mobile_sdk/my$b;->l:I

    :goto_0
    if-ge v0, p1, :cond_4

    sub-int v1, p1, v0

    .line 4524
    :try_start_0
    iget-object v2, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Lads_mobile_sdk/my$b;->a(Ljava/io/InputStream;J)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-ltz v5, :cond_3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    long-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 4526
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v3, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    .line 4527
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#skip returned invalid result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 4541
    iget v1, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/my$b;->n:I

    .line 4542
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->G()V

    .line 4543
    throw p1

    .line 4544
    :cond_4
    :goto_1
    iget v1, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/my$b;->n:I

    .line 4545
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->G()V

    if-ge v0, p1, :cond_6

    .line 4549
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    sub-int v1, v0, v1

    .line 4550
    iput v0, p0, Lads_mobile_sdk/my$b;->l:I

    const/4 v0, 0x1

    .line 4554
    invoke-direct {p0, v0}, Lads_mobile_sdk/my$b;->j(I)V

    :goto_2
    sub-int v2, p1, v1

    .line 4555
    iget v3, p0, Lads_mobile_sdk/my$b;->j:I

    if-le v2, v3, :cond_5

    add-int/2addr v1, v3

    .line 4557
    iput v3, p0, Lads_mobile_sdk/my$b;->l:I

    .line 4558
    invoke-direct {p0, v0}, Lads_mobile_sdk/my$b;->j(I)V

    goto :goto_2

    .line 4561
    :cond_5
    iput v2, p0, Lads_mobile_sdk/my$b;->l:I

    :cond_6
    return-void

    .line 4562
    :cond_7
    invoke-static {}, Lads_mobile_sdk/np1;->k()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 4563
    :cond_8
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method private m(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4180
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    add-int v1, v0, p1

    iget v2, p0, Lads_mobile_sdk/my$b;->j:I

    if-le v1, v2, :cond_8

    .line 4188
    iget v1, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v1, v0

    .line 4189
    iget v0, p0, Lads_mobile_sdk/my;->d:I

    invoke-static {v1, p1, v0}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 4194
    :cond_0
    iget v0, p0, Lads_mobile_sdk/my$b;->o:I

    invoke-static {v1, p1, v0}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 4199
    :cond_1
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    if-lez v0, :cond_3

    .line 4201
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    if-le v1, v0, :cond_2

    .line 4202
    iget-object v3, p0, Lads_mobile_sdk/my$b;->i:[B

    sub-int/2addr v1, v0

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4204
    :cond_2
    iget v1, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/my$b;->n:I

    .line 4205
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/my$b;->j:I

    .line 4206
    iput v2, p0, Lads_mobile_sdk/my$b;->l:I

    .line 4210
    :cond_3
    :goto_0
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    if-ge v0, p1, :cond_7

    .line 4211
    iget v1, p0, Lads_mobile_sdk/my;->d:I

    iget v3, p0, Lads_mobile_sdk/my$b;->n:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v0

    if-gtz v1, :cond_4

    return v2

    .line 4215
    :cond_4
    iget-object v3, p0, Lads_mobile_sdk/my$b;->i:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4217
    iget-object v1, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    iget-object v3, p0, Lads_mobile_sdk/my$b;->i:[B

    iget v4, p0, Lads_mobile_sdk/my$b;->j:I

    invoke-static {v1, v3, v4, v0}, Lads_mobile_sdk/my$b;->a(Ljava/io/InputStream;[BII)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    if-lt v0, v1, :cond_6

    .line 4218
    iget-object v1, p0, Lads_mobile_sdk/my$b;->i:[B

    array-length v1, v1

    if-gt v0, v1, :cond_6

    if-gtz v0, :cond_5

    return v2

    .line 4228
    :cond_5
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/my$b;->j:I

    .line 4229
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->G()V

    goto :goto_0

    .line 4230
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    .line 4231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/4 p1, 0x1

    return p1

    .line 4232
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refillBuffer() called when "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes were already available in buffer"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public B()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2419
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2420
    invoke-direct {p0, v0}, Lads_mobile_sdk/my$b;->j(I)V

    .line 2422
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/my$b;->i:[B

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lads_mobile_sdk/my$b;->l:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public C()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2205
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2207
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 2208
    invoke-direct {p0, v2}, Lads_mobile_sdk/my$b;->j(I)V

    .line 2209
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2212
    :cond_0
    iget-object v1, p0, Lads_mobile_sdk/my$b;->i:[B

    add-int/lit8 v2, v0, 0x4

    .line 2213
    iput v2, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2214
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public D()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2222
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2224
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 2225
    invoke-direct {p0, v2}, Lads_mobile_sdk/my$b;->j(I)V

    .line 2226
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2229
    :cond_0
    iget-object v1, p0, Lads_mobile_sdk/my$b;->i:[B

    add-int/lit8 v3, v0, 0x8

    .line 2230
    iput v3, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2231
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public E()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2125
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2127
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_3

    .line 2131
    :cond_0
    iget-object v2, p0, Lads_mobile_sdk/my$b;->i:[B

    add-int/lit8 v3, v0, 0x1

    .line 2134
    aget-byte v4, v2, v0

    if-ltz v4, :cond_1

    .line 2135
    iput v3, p0, Lads_mobile_sdk/my$b;->l:I

    int-to-long v0, v4

    return-wide v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v1, v0, 0x2

    .line 2139
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_3

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v4, v0, 0x3

    .line 2141
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_4

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move v1, v4

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v3, v0, 0x4

    .line 2143
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v10, v0

    move v1, v3

    move-wide v2, v10

    goto/16 :goto_2

    :cond_5
    int-to-long v4, v1

    add-int/lit8 v1, v0, 0x5

    .line 2145
    aget-byte v3, v2, v3

    int-to-long v6, v3

    const/16 v3, 0x1c

    shl-long/2addr v6, v3

    xor-long v3, v4, v6

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_6

    const-wide/32 v5, 0xfe03f80

    :goto_0
    xor-long v2, v3, v5

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v0, 0x6

    .line 2147
    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x23

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_7

    const-wide v0, -0x7f01fc080L

    :goto_1
    xor-long v2, v3, v0

    move v1, v7

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v0, 0x7

    .line 2149
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x2a

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-ltz v7, :cond_8

    const-wide v5, 0x3f80fe03f80L

    goto :goto_0

    :cond_8
    add-int/lit8 v7, v0, 0x8

    .line 2151
    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x31

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_9

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_1

    :cond_9
    add-int/lit8 v1, v0, 0x9

    .line 2160
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-ltz v7, :cond_a

    const-wide v5, 0xfe03f80fe03f80L

    goto :goto_0

    .line 2170
    :cond_a
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v2, 0x3f

    shl-long/2addr v7, v2

    xor-long v2, v3, v7

    cmp-long v4, v2, v5

    if-ltz v4, :cond_b

    add-int/lit8 v0, v0, 0xa

    if-ltz v1, :cond_b

    const-wide v4, -0x7f01fc07f01fc080L    # -6.838959413692434E-304

    xor-long/2addr v2, v4

    move v1, v0

    .line 2184
    :goto_2
    iput v1, p0, Lads_mobile_sdk/my$b;->l:I

    return-wide v2

    .line 2187
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->F()J

    move-result-wide v0

    return-wide v0
.end method

.method public F()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 2194
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->B()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 2200
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->f()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 1699
    iget v0, p0, Lads_mobile_sdk/my$b;->m:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1700
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->b()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 3

    .line 2302
    iget v0, p0, Lads_mobile_sdk/my$b;->o:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2306
    :cond_0
    iget v1, p0, Lads_mobile_sdk/my$b;->n:I

    iget v2, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 4602
    iput p1, p0, Lads_mobile_sdk/my$b;->o:I

    .line 4603
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->G()V

    return-void
.end method

.method public e()I
    .locals 2

    .line 2317
    iget v0, p0, Lads_mobile_sdk/my$b;->n:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 4584
    iget v0, p0, Lads_mobile_sdk/my$b;->n:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_1

    .line 4588
    iget v1, p0, Lads_mobile_sdk/my$b;->o:I

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4591
    iget v1, p0, Lads_mobile_sdk/my$b;->o:I

    add-int/2addr v0, p1

    .line 4592
    iput v0, p0, Lads_mobile_sdk/my$b;->o:I

    .line 4594
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->G()V

    return v1

    .line 4595
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 4596
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->k()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 4597
    :cond_2
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method public f()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2312
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lads_mobile_sdk/my$b;->m(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1711
    invoke-static {p1}, Lads_mobile_sdk/u24;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 1734
    invoke-virtual {p0, v3}, Lads_mobile_sdk/my$b;->k(I)V

    return v1

    .line 1733
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->e()Lads_mobile_sdk/np1$a;

    move-result-object p1

    throw p1

    .line 1735
    :cond_1
    invoke-virtual {p0}, Lads_mobile_sdk/my;->b()V

    const/4 p1, 0x0

    return p1

    .line 1736
    :cond_2
    invoke-virtual {p0}, Lads_mobile_sdk/my;->A()V

    .line 1738
    invoke-static {p1}, Lads_mobile_sdk/u24;->a(I)I

    move-result p1

    invoke-static {p1, v3}, Lads_mobile_sdk/u24;->a(II)I

    move-result p1

    .line 1739
    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$b;->a(I)V

    return v1

    .line 1740
    :cond_3
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$b;->k(I)V

    return v1

    :cond_4
    const/16 p1, 0x8

    .line 1741
    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$b;->k(I)V

    return v1

    .line 1742
    :cond_5
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->H()V

    return v1
.end method

.method public h()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1828
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->E()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()Lads_mobile_sdk/du;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1958
    invoke-direct {p0, v0}, Lads_mobile_sdk/my$b;->b(Z)Lads_mobile_sdk/du;

    move-result-object v0

    return-object v0
.end method

.method public j()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1793
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->D()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public k()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2016
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    return v0
.end method

.method public k(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4676
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    .line 4678
    iput v1, p0, Lads_mobile_sdk/my$b;->l:I

    return-void

    .line 4680
    :cond_0
    invoke-direct {p0, p1}, Lads_mobile_sdk/my$b;->l(I)V

    return-void
.end method

.method public l()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1823
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->C()I

    move-result v0

    return v0
.end method

.method public m()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1818
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1798
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->C()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1813
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    return v0
.end method

.method public p()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1808
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->E()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2046
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2048
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 2052
    :cond_0
    iget-object v2, p0, Lads_mobile_sdk/my$b;->i:[B

    add-int/lit8 v3, v0, 0x1

    .line 2054
    aget-byte v4, v2, v0

    if-ltz v4, :cond_1

    .line 2055
    iput v3, p0, Lads_mobile_sdk/my$b;->l:I

    return v4

    :cond_1
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v0, 0x2

    .line 2059
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_3

    xor-int/lit8 v0, v3, -0x80

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v0, 0x3

    .line 2061
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_4

    xor-int/lit16 v0, v1, 0x3f80

    :goto_0
    move v1, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v0, 0x4

    .line 2063
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    move v1, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v0, 0x5

    .line 2066
    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v3, :cond_8

    add-int/lit8 v3, v0, 0x6

    .line 2069
    aget-byte v4, v2, v4

    if-gez v4, :cond_7

    add-int/lit8 v4, v0, 0x7

    aget-byte v3, v2, v3

    if-gez v3, :cond_8

    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v4

    if-gez v4, :cond_7

    add-int/lit8 v4, v0, 0x9

    aget-byte v3, v2, v3

    if-gez v3, :cond_8

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v2, v4

    if-gez v2, :cond_6

    .line 2081
    :goto_1
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->F()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_6
    move v4, v0

    goto :goto_2

    :cond_7
    move v4, v3

    :cond_8
    :goto_2
    move v0, v1

    goto :goto_0

    .line 2082
    :goto_3
    iput v1, p0, Lads_mobile_sdk/my$b;->l:I

    return v0
.end method

.method public r()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2021
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->C()I

    move-result v0

    return v0
.end method

.method public s()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2026
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public t()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2031
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    invoke-static {v0}, Lads_mobile_sdk/my;->b(I)I

    move-result v0

    return v0
.end method

.method public u()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2036
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->E()J

    move-result-wide v0

    invoke-static {v0, v1}, Lads_mobile_sdk/my;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1833
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    if-lez v0, :cond_0

    .line 1834
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    iget v2, p0, Lads_mobile_sdk/my$b;->l:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 1837
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/my$b;->i:[B

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1838
    iget v2, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v2, v0

    iput v2, p0, Lads_mobile_sdk/my$b;->l:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 1842
    const-string v0, ""

    return-object v0

    :cond_1
    if-ltz v0, :cond_3

    .line 1847
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    if-gt v0, v1, :cond_2

    .line 1848
    invoke-direct {p0, v0}, Lads_mobile_sdk/my$b;->j(I)V

    .line 1849
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/my$b;->i:[B

    iget v3, p0, Lads_mobile_sdk/my$b;->l:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1850
    iget v2, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v2, v0

    iput v2, p0, Lads_mobile_sdk/my$b;->l:I

    return-object v1

    .line 1854
    :cond_2
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lads_mobile_sdk/my$b;->b(IZ)[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 1855
    :cond_3
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public w()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1859
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    .line 1861
    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    .line 1863
    iget v2, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int v3, v2, v1

    if-gt v0, v3, :cond_0

    if-lez v0, :cond_0

    .line 1866
    iget-object v2, p0, Lads_mobile_sdk/my$b;->i:[B

    add-int v3, v1, v0

    .line 1867
    iput v3, p0, Lads_mobile_sdk/my$b;->l:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 1870
    const-string v0, ""

    return-object v0

    :cond_1
    if-ltz v0, :cond_3

    const/4 v1, 0x0

    if-gt v0, v2, :cond_2

    .line 1874
    invoke-direct {p0, v0}, Lads_mobile_sdk/my$b;->j(I)V

    .line 1875
    iget-object v2, p0, Lads_mobile_sdk/my$b;->i:[B

    .line 1877
    iput v0, p0, Lads_mobile_sdk/my$b;->l:I

    goto :goto_0

    .line 1880
    :cond_2
    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/my$b;->b(IZ)[B

    move-result-object v2

    .line 1883
    :goto_0
    invoke-static {v2, v1, v0}, Lads_mobile_sdk/hx3;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1884
    :cond_3
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public x()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1683
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1684
    iput v0, p0, Lads_mobile_sdk/my$b;->m:I

    return v0

    .line 1688
    :cond_0
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    iput v0, p0, Lads_mobile_sdk/my$b;->m:I

    .line 1689
    invoke-static {v0}, Lads_mobile_sdk/u24;->a(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1694
    iget v0, p0, Lads_mobile_sdk/my$b;->m:I

    return v0

    .line 1695
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->c()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public y()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2011
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    return v0
.end method

.method public z()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1803
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->E()J

    move-result-wide v0

    return-wide v0
.end method
