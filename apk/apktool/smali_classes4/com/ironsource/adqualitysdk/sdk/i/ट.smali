.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ट;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ﾒ(Ljava/lang/String;)[B
    .locals 15

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 2
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x4

    .line 3
    div-int/2addr v1, v2

    new-array v3, v1, [B

    .line 4
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ও;->ﾒ:[I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x3

    if-ge v6, v0, :cond_f

    if-nez v7, :cond_1

    :goto_1
    add-int/lit8 v13, v6, 0x4

    if-gt v13, v0, :cond_0

    .line 5
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    aget v8, v4, v8

    shl-int/lit8 v8, v8, 0x12

    add-int/lit8 v14, v6, 0x1

    aget-byte v14, p0, v14

    and-int/lit16 v14, v14, 0xff

    aget v14, v4, v14

    shl-int/lit8 v14, v14, 0xc

    or-int/2addr v8, v14

    add-int/lit8 v14, v6, 0x2

    aget-byte v14, p0, v14

    and-int/lit16 v14, v14, 0xff

    aget v14, v4, v14

    shl-int/lit8 v14, v14, 0x6

    or-int/2addr v8, v14

    add-int/lit8 v14, v6, 0x3

    aget-byte v14, p0, v14

    and-int/lit16 v14, v14, 0xff

    aget v14, v4, v14

    or-int/2addr v8, v14

    if-ltz v8, :cond_0

    add-int/lit8 v6, v9, 0x2

    int-to-byte v14, v8

    .line 10
    aput-byte v14, v3, v6

    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v14, v8, 0x8

    int-to-byte v14, v14

    .line 11
    aput-byte v14, v3, v6

    shr-int/lit8 v6, v8, 0x10

    int-to-byte v6, v6

    .line 12
    aput-byte v6, v3, v9

    add-int/lit8 v9, v9, 0x3

    move v6, v13

    goto :goto_1

    :cond_0
    if-lt v6, v0, :cond_1

    goto/16 :goto_5

    :cond_1
    add-int/lit8 v13, v6, 0x1

    .line 19
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    aget v6, v4, v6

    const/4 v14, -0x1

    if-eqz v7, :cond_d

    if-eq v7, v11, :cond_b

    const/4 v11, -0x2

    if-eq v7, v10, :cond_8

    const/4 v10, 0x5

    if-eq v7, v12, :cond_5

    if-eq v7, v2, :cond_3

    if-eq v7, v10, :cond_2

    goto/16 :goto_4

    :cond_2
    if-ne v6, v14, :cond_13

    goto/16 :goto_4

    :cond_3
    if-ne v6, v11, :cond_4

    goto :goto_3

    :cond_4
    if-ne v6, v14, :cond_13

    goto :goto_4

    :cond_5
    if-ltz v6, :cond_6

    shl-int/lit8 v7, v8, 0x6

    or-int v8, v7, v6

    add-int/lit8 v6, v9, 0x2

    int-to-byte v7, v8

    .line 55
    aput-byte v7, v3, v6

    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v7, v8, 0x8

    int-to-byte v7, v7

    .line 56
    aput-byte v7, v3, v6

    shr-int/lit8 v6, v8, 0x10

    int-to-byte v6, v6

    .line 57
    aput-byte v6, v3, v9

    add-int/lit8 v9, v9, 0x3

    move v7, v5

    goto :goto_4

    :cond_6
    if-ne v6, v11, :cond_7

    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v7, v8, 0x2

    int-to-byte v7, v7

    .line 61
    aput-byte v7, v3, v6

    shr-int/lit8 v6, v8, 0xa

    int-to-byte v6, v6

    .line 62
    aput-byte v6, v3, v9

    add-int/lit8 v9, v9, 0x2

    move v7, v10

    goto :goto_4

    :cond_7
    if-ne v6, v14, :cond_13

    goto :goto_4

    :cond_8
    if-ltz v6, :cond_9

    goto :goto_2

    :cond_9
    if-ne v6, v11, :cond_a

    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v7, v8, 0x4

    int-to-byte v7, v7

    .line 63
    aput-byte v7, v3, v9

    move v7, v2

    move v9, v6

    goto :goto_4

    :cond_a
    if-ne v6, v14, :cond_13

    goto :goto_4

    :cond_b
    if-ltz v6, :cond_c

    :goto_2
    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v8, v6

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_c
    if-ne v6, v14, :cond_13

    goto :goto_4

    :cond_d
    if-ltz v6, :cond_e

    add-int/lit8 v7, v7, 0x1

    move v8, v6

    goto :goto_4

    :cond_e
    if-ne v6, v14, :cond_13

    :goto_4
    move v6, v13

    goto/16 :goto_0

    :cond_f
    :goto_5
    if-eq v7, v11, :cond_13

    if-eq v7, v10, :cond_11

    if-eq v7, v12, :cond_10

    if-eq v7, v2, :cond_13

    goto :goto_6

    :cond_10
    add-int/lit8 p0, v9, 0x1

    shr-int/lit8 v0, v8, 0xa

    int-to-byte v0, v0

    .line 122
    aput-byte v0, v3, v9

    add-int/lit8 v9, v9, 0x2

    shr-int/lit8 v0, v8, 0x2

    int-to-byte v0, v0

    .line 123
    aput-byte v0, v3, p0

    goto :goto_6

    :cond_11
    add-int/lit8 p0, v9, 0x1

    shr-int/lit8 v0, v8, 0x4

    int-to-byte v0, v0

    .line 124
    aput-byte v0, v3, v9

    move v9, p0

    :goto_6
    if-ne v9, v1, :cond_12

    return-object v3

    .line 125
    :cond_12
    new-array p0, v9, [B

    .line 126
    invoke-static {v3, v5, p0, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 127
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ZJbRmZ6iP1ArwYE=\n"

    const-string v1, "Bve1ufzDTDU=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
