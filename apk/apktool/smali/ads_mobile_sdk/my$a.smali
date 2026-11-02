.class final Lads_mobile_sdk/my$a;
.super Lads_mobile_sdk/my;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/my;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final h:[B

.field private final i:I

.field private final j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 874
    invoke-direct {p0, v0}, Lads_mobile_sdk/my;-><init>(Lads_mobile_sdk/my-IA;)V

    const v0, 0x7fffffff

    .line 875
    iput v0, p0, Lads_mobile_sdk/my$a;->p:I

    .line 878
    iput-object p1, p0, Lads_mobile_sdk/my$a;->h:[B

    add-int/2addr p3, p2

    .line 879
    iput p3, p0, Lads_mobile_sdk/my$a;->i:I

    .line 880
    iput p3, p0, Lads_mobile_sdk/my$a;->k:I

    .line 881
    iput p2, p0, Lads_mobile_sdk/my$a;->l:I

    .line 882
    iput p2, p0, Lads_mobile_sdk/my$a;->m:I

    .line 883
    iput-boolean p4, p0, Lads_mobile_sdk/my$a;->j:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLads_mobile_sdk/my-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lads_mobile_sdk/my$a;-><init>([BIIZ)V

    return-void
.end method

.method private E()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1245
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    .line 1247
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    add-int/lit8 v2, v0, 0x1

    .line 1248
    aget-byte v3, v1, v0

    if-ltz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v4, v0, 0x2

    .line 1250
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v3

    if-gez v2, :cond_1

    xor-int/lit8 v3, v2, -0x80

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v0, 0x3

    .line 1252
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0xe

    xor-int/2addr v2, v4

    if-ltz v2, :cond_2

    xor-int/lit16 v0, v2, 0x3f80

    move v2, v3

    move v3, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v0, 0x4

    .line 1254
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v2, v3

    if-gez v2, :cond_3

    const v0, -0x1fc080

    xor-int v3, v2, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v0, 0x5

    .line 1257
    aget-byte v4, v1, v4

    shl-int/lit8 v5, v4, 0x1c

    xor-int/2addr v2, v5

    const v5, 0xfe03f80

    xor-int/2addr v2, v5

    if-gez v4, :cond_6

    add-int/lit8 v4, v0, 0x6

    .line 1260
    aget-byte v3, v1, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v0, 0x7

    aget-byte v4, v1, v4

    if-gez v4, :cond_6

    add-int/lit8 v4, v0, 0x8

    aget-byte v3, v1, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v0, 0x9

    aget-byte v4, v1, v4

    if-gez v4, :cond_6

    add-int/lit8 v0, v0, 0xa

    aget-byte v1, v1, v3

    if-ltz v1, :cond_4

    move v3, v2

    move v2, v0

    goto :goto_1

    .line 1266
    :cond_4
    invoke-static {}, Lads_mobile_sdk/np1;->f()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0

    :cond_5
    move v3, v2

    goto :goto_0

    :cond_6
    move v6, v3

    move v3, v2

    move v2, v6

    .line 1269
    :goto_1
    iput v2, p0, Lads_mobile_sdk/my$a;->l:I

    return v3
.end method

.method private H()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1274
    iget v0, p0, Lads_mobile_sdk/my$a;->k:I

    iget v1, p0, Lads_mobile_sdk/my$a;->l:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1275
    invoke-direct {p0}, Lads_mobile_sdk/my$a;->I()V

    return-void

    .line 1277
    :cond_0
    invoke-direct {p0}, Lads_mobile_sdk/my$a;->J()V

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

    .line 1283
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    iget v2, p0, Lads_mobile_sdk/my$a;->l:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lads_mobile_sdk/my$a;->l:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1287
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

    .line 1292
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->B()B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1296
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->f()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method private b(Z)Lads_mobile_sdk/du;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1124
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result v0

    if-lez v0, :cond_1

    .line 1125
    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    iget v2, p0, Lads_mobile_sdk/my$a;->l:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 1129
    iget-boolean v1, p0, Lads_mobile_sdk/my$a;->j:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lads_mobile_sdk/my$a;->o:Z

    if-eqz v1, :cond_0

    .line 1130
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    invoke-static {v1, v2, v0, p1}, Lads_mobile_sdk/du;->b([BIIZ)Lads_mobile_sdk/du;

    move-result-object p1

    goto :goto_0

    .line 1131
    :cond_0
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    invoke-static {v1, v2, v0, p1}, Lads_mobile_sdk/du;->a([BIIZ)Lads_mobile_sdk/du;

    move-result-object p1

    .line 1132
    :goto_0
    iget v1, p0, Lads_mobile_sdk/my$a;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/my$a;->l:I

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    .line 1136
    sget-object p1, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    return-object p1

    .line 1139
    :cond_2
    invoke-virtual {p0, v0}, Lads_mobile_sdk/my$a;->h(I)[B

    move-result-object v0

    invoke-static {v0, p1}, Lads_mobile_sdk/du;->a([BZ)Lads_mobile_sdk/du;

    move-result-object p1

    return-object p1
.end method

.method private i(I)V
    .locals 1

    .line 2612
    iput p1, p0, Lads_mobile_sdk/my$a;->p:I

    .line 2619
    iget v0, p0, Lads_mobile_sdk/my$a;->i:I

    if-gt p1, v0, :cond_0

    .line 2620
    iput p1, p0, Lads_mobile_sdk/my$a;->k:I

    return-void

    .line 2622
    :cond_0
    iput v0, p0, Lads_mobile_sdk/my$a;->k:I

    return-void
.end method


# virtual methods
.method public B()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1553
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    if-eq v0, v1, :cond_0

    .line 1556
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lads_mobile_sdk/my$a;->l:I

    aget-byte v0, v1, v0

    return v0

    .line 1557
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public C()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1394
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    .line 1396
    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 1400
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    add-int/lit8 v2, v0, 0x4

    .line 1401
    iput v2, p0, Lads_mobile_sdk/my$a;->l:I

    .line 1402
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

    .line 1403
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public D()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1410
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    .line 1412
    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 1416
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    add-int/lit8 v3, v0, 0x8

    .line 1417
    iput v3, p0, Lads_mobile_sdk/my$a;->l:I

    .line 1418
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

    .line 1419
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public F()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1314
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    .line 1316
    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_3

    .line 1320
    :cond_0
    iget-object v2, p0, Lads_mobile_sdk/my$a;->h:[B

    add-int/lit8 v3, v0, 0x1

    .line 1323
    aget-byte v4, v2, v0

    if-ltz v4, :cond_1

    .line 1324
    iput v3, p0, Lads_mobile_sdk/my$a;->l:I

    int-to-long v0, v4

    return-wide v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v1, v0, 0x2

    .line 1328
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_3

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v4, v0, 0x3

    .line 1330
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

    .line 1332
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

    .line 1334
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

    .line 1336
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

    .line 1338
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

    .line 1340
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

    .line 1349
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-ltz v7, :cond_a

    const-wide v5, 0xfe03f80fe03f80L

    goto :goto_0

    .line 1359
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

    .line 1373
    :goto_2
    iput v1, p0, Lads_mobile_sdk/my$a;->l:I

    return-wide v2

    .line 1376
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->G()J

    move-result-wide v0

    return-wide v0
.end method

.method public G()J
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

    .line 1383
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->B()B

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

    .line 1389
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

    .line 901
    iget v0, p0, Lads_mobile_sdk/my$a;->n:I

    if-ne v0, p1, :cond_0

    return-void

    .line 902
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->b()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 2332
    iput-boolean p1, p0, Lads_mobile_sdk/my$a;->o:Z

    return-void
.end method

.method public c()I
    .locals 2

    .line 1489
    iget v0, p0, Lads_mobile_sdk/my$a;->p:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1493
    :cond_0
    iget v1, p0, Lads_mobile_sdk/my$a;->l:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 2977
    invoke-direct {p0, p1}, Lads_mobile_sdk/my$a;->i(I)V

    return-void
.end method

.method public e()I
    .locals 2

    .line 1503
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    iget v1, p0, Lads_mobile_sdk/my$a;->m:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public e(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    if-ltz p1, :cond_3

    .line 2947
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    add-int v1, v0, p1

    if-gez v1, :cond_1

    .line 2951
    iget v1, p0, Lads_mobile_sdk/my$a;->m:I

    sub-int/2addr v0, v1

    const v1, 0x7fffffff

    sub-int v0, v1, v0

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 2952
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->k()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 2957
    :cond_1
    :goto_0
    iget p1, p0, Lads_mobile_sdk/my$a;->p:I

    if-gt v1, p1, :cond_2

    .line 2961
    invoke-direct {p0, v1}, Lads_mobile_sdk/my$a;->i(I)V

    return p1

    .line 2962
    :cond_2
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 2963
    :cond_3
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

    .line 1498
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

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

    .line 913
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

    .line 936
    invoke-virtual {p0, v3}, Lads_mobile_sdk/my$a;->j(I)V

    return v1

    .line 935
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->e()Lads_mobile_sdk/np1$a;

    move-result-object p1

    throw p1

    .line 937
    :cond_1
    invoke-virtual {p0}, Lads_mobile_sdk/my;->b()V

    const/4 p1, 0x0

    return p1

    .line 938
    :cond_2
    invoke-virtual {p0}, Lads_mobile_sdk/my;->A()V

    .line 940
    invoke-static {p1}, Lads_mobile_sdk/u24;->a(I)I

    move-result p1

    invoke-static {p1, v3}, Lads_mobile_sdk/u24;->a(II)I

    move-result p1

    .line 941
    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$a;->a(I)V

    return v1

    .line 942
    :cond_3
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$a;->j(I)V

    return v1

    :cond_4
    const/16 p1, 0x8

    .line 943
    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$a;->j(I)V

    return v1

    .line 944
    :cond_5
    invoke-direct {p0}, Lads_mobile_sdk/my$a;->H()V

    return v1
.end method

.method public h()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1030
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->F()J

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

.method public h(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 2591
    iget v0, p0, Lads_mobile_sdk/my$a;->k:I

    iget v1, p0, Lads_mobile_sdk/my$a;->l:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr p1, v1

    .line 2593
    iput p1, p0, Lads_mobile_sdk/my$a;->l:I

    .line 2594
    iget-object v0, p0, Lads_mobile_sdk/my$a;->h:[B

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    if-gtz p1, :cond_2

    if-nez p1, :cond_1

    .line 2599
    sget-object p1, Lads_mobile_sdk/yh1;->a:[B

    return-object p1

    .line 2601
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 2604
    :cond_2
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method public i()Lads_mobile_sdk/du;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1144
    invoke-direct {p0, v0}, Lads_mobile_sdk/my$a;->b(Z)Lads_mobile_sdk/du;

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

    .line 995
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->D()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public j(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 2589
    iget v0, p0, Lads_mobile_sdk/my$a;->k:I

    iget v1, p0, Lads_mobile_sdk/my$a;->l:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr v1, p1

    .line 2591
    iput v1, p0, Lads_mobile_sdk/my$a;->l:I

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 2596
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 2598
    :cond_1
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method public k()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1195
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1025
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->C()I

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

    .line 1020
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->D()J

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

    .line 1000
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->C()I

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

    .line 1015
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

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

    .line 1010
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->F()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1223
    :try_start_0
    invoke-direct {p0}, Lads_mobile_sdk/my$a;->E()I

    move-result v0

    .line 1224
    iget v1, p0, Lads_mobile_sdk/my$a;->l:I

    iget v2, p0, Lads_mobile_sdk/my$a;->k:I

    if-gt v1, v2, :cond_0

    return v0

    .line 1225
    :cond_0
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lads_mobile_sdk/np1; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 1233
    iget v1, p0, Lads_mobile_sdk/my$a;->l:I

    iget v2, p0, Lads_mobile_sdk/my$a;->k:I

    if-le v1, v2, :cond_1

    .line 1234
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0

    .line 1236
    :cond_1
    throw v0

    .line 1237
    :catch_1
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public r()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1200
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->C()I

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

    .line 1205
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->D()J

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

    .line 1210
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

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

    .line 1215
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->F()J

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

    .line 1035
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result v0

    if-lez v0, :cond_0

    .line 1036
    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    iget v2, p0, Lads_mobile_sdk/my$a;->l:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 1039
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/my$a;->h:[B

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1040
    iget v2, p0, Lads_mobile_sdk/my$a;->l:I

    add-int/2addr v2, v0

    iput v2, p0, Lads_mobile_sdk/my$a;->l:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 1045
    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    .line 1048
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0

    .line 1050
    :cond_2
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public w()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1055
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result v0

    if-lez v0, :cond_0

    .line 1056
    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    iget v2, p0, Lads_mobile_sdk/my$a;->l:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 1057
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    invoke-static {v1, v2, v0}, Lads_mobile_sdk/hx3;->a([BII)Ljava/lang/String;

    move-result-object v1

    .line 1058
    iget v2, p0, Lads_mobile_sdk/my$a;->l:I

    add-int/2addr v2, v0

    iput v2, p0, Lads_mobile_sdk/my$a;->l:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 1063
    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    .line 1066
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0

    .line 1068
    :cond_2
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

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

    .line 885
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 886
    iput v0, p0, Lads_mobile_sdk/my$a;->n:I

    return v0

    .line 890
    :cond_0
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result v0

    iput v0, p0, Lads_mobile_sdk/my$a;->n:I

    .line 891
    invoke-static {v0}, Lads_mobile_sdk/u24;->a(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    iget v0, p0, Lads_mobile_sdk/my$a;->n:I

    return v0

    .line 897
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

    .line 1190
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

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

    .line 1005
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->F()J

    move-result-wide v0

    return-wide v0
.end method
