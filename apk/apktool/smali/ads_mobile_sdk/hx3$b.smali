.class final Lads_mobile_sdk/hx3$b;
.super Lads_mobile_sdk/hx3$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/hx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 565
    invoke-direct {p0}, Lads_mobile_sdk/hx3$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[BII)I
    .locals 9

    .line 1297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p3, p4

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    if-ge v2, v0, :cond_0

    add-int v4, v2, p3

    if-ge v4, v1, :cond_0

    .line 1303
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v3, :cond_0

    int-to-byte v3, v5

    .line 1304
    aput-byte v3, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    add-int/2addr p3, v0

    return p3

    :cond_1
    add-int v4, p3, v2

    :goto_1
    if-ge v2, v0, :cond_b

    .line 1311
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v3, :cond_2

    if-ge v4, v1, :cond_2

    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 1313
    aput-byte v5, p2, v4

    move v4, v6

    goto/16 :goto_2

    :cond_2
    const/16 v6, 0x800

    if-ge v5, v6, :cond_3

    add-int/lit8 v6, v1, -0x2

    if-gt v4, v6, :cond_3

    add-int/lit8 v6, v4, 0x1

    ushr-int/lit8 v7, v5, 0x6

    or-int/lit16 v7, v7, 0x3c0

    int-to-byte v7, v7

    .line 1315
    aput-byte v7, p2, v4

    add-int/lit8 v4, v4, 0x2

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 1316
    aput-byte v5, p2, v6

    goto :goto_2

    :cond_3
    const v6, 0xdfff

    const v7, 0xd800

    if-lt v5, v7, :cond_4

    if-ge v6, v5, :cond_5

    :cond_4
    add-int/lit8 v8, v1, -0x3

    if-gt v4, v8, :cond_5

    add-int/lit8 v6, v4, 0x1

    ushr-int/lit8 v7, v5, 0xc

    or-int/lit16 v7, v7, 0x1e0

    int-to-byte v7, v7

    .line 1319
    aput-byte v7, p2, v4

    add-int/lit8 v7, v4, 0x2

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    .line 1320
    aput-byte v8, p2, v6

    add-int/lit8 v4, v4, 0x3

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 1321
    aput-byte v5, p2, v7

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v1, -0x4

    if-gt v4, v8, :cond_8

    add-int/lit8 v2, v2, 0x1

    .line 1326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v2, v6, :cond_7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    .line 1329
    :cond_6
    invoke-static {v5, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    ushr-int/lit8 v7, v5, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    .line 1330
    aput-byte v7, p2, v4

    add-int/lit8 v7, v4, 0x2

    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    .line 1331
    aput-byte v8, p2, v6

    add-int/lit8 v6, v4, 0x3

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    .line 1332
    aput-byte v8, p2, v7

    add-int/lit8 v4, v4, 0x4

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 1333
    aput-byte v5, p2, v6

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1334
    :cond_7
    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/hx3$c;->b(Ljava/lang/String;[BII)I

    move-result p1

    return p1

    :cond_8
    if-gt v7, v5, :cond_a

    if-gt v5, v6, :cond_a

    add-int/lit8 v2, v2, 0x1

    .line 1345
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_9

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1346
    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/hx3$c;->b(Ljava/lang/String;[BII)I

    move-result p1

    return p1

    .line 1348
    :cond_a
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Not enough space in output buffer to encode UTF-8 string"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return v4
.end method

.method public a([BII)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    or-int v0, p2, p3

    .line 569
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_b

    add-int v0, p2, p3

    .line 579
    new-array v5, p3, [C

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    if-ge p2, v0, :cond_1

    .line 585
    aget-byte v2, p1, p2

    .line 586
    invoke-static {v2}, Lads_mobile_sdk/hx3$a;->-$$Nest$smb(B)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 590
    invoke-static {v2, v5, v1}, Lads_mobile_sdk/hx3$a;->-$$Nest$sma(B[CI)V

    move v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    move v6, v1

    :cond_2
    :goto_2
    if-ge p2, v0, :cond_a

    add-int/lit8 v1, p2, 0x1

    move v2, v1

    .line 594
    aget-byte v1, p1, p2

    .line 595
    invoke-static {v1}, Lads_mobile_sdk/hx3$a;->-$$Nest$smb(B)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 p2, v6, 0x1

    .line 596
    invoke-static {v1, v5, v6}, Lads_mobile_sdk/hx3$a;->-$$Nest$sma(B[CI)V

    move v6, p2

    move p2, v2

    :goto_3
    if-ge p2, v0, :cond_2

    .line 600
    aget-byte v1, p1, p2

    .line 601
    invoke-static {v1}, Lads_mobile_sdk/hx3$a;->-$$Nest$smb(B)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v6, 0x1

    .line 605
    invoke-static {v1, v5, v6}, Lads_mobile_sdk/hx3$a;->-$$Nest$sma(B[CI)V

    move v6, v2

    goto :goto_3

    .line 607
    :cond_4
    invoke-static {v1}, Lads_mobile_sdk/hx3$a;->-$$Nest$smd(B)Z

    move-result v3

    if-eqz v3, :cond_6

    if-ge v2, v0, :cond_5

    add-int/lit8 p2, p2, 0x2

    .line 611
    aget-byte v2, p1, v2

    add-int/lit8 v3, v6, 0x1

    invoke-static {v1, v2, v5, v6}, Lads_mobile_sdk/hx3$a;->-$$Nest$sma(BB[CI)V

    move v6, v3

    goto :goto_2

    .line 612
    :cond_5
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 615
    :cond_6
    invoke-static {v1}, Lads_mobile_sdk/hx3$a;->-$$Nest$smc(B)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_7

    add-int/lit8 v3, p2, 0x2

    .line 619
    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x3

    aget-byte v3, p1, v3

    add-int/lit8 v4, v6, 0x1

    invoke-static {v1, v2, v3, v5, v6}, Lads_mobile_sdk/hx3$a;->-$$Nest$sma(BBB[CI)V

    move v6, v4

    goto :goto_2

    .line 620
    :cond_7
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    :cond_8
    add-int/lit8 v3, v0, -0x2

    if-ge v2, v3, :cond_9

    add-int/lit8 v3, p2, 0x2

    .line 632
    aget-byte v2, p1, v2

    add-int/lit8 v4, p2, 0x3

    aget-byte v3, p1, v3

    add-int/lit8 p2, p2, 0x4

    aget-byte v4, p1, v4

    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/hx3$a;->-$$Nest$sma(BBBB[CI)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 633
    :cond_9
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 647
    :cond_a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v5, p3, v6}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 648
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 649
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
