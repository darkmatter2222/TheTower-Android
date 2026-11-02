.class public Lcom/appsflyer/internal/AFi1hSDK;
.super Ljava/lang/Object;


# static fields
.field private static final $$a:[B = null

.field private static final $$b:I = 0x0

.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static $12:I = 0x0

.field private static $13:I = 0x1

.field public static final AFLogger:Ljava/util/Map;

.field private static afDebugLog:J

.field private static afErrorLog:I

.field private static afErrorLogForExcManagerOnly:B

.field private static afInfoLog:J

.field public static final d:Ljava/util/Map;

.field private static e:Ljava/lang/Object;

.field private static force:I

.field private static i:Ljava/lang/Object;

.field private static unregisterClient:[B

.field private static v:J

.field private static w:[B


# direct methods
.method private static $$c(SBS)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFi1hSDK;->$13:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1hSDK;->$12:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x53

    ushr-int p1, v1, p1

    add-int/lit8 p0, p0, 0x26

    const/16 v1, 0x54b

    rem-int/2addr v1, p2

    sget-object p2, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    new-array v3, p1, [B

    add-int/lit8 p1, p1, 0x13

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v4, v2

    goto :goto_2

    :cond_1
    rsub-int/lit8 v1, p1, 0x31

    add-int/lit8 p0, p0, 0x21

    rsub-int p2, p2, 0x480

    sget-object v3, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    new-array v1, v1, [B

    rsub-int/lit8 p1, p1, 0x30

    if-nez v3, :cond_2

    move-object v7, v1

    move v1, p2

    move-object p2, v3

    move-object v3, v7

    :goto_1
    move v5, v2

    move-object v4, v3

    move v3, v1

    goto :goto_3

    :cond_2
    move-object v4, v1

    move v1, p2

    move-object p2, v3

    move-object v3, v4

    goto :goto_0

    :goto_2
    int-to-byte v5, p0

    aput-byte v5, v3, v4

    if-ne v4, p1, :cond_3

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    aget-byte v5, p2, v1

    move-object v7, v3

    move v3, p0

    move p0, v5

    move v5, v4

    move-object v4, v7

    :goto_3
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, p0

    add-int/lit8 p0, v3, -0x3

    sget v3, Lcom/appsflyer/internal/AFi1hSDK;->$13:I

    add-int/lit8 v3, v3, 0xf

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lcom/appsflyer/internal/AFi1hSDK;->$12:I

    rem-int/2addr v3, v0

    move-object v3, v4

    move v4, v5

    goto :goto_2
.end method

.method static constructor <clinit>()V
    .locals 60

    const-class v1, [B

    invoke-static {}, Lcom/appsflyer/internal/AFi1hSDK;->init$0()V

    const/4 v2, 0x3

    .line 2000
    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    const/16 v3, 0xbd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/16 v3, 0xfb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v0, v6

    sget-object v3, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v7, v3, v6

    int-to-byte v7, v7

    const/16 v8, 0xcd

    aget-byte v9, v3, v8

    int-to-byte v9, v9

    const/16 v10, 0x47c

    int-to-short v10, v10

    invoke-static {v7, v9, v10}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v9, 0x51

    int-to-byte v9, v9

    const/16 v10, 0x196

    aget-byte v10, v3, v10

    int-to-byte v10, v10

    sget v11, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    xor-int/lit16 v12, v11, 0x425

    and-int/lit16 v13, v11, 0x425

    or-int/2addr v12, v13

    int-to-short v12, v12

    invoke-static {v9, v10, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v10

    new-array v12, v2, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v6

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v5

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v4

    invoke-virtual {v7, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_51

    const v7, 0x11604ce3

    xor-int v12, v7, v0

    and-int v13, v7, v0

    or-int/2addr v12, v13

    const v13, 0x7c76f9fa

    xor-int v14, v12, v13

    and-int/2addr v12, v13

    or-int/2addr v12, v14

    mul-int/lit16 v12, v12, -0x273

    const v13, 0x4c5f6120

    add-int/2addr v13, v12

    const v12, -0x11604ce4

    xor-int v14, v12, v0

    and-int/2addr v12, v0

    or-int/2addr v12, v14

    not-int v12, v12

    const v14, -0x7c76f9fb

    or-int/2addr v12, v14

    mul-int/lit16 v15, v12, -0x273

    move/from16 v17, v7

    move/from16 v16, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v7, v7

    const v8, -0x2e3aa

    mul-int/2addr v12, v8

    mul-int/lit16 v8, v13, 0x25b

    neg-int v8, v8

    neg-int v8, v8

    or-int v18, v12, v8

    shl-int/lit8 v18, v18, 0x1

    xor-int/2addr v8, v12

    sub-int v18, v18, v8

    not-int v8, v15

    not-int v12, v7

    or-int/2addr v8, v12

    not-int v8, v8

    xor-int v19, v13, v8

    and-int/2addr v8, v13

    or-int v8, v19, v8

    mul-int/lit16 v8, v8, -0x25a

    xor-int v19, v18, v8

    and-int v8, v18, v8

    shl-int/2addr v8, v5

    add-int v19, v19, v8

    not-int v8, v15

    move/from16 v18, v14

    not-int v14, v13

    or-int/2addr v14, v8

    not-int v14, v14

    xor-int v20, v8, v7

    and-int/2addr v8, v7

    or-int v8, v20, v8

    not-int v8, v8

    xor-int v20, v14, v8

    and-int/2addr v8, v14

    or-int v8, v20, v8

    not-int v7, v7

    xor-int v14, v7, v15

    and-int/2addr v7, v15

    or-int/2addr v7, v14

    xor-int v14, v7, v13

    and-int/2addr v7, v13

    or-int/2addr v7, v14

    not-int v7, v7

    xor-int v14, v8, v7

    and-int/2addr v7, v8

    or-int/2addr v7, v14

    mul-int/lit16 v7, v7, -0x12d

    add-int v19, v19, v7

    xor-int v7, v12, v13

    and-int v8, v12, v13

    or-int/2addr v7, v8

    not-int v7, v7

    mul-int/lit16 v7, v7, 0x12d

    neg-int v7, v7

    neg-int v7, v7

    and-int v8, v19, v7

    or-int v7, v19, v7

    add-int/2addr v8, v7

    not-int v7, v0

    xor-int v12, v7, v17

    and-int v7, v7, v17

    or-int/2addr v7, v12

    not-int v7, v7

    or-int v0, v18, v0

    not-int v0, v0

    xor-int v12, v7, v0

    and-int/2addr v0, v7

    or-int/2addr v0, v12

    mul-int/lit16 v7, v0, 0x273

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    const v13, -0x86b5

    mul-int/2addr v0, v13

    mul-int/lit8 v13, v8, -0x37

    xor-int v14, v0, v13

    and-int/2addr v0, v13

    shl-int/2addr v0, v5

    add-int/2addr v14, v0

    xor-int v0, v7, v12

    and-int v13, v7, v12

    or-int/2addr v0, v13

    not-int v0, v0

    xor-int v13, v8, v0

    and-int/2addr v0, v8

    or-int/2addr v0, v13

    mul-int/lit8 v0, v0, 0x38

    neg-int v0, v0

    neg-int v0, v0

    or-int v13, v14, v0

    shl-int/2addr v13, v5

    xor-int/2addr v0, v14

    sub-int/2addr v13, v0

    xor-int v0, v7, v8

    and-int v14, v7, v8

    or-int/2addr v0, v14

    not-int v0, v0

    mul-int/lit8 v0, v0, -0x38

    xor-int v14, v13, v0

    and-int/2addr v0, v13

    shl-int/2addr v0, v5

    add-int/2addr v14, v0

    not-int v0, v12

    or-int/2addr v0, v8

    not-int v0, v0

    xor-int v8, v7, v0

    and-int/2addr v0, v7

    or-int/2addr v0, v8

    mul-int/lit8 v0, v0, 0x38

    not-int v0, v0

    sub-int/2addr v14, v0

    sub-int/2addr v14, v5

    if-nez v14, :cond_0

    goto/16 :goto_47

    :cond_0
    const-wide v7, -0x42caa9b7eb32b53aL    # -7.580438453908188E-14

    sput-wide v7, Lcom/appsflyer/internal/AFi1hSDK;->afInfoLog:J

    const/16 v0, 0x4a

    sput-byte v0, Lcom/appsflyer/internal/AFi1hSDK;->afErrorLogForExcManagerOnly:B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFi1hSDK;->AFLogger:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFi1hSDK;->d:Ljava/util/Map;

    int-to-byte v0, v11

    const/4 v7, 0x4

    :try_start_1
    aget-byte v8, v3, v7

    int-to-byte v8, v8

    const/16 v12, 0x465

    int-to-short v12, v12

    invoke-static {v0, v8, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/appsflyer/internal/AFi1hSDK;->i:Ljava/lang/Object;

    const/16 v12, 0x15c

    if-nez v0, :cond_1

    int-to-byte v0, v11

    aget-byte v13, v3, v12

    int-to-byte v13, v13

    const/16 v14, 0x445

    int-to-short v14, v14

    invoke-static {v0, v13, v14}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    goto :goto_0

    :cond_1
    move-object v0, v10

    :goto_0
    const/4 v13, -0x2

    .line 3000
    :try_start_2
    aget-byte v14, v3, v6

    int-to-byte v14, v14

    const/16 v15, 0x5b

    aget-byte v15, v3, v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    int-to-byte v15, v15

    move/from16 v17, v12

    const/16 v12, 0x439

    int-to-short v12, v12

    :try_start_3
    invoke-static {v14, v15, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    int-to-byte v11, v11

    const/16 v14, 0x145

    aget-byte v3, v3, v14

    int-to-byte v3, v3

    const/16 v14, 0x420

    int-to-short v14, v14

    invoke-static {v11, v3, v14}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    new-array v11, v6, [Ljava/lang/Class;

    invoke-virtual {v12, v3, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v11, v10

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v3, v10, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v3, :cond_2

    :catch_0
    move/from16 v18, v7

    move-object/from16 v19, v8

    goto/16 :goto_1

    :catch_1
    move/from16 v17, v12

    :catch_2
    move-object v3, v10

    :cond_2
    :try_start_4
    sget-object v11, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v12, v11, v6

    int-to-byte v12, v12

    aget-byte v14, v11, v16

    int-to-byte v14, v14

    const/16 v15, 0x40f

    int-to-short v15, v15

    invoke-static {v12, v14, v15}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget v14, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    add-int/lit8 v15, v14, 0x4

    int-to-byte v15, v15

    aget-byte v11, v11, v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move/from16 v18, v7

    move-object/from16 v19, v8

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v7, v7

    mul-int/lit16 v8, v11, 0x1b2

    const/16 v20, -0x1b0

    add-int v20, v20, v8

    not-int v8, v7

    or-int/2addr v8, v13

    xor-int v21, v8, v11

    and-int/2addr v8, v11

    or-int v8, v21, v8

    not-int v8, v8

    mul-int/lit16 v8, v8, 0x1b1

    and-int v21, v20, v8

    or-int v8, v20, v8

    add-int v21, v21, v8

    not-int v8, v11

    or-int/2addr v8, v7

    not-int v8, v8

    xor-int v20, v13, v8

    and-int/2addr v8, v13

    or-int v8, v20, v8

    mul-int/lit16 v8, v8, -0x1b1

    and-int v20, v21, v8

    or-int v8, v21, v8

    add-int v20, v20, v8

    xor-int v8, v13, v7

    and-int/2addr v7, v13

    or-int/2addr v7, v8

    not-int v7, v7

    xor-int/lit8 v8, v11, 0x1

    and-int/2addr v11, v5

    or-int/2addr v8, v11

    not-int v8, v8

    xor-int v11, v7, v8

    and-int/2addr v7, v8

    or-int/2addr v7, v11

    mul-int/lit16 v7, v7, 0x1b1

    add-int v7, v20, v7

    int-to-byte v7, v7

    xor-int/lit16 v8, v14, 0x3b8

    and-int/lit16 v11, v14, 0x3b8

    or-int/2addr v8, v11

    int-to-short v8, v8

    invoke-static {v15, v7, v8}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v12, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v8, v10

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 0
    rem-int v7, v4, v4

    :catch_3
    :goto_1
    const/4 v8, -0x5

    if-eqz v3, :cond_3

    sget v11, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    and-int/lit8 v12, v11, 0x5d

    or-int/lit8 v11, v11, 0x5d

    add-int/2addr v12, v11

    rem-int/lit16 v11, v12, 0x80

    sput v11, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/2addr v12, v4

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget v12, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    long-to-int v14, v14

    mul-int/lit16 v15, v12, -0x265

    not-int v15, v15

    rsub-int v15, v15, 0x99b

    const/16 v20, 0x33

    or-int v7, v8, v12

    not-int v7, v7

    xor-int v21, v14, v7

    and-int/2addr v7, v14

    or-int v7, v21, v7

    move/from16 v21, v8

    not-int v8, v12

    xor-int/lit8 v22, v8, 0x4

    and-int/lit8 v23, v8, 0x4

    move/from16 v24, v13

    or-int v13, v22, v23

    not-int v13, v13

    or-int/2addr v7, v13

    mul-int/lit16 v7, v7, 0x266

    add-int/2addr v15, v7

    not-int v7, v14

    xor-int v13, v21, v7

    and-int v22, v21, v7

    or-int v13, v13, v22

    not-int v13, v13

    xor-int v22, v21, v12

    and-int v23, v21, v12

    move/from16 v25, v6

    or-int v6, v22, v23

    not-int v6, v6

    xor-int v22, v13, v6

    and-int/2addr v6, v13

    or-int v6, v22, v6

    xor-int v13, v7, v12

    and-int/2addr v7, v12

    or-int/2addr v7, v13

    not-int v7, v7

    xor-int v13, v6, v7

    and-int/2addr v6, v7

    or-int/2addr v6, v13

    mul-int/lit16 v6, v6, -0x4cc

    neg-int v6, v6

    neg-int v6, v6

    xor-int v7, v15, v6

    and-int/2addr v6, v15

    shl-int/2addr v6, v5

    add-int/2addr v7, v6

    or-int v6, v21, v8

    not-int v8, v14

    xor-int v13, v6, v8

    and-int/2addr v6, v8

    or-int/2addr v6, v13

    not-int v6, v6

    xor-int/lit8 v13, v8, 0x4

    and-int/lit8 v8, v8, 0x4

    or-int/2addr v8, v13

    or-int/2addr v8, v12

    not-int v8, v8

    xor-int v12, v6, v8

    and-int/2addr v6, v8

    or-int/2addr v6, v12

    mul-int/lit16 v6, v6, 0x266

    neg-int v6, v6

    neg-int v6, v6

    xor-int v8, v7, v6

    and-int/2addr v6, v7

    shl-int/2addr v6, v5

    add-int/2addr v8, v6

    int-to-byte v6, v8

    :try_start_7
    sget-object v7, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v7, v7, v20

    int-to-byte v7, v7

    or-int/lit16 v8, v7, 0x3c0

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v6

    move-object v7, v10

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v11, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v7, v10

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    :goto_2
    move-object v6, v10

    goto :goto_3

    :catch_5
    :cond_3
    move/from16 v25, v6

    move/from16 v21, v8

    move/from16 v24, v13

    const/16 v20, 0x33

    goto :goto_2

    :goto_3
    if-eqz v3, :cond_4

    sget v7, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    xor-int/lit8 v8, v7, 0x6b

    and-int/lit8 v7, v7, 0x6b

    shl-int/2addr v7, v5

    add-int/2addr v8, v7

    rem-int/lit16 v7, v8, 0x80

    sput v7, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    rem-int/2addr v8, v4

    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget v8, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    add-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    sget-object v11, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    const/16 v12, 0x27d

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    const/16 v12, 0x3dc

    int-to-short v12, v12

    invoke-static {v8, v11, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v8

    move-object v11, v10

    check-cast v11, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v8, v10

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v7, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    :catch_6
    :cond_4
    move-object v7, v10

    :goto_4
    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget v11, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    mul-int/lit16 v13, v11, 0x153

    const/16 v14, -0x544

    or-int v15, v14, v13

    shl-int/2addr v15, v5

    xor-int/2addr v13, v14

    sub-int/2addr v15, v13

    not-int v13, v12

    xor-int v14, v21, v13

    and-int v13, v21, v13

    or-int/2addr v13, v14

    not-int v13, v13

    not-int v14, v11

    xor-int/lit8 v22, v14, 0x4

    and-int/lit8 v14, v14, 0x4

    or-int v14, v22, v14

    not-int v14, v14

    xor-int v22, v13, v14

    and-int/2addr v13, v14

    or-int v13, v22, v13

    xor-int/lit8 v14, v12, 0x4

    and-int/lit8 v22, v12, 0x4

    or-int v14, v14, v22

    not-int v14, v14

    xor-int v22, v13, v14

    and-int/2addr v13, v14

    or-int v13, v22, v13

    mul-int/lit16 v13, v13, -0x152

    or-int v14, v15, v13

    shl-int/2addr v14, v5

    xor-int/2addr v13, v15

    sub-int/2addr v14, v13

    xor-int v13, v21, v11

    and-int v15, v21, v11

    or-int/2addr v13, v15

    not-int v13, v13

    mul-int/lit16 v13, v13, 0x152

    or-int v15, v14, v13

    shl-int/2addr v15, v5

    xor-int/2addr v13, v14

    sub-int/2addr v15, v13

    not-int v13, v12

    xor-int v14, v21, v13

    and-int v13, v21, v13

    or-int/2addr v13, v14

    not-int v13, v13

    or-int/lit8 v14, v11, 0x4

    or-int/2addr v12, v14

    not-int v12, v12

    xor-int v14, v13, v12

    and-int/2addr v12, v13

    or-int/2addr v12, v14

    mul-int/lit16 v12, v12, 0x152

    add-int/2addr v15, v12

    int-to-byte v12, v15

    sget-object v13, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v13, v13, v20

    int-to-byte v13, v13

    xor-int/lit16 v14, v11, 0x38c

    and-int/lit16 v11, v11, 0x38c

    or-int/2addr v11, v14

    int-to-short v11, v11

    invoke-static {v12, v13, v11}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v11

    move-object v12, v10

    check-cast v12, [Ljava/lang/Class;

    invoke-virtual {v8, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v11, v10

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v8, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_5

    :catch_7
    :cond_5
    move-object v3, v10

    :goto_5
    const/16 v8, 0x53

    const/16 v11, 0xd8

    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    if-nez v0, :cond_7

    move-object v6, v10

    goto :goto_6

    :cond_7
    :try_start_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    const/16 v13, 0xc

    aget-byte v13, v12, v13

    int-to-byte v13, v13

    aget-byte v14, v12, v20

    int-to-byte v14, v14

    const/16 v15, 0x3c4

    int-to-short v15, v15

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_13

    sget v6, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    add-int/lit8 v6, v6, 0x5b

    rem-int/lit16 v13, v6, 0x80

    sput v13, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/2addr v6, v4

    :try_start_b
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    aget-byte v6, v12, v11

    int-to-byte v6, v6

    aget-byte v12, v12, v8

    int-to-byte v12, v12

    const/16 v13, 0x3ba

    int-to-short v13, v13

    invoke-static {v6, v12, v13}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v12, v5, [Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v25

    invoke-virtual {v6, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_50

    :goto_6
    if-eqz v3, :cond_9

    sget v0, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v12, v0, 0x80

    sput v12, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/2addr v0, v4

    if-nez v0, :cond_8

    const/16 v0, 0x2a

    :try_start_c
    div-int/lit8 v0, v0, 0x0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_13
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    throw v0

    :cond_8
    :goto_7
    move/from16 v22, v8

    move/from16 v27, v11

    goto/16 :goto_8

    :cond_9
    :try_start_d
    sget-object v0, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v3, v0, v11

    int-to-byte v3, v3

    const/16 v12, 0x2fb

    aget-byte v12, v0, v12

    neg-int v12, v12

    int-to-byte v12, v12

    xor-int/lit16 v13, v12, 0x38c

    and-int/lit16 v14, v12, 0x38c

    or-int/2addr v13, v14

    int-to-short v13, v13

    invoke-static {v3, v12, v13}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_13

    :try_start_e
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    aget-byte v12, v0, v11

    int-to-byte v12, v12

    const/16 v13, 0xab

    aget-byte v13, v0, v13

    int-to-byte v13, v13

    const/16 v14, 0x3a2

    int-to-short v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget v13, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v14, v14

    mul-int/lit16 v15, v13, 0x231

    not-int v15, v15

    rsub-int v15, v15, -0x8bd

    move/from16 v22, v8

    not-int v8, v14

    xor-int/lit8 v23, v8, 0x4

    and-int/lit8 v26, v8, 0x4

    move/from16 v27, v11

    or-int v11, v23, v26

    not-int v11, v11

    mul-int/lit16 v11, v11, -0x230

    or-int v23, v15, v11

    shl-int/lit8 v23, v23, 0x1

    xor-int/2addr v11, v15

    sub-int v23, v23, v11

    not-int v11, v13

    or-int/lit8 v11, v11, 0x4

    xor-int v15, v11, v14

    and-int/2addr v11, v14

    or-int/2addr v11, v15

    not-int v11, v11

    mul-int/lit16 v11, v11, -0x230

    neg-int v11, v11

    neg-int v11, v11

    and-int v14, v23, v11

    or-int v11, v23, v11

    add-int/2addr v14, v11

    xor-int v11, v21, v13

    and-int v15, v21, v13

    or-int/2addr v11, v15

    not-int v11, v11

    xor-int v15, v8, v13

    and-int/2addr v8, v13

    or-int/2addr v8, v15

    not-int v8, v8

    xor-int v13, v11, v8

    and-int/2addr v8, v11

    or-int/2addr v8, v13

    mul-int/lit16 v8, v8, 0x230

    xor-int v11, v14, v8

    and-int/2addr v8, v14

    shl-int/2addr v8, v5

    add-int/2addr v11, v8

    int-to-byte v8, v11

    aget-byte v11, v0, v20

    int-to-byte v11, v11

    const/16 v13, 0x393

    int-to-short v13, v13

    invoke-static {v8, v11, v13}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v8

    new-array v11, v5, [Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v25

    invoke-virtual {v12, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v10, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4f

    :try_start_f
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    aget-byte v8, v0, v27

    int-to-byte v8, v8

    aget-byte v0, v0, v22

    int-to-byte v0, v0

    const/16 v11, 0x3ba

    int-to-short v11, v11

    invoke-static {v8, v0, v11}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v8, v5, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v8, v25

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4e

    :goto_8
    if-nez v7, :cond_b

    if-eqz v6, :cond_b

    :try_start_10
    sget v0, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    int-to-byte v0, v0

    sget-object v7, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    const/16 v8, 0x32f

    aget-byte v8, v7, v8

    neg-int v8, v8

    int-to-byte v8, v8

    const/16 v11, 0x389

    int-to-short v11, v11

    invoke-static {v0, v8, v11}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_13

    rem-int v8, v4, v4

    :try_start_11
    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v5

    aput-object v6, v8, v25

    aget-byte v0, v7, v27

    int-to-byte v0, v0

    aget-byte v11, v7, v22

    int-to-byte v11, v11

    const/16 v12, 0x3ba

    int-to-short v12, v12

    invoke-static {v0, v11, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v11, v4, [Ljava/lang/Class;

    aget-byte v13, v7, v27

    int-to-byte v13, v13

    aget-byte v7, v7, v22

    int-to-byte v7, v7

    invoke-static {v13, v7, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v11, v25

    const-class v7, Ljava/lang/String;

    aput-object v7, v11, v5

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_a

    throw v1

    :cond_a
    throw v0

    :cond_b
    :goto_9
    sget-object v0, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v8, v0, v27

    int-to-byte v8, v8

    aget-byte v11, v0, v22

    int-to-byte v11, v11

    const/16 v12, 0x3ba

    int-to-short v12, v12

    invoke-static {v8, v11, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v11, 0x7

    invoke-static {v8, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    aput-object v10, v8, v25

    aput-object v7, v8, v5

    aput-object v6, v8, v4

    aput-object v3, v8, v2

    aput-object v7, v8, v18

    const/4 v7, 0x5

    aput-object v6, v8, v7

    const/4 v6, 0x6

    aput-object v3, v8, v6

    new-array v3, v11, [Z

    fill-array-data v3, :array_0

    new-array v6, v11, [Z

    fill-array-data v6, :array_1

    new-array v13, v11, [Z

    aput-boolean v25, v13, v25

    aput-boolean v25, v13, v5

    aput-boolean v5, v13, v4

    aput-boolean v5, v13, v2

    aput-boolean v25, v13, v18

    aput-boolean v5, v13, v7

    const/4 v14, 0x6

    aput-boolean v5, v13, v14
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_13

    :try_start_13
    aget-byte v14, v0, v25

    int-to-byte v14, v14

    const/16 v15, 0x1e6

    aget-byte v15, v0, v15
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    int-to-byte v15, v15

    move/from16 v23, v11

    const/16 v11, 0x380

    int-to-short v11, v11

    :try_start_14
    invoke-static {v14, v15, v11}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v14, 0x67

    aget-byte v14, v0, v14

    int-to-byte v14, v14

    const/16 v15, 0x1aa

    aget-byte v0, v0, v15

    int-to-byte v0, v0

    const/16 v15, 0x369

    int-to-short v15, v15

    invoke-static {v14, v0, v15}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_13

    const/16 v11, 0x22

    if-lt v0, v11, :cond_c

    move v11, v5

    goto :goto_a

    :cond_c
    sget v11, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    add-int/lit8 v11, v11, 0xd

    rem-int/lit16 v14, v11, 0x80

    sput v14, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/2addr v11, v4

    rem-int v11, v4, v4

    move/from16 v11, v25

    :goto_a
    const/16 v14, 0x1d

    if-ne v0, v14, :cond_d

    goto :goto_b

    :cond_d
    const/16 v14, 0x1a

    if-lt v0, v14, :cond_e

    move v14, v5

    goto :goto_c

    :cond_e
    :goto_b
    move/from16 v14, v25

    :goto_c
    :try_start_15
    aput-boolean v14, v13, v25

    const/16 v14, 0x15

    if-lt v0, v14, :cond_f

    move v14, v5

    goto :goto_d

    :cond_f
    move/from16 v14, v25

    :goto_d
    aput-boolean v14, v13, v5
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_13

    const/16 v14, 0x15

    if-lt v0, v14, :cond_10

    sget v0, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v14, v0, 0x80

    sput v14, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/2addr v0, v4

    move v0, v5

    goto :goto_e

    :cond_10
    move/from16 v0, v25

    :goto_e
    :try_start_16
    aput-boolean v0, v13, v18
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_13

    goto :goto_f

    :catch_8
    move/from16 v23, v11

    :catch_9
    move/from16 v11, v25

    :catch_a
    :goto_f
    move/from16 v14, v25

    move v15, v14

    :goto_10
    if-nez v14, :cond_5c

    const/16 v0, 0x9

    if-ge v15, v0, :cond_5c

    sget v0, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    and-int/lit8 v26, v0, 0xb

    or-int/lit8 v0, v0, 0xb

    add-int v0, v26, v0

    move/from16 v26, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/2addr v0, v4

    if-eqz v0, :cond_5b

    :try_start_17
    aget-boolean v0, v13, v15
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_13

    if-eqz v0, :cond_5a

    const/16 v28, 0x120

    :try_start_18
    aget-boolean v29, v3, v15

    aget-object v0, v8, v15

    aget-boolean v30, v6, v15
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4b

    const/16 v31, 0x2d4

    if-nez v29, :cond_11

    move/from16 v37, v4

    move/from16 v35, v5

    const/16 v33, 0x26a

    goto :goto_11

    :cond_11
    if-eqz v0, :cond_54

    rem-int v32, v4, v4

    .line 4000
    :try_start_19
    sget-object v32, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_48

    const/16 v33, 0x26a

    :try_start_1a
    aget-byte v2, v32, v27

    int-to-byte v2, v2

    aget-byte v7, v32, v22

    int-to-byte v7, v7

    invoke-static {v2, v7, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget v7, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    move/from16 v35, v5

    int-to-byte v5, v7

    const/16 v36, 0xe8

    move/from16 v37, v4

    aget-byte v4, v32, v36

    int-to-byte v4, v4

    or-int/lit16 v7, v7, 0x321

    int-to-short v7, v7

    invoke-static {v5, v4, v7}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_47

    if-eqz v2, :cond_55

    :goto_11
    if-eqz v29, :cond_24

    :try_start_1b
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    .line 0
    rem-int v4, v37, v37

    .line 4000
    :try_start_1c
    sget-object v4, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v5, v4, v27

    int-to-byte v5, v5

    const/16 v7, 0xab

    aget-byte v7, v4, v7

    int-to-byte v7, v7

    const/16 v10, 0x3a2

    int-to-short v10, v10

    invoke-static {v5, v7, v10}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget v7, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    int-to-byte v10, v7

    const/16 v36, 0x1e7

    aget-byte v4, v4, v36
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    int-to-byte v4, v4

    move-object/from16 v36, v1

    xor-int/lit16 v1, v7, 0x304

    and-int/lit16 v7, v7, 0x304

    or-int/2addr v1, v7

    int-to-short v1, v1

    :try_start_1d
    invoke-static {v10, v4, v1}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v5, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    const-wide/32 v38, -0x52c31f1e

    xor-long v4, v4, v38

    :try_start_1e
    invoke-virtual {v2, v4, v5}, Ljava/util/Random;->setSeed(J)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_12
    if-nez v1, :cond_22

    if-nez v4, :cond_12

    const/4 v10, 0x6

    move-object/from16 v38, v1

    goto :goto_13

    :cond_12
    if-nez v5, :cond_13

    move-object/from16 v38, v1

    const/4 v10, 0x5

    goto :goto_13

    :cond_13
    if-nez v7, :cond_14

    .line 0
    sget v10, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    and-int/lit8 v38, v10, 0x63

    or-int/lit8 v10, v10, 0x63

    add-int v10, v38, v10

    move-object/from16 v38, v1

    rem-int/lit16 v1, v10, 0x80

    sput v1, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/lit8 v10, v10, 0x2

    move/from16 v10, v18

    goto :goto_13

    :cond_14
    move-object/from16 v38, v1

    move/from16 v10, v26

    .line 4000
    :goto_13
    :try_start_1f
    new-instance v1, Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    move-object/from16 v39, v3

    move-object/from16 v40, v4

    :try_start_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v3, v3

    mul-int/lit8 v4, v10, 0x2e

    const/16 v41, 0x2e

    and-int v42, v41, v4

    or-int v4, v41, v4

    add-int v42, v42, v4

    not-int v4, v10

    move/from16 v41, v4

    not-int v4, v3

    xor-int v43, v41, v4

    and-int v44, v41, v4

    move/from16 v45, v3

    or-int v3, v43, v44

    not-int v3, v3

    xor-int/lit8 v43, v3, 0x1

    and-int/lit8 v3, v3, 0x1

    or-int v3, v43, v3

    mul-int/lit8 v3, v3, -0x5a

    neg-int v3, v3

    neg-int v3, v3

    xor-int v43, v42, v3

    and-int v3, v42, v3

    shl-int/lit8 v3, v3, 0x1

    add-int v43, v43, v3

    not-int v3, v10

    xor-int v42, v3, v45

    and-int v3, v3, v45

    or-int v3, v42, v3

    not-int v3, v3

    xor-int/lit8 v42, v10, 0x1

    and-int/lit8 v44, v10, 0x1

    move/from16 v46, v3

    or-int v3, v42, v44

    not-int v3, v3

    xor-int v42, v46, v3

    and-int v3, v46, v3

    or-int v3, v42, v3

    mul-int/lit8 v3, v3, -0x2d

    neg-int v3, v3

    neg-int v3, v3

    or-int v42, v43, v3

    shl-int/lit8 v42, v42, 0x1

    xor-int v3, v43, v3

    sub-int v42, v42, v3

    xor-int v3, v24, v45

    and-int v43, v24, v45

    or-int v3, v3, v43

    not-int v3, v3

    or-int v3, v41, v3

    or-int/lit8 v4, v4, 0x1

    not-int v4, v4

    xor-int v41, v3, v4

    and-int/2addr v3, v4

    or-int v3, v41, v3

    mul-int/lit8 v3, v3, 0x2d

    neg-int v3, v3

    neg-int v3, v3

    not-int v3, v3

    sub-int v42, v42, v3

    add-int/lit8 v3, v42, -0x1

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v3, v25

    :goto_14
    if-ge v3, v10, :cond_17

    if-eqz v30, :cond_16

    const/16 v4, 0x1a

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v41
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    if-eqz v41, :cond_15

    move-object/from16 v42, v5

    move-object/from16 v41, v6

    :try_start_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v5, v5

    mul-int/lit16 v6, v4, 0x3a6

    const v43, -0xeca4

    or-int v44, v6, v43

    shl-int/lit8 v44, v44, 0x1

    xor-int v6, v6, v43

    sub-int v44, v44, v6

    not-int v6, v4

    not-int v5, v5

    xor-int v43, v6, v5

    and-int/2addr v6, v5

    or-int v6, v43, v6

    not-int v6, v6

    const/16 v43, -0x42

    or-int v6, v43, v6

    mul-int/lit16 v6, v6, -0x3a5

    or-int v45, v44, v6

    shl-int/lit8 v45, v45, 0x1

    xor-int v6, v44, v6

    sub-int v45, v45, v6

    or-int v5, v43, v5

    not-int v5, v5

    const/16 v6, -0x42

    or-int/2addr v6, v4

    not-int v6, v6

    xor-int v43, v5, v6

    and-int/2addr v5, v6

    or-int v5, v43, v5

    mul-int/lit16 v5, v5, 0x3a5

    neg-int v5, v5

    neg-int v5, v5

    or-int v6, v45, v5

    shl-int/lit8 v6, v6, 0x1

    xor-int v5, v45, v5

    sub-int/2addr v6, v5

    or-int/lit8 v4, v4, 0x41

    not-int v4, v4

    mul-int/lit16 v4, v4, 0x3a5

    neg-int v4, v4

    neg-int v4, v4

    xor-int v5, v6, v4

    and-int/2addr v4, v6

    goto :goto_15

    :cond_15
    move-object/from16 v42, v5

    move-object/from16 v41, v6

    xor-int/lit8 v5, v4, 0x60

    and-int/lit8 v4, v4, 0x60

    :goto_15
    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_16
    move-object/from16 v42, v5

    move-object/from16 v41, v6

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    and-int/lit16 v5, v4, 0x2000

    or-int/lit16 v4, v4, 0x2000

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_16
    or-int/lit8 v4, v3, 0x1

    shl-int/lit8 v4, v4, 0x1

    xor-int/lit8 v3, v3, 0x1

    sub-int v3, v4, v3

    move-object/from16 v6, v41

    move-object/from16 v5, v42

    goto/16 :goto_14

    :cond_17
    move-object/from16 v42, v5

    move-object/from16 v41, v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_46

    if-nez v40, :cond_19

    .line 0
    sget v3, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    add-int/lit8 v3, v3, 0x43

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    rem-int/lit8 v3, v3, 0x2

    move/from16 v3, v37

    .line 4000
    :try_start_22
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v35

    aput-object v0, v4, v25

    sget-object v1, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v3, v1, v27

    int-to-byte v3, v3

    aget-byte v5, v1, v22

    int-to-byte v5, v5

    invoke-static {v3, v5, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aget-byte v5, v1, v27

    int-to-byte v5, v5

    aget-byte v1, v1, v22

    int-to-byte v1, v1

    invoke-static {v5, v1, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v6, v25

    const-class v1, Ljava/lang/String;

    aput-object v1, v6, v35

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    move-object v4, v1

    move-object/from16 v43, v2

    move-object/from16 v1, v38

    :goto_17
    move-object/from16 v5, v42

    goto/16 :goto_19

    :catchall_2
    move-exception v0

    :try_start_23
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_18

    throw v1

    :cond_18
    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_46

    :cond_19
    if-nez v42, :cond_1b

    const/4 v3, 0x2

    :try_start_24
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v35

    aput-object v0, v4, v25

    sget-object v1, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v3, v1, v27

    int-to-byte v3, v3

    aget-byte v5, v1, v22

    int-to-byte v5, v5

    invoke-static {v3, v5, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aget-byte v5, v1, v27

    int-to-byte v5, v5

    aget-byte v1, v1, v22

    int-to-byte v1, v1

    invoke-static {v5, v1, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v6, v25

    const-class v1, Ljava/lang/String;

    aput-object v1, v6, v35

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    move-object v5, v1

    move-object/from16 v43, v2

    move-object/from16 v1, v38

    move-object/from16 v4, v40

    goto/16 :goto_19

    :catchall_3
    move-exception v0

    :try_start_25
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1a

    throw v1

    :cond_1a
    throw v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_46

    :cond_1b
    if-nez v7, :cond_1d

    .line 0
    sget v3, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    xor-int/lit8 v4, v3, 0x2d

    and-int/lit8 v3, v3, 0x2d

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    const/4 v3, 0x2

    rem-int/2addr v4, v3

    .line 4000
    :try_start_26
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v35

    aput-object v0, v4, v25

    sget-object v1, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v3, v1, v27

    int-to-byte v3, v3

    aget-byte v5, v1, v22

    int-to-byte v5, v5

    invoke-static {v3, v5, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aget-byte v5, v1, v27

    int-to-byte v5, v5

    aget-byte v1, v1, v22

    int-to-byte v1, v1

    invoke-static {v5, v1, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v6, v25

    const-class v1, Ljava/lang/String;

    aput-object v1, v6, v35

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    move-object v7, v1

    move-object/from16 v43, v2

    move-object/from16 v1, v38

    :goto_18
    move-object/from16 v4, v40

    goto/16 :goto_17

    :catchall_4
    move-exception v0

    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1c

    throw v1

    :cond_1c
    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_46

    .line 0
    :cond_1d
    sget v3, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    add-int/lit8 v3, v3, 0x35

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    const/4 v5, 0x2

    rem-int/2addr v3, v5

    .line 4000
    :try_start_28
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v35

    aput-object v0, v3, v25

    sget-object v1, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v4, v1, v27

    int-to-byte v4, v4

    aget-byte v5, v1, v22

    int-to-byte v5, v5

    invoke-static {v4, v5, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aget-byte v5, v1, v27

    int-to-byte v5, v5

    aget-byte v10, v1, v22

    int-to-byte v10, v10

    invoke-static {v5, v10, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v6, v25

    const-class v5, Ljava/lang/String;

    aput-object v5, v6, v35

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_8

    .line 0
    sget v4, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    xor-int/lit8 v5, v4, 0x23

    and-int/lit8 v4, v4, 0x23

    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    const/16 v37, 0x2

    rem-int/lit8 v5, v5, 0x2

    add-int/lit8 v4, v4, 0x47

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/lit8 v4, v4, 0x2

    .line 4000
    :try_start_29
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    aget-byte v5, v1, v27

    int-to-byte v5, v5

    const/16 v6, 0x1e6

    aget-byte v6, v1, v6

    int-to-byte v6, v6

    const/16 v10, 0x336

    int-to-short v10, v10

    invoke-static {v5, v6, v10}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v38, v1

    move/from16 v6, v35

    new-array v1, v6, [Ljava/lang/Class;

    aget-byte v6, v38, v27

    int-to-byte v6, v6

    move-object/from16 v43, v2

    aget-byte v2, v38, v22

    int-to-byte v2, v2

    invoke-static {v6, v2, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v25

    invoke-virtual {v5, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_6

    .line 0
    sget v2, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    const/16 v37, 0x2

    rem-int/lit8 v2, v2, 0x2

    .line 4000
    :try_start_2a
    aget-byte v2, v38, v27

    int-to-byte v2, v2

    const/16 v4, 0x1e6

    aget-byte v4, v38, v4

    int-to-byte v4, v4

    invoke-static {v2, v4, v10}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget v4, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    int-to-byte v4, v4

    aget-byte v5, v38, v31

    int-to-byte v5, v5

    const/16 v6, 0x31f

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    move-object v1, v3

    goto/16 :goto_18

    :goto_19
    move-object/from16 v3, v39

    move-object/from16 v6, v41

    move-object/from16 v2, v43

    const/16 v35, 0x1

    const/16 v37, 0x2

    goto/16 :goto_12

    :catchall_5
    move-exception v0

    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1e

    throw v1

    :cond_1e
    throw v0

    :catchall_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1f

    throw v1

    :cond_1f
    throw v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_46

    :catch_b
    move-exception v0

    :try_start_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v4, v2, v17

    int-to-byte v4, v4

    aget-byte v5, v2, v31

    int-to-byte v5, v5

    const/16 v6, 0x31b

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x29

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    const/16 v4, 0x191

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    const/16 v5, 0x358

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_46

    const/4 v3, 0x2

    :try_start_2d
    new-array v4, v3, [Ljava/lang/Object;

    const/16 v35, 0x1

    aput-object v0, v4, v35

    aput-object v1, v4, v25

    aget-byte v0, v2, v27

    int-to-byte v0, v0

    aget-byte v1, v2, v28

    int-to-byte v1, v1

    invoke-static {v0, v1, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v25

    const-class v2, Ljava/lang/Throwable;

    const/16 v35, 0x1

    aput-object v2, v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_7

    :catchall_7
    move-exception v0

    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_20

    throw v1

    :cond_20
    throw v0

    :catchall_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_21

    throw v1

    :cond_21
    throw v0

    :catchall_9
    move-exception v0

    goto :goto_1c

    :cond_22
    move-object/from16 v38, v1

    move-object/from16 v40, v4

    move-object/from16 v42, v5

    goto :goto_1d

    :catchall_a
    move-exception v0

    goto :goto_1b

    :catchall_b
    move-exception v0

    goto :goto_1a

    :catchall_c
    move-exception v0

    move-object/from16 v36, v1

    :goto_1a
    move-object/from16 v39, v3

    move-object/from16 v41, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_23

    throw v1

    :cond_23
    throw v0

    :catchall_d
    move-exception v0

    move-object/from16 v36, v1

    :goto_1b
    move-object/from16 v39, v3

    :goto_1c
    move-object/from16 v41, v6

    goto/16 :goto_41

    :cond_24
    move-object/from16 v36, v1

    const/4 v7, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    :goto_1d
    move-object/from16 v39, v3

    move-object/from16 v41, v6

    sget-object v0, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    const/16 v1, 0xc

    aget-byte v1, v0, v1

    int-to-byte v1, v1

    const/16 v2, 0x1c

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    xor-int/lit16 v3, v2, 0x316

    and-int/lit16 v4, v2, 0x316

    or-int/2addr v3, v4

    int-to-short v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/appsflyer/internal/AFi1hSDK;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_46

    :try_start_2f
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    const-class v4, Ljava/lang/Class;

    sget v5, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    add-int/lit8 v6, v5, 0x4

    int-to-byte v6, v6

    aget-byte v10, v0, v20

    int-to-byte v10, v10

    move-object/from16 v30, v7

    const/16 v7, 0x2e8

    int-to-short v7, v7

    invoke-static {v6, v10, v7}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v10, v25

    invoke-virtual {v4, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_45

    :try_start_30
    aget-byte v3, v0, v27

    int-to-byte v3, v3

    aget-byte v4, v0, v22

    int-to-byte v4, v4

    xor-int/lit16 v6, v5, 0x29c

    and-int/lit16 v7, v5, 0x29c

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {v3, v4, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    xor-int/lit8 v4, v5, 0x4

    and-int/lit8 v6, v5, 0x4

    const/16 v35, 0x1

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v6

    int-to-byte v4, v4

    const/16 v6, 0x1aa

    aget-byte v6, v0, v6

    int-to-byte v6, v6

    xor-int/lit16 v7, v5, 0x291

    and-int/lit16 v10, v5, 0x291

    or-int/2addr v7, v10

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_44

    :try_start_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v4, v0, v23

    int-to-byte v4, v4

    const/16 v6, 0x191

    aget-byte v6, v0, v6

    int-to-byte v6, v6

    const/16 v7, 0x2cd

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_46

    const/16 v2, 0x1a36

    :try_start_32
    new-array v2, v2, [B

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_42

    .line 0
    sget v4, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    and-int/lit8 v6, v4, 0x3

    or-int/lit8 v4, v4, 0x3

    add-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    const/16 v37, 0x2

    rem-int/lit8 v6, v6, 0x2

    .line 4000
    :try_start_33
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    aget-byte v4, v0, v27

    int-to-byte v4, v4

    const/16 v6, 0x52

    aget-byte v6, v0, v6

    int-to-byte v6, v6

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/Class;

    aget-byte v6, v0, v27

    int-to-byte v6, v6

    move-object/from16 v43, v2

    aget-byte v2, v0, v28
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_40

    int-to-byte v2, v2

    move-object/from16 v44, v8

    const/16 v8, 0x2b3

    int-to-short v8, v8

    :try_start_34
    invoke-static {v6, v2, v8}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v10, v25

    invoke-virtual {v4, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_3f

    :try_start_35
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    aget-byte v2, v0, v27

    int-to-byte v2, v2

    aget-byte v4, v0, v33

    int-to-byte v4, v4

    const/16 v6, 0x2a1

    int-to-short v6, v6

    invoke-static {v2, v4, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Class;

    aget-byte v4, v0, v27
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_3e

    int-to-byte v4, v4

    move/from16 v45, v11

    :try_start_36
    aget-byte v11, v0, v28

    int-to-byte v11, v11

    invoke-static {v4, v11, v8}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v10, v25

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_3d

    :try_start_37
    filled-new-array/range {v43 .. v43}, [Ljava/lang/Object;

    move-result-object v2

    aget-byte v4, v0, v27

    int-to-byte v4, v4

    aget-byte v8, v0, v33

    int-to-byte v8, v8

    invoke-static {v4, v8, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x80

    aget-byte v10, v0, v8

    int-to-byte v10, v10

    const/16 v11, 0x28b

    int-to-short v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v10

    move/from16 v46, v8

    const/4 v11, 0x1

    new-array v8, v11, [Ljava/lang/Class;

    aput-object v36, v8, v25

    invoke-virtual {v4, v10, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_3c

    :try_start_38
    aget-byte v2, v0, v27

    int-to-byte v2, v2

    aget-byte v4, v0, v33

    int-to-byte v4, v4

    invoke-static {v2, v4, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    int-to-byte v4, v5

    aget-byte v0, v0, v31

    int-to-byte v0, v0

    const/16 v5, 0x31f

    int-to-short v5, v5

    invoke-static {v4, v0, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_3b

    const/16 v0, 0x16

    const/16 v1, 0x19fc

    move v2, v1

    move v1, v0

    move v0, v2

    move-object/from16 v5, v19

    move-object/from16 v2, v43

    const/4 v4, 0x0

    :goto_1e
    const/4 v6, 0x1

    int-to-long v10, v6

    .line 5000
    :try_start_39
    array-length v6, v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_3a

    move-wide/from16 v47, v10

    move/from16 v8, v25

    :goto_1f
    if-ge v8, v6, :cond_25

    :try_start_3a
    aget-byte v11, v2, v8
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_e

    const/16 v43, 0x10

    int-to-long v10, v11

    const/16 v49, 0x6

    shl-long v49, v47, v49

    add-long v10, v10, v49

    shl-long v49, v47, v43

    add-long v10, v10, v49

    sub-long v47, v10, v47

    xor-int/lit8 v10, v8, 0x1

    and-int/lit8 v8, v8, 0x1

    const/16 v35, 0x1

    shl-int/lit8 v8, v8, 0x1

    add-int/2addr v8, v10

    goto :goto_1f

    :catchall_e
    move-exception v0

    move-object v1, v0

    move-object v6, v3

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    goto/16 :goto_3f

    :cond_25
    const/16 v43, 0x10

    .line 4000
    :try_start_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v6, v10

    mul-int/lit16 v8, v1, 0xb9

    const v10, -0x32c10

    add-int/2addr v10, v8

    xor-int/lit16 v8, v1, -0x471

    and-int/lit16 v11, v1, -0x471

    or-int/2addr v8, v11

    mul-int/lit16 v8, v8, -0x170

    add-int/2addr v10, v8

    not-int v8, v1

    xor-int/lit16 v11, v8, 0x470

    and-int/lit16 v8, v8, 0x470

    or-int/2addr v8, v11

    not-int v6, v6

    xor-int v11, v8, v6

    and-int/2addr v8, v6

    or-int/2addr v8, v11

    mul-int/lit16 v8, v8, 0xb8

    add-int/2addr v10, v8

    not-int v8, v1

    const/16 v11, -0x471

    xor-int v49, v11, v8

    and-int/2addr v8, v11

    or-int v8, v49, v8

    not-int v8, v8

    xor-int/lit16 v11, v6, 0x470

    and-int/lit16 v6, v6, 0x470

    or-int/2addr v6, v11

    not-int v6, v6

    xor-int v11, v8, v6

    and-int/2addr v6, v8

    or-int/2addr v6, v11

    xor-int/lit16 v8, v1, 0x470

    and-int/lit16 v11, v1, 0x470

    or-int/2addr v8, v11

    not-int v8, v8

    xor-int v11, v6, v8

    and-int/2addr v6, v8

    or-int/2addr v6, v11

    mul-int/lit16 v6, v6, 0xb8

    neg-int v6, v6

    neg-int v6, v6

    and-int v8, v10, v6

    or-int/2addr v6, v10

    add-int/2addr v8, v6

    add-int/lit16 v6, v1, 0xc1f

    aget-byte v6, v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    mul-int/lit16 v11, v6, -0x1c0

    neg-int v11, v11

    neg-int v11, v11

    const/16 v49, -0x32fa

    and-int v50, v49, v11

    or-int v11, v49, v11

    add-int v50, v50, v11

    const/16 v11, 0x1c

    xor-int v49, v11, v6

    and-int/2addr v11, v6

    or-int v11, v49, v11

    not-int v11, v11

    move/from16 v49, v8

    not-int v8, v6

    xor-int/lit8 v51, v8, -0x1d

    and-int/lit8 v8, v8, -0x1d

    or-int v8, v51, v8

    xor-int v51, v8, v10

    and-int/2addr v8, v10

    or-int v8, v51, v8

    not-int v8, v8

    or-int/2addr v8, v11

    mul-int/lit16 v8, v8, 0x1c1

    xor-int v11, v50, v8

    and-int v8, v50, v8

    const/16 v35, 0x1

    shl-int/lit8 v8, v8, 0x1

    add-int/2addr v11, v8

    const/16 v8, 0x1c

    or-int/2addr v8, v6

    not-int v8, v8

    move/from16 v50, v11

    mul-int/lit16 v11, v8, -0x543

    not-int v11, v11

    sub-int v11, v50, v11

    add-int/lit8 v11, v11, -0x1

    not-int v6, v6

    not-int v10, v10

    xor-int v50, v6, v10

    and-int/2addr v6, v10

    or-int v6, v50, v6

    xor-int/lit8 v10, v6, -0x1d

    and-int/lit8 v6, v6, -0x1d

    or-int/2addr v6, v10

    not-int v6, v6

    or-int/2addr v6, v8

    mul-int/lit16 v6, v6, 0x1c1

    neg-int v6, v6

    neg-int v6, v6

    or-int v8, v11, v6

    const/16 v35, 0x1

    shl-int/lit8 v8, v8, 0x1

    xor-int/2addr v6, v11

    sub-int/2addr v8, v6

    int-to-byte v6, v8

    aput-byte v6, v2, v49

    array-length v6, v2
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_3a

    neg-int v8, v1

    not-int v8, v8

    sub-int/2addr v6, v8

    add-int/lit8 v6, v6, -0x1

    move/from16 v8, v26

    :try_start_3c
    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v37, 0x2

    aput-object v6, v10, v37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v35

    aput-object v2, v10, v25

    sget-object v2, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v6, v2, v27

    int-to-byte v6, v6

    const/16 v8, 0x31

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    const/16 v11, 0x283

    int-to-short v11, v11

    invoke-static {v6, v8, v11}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x3

    new-array v11, v8, [Ljava/lang/Class;

    aput-object v36, v11, v25

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v35, 0x1

    aput-object v8, v11, v35

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v37, 0x2

    aput-object v8, v11, v37

    invoke-virtual {v6, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_39

    :try_start_3d
    sget-object v8, Lcom/appsflyer/internal/AFi1hSDK;->i:Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_3a

    if-nez v8, :cond_28

    :try_start_3e
    sput-wide v47, Lcom/appsflyer/internal/AFi1hSDK;->v:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/16 v8, 0x30

    shr-long/2addr v10, v8

    const-wide v49, 0x3f5eecd4e51558e4L    # 0.0018875197459542964

    sub-long v49, v49, v10

    xor-long v10, v47, v49

    long-to-int v8, v10

    sget-wide v10, Lcom/appsflyer/internal/AFi1hSDK;->v:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v47

    const/16 v49, 0x30

    shr-long v47, v47, v49

    const-wide v49, 0x3f5eecd4fbf4df94L    # 0.0018875198291663274

    add-long v47, v47, v49

    xor-long v10, v10, v47

    long-to-int v10, v10

    int-to-byte v10, v10

    move/from16 v49, v1

    move/from16 v11, v43

    new-array v1, v11, [B

    fill-array-data v1, :array_2

    move-object/from16 v47, v1

    new-array v1, v11, [B

    sget-wide v50, Lcom/appsflyer/internal/AFi1hSDK;->v:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v52

    const/16 v11, 0x3c

    shr-long v52, v52, v11

    const-wide v54, 0x3f5eecd4fbf4df9cL    # 0.0018875198291663292

    add-long v52, v52, v54

    move/from16 v48, v10

    xor-long v10, v50, v52

    long-to-int v10, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v50
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_11

    const-wide/16 v52, 0x0

    cmp-long v11, v50, v52

    add-int/lit8 v11, v11, -0x1

    const/16 v37, 0x2

    .line 0
    rem-int v50, v37, v37

    move-object/from16 v50, v2

    move-object/from16 v51, v6

    const/4 v2, 0x5

    .line 4000
    :try_start_3f
    new-array v6, v2, [Ljava/lang/Object;

    const/16 v43, 0x10

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v26, 0x3

    aput-object v2, v6, v26

    const/16 v37, 0x2

    aput-object v1, v6, v37

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v35, 0x1

    aput-object v2, v6, v35

    aput-object v47, v6, v25

    aget-byte v2, v50, v27

    int-to-byte v2, v2

    const/16 v10, 0xab

    aget-byte v10, v50, v10

    int-to-byte v10, v10

    const/16 v11, 0x3a2

    int-to-short v11, v11

    invoke-static {v2, v10, v11}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v10, v50, v25

    int-to-byte v10, v10

    aget-byte v11, v50, v46

    int-to-byte v11, v11

    move/from16 v43, v8

    or-int/lit16 v8, v11, 0x240

    int-to-short v8, v8

    invoke-static {v10, v11, v8}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x5

    new-array v11, v10, [Ljava/lang/Class;

    const-class v34, Ljava/lang/Object;

    aput-object v34, v11, v25

    sget-object v34, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v35, 0x1

    aput-object v34, v11, v35

    const-class v34, Ljava/lang/Object;

    const/16 v37, 0x2

    aput-object v34, v11, v37

    sget-object v34, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x3

    aput-object v34, v11, v26

    sget-object v34, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v34, v11, v18

    invoke-virtual {v2, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_10

    :try_start_40
    sget-byte v2, Lcom/appsflyer/internal/AFi1hSDK;->afErrorLogForExcManagerOnly:B

    sget-wide v10, Lcom/appsflyer/internal/AFi1hSDK;->afInfoLog:J

    invoke-static {v1, v2, v10, v11}, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData([BBJ)V

    invoke-static/range {v43 .. v43}, Lcom/appsflyer/internal/AFk1nSDK;->getMediationNetwork(I)[[B

    move-result-object v2
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_11

    move/from16 v6, v18

    :try_start_41
    new-array v8, v6, [Ljava/lang/Object;

    const/16 v26, 0x3

    aput-object v2, v8, v26

    const/16 v37, 0x2

    aput-object v1, v8, v37

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v35, 0x1

    aput-object v1, v8, v35

    aput-object v51, v8, v25

    sget v1, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    int-to-byte v1, v1

    const/16 v2, 0xe

    aget-byte v2, v50, v2

    int-to-byte v2, v2

    const/16 v6, 0x260

    int-to-short v6, v6

    invoke-static {v1, v2, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v6, 0x4

    new-array v2, v6, [Ljava/lang/Class;

    aget-byte v6, v50, v27

    int-to-byte v6, v6

    aget-byte v10, v50, v28

    int-to-byte v10, v10

    const/16 v11, 0x2b3

    int-to-short v11, v11

    invoke-static {v6, v10, v11}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v2, v25

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v35, 0x1

    aput-object v6, v2, v35

    const/16 v37, 0x2

    aput-object v36, v2, v37

    const-class v6, [[B

    const/16 v26, 0x3

    aput-object v6, v2, v26

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_f

    move-object/from16 v51, v13

    move/from16 v43, v14

    goto/16 :goto_21

    :catchall_f
    move-exception v0

    :try_start_42
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_26

    throw v1

    :cond_26
    throw v0

    :catchall_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_27

    throw v1

    :cond_27
    throw v0
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_11

    :catchall_11
    move-exception v0

    move-object v1, v0

    move-object v6, v3

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    :goto_20
    const/16 v18, 0x4

    goto/16 :goto_3f

    :cond_28
    move/from16 v49, v1

    move-object/from16 v50, v2

    move-object/from16 v51, v6

    :try_start_43
    sput-wide v47, Lcom/appsflyer/internal/AFi1hSDK;->afDebugLog:J
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_38

    const/16 v11, 0x10

    :try_start_44
    new-array v1, v11, [B

    fill-array-data v1, :array_3
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_37

    :try_start_45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/16 v2, 0x30

    shr-long/2addr v10, v2

    const-wide v52, -0x20a9d59ffe2f0326L    # -1.813910734512118E151

    sub-long v52, v52, v10

    xor-long v10, v47, v52

    long-to-int v2, v10

    int-to-byte v2, v2

    sget-wide v10, Lcom/appsflyer/internal/AFi1hSDK;->afDebugLog:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v47
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_38

    const/16 v6, 0x20

    shr-long v47, v47, v6

    const-wide v52, -0x20a9d59fe5e9b242L    # -1.8139108528984104E151

    sub-long v52, v52, v47

    xor-long v10, v10, v52

    long-to-int v6, v10

    const/4 v10, 0x4

    :try_start_46
    new-array v11, v10, [Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_36

    :try_start_47
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v26, 0x3

    aput-object v6, v11, v26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v37, 0x2

    aput-object v2, v11, v37

    const/16 v35, 0x1

    aput-object v1, v11, v35

    aput-object v51, v11, v25

    sget v1, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_35

    int-to-byte v2, v1

    const/16 v18, 0x4

    :try_start_48
    aget-byte v6, v50, v18
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_34

    int-to-byte v6, v6

    xor-int/lit16 v10, v1, 0x200

    move/from16 v43, v10

    and-int/lit16 v10, v1, 0x200

    or-int v10, v43, v10

    int-to-short v10, v10

    :try_start_49
    invoke-static {v2, v6, v10}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/appsflyer/internal/AFi1hSDK;->e:Ljava/lang/Object;

    check-cast v6, Ljava/lang/ClassLoader;

    const/4 v10, 0x1

    invoke-static {v2, v10, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_35

    move-object v6, v13

    move v10, v14

    :try_start_4a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_33

    long-to-int v13, v13

    mul-int/lit16 v14, v1, 0x371

    const/16 v43, 0xdc4

    add-int v43, v43, v14

    not-int v14, v1

    xor-int v47, v21, v14

    and-int v14, v21, v14

    or-int v14, v47, v14

    not-int v14, v14

    xor-int v47, v21, v13

    and-int v48, v21, v13

    move-object/from16 v51, v6

    or-int v6, v47, v48

    not-int v6, v6

    xor-int v47, v14, v6

    and-int/2addr v6, v14

    or-int v6, v47, v6

    not-int v14, v1

    xor-int v47, v14, v13

    and-int/2addr v14, v13

    or-int v14, v47, v14

    not-int v14, v14

    or-int/2addr v6, v14

    mul-int/lit16 v6, v6, -0x370

    neg-int v6, v6

    neg-int v6, v6

    not-int v6, v6

    sub-int v43, v43, v6

    const/16 v35, 0x1

    add-int/lit8 v43, v43, -0x1

    not-int v6, v13

    xor-int v14, v21, v6

    and-int v6, v21, v6

    or-int/2addr v6, v14

    not-int v6, v6

    xor-int v14, v1, v6

    and-int/2addr v1, v6

    or-int/2addr v1, v14

    xor-int/lit8 v6, v13, 0x4

    and-int/lit8 v14, v13, 0x4

    or-int/2addr v6, v14

    not-int v6, v6

    xor-int v14, v1, v6

    and-int/2addr v1, v6

    or-int/2addr v1, v14

    mul-int/lit16 v1, v1, -0x370

    neg-int v1, v1

    neg-int v1, v1

    or-int v6, v43, v1

    const/16 v35, 0x1

    shl-int/lit8 v6, v6, 0x1

    xor-int v1, v43, v1

    sub-int/2addr v6, v1

    const/16 v18, 0x4

    or-int/lit8 v1, v13, 0x4

    not-int v1, v1

    mul-int/lit16 v1, v1, 0x370

    or-int v13, v6, v1

    shl-int/lit8 v13, v13, 0x1

    xor-int/2addr v1, v6

    sub-int/2addr v13, v1

    int-to-byte v1, v13

    :try_start_4b
    aget-byte v6, v50, v28

    int-to-byte v6, v6

    const/16 v13, 0x222

    int-to-short v13, v13

    invoke-static {v1, v6, v13}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_32

    const/4 v6, 0x4

    :try_start_4c
    new-array v13, v6, [Ljava/lang/Class;
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_31

    :try_start_4d
    aget-byte v6, v50, v27

    int-to-byte v6, v6

    aget-byte v14, v50, v28
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_32

    int-to-byte v14, v14

    move/from16 v43, v10

    const/16 v10, 0x2b3

    int-to-short v10, v10

    :try_start_4e
    invoke-static {v6, v14, v10}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v13, v25

    const/16 v35, 0x1

    aput-object v36, v13, v35

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v37, 0x2

    aput-object v6, v13, v37

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x3

    aput-object v6, v13, v26

    invoke-virtual {v2, v1, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_30

    :goto_21
    :try_start_4f
    aget-byte v2, v50, v27

    int-to-byte v2, v2

    aget-byte v6, v50, v28

    int-to-byte v6, v6

    const/16 v8, 0x2b3

    int-to-short v8, v8

    invoke-static {v2, v6, v8}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget v6, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    xor-int/lit8 v10, v6, 0x10

    and-int/lit8 v11, v6, 0x10

    or-int/2addr v10, v11

    int-to-byte v10, v10

    const/16 v11, 0x18b

    aget-byte v11, v50, v11

    neg-int v11, v11

    int-to-byte v11, v11

    const/16 v13, 0x210

    int-to-short v13, v13

    invoke-static {v10, v11, v13}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v13, v25

    invoke-virtual {v2, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/16 v10, 0x14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v2, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_2f

    if-eqz v29, :cond_38

    .line 0
    sget v10, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    xor-int/lit8 v11, v10, 0x19

    and-int/lit8 v10, v10, 0x19

    const/16 v35, 0x1

    shl-int/lit8 v10, v10, 0x1

    add-int/2addr v11, v10

    rem-int/lit16 v10, v11, 0x80

    sput v10, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    const/16 v37, 0x2

    rem-int/lit8 v11, v11, 0x2

    .line 4000
    :try_start_50
    sget-object v10, Lcom/appsflyer/internal/AFi1hSDK;->i:Ljava/lang/Object;
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_20

    if-nez v10, :cond_29

    .line 0
    rem-int v11, v37, v37

    move-object/from16 v11, v40

    goto :goto_22

    :cond_29
    move-object/from16 v11, v42

    :goto_22
    if-nez v10, :cond_2a

    move-object/from16 v10, v30

    goto :goto_23

    :cond_2a
    rem-int v10, v37, v37

    move-object/from16 v10, v38

    .line 6000
    :goto_23
    :try_start_51
    aget-byte v13, v50, v27

    int-to-byte v13, v13

    aget-byte v14, v50, v28

    int-to-byte v14, v14

    invoke-static {v13, v14, v8}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/16 v14, 0x18b

    aget-byte v14, v50, v14

    neg-int v14, v14

    int-to-byte v14, v14

    const/16 v47, 0x1a6

    const/16 v2, 0x20d

    int-to-short v2, v2

    invoke-static {v9, v14, v2}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_20

    move/from16 v48, v15

    const/4 v14, 0x3

    :try_start_52
    new-array v15, v14, [Ljava/lang/Class;

    aput-object v36, v15, v25

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v35, 0x1

    aput-object v14, v15, v35

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v37, 0x2

    aput-object v14, v15, v37

    invoke-virtual {v13, v2, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    aget-byte v13, v50, v27

    int-to-byte v13, v13

    const/16 v14, 0x1e6

    aget-byte v14, v50, v14

    int-to-byte v14, v14

    const/16 v15, 0x336

    int-to-short v15, v15

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_1f

    const/4 v14, 0x1

    :try_start_53
    new-array v15, v14, [Ljava/lang/Class;

    aget-byte v14, v50, v27

    int-to-byte v14, v14

    move-object/from16 v52, v4

    aget-byte v4, v50, v22

    int-to-byte v4, v4

    invoke-static {v14, v4, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v15, v25

    invoke-virtual {v13, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_d
    .catchall {:try_start_53 .. :try_end_53} :catchall_19

    if-eqz v45, :cond_2c

    :try_start_54
    aget-byte v14, v50, v27

    int-to-byte v14, v14

    aget-byte v15, v50, v22

    int-to-byte v15, v15

    invoke-static {v14, v15, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_13

    xor-int/lit8 v15, v6, 0x10

    and-int/lit8 v53, v6, 0x10

    or-int v15, v15, v53

    int-to-byte v15, v15

    move-object/from16 v53, v3

    :try_start_55
    aget-byte v3, v50, v20

    int-to-byte v3, v3

    move-object/from16 v54, v5

    const/16 v5, 0x20a

    int-to-short v5, v5

    invoke-static {v15, v3, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v14, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v11, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_12

    goto :goto_25

    :catchall_12
    move-exception v0

    goto :goto_24

    :catchall_13
    move-exception v0

    move-object/from16 v53, v3

    :goto_24
    :try_start_56
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2b

    throw v1

    :cond_2b
    throw v0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_c
    .catchall {:try_start_56 .. :try_end_56} :catchall_1b

    :catch_c
    move-exception v0

    goto/16 :goto_28

    :cond_2c
    move-object/from16 v53, v3

    move-object/from16 v54, v5

    :goto_25
    const/16 v3, 0x400

    :try_start_57
    new-array v5, v3, [B

    or-int/lit8 v6, v6, 0x14

    int-to-byte v6, v6

    aget-byte v14, v50, v31

    int-to-byte v14, v14

    or-int/lit16 v15, v14, 0x1d0

    int-to-short v15, v15

    invoke-static {v6, v14, v15}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    aput-object v36, v15, v25

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v35, 0x1

    aput-object v14, v15, v35

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v37, 0x2

    aput-object v14, v15, v37

    invoke-virtual {v13, v6, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    :goto_26
    if-lez v0, :cond_2d

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v5, v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v2, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2d

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v5, v15, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    neg-int v3, v14

    not-int v3, v3

    sub-int/2addr v0, v3

    const/16 v35, 0x1

    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0x400

    goto :goto_26

    :cond_2d
    sget v0, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    add-int/lit8 v1, v0, 0x4

    int-to-byte v1, v1

    sget-object v2, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v3, v2, v31

    int-to-byte v3, v3

    const/16 v5, 0x1f8

    int-to-short v5, v5

    invoke-static {v1, v3, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    move/from16 v3, v25

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v13, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aget-byte v3, v2, v27

    int-to-byte v3, v3

    aget-byte v5, v2, v16

    int-to-byte v5, v5

    const/16 v6, 0x1f4

    int-to-short v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    or-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    const/16 v6, 0x18b

    aget-byte v6, v2, v6

    neg-int v6, v6

    int-to-byte v6, v6

    xor-int/lit16 v14, v0, 0x19d

    and-int/lit16 v15, v0, 0x19d

    or-int/2addr v14, v15

    int-to-short v14, v14

    invoke-static {v5, v6, v14}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v14, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    int-to-byte v1, v0

    aget-byte v3, v2, v31

    int-to-byte v3, v3

    const/16 v5, 0x31f

    int-to-short v5, v5

    invoke-static {v1, v3, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v13, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    aget-byte v1, v2, v47

    int-to-byte v1, v1

    aget-byte v3, v2, v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    mul-int/lit16 v5, v3, 0x18f

    not-int v5, v5

    rsub-int v5, v5, 0x18e

    xor-int v6, v24, v3

    and-int v13, v24, v3

    or-int/2addr v6, v13

    not-int v6, v6

    not-int v13, v3

    xor-int/lit8 v14, v13, 0x1

    and-int/lit8 v15, v13, 0x1

    or-int/2addr v14, v15

    not-int v14, v14

    or-int/2addr v6, v14

    xor-int v14, v13, v4

    and-int v15, v13, v4

    or-int/2addr v14, v15

    not-int v14, v14

    xor-int v15, v6, v14

    and-int/2addr v6, v14

    or-int/2addr v6, v15

    mul-int/lit16 v6, v6, 0x18e

    or-int v14, v5, v6

    const/16 v35, 0x1

    shl-int/lit8 v14, v14, 0x1

    xor-int/2addr v5, v6

    sub-int/2addr v14, v5

    xor-int/lit8 v5, v3, 0x1

    and-int/lit8 v6, v3, 0x1

    or-int/2addr v5, v6

    mul-int/lit16 v5, v5, -0x4aa

    and-int v6, v14, v5

    or-int/2addr v5, v14

    add-int/2addr v6, v5

    not-int v4, v4

    or-int/2addr v4, v13

    not-int v4, v4

    xor-int v5, v24, v3

    and-int v13, v24, v3

    or-int/2addr v5, v13

    not-int v5, v5

    xor-int v13, v4, v5

    and-int/2addr v4, v5

    or-int/2addr v4, v13

    not-int v3, v3

    const/16 v35, 0x1

    or-int/lit8 v3, v3, 0x1

    not-int v3, v3

    xor-int v5, v4, v3

    and-int/2addr v3, v4

    or-int/2addr v3, v5

    mul-int/lit16 v3, v3, 0x18e

    xor-int v4, v6, v3

    and-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    int-to-byte v3, v4

    xor-int/lit16 v4, v3, 0x1c0

    and-int/lit16 v5, v3, 0x1c0

    or-int/2addr v4, v5

    int-to-short v4, v4

    invoke-static {v1, v3, v4}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    xor-int/lit8 v3, v0, 0x9

    and-int/lit8 v4, v0, 0x9

    or-int/2addr v3, v4

    int-to-byte v3, v3

    const/16 v4, 0x1aa

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    const/16 v5, 0x1c8

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x3

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/16 v25, 0x0

    aput-object v5, v4, v25

    const-class v5, Ljava/lang/String;

    const/16 v35, 0x1

    aput-object v5, v4, v35

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v37, 0x2

    aput-object v5, v4, v37

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_1b

    :try_start_58
    aget-byte v3, v2, v27

    int-to-byte v3, v3

    aget-byte v4, v2, v22

    int-to-byte v4, v4

    invoke-static {v3, v4, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    mul-int/lit16 v5, v0, 0x25b

    neg-int v5, v5

    neg-int v5, v5

    not-int v5, v5

    rsub-int v5, v5, 0x4b7

    not-int v6, v4

    xor-int v13, v21, v6

    and-int v14, v21, v6

    or-int/2addr v13, v14

    not-int v13, v13

    or-int/2addr v13, v0

    mul-int/lit16 v13, v13, -0x25a

    neg-int v13, v13

    neg-int v13, v13

    or-int v14, v5, v13

    const/16 v35, 0x1

    shl-int/lit8 v14, v14, 0x1

    xor-int/2addr v5, v13

    sub-int/2addr v14, v5

    not-int v5, v0

    or-int v5, v21, v5

    not-int v5, v5

    xor-int v13, v21, v4

    and-int v15, v21, v4

    or-int/2addr v13, v15

    not-int v13, v13

    xor-int v15, v5, v13

    and-int/2addr v5, v13

    or-int/2addr v5, v15

    xor-int/lit8 v13, v6, 0x4

    const/16 v18, 0x4

    and-int/lit8 v6, v6, 0x4

    or-int/2addr v6, v13

    xor-int v13, v6, v0

    and-int/2addr v6, v0

    or-int/2addr v6, v13

    not-int v6, v6

    xor-int v13, v5, v6

    and-int/2addr v5, v6

    or-int/2addr v5, v13

    mul-int/lit16 v5, v5, -0x12d

    neg-int v5, v5

    neg-int v5, v5

    not-int v5, v5

    sub-int/2addr v14, v5

    const/16 v35, 0x1

    add-int/lit8 v14, v14, -0x1

    not-int v4, v4

    or-int/2addr v4, v0

    not-int v4, v4

    mul-int/lit16 v4, v4, 0x12d

    or-int v5, v14, v4

    shl-int/lit8 v5, v5, 0x1

    xor-int/2addr v4, v14

    sub-int/2addr v5, v4

    int-to-byte v4, v5

    const/16 v5, 0x27d

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    xor-int/lit16 v6, v0, 0x180

    and-int/lit16 v13, v0, 0x180

    or-int/2addr v6, v13

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v11, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_18

    :try_start_59
    aget-byte v4, v2, v27

    int-to-byte v4, v4

    aget-byte v5, v2, v22

    int-to-byte v5, v5

    invoke-static {v4, v5, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    add-int/lit8 v5, v0, 0x4

    int-to-byte v5, v5

    const/16 v6, 0x27d

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    xor-int/lit16 v13, v0, 0x180

    and-int/lit16 v14, v0, 0x180

    or-int/2addr v13, v14

    int-to-short v13, v13

    invoke-static {v5, v6, v13}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v10, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_17

    const/16 v25, 0x0

    :try_start_5a
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_1b

    .line 0
    sget v3, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    or-int/lit8 v4, v3, 0x59

    const/16 v35, 0x1

    shl-int/lit8 v4, v4, 0x1

    xor-int/lit8 v3, v3, 0x59

    sub-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    const/16 v37, 0x2

    rem-int/lit8 v4, v4, 0x2

    .line 6000
    :try_start_5b
    aget-byte v3, v2, v27

    int-to-byte v3, v3

    aget-byte v4, v2, v22

    int-to-byte v4, v4

    invoke-static {v3, v4, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v2, v47

    int-to-byte v4, v4

    const/16 v5, 0x9c

    aget-byte v5, v2, v5

    neg-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x1b4

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v11, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_16

    :try_start_5c
    aget-byte v3, v2, v27

    int-to-byte v3, v3

    aget-byte v4, v2, v22

    int-to-byte v4, v4

    invoke-static {v3, v4, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v2, v47

    int-to-byte v4, v4

    const/16 v5, 0x9c

    aget-byte v5, v2, v5

    neg-int v5, v5

    int-to-byte v5, v5

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v10, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_15

    .line 0
    sget v3, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    add-int/lit8 v3, v3, 0x49

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    const/16 v37, 0x2

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_30

    .line 6000
    :try_start_5d
    sget-object v3, Lcom/appsflyer/internal/AFi1hSDK;->e:Ljava/lang/Object;

    if-nez v3, :cond_2f

    const-class v3, Lcom/appsflyer/internal/AFi1hSDK;
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_1e

    :try_start_5e
    const-class v4, Ljava/lang/Class;

    or-int/lit8 v5, v0, 0x4

    const/16 v35, 0x1

    shl-int/lit8 v5, v5, 0x1

    xor-int/lit8 v0, v0, 0x4

    sub-int/2addr v5, v0

    int-to-byte v0, v5

    const/16 v5, 0x2fb

    aget-byte v2, v2, v5

    neg-int v2, v2

    int-to-byte v2, v2

    xor-int/lit16 v5, v2, 0x18c

    and-int/lit16 v6, v2, 0x18c

    or-int/2addr v5, v6

    int-to-short v5, v5

    invoke-static {v0, v2, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_14

    :try_start_5f
    sput-object v0, Lcom/appsflyer/internal/AFi1hSDK;->e:Ljava/lang/Object;

    goto :goto_27

    :catchall_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2e

    throw v1

    :cond_2e
    throw v0

    :cond_2f
    :goto_27
    move/from16 v55, v12

    goto/16 :goto_2e

    :cond_30
    const/16 v32, 0x0

    .line 0
    throw v32

    :catchall_15
    move-exception v0

    .line 6000
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_31

    throw v1

    :cond_31
    throw v0

    :catchall_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_32

    throw v1

    :cond_32
    throw v0
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_1e

    :catchall_17
    move-exception v0

    :try_start_60
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_33

    throw v1

    :cond_33
    throw v0

    :catchall_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_34

    throw v1

    :cond_34
    throw v0

    :catchall_19
    move-exception v0

    move-object/from16 v53, v3

    goto :goto_29

    :catch_d
    move-exception v0

    move-object/from16 v53, v3

    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v3, v2, v17

    int-to-byte v3, v3

    aget-byte v4, v2, v31

    int-to-byte v4, v4

    const/16 v5, 0x200

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x29

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    const/16 v4, 0x191

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    const/16 v5, 0x358

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_1b

    const/4 v3, 0x2

    :try_start_61
    new-array v4, v3, [Ljava/lang/Object;

    const/16 v35, 0x1

    aput-object v0, v4, v35

    const/16 v25, 0x0

    aput-object v1, v4, v25

    aget-byte v0, v2, v27

    int-to-byte v0, v0

    aget-byte v1, v2, v28

    int-to-byte v1, v1

    invoke-static {v0, v1, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/16 v25, 0x0

    aput-object v2, v1, v25

    const-class v2, Ljava/lang/Throwable;

    const/16 v35, 0x1

    aput-object v2, v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_1a

    :catchall_1a
    move-exception v0

    :try_start_62
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_35

    throw v1

    :cond_35
    throw v0
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_1b

    :catchall_1b
    move-exception v0

    :goto_29
    :try_start_63
    sget-object v1, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v2, v1, v27

    int-to-byte v2, v2

    aget-byte v3, v1, v22

    int-to-byte v3, v3

    invoke-static {v2, v3, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v3, v1, v47

    int-to-byte v3, v3

    const/16 v4, 0x9c

    aget-byte v4, v1, v4

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0x1b4

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v11, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_1d

    :try_start_64
    aget-byte v2, v1, v27

    int-to-byte v2, v2

    aget-byte v3, v1, v22

    int-to-byte v3, v3

    invoke-static {v2, v3, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v3, v1, v47

    int-to-byte v3, v3

    const/16 v4, 0x9c

    aget-byte v1, v1, v4

    neg-int v1, v1

    int-to-byte v1, v1

    invoke-static {v3, v1, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v10, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_1c

    :try_start_65
    throw v0

    :catchall_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_36

    throw v1

    :cond_36
    throw v0

    :catchall_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_37

    throw v1

    :cond_37
    throw v0
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_1e

    :catchall_1e
    move-exception v0

    goto :goto_2a

    :catchall_1f
    move-exception v0

    move-object/from16 v53, v3

    goto :goto_2a

    :catchall_20
    move-exception v0

    move-object/from16 v53, v3

    move/from16 v48, v15

    :goto_2a
    move-object v1, v0

    move/from16 v55, v12

    :goto_2b
    move-object/from16 v6, v53

    goto/16 :goto_20

    :cond_38
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v54, v5

    move/from16 v48, v15

    const/16 v47, 0x1a6

    .line 7000
    :try_start_66
    aget-byte v0, v50, v27

    int-to-byte v0, v0

    const/16 v2, 0x31

    aget-byte v2, v50, v2

    int-to-byte v2, v2

    const/16 v3, 0x1a2

    int-to-short v3, v3

    invoke-static {v0, v2, v3}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aget-byte v2, v50, v27

    int-to-byte v2, v2

    aget-byte v3, v50, v28

    int-to-byte v3, v3

    invoke-static {v2, v3, v8}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v11, 0x1

    new-array v3, v11, [Ljava/lang/Class;

    const/16 v25, 0x0

    aput-object v2, v3, v25

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    and-int/lit8 v3, v6, 0x4

    or-int/lit8 v4, v6, 0x4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aget-byte v4, v50, v22

    int-to-byte v4, v4

    const/16 v5, 0x187

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aget-byte v3, v50, v27

    int-to-byte v3, v3

    aget-byte v4, v50, v16

    int-to-byte v4, v4

    const/16 v5, 0x17c

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    add-int/lit8 v4, v6, 0x4

    int-to-byte v4, v4

    const/16 v5, 0x1aa

    aget-byte v5, v50, v5

    int-to-byte v5, v5

    xor-int/lit16 v10, v6, 0x125

    and-int/lit16 v11, v6, 0x125

    or-int/2addr v10, v11

    int-to-short v10, v10

    invoke-static {v4, v5, v10}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v10, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v4, 0x18b

    aget-byte v4, v50, v4

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0x20d

    int-to-short v5, v5

    invoke-static {v9, v4, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/Class;

    const/16 v25, 0x0

    aput-object v36, v5, v25

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_2e

    :try_start_67
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    aget-byte v4, v50, v27

    int-to-byte v4, v4

    const/16 v5, 0x52

    aget-byte v5, v50, v5

    int-to-byte v5, v5

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/Class;

    aget-byte v10, v50, v27

    int-to-byte v10, v10

    aget-byte v11, v50, v28

    int-to-byte v11, v11

    invoke-static {v10, v11, v8}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v25, 0x0

    aput-object v10, v5, v25

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_2d

    :try_start_68
    const-class v4, Lcom/appsflyer/internal/AFi1hSDK;
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_2e

    :try_start_69
    const-class v5, Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    mul-int/lit16 v11, v6, 0x18f

    neg-int v11, v11

    neg-int v11, v11

    const/16 v13, 0x63c

    xor-int v14, v13, v11

    and-int/2addr v11, v13

    const/16 v35, 0x1

    shl-int/lit8 v11, v11, 0x1

    add-int/2addr v14, v11

    xor-int v11, v21, v6

    and-int v13, v21, v6

    or-int/2addr v11, v13

    not-int v11, v11

    not-int v13, v6

    xor-int/lit8 v15, v13, 0x4

    and-int/lit8 v55, v13, 0x4

    or-int v15, v15, v55

    not-int v15, v15

    or-int/2addr v11, v15

    xor-int v55, v13, v10

    and-int v56, v13, v10

    move/from16 v57, v11

    or-int v11, v55, v56

    not-int v11, v11

    xor-int v55, v57, v11

    and-int v11, v57, v11

    or-int v11, v55, v11

    mul-int/lit16 v11, v11, 0x18e

    or-int v55, v14, v11

    const/16 v35, 0x1

    shl-int/lit8 v55, v55, 0x1

    xor-int/2addr v11, v14

    sub-int v55, v55, v11

    xor-int/lit8 v11, v6, 0x4

    and-int/lit8 v14, v6, 0x4

    or-int/2addr v11, v14

    mul-int/lit16 v11, v11, -0x4aa

    add-int v55, v55, v11

    not-int v10, v10

    xor-int v11, v13, v10

    and-int/2addr v10, v13

    or-int/2addr v10, v11

    not-int v10, v10

    xor-int v11, v21, v6

    and-int v13, v21, v6

    or-int/2addr v11, v13

    not-int v11, v11

    xor-int v13, v10, v11

    and-int/2addr v10, v11

    or-int/2addr v10, v13

    or-int/2addr v10, v15

    mul-int/lit16 v10, v10, 0x18e

    not-int v10, v10

    sub-int v55, v55, v10

    const/16 v35, 0x1

    add-int/lit8 v10, v55, -0x1

    int-to-byte v10, v10

    const/16 v11, 0x2fb

    aget-byte v11, v50, v11

    neg-int v11, v11

    int-to-byte v11, v11

    xor-int/lit16 v13, v11, 0x18c

    and-int/lit16 v14, v11, 0x18c

    or-int/2addr v13, v14

    int-to-short v13, v13

    invoke-static {v10, v11, v13}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_2c

    :try_start_6a
    aget-byte v5, v50, v27

    int-to-byte v5, v5

    const/16 v10, 0x54

    aget-byte v10, v50, v10

    int-to-byte v10, v10

    const/16 v11, 0x161

    int-to-short v11, v11

    invoke-static {v5, v10, v11}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Class;

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    new-array v13, v10, [Ljava/lang/Object;

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    xor-int/lit8 v11, v6, 0x14

    and-int/lit8 v13, v6, 0x14

    or-int/2addr v11, v13

    int-to-byte v11, v11

    aget-byte v13, v50, v31

    int-to-byte v13, v13

    or-int/lit16 v14, v13, 0x1d0

    int-to-short v14, v14

    invoke-static {v11, v13, v14}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x3

    new-array v13, v14, [Ljava/lang/Class;

    const/16 v25, 0x0

    aput-object v36, v13, v25

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v35, 0x1

    aput-object v15, v13, v35

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v37, 0x2

    aput-object v15, v13, v37

    invoke-virtual {v5, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    xor-int/lit8 v13, v6, 0x11

    and-int/lit8 v15, v6, 0x11

    or-int/2addr v13, v15

    int-to-byte v13, v13

    aget-byte v15, v50, v20

    int-to-byte v15, v15

    const/16 v14, 0x145

    int-to-short v14, v14

    invoke-static {v13, v15, v14}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    invoke-virtual {v5, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aget-byte v13, v50, v27

    int-to-byte v13, v13

    const/16 v14, 0x1e7

    aget-byte v14, v50, v14
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_2e

    int-to-byte v14, v14

    xor-int/lit16 v15, v14, 0x11b

    move/from16 v55, v12

    and-int/lit16 v12, v14, 0x11b

    or-int/2addr v12, v15

    int-to-short v12, v12

    :try_start_6b
    invoke-static {v13, v14, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    int-to-byte v6, v6

    aget-byte v13, v50, v31

    int-to-byte v13, v13

    const/16 v14, 0x31f

    int-to-short v14, v14

    invoke-static {v6, v13, v14}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x0

    new-array v13, v14, [Ljava/lang/Class;

    invoke-virtual {v12, v6, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/16 v12, 0x400

    new-array v12, v12, [B

    const/4 v13, 0x0

    :goto_2c
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v2, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_2b

    if-lez v14, :cond_39

    move/from16 v50, v14

    int-to-long v14, v13

    move-object/from16 v56, v2

    move/from16 v57, v13

    const/4 v2, 0x0

    :try_start_6c
    new-array v13, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v58
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_21

    cmp-long v2, v14, v58

    if-gez v2, :cond_39

    .line 0
    sget v2, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    or-int/lit8 v13, v2, 0x57

    const/16 v35, 0x1

    shl-int/lit8 v13, v13, 0x1

    xor-int/lit8 v2, v2, 0x57

    sub-int/2addr v13, v2

    rem-int/lit16 v2, v13, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    const/16 v37, 0x2

    rem-int/lit8 v13, v13, 0x2

    const/16 v25, 0x0

    .line 7000
    :try_start_6d
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v12, v2, v13}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v10, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_21

    add-int v13, v57, v50

    move-object/from16 v2, v56

    goto :goto_2c

    :catchall_21
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2b

    :cond_39
    const/4 v3, 0x0

    :try_start_6e
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_2b

    :try_start_6f
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v10, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_e
    .catchall {:try_start_6f .. :try_end_6f} :catchall_21

    :catch_e
    :try_start_70
    sget-object v1, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v2, v1, v47

    int-to-byte v2, v2

    const/16 v3, 0x5c

    aget-byte v3, v1, v3

    int-to-byte v3, v3

    const/16 v5, 0x12b

    int-to-short v5, v5

    invoke-static {v2, v3, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/Class;

    aget-byte v5, v1, v27

    int-to-byte v5, v5

    aget-byte v6, v1, v28

    int-to-byte v6, v6

    sget v10, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    shl-int/lit8 v11, v10, 0x2

    int-to-short v11, v11

    invoke-static {v5, v6, v11}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v25, 0x0

    aput-object v5, v3, v25

    aget-byte v5, v1, v27

    int-to-byte v5, v5

    aget-byte v6, v1, v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    mul-int/lit16 v12, v6, 0xc0

    not-int v12, v12

    rsub-int v12, v12, -0x17e

    or-int/lit16 v13, v12, 0x17e

    const/16 v35, 0x1

    shl-int/lit8 v13, v13, 0x1

    xor-int/lit16 v12, v12, 0x17e

    sub-int/2addr v13, v12

    xor-int v12, v6, v11

    and-int v14, v6, v11

    or-int/2addr v12, v14

    not-int v12, v12

    or-int/lit8 v12, v12, 0x1

    mul-int/lit16 v12, v12, 0xbf

    and-int v14, v13, v12

    or-int/2addr v12, v13

    add-int/2addr v14, v12

    xor-int v12, v24, v6

    and-int v13, v24, v6

    or-int/2addr v12, v13

    not-int v12, v12

    not-int v11, v11

    xor-int v13, v11, v6

    and-int/2addr v6, v11

    or-int/2addr v6, v13

    not-int v6, v6

    xor-int v11, v12, v6

    and-int/2addr v6, v12

    or-int/2addr v6, v11

    mul-int/lit16 v6, v6, 0xbf

    xor-int v11, v14, v6

    and-int/2addr v6, v14

    const/16 v35, 0x1

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v11, v6

    int-to-byte v6, v11

    or-int/lit16 v11, v10, 0xb4

    int-to-short v11, v11

    invoke-static {v5, v6, v11}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v35

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_2b

    :try_start_71
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    aget-byte v3, v1, v27

    int-to-byte v3, v3

    aget-byte v5, v1, v28

    int-to-byte v5, v5

    shl-int/lit8 v6, v10, 0x2

    int-to-short v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    or-int/lit8 v5, v10, 0x14

    int-to-byte v5, v5

    const/16 v6, 0x18b

    aget-byte v6, v1, v6

    neg-int v6, v6

    int-to-byte v6, v6

    xor-int/lit16 v11, v10, 0xa0

    and-int/lit16 v12, v10, 0xa0

    or-int/2addr v11, v12

    int-to-short v11, v11

    invoke-static {v5, v6, v11}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/Class;

    const/16 v25, 0x0

    aput-object v36, v6, v25

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_2a

    :try_start_72
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_2b

    :try_start_73
    aget-byte v2, v1, v47

    int-to-byte v2, v2

    const/4 v3, 0x6

    aget-byte v3, v1, v3

    int-to-byte v3, v3

    xor-int/lit16 v5, v3, 0xce

    and-int/lit16 v6, v3, 0xce

    or-int/2addr v5, v6

    int-to-short v5, v5

    invoke-static {v2, v3, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x2e7

    aget-byte v3, v1, v3

    int-to-byte v3, v3

    const/16 v5, 0xe8

    aget-byte v5, v1, v5

    int-to-byte v5, v5

    const/16 v6, 0xc0

    int-to-short v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x4d

    int-to-byte v6, v6

    const/16 v11, 0x1e6

    aget-byte v11, v1, v11

    int-to-byte v11, v11

    xor-int/lit16 v12, v11, 0xa0

    and-int/lit16 v13, v11, 0xa0

    or-int/2addr v12, v13

    int-to-short v12, v12

    invoke-static {v6, v11, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v12, 0x14

    aget-byte v12, v1, v12

    int-to-byte v12, v12

    const/16 v13, 0xa2

    int-to-short v13, v13

    invoke-static {v6, v12, v13}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v11, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v12, Ljava/util/ArrayList;

    check-cast v6, Ljava/util/List;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_12
    .catchall {:try_start_73 .. :try_end_73} :catchall_2b

    :try_start_74
    const-class v13, Ljava/lang/Class;

    and-int/lit8 v14, v10, 0x4

    or-int/lit8 v10, v10, 0x4

    add-int/2addr v14, v10

    int-to-byte v10, v14

    const/16 v14, 0xab

    aget-byte v1, v1, v14

    int-to-byte v1, v1

    const/16 v14, 0x8a

    int-to-short v14, v14

    invoke-static {v10, v1, v14}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    invoke-virtual {v13, v1, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_28

    :try_start_75
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_12
    .catchall {:try_start_75 .. :try_end_75} :catchall_2b

    const/4 v10, 0x0

    :goto_2d
    if-ge v10, v6, :cond_3a

    .line 0
    sget v13, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    xor-int/lit8 v14, v13, 0xd

    and-int/lit8 v13, v13, 0xd

    const/16 v35, 0x1

    shl-int/lit8 v13, v13, 0x1

    add-int/2addr v14, v13

    rem-int/lit16 v13, v14, 0x80

    sput v13, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    const/16 v37, 0x2

    rem-int/lit8 v14, v14, 0x2

    .line 7000
    :try_start_76
    invoke-static {v3, v10}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v1, v10, v13}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_12
    .catchall {:try_start_76 .. :try_end_76} :catchall_21

    add-int/lit8 v10, v10, -0x19

    xor-int/lit8 v13, v10, 0x1a

    and-int/lit8 v10, v10, 0x1a

    const/16 v35, 0x1

    shl-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v13

    goto :goto_2d

    :cond_3a
    :try_start_77
    invoke-virtual {v11, v2, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_12
    .catchall {:try_start_77 .. :try_end_77} :catchall_2b

    :try_start_78
    sget-object v1, Lcom/appsflyer/internal/AFi1hSDK;->e:Ljava/lang/Object;
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_2b

    if-nez v1, :cond_3b

    .line 0
    sget v1, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    xor-int/lit8 v2, v1, 0x19

    and-int/lit8 v1, v1, 0x19

    const/16 v35, 0x1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    const/16 v37, 0x2

    rem-int/lit8 v2, v2, 0x2

    .line 7000
    :try_start_79
    sput-object v0, Lcom/appsflyer/internal/AFi1hSDK;->e:Ljava/lang/Object;
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_21

    :cond_3b
    move-object v1, v0

    :goto_2e
    if-eqz v29, :cond_3f

    .line 0
    sget v0, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    const/16 v37, 0x2

    rem-int/lit8 v0, v0, 0x2

    .line 4000
    :try_start_7a
    sget-object v0, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v2, v0, v47

    int-to-byte v2, v2

    aget-byte v3, v0, v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    mul-int/lit16 v5, v3, 0x1f7

    neg-int v5, v5

    neg-int v5, v5

    const/16 v6, 0x1f7

    or-int v10, v6, v5

    const/16 v35, 0x1

    shl-int/lit8 v10, v10, 0x1

    xor-int/2addr v5, v6

    sub-int/2addr v10, v5

    or-int/lit8 v5, v3, 0x1

    mul-int/lit16 v5, v5, -0x1f6

    or-int v6, v10, v5

    shl-int/lit8 v6, v6, 0x1

    xor-int/2addr v5, v10

    sub-int/2addr v6, v5

    not-int v5, v3

    xor-int v10, v24, v5

    and-int v5, v24, v5

    or-int/2addr v5, v10

    not-int v5, v5

    not-int v10, v4

    xor-int v11, v24, v10

    and-int v10, v24, v10

    or-int/2addr v10, v11

    not-int v10, v10

    xor-int v11, v5, v10

    and-int/2addr v5, v10

    or-int/2addr v5, v11

    xor-int/lit8 v10, v3, 0x1

    and-int/lit8 v11, v3, 0x1

    or-int/2addr v10, v11

    xor-int v11, v10, v4

    and-int/2addr v10, v4

    or-int/2addr v10, v11

    not-int v10, v10

    xor-int v11, v5, v10

    and-int/2addr v5, v10

    or-int/2addr v5, v11

    mul-int/lit16 v5, v5, -0x1f6

    add-int/2addr v6, v5

    not-int v4, v4

    or-int v4, v24, v4

    xor-int v5, v4, v3

    and-int/2addr v3, v4

    or-int/2addr v3, v5

    not-int v3, v3

    or-int/2addr v3, v10

    mul-int/lit16 v3, v3, 0x1f6

    xor-int v4, v6, v3

    and-int/2addr v3, v6

    const/16 v35, 0x1

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    int-to-byte v3, v4

    xor-int/lit16 v4, v3, 0x1c0

    and-int/lit16 v5, v3, 0x1c0

    or-int/2addr v4, v5

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget v3, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    xor-int/lit8 v4, v3, 0x9

    and-int/lit8 v5, v3, 0x9

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aget-byte v5, v0, v46

    int-to-byte v5, v5

    xor-int/lit8 v6, v3, 0x35

    and-int/lit8 v10, v3, 0x35

    or-int/2addr v6, v10

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/16 v25, 0x0

    aput-object v5, v6, v25

    aget-byte v5, v0, v27

    int-to-byte v5, v5

    aget-byte v10, v0, v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    mul-int/lit16 v12, v10, -0x35a

    neg-int v12, v12

    neg-int v12, v12

    const/16 v13, 0x35c

    and-int v14, v13, v12

    or-int/2addr v12, v13

    add-int/2addr v14, v12

    xor-int/lit8 v12, v11, 0x1

    and-int/lit8 v13, v11, 0x1

    or-int/2addr v12, v13

    mul-int/lit16 v12, v12, -0x35b

    or-int v13, v14, v12

    const/16 v35, 0x1

    shl-int/lit8 v13, v13, 0x1

    xor-int/2addr v12, v14

    sub-int/2addr v13, v12

    not-int v12, v11

    or-int/lit8 v12, v12, 0x1

    not-int v12, v12

    not-int v14, v10

    xor-int v15, v24, v14

    and-int v47, v24, v14

    or-int v15, v15, v47

    xor-int v47, v15, v11

    and-int/2addr v15, v11

    or-int v15, v47, v15

    not-int v15, v15

    or-int/2addr v12, v15

    mul-int/lit16 v12, v12, 0x35b

    add-int/2addr v13, v12

    not-int v11, v11

    or-int/2addr v11, v14

    not-int v11, v11

    not-int v10, v10

    xor-int/lit8 v12, v10, 0x1

    const/16 v35, 0x1

    and-int/lit8 v10, v10, 0x1

    or-int/2addr v10, v12

    not-int v10, v10

    xor-int v12, v11, v10

    and-int/2addr v10, v11

    or-int/2addr v10, v12

    mul-int/lit16 v10, v10, 0x35b

    xor-int v11, v13, v10

    and-int/2addr v10, v13

    shl-int/lit8 v10, v10, 0x1

    add-int/2addr v11, v10

    int-to-byte v10, v11

    xor-int/lit16 v11, v3, 0xb4

    and-int/lit16 v12, v3, 0xb4

    or-int/2addr v11, v12

    int-to-short v11, v11

    invoke-static {v5, v10, v11}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v6, v11

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v5, Lcom/appsflyer/internal/AFi1hSDK;
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_21

    :try_start_7b
    const-class v6, Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    mul-int/lit16 v11, v3, -0x3d2

    const/16 v12, 0xf50

    xor-int v13, v12, v11

    and-int/2addr v11, v12

    const/16 v35, 0x1

    shl-int/lit8 v11, v11, 0x1

    add-int/2addr v13, v11

    not-int v11, v3

    not-int v12, v10

    xor-int v14, v11, v12

    and-int v15, v11, v12

    or-int/2addr v14, v15

    not-int v14, v14

    mul-int/lit16 v14, v14, 0x3d3

    neg-int v14, v14

    neg-int v14, v14

    not-int v14, v14

    sub-int/2addr v13, v14

    const/16 v35, 0x1

    add-int/lit8 v13, v13, -0x1

    xor-int/lit8 v14, v10, 0x4

    and-int/lit8 v15, v10, 0x4

    or-int/2addr v14, v15

    mul-int/lit16 v14, v14, -0x3d3

    not-int v14, v14

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x1

    xor-int v14, v11, v10

    and-int/2addr v10, v11

    or-int/2addr v10, v14

    not-int v10, v10

    xor-int/lit8 v11, v12, 0x4

    const/16 v18, 0x4

    and-int/lit8 v12, v12, 0x4

    or-int/2addr v11, v12

    not-int v11, v11

    xor-int v12, v10, v11

    and-int/2addr v10, v11

    or-int/2addr v10, v12

    mul-int/lit16 v10, v10, 0x3d3

    and-int v11, v13, v10

    or-int/2addr v10, v13

    add-int/2addr v11, v10

    int-to-byte v10, v11

    const/16 v11, 0x2fb

    aget-byte v11, v0, v11

    neg-int v11, v11

    int-to-byte v11, v11

    or-int/lit16 v12, v11, 0x18c

    int-to-short v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_22

    move-object/from16 v6, v54

    :try_start_7c
    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3d

    int-to-byte v3, v3

    aget-byte v0, v0, v31

    int-to-byte v0, v0

    const/16 v5, 0x31f

    int-to-short v5, v5

    invoke-static {v3, v0, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_21

    .line 0
    sget v0, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    const/16 v37, 0x2

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3c

    goto :goto_2f

    :cond_3c
    rem-int v0, v37, v37

    :cond_3d
    :goto_2f
    move-object v0, v4

    goto/16 :goto_30

    :catchall_22
    move-exception v0

    .line 4000
    :try_start_7d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3e

    throw v1

    :cond_3e
    throw v0
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_21

    :cond_3f
    move-object/from16 v6, v54

    :try_start_7e
    sget-object v0, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v2, v0, v27

    int-to-byte v2, v2

    aget-byte v3, v0, v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    mul-int/lit16 v5, v3, -0x9f

    const/16 v10, -0x9f

    xor-int v11, v10, v5

    and-int/2addr v5, v10

    const/16 v35, 0x1

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v11, v5

    or-int/lit8 v5, v3, -0x2

    mul-int/lit16 v5, v5, 0xa0

    neg-int v5, v5

    neg-int v5, v5

    or-int v10, v11, v5

    shl-int/lit8 v10, v10, 0x1

    xor-int/2addr v5, v11

    sub-int/2addr v10, v5

    not-int v4, v4

    or-int/lit8 v5, v4, 0x1

    not-int v5, v5

    xor-int/lit8 v11, v3, 0x1

    and-int/lit8 v12, v3, 0x1

    or-int/2addr v11, v12

    not-int v11, v11

    xor-int v12, v5, v11

    and-int/2addr v5, v11

    or-int/2addr v5, v12

    mul-int/lit16 v5, v5, -0xa0

    neg-int v5, v5

    neg-int v5, v5

    or-int v11, v10, v5

    const/16 v35, 0x1

    shl-int/lit8 v11, v11, 0x1

    xor-int/2addr v5, v10

    sub-int/2addr v11, v5

    not-int v3, v3

    xor-int v5, v3, v4

    and-int/2addr v3, v4

    or-int/2addr v3, v5

    not-int v3, v3

    xor-int/lit8 v4, v3, 0x1

    and-int/lit8 v3, v3, 0x1

    or-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0xa0

    neg-int v3, v3

    neg-int v3, v3

    or-int v4, v11, v3

    shl-int/lit8 v4, v4, 0x1

    xor-int/2addr v3, v11

    sub-int/2addr v4, v3

    int-to-byte v3, v4

    sget v4, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    xor-int/lit16 v5, v4, 0xb4

    and-int/lit16 v10, v4, 0xb4

    or-int/2addr v5, v10

    int-to-short v5, v5

    invoke-static {v2, v3, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    xor-int/lit8 v3, v4, 0x9

    and-int/lit8 v5, v4, 0x9

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aget-byte v0, v0, v46

    int-to-byte v0, v0

    xor-int/lit8 v5, v4, 0x35

    and-int/lit8 v4, v4, 0x35

    or-int/2addr v4, v5

    int-to-short v4, v4

    invoke-static {v3, v0, v4}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x1

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/16 v25, 0x0

    aput-object v4, v3, v25

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_2b

    :try_start_7f
    invoke-virtual {v0, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7f .. :try_end_7f} :catch_f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_21

    goto :goto_30

    :catch_f
    move-exception v0

    :try_start_80
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    throw v0
    :try_end_80
    .catch Ljava/lang/ClassNotFoundException; {:try_start_80 .. :try_end_80} :catch_10
    .catchall {:try_start_80 .. :try_end_80} :catchall_21

    :catch_10
    const/4 v0, 0x0

    :goto_30
    if-eqz v0, :cond_44

    :try_start_81
    move-object v4, v0

    check-cast v4, Ljava/lang/Class;

    sget v0, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    int-to-byte v2, v0

    sget-object v3, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_2b

    const/16 v18, 0x4

    :try_start_82
    aget-byte v5, v3, v18

    int-to-byte v5, v5

    xor-int/lit8 v6, v0, 0x2d

    and-int/lit8 v10, v0, 0x2d

    or-int/2addr v6, v10

    int-to-short v6, v6

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/16 v25, 0x0

    aput-object v2, v6, v25

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v2, v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    xor-int/lit8 v6, v29, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFi1hSDK;->i:Ljava/lang/Object;

    const/16 v1, 0xc36

    new-array v2, v1, [B

    const/16 v1, 0xc

    aget-byte v1, v3, v1

    int-to-byte v1, v1

    aget-byte v6, v3, v23

    int-to-byte v6, v6

    const/16 v10, 0x2e7

    aget-byte v10, v3, v10

    int-to-short v10, v10

    invoke-static {v1, v6, v10}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_27

    move-object/from16 v6, v53

    :try_start_83
    invoke-virtual {v6, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_41

    :try_start_84
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    aget-byte v10, v3, v27

    int-to-byte v10, v10

    const/16 v11, 0x52

    aget-byte v11, v3, v11

    int-to-byte v11, v11

    invoke-static {v10, v11, v7}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    aget-byte v11, v3, v27

    int-to-byte v11, v11

    aget-byte v13, v3, v28

    int-to-byte v13, v13

    invoke-static {v11, v13, v8}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v25, 0x0

    aput-object v11, v12, v25

    invoke-virtual {v10, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_26

    :try_start_85
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    aget-byte v10, v3, v27

    int-to-byte v10, v10

    aget-byte v11, v3, v33

    int-to-byte v11, v11

    const/16 v12, 0x2a1

    int-to-short v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Class;

    aget-byte v11, v3, v27

    int-to-byte v11, v11

    aget-byte v14, v3, v28

    int-to-byte v14, v14

    invoke-static {v11, v14, v8}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v25, 0x0

    aput-object v8, v13, v25

    invoke-virtual {v10, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_25

    :try_start_86
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v8

    aget-byte v10, v3, v27

    int-to-byte v10, v10

    aget-byte v11, v3, v33

    int-to-byte v11, v11

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aget-byte v11, v3, v46

    int-to-byte v11, v11

    const/16 v13, 0x28b

    int-to-short v13, v13

    invoke-static {v9, v11, v13}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/Class;

    const/16 v25, 0x0

    aput-object v36, v13, v25

    invoke-virtual {v10, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_24

    :try_start_87
    aget-byte v8, v3, v27

    int-to-byte v8, v8

    aget-byte v10, v3, v33

    int-to-byte v10, v10

    invoke-static {v8, v10, v12}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    int-to-byte v0, v0

    aget-byte v3, v3, v31

    int-to-byte v3, v3

    const/16 v10, 0x31f

    int-to-short v10, v10

    invoke-static {v0, v3, v10}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v8, v0, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_23

    :try_start_88
    invoke-static/range {v49 .. v49}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v0, 0xc09

    move-object v3, v6

    move/from16 v14, v43

    move/from16 v15, v48

    move-object/from16 v13, v51

    move/from16 v12, v55

    const/16 v25, 0x0

    const/16 v26, 0x3

    goto/16 :goto_1e

    :catchall_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_40

    throw v1

    :cond_40
    throw v0

    :catchall_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_41

    throw v1

    :cond_41
    throw v0

    :catchall_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_42

    throw v1

    :cond_42
    throw v0

    :catchall_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_43

    throw v1

    :cond_43
    throw v0

    :catchall_27
    move-exception v0

    move-object/from16 v6, v53

    goto/16 :goto_3e

    :cond_44
    move-object/from16 v6, v53

    const/4 v5, 0x2

    const/16 v18, 0x4

    new-array v0, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/16 v25, 0x0

    aput-object v2, v0, v25

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v2, v0, v11

    move-object/from16 v4, v52

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_41

    if-nez v29, :cond_45

    .line 0
    sget v2, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    add-int/lit8 v2, v2, 0x57

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    const/16 v37, 0x2

    rem-int/lit8 v2, v2, 0x2

    const/4 v2, 0x1

    goto :goto_31

    :cond_45
    const/4 v2, 0x0

    .line 4000
    :goto_31
    :try_start_89
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFi1hSDK;->i:Ljava/lang/Object;
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_41

    :try_start_8a
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_4a

    move/from16 v1, v23

    const/4 v5, 0x2

    const/4 v14, 0x1

    const/16 v25, 0x0

    const/16 v35, 0x1

    goto/16 :goto_46

    :catchall_28
    move-exception v0

    move-object/from16 v6, v53

    const/16 v18, 0x4

    .line 7000
    :try_start_8b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_46

    throw v1

    :cond_46
    throw v0
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8b} :catch_11
    .catchall {:try_start_8b .. :try_end_8b} :catchall_41

    :catch_11
    move-exception v0

    goto :goto_32

    :catch_12
    move-exception v0

    move-object/from16 v6, v53

    const/16 v18, 0x4

    :goto_32
    :try_start_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v3, v2, v17

    int-to-byte v3, v3

    aget-byte v5, v2, v31

    int-to-byte v5, v5

    sget v7, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    xor-int/lit8 v8, v7, 0x39

    and-int/lit8 v7, v7, 0x39

    or-int/2addr v7, v8

    int-to-short v7, v7

    invoke-static {v3, v5, v7}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x29

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    const/16 v4, 0x191

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    const/16 v5, 0x358

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_41

    const/4 v3, 0x2

    :try_start_8d
    new-array v4, v3, [Ljava/lang/Object;

    const/16 v35, 0x1

    aput-object v0, v4, v35

    const/16 v25, 0x0

    aput-object v1, v4, v25

    aget-byte v0, v2, v27

    int-to-byte v0, v0

    aget-byte v1, v2, v28

    int-to-byte v1, v1

    invoke-static {v0, v1, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/16 v25, 0x0

    aput-object v2, v1, v25

    const-class v2, Ljava/lang/Throwable;

    const/16 v35, 0x1

    aput-object v2, v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_29

    :catchall_29
    move-exception v0

    :try_start_8e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_47

    throw v1

    :cond_47
    throw v0

    :catchall_2a
    move-exception v0

    move-object/from16 v6, v53

    const/16 v18, 0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_48

    throw v1

    :cond_48
    throw v0

    :catchall_2b
    move-exception v0

    goto :goto_33

    :catchall_2c
    move-exception v0

    move/from16 v55, v12

    move-object/from16 v6, v53

    const/16 v18, 0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_49

    throw v1

    :cond_49
    throw v0

    :catchall_2d
    move-exception v0

    move/from16 v55, v12

    move-object/from16 v6, v53

    const/16 v18, 0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4a

    throw v1

    :cond_4a
    throw v0

    :catchall_2e
    move-exception v0

    move/from16 v55, v12

    :goto_33
    move-object/from16 v6, v53

    goto/16 :goto_3a

    :catchall_2f
    move-exception v0

    move-object v6, v3

    move/from16 v55, v12

    goto/16 :goto_39

    :catchall_30
    move-exception v0

    move-object v6, v3

    goto :goto_34

    :catchall_31
    move-exception v0

    move/from16 v18, v6

    move/from16 v43, v10

    move/from16 v55, v12

    move/from16 v48, v15

    goto :goto_35

    :catchall_32
    move-exception v0

    move-object v6, v3

    move/from16 v43, v10

    :goto_34
    move/from16 v55, v12

    goto :goto_36

    :catchall_33
    move-exception v0

    move-object/from16 v51, v6

    move/from16 v43, v10

    move/from16 v55, v12

    move/from16 v48, v15

    const/16 v18, 0x4

    :goto_35
    move-object v6, v3

    goto :goto_38

    :catchall_34
    move-exception v0

    move-object v6, v3

    goto :goto_37

    :catchall_35
    move-exception v0

    move-object v6, v3

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    :goto_36
    move/from16 v48, v15

    const/16 v18, 0x4

    goto :goto_38

    :catchall_36
    move-exception v0

    move-object v6, v3

    move/from16 v18, v10

    :goto_37
    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    .line 4000
    :goto_38
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4b

    throw v1

    :cond_4b
    throw v0

    :catchall_37
    move-exception v0

    move-object v6, v3

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    goto :goto_3a

    :catchall_38
    move-exception v0

    move-object v6, v3

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    :goto_39
    move/from16 v48, v15

    :goto_3a
    const/16 v18, 0x4

    goto/16 :goto_3e

    :catchall_39
    move-exception v0

    move-object v6, v3

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4c

    throw v1

    :cond_4c
    throw v0

    :catchall_3a
    move-exception v0

    move-object v6, v3

    goto/16 :goto_3d

    :catchall_3b
    move-exception v0

    move-object v6, v3

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4d

    throw v1

    :cond_4d
    throw v0

    :catchall_3c
    move-exception v0

    move-object v6, v3

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4e

    throw v1

    :cond_4e
    throw v0

    :catchall_3d
    move-exception v0

    move-object v6, v3

    goto :goto_3b

    :catchall_3e
    move-exception v0

    move-object v6, v3

    move/from16 v45, v11

    :goto_3b
    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4f

    throw v1

    :cond_4f
    throw v0

    :catchall_3f
    move-exception v0

    move-object v6, v3

    goto :goto_3c

    :catchall_40
    move-exception v0

    move-object v6, v3

    move-object/from16 v44, v8

    :goto_3c
    move/from16 v45, v11

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_50

    throw v1

    :cond_50
    throw v0
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_41

    :catchall_41
    move-exception v0

    goto :goto_3e

    :catchall_42
    move-exception v0

    move-object v6, v3

    move-object/from16 v44, v8

    move/from16 v45, v11

    :goto_3d
    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    :goto_3e
    move-object v1, v0

    :goto_3f
    :try_start_8f
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_43

    goto :goto_40

    :catchall_43
    move-exception v0

    :try_start_90
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw v1

    :catchall_44
    move-exception v0

    move-object/from16 v44, v8

    move/from16 v45, v11

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_51

    throw v1

    :cond_51
    throw v0

    :catchall_45
    move-exception v0

    move-object/from16 v44, v8

    move/from16 v45, v11

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_52

    throw v1

    :cond_52
    throw v0

    :catchall_46
    move-exception v0

    :goto_41
    move-object/from16 v44, v8

    move/from16 v45, v11

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    goto/16 :goto_43

    :catchall_47
    move-exception v0

    move-object/from16 v36, v1

    move-object/from16 v39, v3

    move-object/from16 v41, v6

    move-object/from16 v44, v8

    move/from16 v45, v11

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    goto :goto_42

    :catchall_48
    move-exception v0

    move-object/from16 v36, v1

    move-object/from16 v39, v3

    move-object/from16 v41, v6

    move-object/from16 v44, v8

    move/from16 v45, v11

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    const/16 v33, 0x26a

    :goto_42
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_53

    throw v1

    :cond_53
    throw v0

    :cond_54
    const/16 v33, 0x26a

    :cond_55
    move-object/from16 v36, v1

    move-object/from16 v39, v3

    move-object/from16 v41, v6

    move-object/from16 v44, v8

    move/from16 v45, v11

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v3, v2, v17

    int-to-byte v3, v3

    aget-byte v4, v2, v31

    int-to-byte v4, v4

    const/16 v5, 0x35c

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    aget-byte v1, v2, v1

    int-to-byte v1, v1

    const/16 v3, 0x191

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    const/16 v4, 0x358

    int-to-short v4, v4

    invoke-static {v1, v3, v4}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_4a

    :try_start_91
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    aget-byte v1, v2, v27

    int-to-byte v1, v1

    aget-byte v2, v2, v28

    int-to-byte v2, v2

    invoke-static {v1, v2, v4}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/16 v25, 0x0

    aput-object v3, v2, v25

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_49

    :catchall_49
    move-exception v0

    :try_start_92
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_56

    throw v1

    :cond_56
    throw v0
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_4a

    :catchall_4a
    move-exception v0

    goto :goto_43

    :catchall_4b
    move-exception v0

    move-object/from16 v36, v1

    move-object/from16 v39, v3

    move-object/from16 v41, v6

    move-object/from16 v44, v8

    move/from16 v45, v11

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    const/16 v33, 0x26a

    :goto_43
    add-int/lit8 v15, v48, 0x1

    move/from16 v1, v23

    :goto_44
    if-ge v15, v1, :cond_58

    .line 0
    :try_start_93
    aget-boolean v2, v51, v15

    if-eqz v2, :cond_57

    const/16 v32, 0x0

    sput-object v32, Lcom/appsflyer/internal/AFi1hSDK;->i:Ljava/lang/Object;

    sput-object v32, Lcom/appsflyer/internal/AFi1hSDK;->e:Ljava/lang/Object;

    const/4 v5, 0x2

    const/16 v25, 0x0

    const/16 v35, 0x1

    goto/16 :goto_45

    :cond_57
    add-int/lit8 v15, v15, -0x59

    and-int/lit8 v2, v15, 0x5a

    or-int/lit8 v3, v15, 0x5a

    add-int v15, v2, v3

    goto :goto_44

    :cond_58
    sget-object v1, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    aget-byte v2, v1, v17

    int-to-byte v2, v2

    aget-byte v3, v1, v33

    int-to-byte v3, v3

    const/16 v4, 0x145

    aget-byte v4, v1, v4

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_93} :catch_13

    sget v3, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    add-int/lit8 v3, v3, 0x6d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    const/4 v5, 0x2

    rem-int/2addr v3, v5

    :try_start_94
    new-array v3, v5, [Ljava/lang/Object;

    const/16 v35, 0x1

    aput-object v0, v3, v35

    const/16 v25, 0x0

    aput-object v2, v3, v25

    aget-byte v0, v1, v27

    int-to-byte v0, v0

    aget-byte v1, v1, v28

    int-to-byte v1, v1

    const/16 v2, 0x358

    int-to-short v2, v2

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/16 v25, 0x0

    aput-object v2, v1, v25

    const-class v2, Ljava/lang/Throwable;

    const/16 v35, 0x1

    aput-object v2, v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_4c

    :catchall_4c
    move-exception v0

    :try_start_95
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_59

    throw v1

    :cond_59
    throw v0

    :cond_5a
    move-object/from16 v36, v1

    move-object/from16 v39, v3

    move/from16 v35, v5

    move-object/from16 v41, v6

    move-object/from16 v44, v8

    move/from16 v45, v11

    move/from16 v55, v12

    move-object/from16 v51, v13

    move/from16 v43, v14

    move/from16 v48, v15

    move/from16 v1, v23

    move v5, v4

    :goto_45
    move/from16 v14, v43

    :goto_46
    add-int/lit8 v15, v48, 0x1

    move/from16 v23, v1

    move v4, v5

    move/from16 v5, v35

    move-object/from16 v1, v36

    move-object/from16 v3, v39

    move-object/from16 v6, v41

    move-object/from16 v8, v44

    move/from16 v11, v45

    move-object/from16 v13, v51

    move/from16 v12, v55

    const/4 v2, 0x3

    const/4 v7, 0x5

    const/4 v10, 0x0

    goto/16 :goto_10

    :cond_5b
    move-object/from16 v51, v13

    move/from16 v48, v15

    aget-boolean v0, v51, v48
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_95} :catch_13

    const/16 v32, 0x0

    :try_start_96
    throw v32
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_96} :catch_13
    .catchall {:try_start_96 .. :try_end_96} :catchall_4d

    :catchall_4d
    move-exception v0

    throw v0

    :cond_5c
    :goto_47
    return-void

    :catchall_4e
    move-exception v0

    :try_start_97
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5d

    throw v1

    :cond_5d
    throw v0

    :catchall_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5e

    throw v1

    :cond_5e
    throw v0

    :catchall_50
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5f

    throw v1

    :cond_5f
    throw v0
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_97} :catch_13

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_51
    move-exception v0

    .line 2000
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_60

    throw v1

    :cond_60
    throw v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x54t
        0x76t
        0x4dt
        -0x5ct
        0x5t
        -0x29t
        -0x80t
        0x51t
        0x4bt
        -0x10t
        0x2dt
        -0x60t
        0x59t
        0x5bt
        -0x66t
        0x12t
    .end array-data

    :array_3
    .array-data 1
        -0x39t
        0x4at
        0x61t
        -0x78t
        0x5et
        0x13t
        0x3at
        0x21t
        -0x40t
        0x57t
        -0x7at
        -0x46t
        0x48t
        0x24t
        -0x77t
        -0x2ct
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 65353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrencyIso4217Code(I)I
    .locals 9

    const/4 v0, 0x2

    .line 65350
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    add-int/lit8 v2, v1, 0x49

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    rem-int/2addr v2, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/appsflyer/internal/AFi1hSDK;->i:Ljava/lang/Object;

    const/16 v4, 0x43

    div-int/2addr v4, v3

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/appsflyer/internal/AFi1hSDK;->i:Ljava/lang/Object;

    :goto_0
    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    rem-int/2addr v1, v0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget v1, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    int-to-byte v4, v1

    sget-object v5, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    const/4 v6, 0x4

    aget-byte v6, v5, v6

    int-to-byte v6, v6

    or-int/lit16 v1, v1, 0x200

    int-to-short v1, v1

    invoke-static {v4, v6, v1}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/appsflyer/internal/AFi1hSDK;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;

    const/4 v6, 0x1

    invoke-static {v1, v6, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const/16 v4, 0x1e7

    aget-byte v4, v5, v4

    int-to-byte v4, v4

    const/16 v7, 0x27d

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    const/4 v8, 0x7

    aget-byte v5, v5, v8

    int-to-short v5, v5

    invoke-static {v4, v7, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v1, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    throw v0

    :cond_2
    throw p0
.end method

.method public static getCurrencyIso4217Code(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x2

    .line 65351
    rem-int v1, v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object v1, Lcom/appsflyer/internal/AFi1hSDK;->i:Ljava/lang/Object;

    sget v2, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    add-int/lit8 v2, v2, 0x41

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/2addr v2, v0

    :try_start_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget v2, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    int-to-byte v3, v2

    sget-object v4, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    const/4 v5, 0x4

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    or-int/lit16 v2, v2, 0x200

    int-to-short v2, v2

    invoke-static {v3, v5, v2}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/AFi1hSDK;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ClassLoader;

    const/4 v5, 0x1

    invoke-static {v2, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x1e7

    aget-byte v3, v4, v3

    int-to-byte v3, v3

    const/16 v6, 0x27d

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    const/4 v7, 0x7

    aget-byte v4, v4, v7

    int-to-short v4, v4

    invoke-static {v3, v6, v4}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v1, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0
.end method

.method public static getCurrencyIso4217Code(CII)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x2

    .line 65352
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/2addr v1, v0

    sget-object v1, Lcom/appsflyer/internal/AFi1hSDK;->i:Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x47

    or-int/lit8 v2, v2, 0x47

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    rem-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x47

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/2addr v2, v0

    const/4 v2, 0x3

    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v3, p1

    sget p0, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    int-to-byte v4, p0

    sget-object v5, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    const/4 v6, 0x4

    aget-byte v6, v5, v6

    int-to-byte v6, v6

    or-int/lit16 v7, p0, 0x200

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/appsflyer/internal/AFi1hSDK;->e:Ljava/lang/Object;

    check-cast v6, Ljava/lang/ClassLoader;

    invoke-static {v4, p2, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    add-int/lit8 p0, p0, 0x4

    int-to-byte p0, p0

    const/16 v6, 0x32f

    aget-byte v6, v5, v6

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x23

    aget-byte v5, v5, v7

    int-to-short v5, v5

    invoke-static {p0, v6, v5}, Lcom/appsflyer/internal/AFi1hSDK;->$$c(SBS)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, p1

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, v2, p2

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, v2, v0

    invoke-virtual {v4, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    throw p1

    :cond_1
    throw p0
.end method

.method private static getMediationNetwork(II)V
    .locals 1

    const/4 p0, 0x2

    .line 65354
    rem-int p1, p0, p0

    sget p1, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/2addr p1, p0

    return-void
.end method

.method static init$0()V
    .locals 6

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    xor-int/lit8 v2, v1, 0x7

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    rem-int/2addr v2, v0

    const-string v1, "ISO-8859-1"

    const-string v3, "@\u00db\u00db\u00a1\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd<\u000e\u00f2\u0012\u00fb\u0004\u00fd\u0013\u00be\u0018/\u0000\u0006\u0006\u00f8\u00fe\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c6\u0015\u0008&\u00cb6\u00f2\u00f4\n\u000b\u0003\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u0016%\u0014\u00f8\u0010\u00f6\u000e\u0008\u00de\u0017\r\u00f6\u00ff\u0006\u0015\u0000\u0003\u00f6\u000c\t\u00d02\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u00162\u0003\u00da(\u0006\u00f6\u0002\u000e\n\u0001\u0012\u00d8(\u00fe\u000e\u00f8\u00fb\u000e\u00d82\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u0001\u0012\u00d5&\u0006\u00fc\u0011\u00d4(\u000c\u0001\u0012\u00d2/\u00f8\u0004\u00e1!\u0005\u0008\u0000\u00e2(\u000c\u0001\u0012\u00d2!\u0005\u0008\u0000\u00e2(\u000c8\u0000\u0016\u00f0\u00d18\u0000\u0016\u00f0\u00d1\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00fa\u0018\u00ee\u00d0>\t\u00c2I\u00fc\u0006\u00f7\u0008\u000c\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca()\u00fd\u0004\u00f4\u000b\u0001\u0012\u00df%\u0000\u0004\u00f8\u0010\u0005\u0008\u000f\u00f8\u0004\u00fd\u0007\u0001\u0005\u0008\u0000\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u00176\u00f7\u0006\u00fb\u00c35\u00f2\u0010\u0004\u00f9\t\u0002\u00f4\n\u0017\u00ed\u0008\t\u0001\u0010\u00ec\u001e\u00fa\u000e\u00f4\u00ee\t\u00ed\u000b\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e\t\u00f96\u00ee\u0005\u000e\u0007\u00f8\t\u0002\u0015\u0000\u0003\u00f6\u000c\t\u00e3\u0018\u0007\u00fb\u00eb\u001f\u0006\u0003\u0000\r\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ed)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u000c\u0006\u0007\u00f5\u00ee\u0006\u00f0\u000b5\u0015\u0003\u00f5\u0012\u0002\u00bf7\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c65\u0004\u0004\u0003\u00d3\u00022\u0003\u00d6\u00070\u00cf\u000b\u00fd\u0008.\u00cd\u0001\u0012\u00e1\u0016\u0011\u00ff\t\u0000\u00f4\u0005\u00fa\u0018\u00ee\u00d0C\u00fa\u0012\u00bd*\u0000\u00fd\u0001\u0012\u00df\u0014\u0016\u00f7\u00fa\u0018\u00ee\u00d0>\t\u00c2\u00176\u00f4\u0003\u0002\u0010\u00f6\u0002\u00e8(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0019 \u0016\u00f0\u00eb(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00f6\u00ff\u0006\u00e52\u00fa\u0003\u0010\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d3(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0014\u0003\u00f2\u001b\u00ed\u000f\u0004\u000c\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00bf>\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c5\u0016\u0008(\u00c9B\u00e6\u00f4\n\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00bf>\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c5\u0016\u0008&\u00cb6\u00f2\u00f4\n\u000b\u0003\u0001\u0012\u00dc\u001b\u0002\u0008\u00fb\u0016\u00f8\t\u0002\u00e3\u001a\u0012\u0006\u00fb\u0006\u00fc\u00fb\u0001\n\u00f6\u00ff\u0006\u00f5\u0012\u00e1\u0016\u00ff\u0006\u00ee\"\u0001\u0010\u00ee\u0007\u00ef\u000b\u00fe\u00fa\u000e\u00f4\u0001\u0012\u00d5\u0001\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00e2$\u0011\u00f3\u0012\u00fa\n\u0007\u00fe\u0006\t\u00f8\u00f8\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0019$\u0016\u00d1&\u0006\u00fc\u0006\u00f5\u0006\u00e3$\u0016\u0001\u0012\u00d0$\u0014\u00ff\u0000\u000c\u0002\u00f4\u00ee\u0014\u0016\u00f7\u0004\n\u00fc\u0012\u00f4\u0001\u0012\u00d2,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00fa\u0018\u00ee\u00d0J\u0002\u00f8\u0006\u00c5O\u00f2\n\u00c1/\u0012\n\u00dc(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0001\u0012\u00dd\u001a\u0016\u00ff\u00d4,\t\u0001\n\u00fa\u0018\u00ee\u00d0J\u0002\u00f8\u0006\u00c5O\u00f2\n\u00c1/\u0012\n\u00d8,\t\u0001\n\u0001\u0012\u00e2\u0019\u0014\u00ee\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d9)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fe\u00d6:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0018,\u0006\u0007\u00f5\u00ff\u0004\r\u00fc\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u001e(\u00e2\u001b\u000b\u0005\u0006\n\u00ce$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00fa\u0018\u00ee\u00d0C\u00fe\t\u00c2\u0017:\u00fe\u00f4\u00e06\u00f4\u0003\u0002\u0010\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca\u0018,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00fe\u00f2\u0012\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0017\"\u0015\u00f5\u00e2$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00f4\u0016\u00f7\u00e7 \r\u0004\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00ce(\u000c\u00f6\u0001\u0014\u00fe\u0006\u00fa\u00ff\u0011\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00da\u0014\u0016\u00f7\u00e0*\u00fc\u000b\u00fb\u000c\t\u0002\u0001\u0012\u00d2/\u0001\u0006\u0002\u0002\u00fa\u000c\t\u00e3(\u00fa\u00f8\u00ee\u000b\u00eb\u000b\u0006\u00f5\u0006\u00e2,\u00f8\u0015\u0003\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c6\u0015\u0008&\u00cb:\u00ee\u00f4\n\u00dcH5\u0015\u0003\u00f5\u0012\u0002\u00bf7\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c6\u00082\u00d3\u0003\u00072\u00fe\u0004\u00d4\u0004\u0008\u0001\u00031\u00d1\u00070\u00cc\u00ee\n\u00ec\u000bI\u0004\u00b4I\u00fe\u000e\u0003\u00f9\u0002\u0005\u000b\u000b\u00b0O\u00fc\u0004\u0011\u00b8\u0001\u0012\u00e1\u0016\u0014\u00f2\u000c\n\u00f3\u0008\u00fe&\u00f1\u0016\u0014\u00f2\u000c\n\u00f3\u00e2 \u0016\u00f0"

    const/4 v4, 0x0

    const/16 v5, 0x48e

    if-eqz v2, :cond_0

    new-array v2, v5, [B

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v2, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    const/16 v1, 0x48

    :goto_0
    sput v1, Lcom/appsflyer/internal/AFi1hSDK;->$$b:I

    goto :goto_1

    :cond_0
    new-array v2, v5, [B

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v2, Lcom/appsflyer/internal/AFi1hSDK;->$$a:[B

    const/16 v1, 0x42

    goto :goto_0

    :goto_1
    sget v1, Lcom/appsflyer/internal/AFi1hSDK;->$10:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1hSDK;->$11:I

    rem-int/2addr v1, v0

    return-void
.end method
