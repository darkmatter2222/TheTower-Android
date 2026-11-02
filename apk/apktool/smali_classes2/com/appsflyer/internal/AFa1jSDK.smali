.class public Lcom/appsflyer/internal/AFa1jSDK;
.super Ljava/lang/Object;


# static fields
.field private static final $$a:[B = null

.field private static final $$b:I = 0x0

.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static $12:I = 0x0

.field private static $13:I = 0x1

.field public static final AFInAppEventType:Ljava/util/Map;

.field private static afDebugLog:J

.field private static afErrorLog:I

.field private static afErrorLogForExcManagerOnly:[B

.field private static afInfoLog:I

.field private static afRDLog:I

.field private static afWarnLog:I

.field private static d:[B

.field private static e:[B

.field private static force:J

.field private static i:Ljava/lang/Object;

.field public static final unregisterClient:Ljava/util/Map;

.field private static v:J

.field private static w:Ljava/lang/Object;


# direct methods
.method private static $$c(SSI)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1jSDK;->$13:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1jSDK;->$12:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    rsub-int/lit8 p0, p0, 0xd

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p1, p1, 0x44

    sget-object v1, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    new-array v3, p1, [B

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    rsub-int/lit8 p0, p0, 0x77

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p1, p1, 0x1

    sget-object v1, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    new-array v3, p1, [B

    if-nez v1, :cond_0

    :goto_0
    move v5, v2

    move-object v4, v3

    move-object v3, v1

    move v1, p2

    move p2, p1

    goto :goto_2

    :goto_1
    add-int/lit8 v5, v4, 0x1

    int-to-byte v6, p0

    aput-byte v6, v3, v4

    add-int/lit8 p2, p2, 0x1

    if-ne v5, p1, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_2
    aget-byte v4, v1, p2

    move v7, p2

    move p2, p1

    move p1, v4

    move-object v4, v3

    move-object v3, v1

    move v1, v7

    :goto_2
    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x3

    sget p1, Lcom/appsflyer/internal/AFa1jSDK;->$12:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v6, p1, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1jSDK;->$13:I

    rem-int/2addr p1, v0

    move p1, p2

    move p2, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 60

    const-class v1, [B

    invoke-static {}, Lcom/appsflyer/internal/AFa1jSDK;->init$0()V

    .line 0
    sget v0, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    xor-int/lit8 v2, v0, 0x1b

    and-int/lit8 v0, v0, 0x1b

    const/4 v3, 0x1

    shl-int/2addr v0, v3

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    const/16 v0, 0x93

    .line 2000
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    const/16 v5, 0x52

    aget-byte v6, v2, v5

    int-to-byte v6, v6

    const/16 v7, 0x31

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    const/16 v8, 0x2d

    aget-byte v8, v2, v8

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0xac

    aget-byte v8, v2, v7

    int-to-byte v8, v8

    const/16 v9, 0x1a

    aget-byte v9, v2, v9

    int-to-byte v9, v9

    const/16 v10, 0x54

    aget-byte v11, v2, v10

    int-to-short v11, v11

    invoke-static {v8, v9, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v9, v12

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_51

    const v6, -0x5fffa3ac

    or-int/2addr v6, v0

    const v9, 0x50588082

    xor-int v11, v6, v9

    and-int/2addr v6, v9

    or-int/2addr v6, v11

    mul-int/lit16 v9, v6, 0x266

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v11, v13

    const v13, 0x2120e

    mul-int/2addr v6, v13

    const v13, -0x311fd5c

    and-int v14, v6, v13

    or-int/2addr v6, v13

    add-int/2addr v14, v6

    not-int v6, v9

    const v13, -0x83258d5

    xor-int v15, v6, v13

    and-int/2addr v6, v13

    or-int/2addr v6, v15

    not-int v6, v6

    not-int v13, v11

    xor-int v15, v13, v9

    and-int/2addr v13, v9

    or-int/2addr v13, v15

    const v15, 0x83258d4

    xor-int v16, v13, v15

    and-int/2addr v13, v15

    or-int v13, v16, v13

    not-int v13, v13

    or-int/2addr v6, v13

    mul-int/lit16 v6, v6, 0xdc

    neg-int v6, v6

    neg-int v6, v6

    or-int v13, v14, v6

    shl-int/2addr v13, v3

    xor-int/2addr v6, v14

    sub-int/2addr v13, v6

    not-int v6, v11

    xor-int v14, v6, v15

    and-int/2addr v6, v15

    or-int/2addr v6, v14

    not-int v6, v6

    or-int/2addr v6, v9

    mul-int/lit16 v6, v6, -0x1b8

    neg-int v6, v6

    neg-int v6, v6

    and-int v14, v13, v6

    or-int/2addr v6, v13

    add-int/2addr v14, v6

    xor-int v6, v9, v15

    and-int/2addr v9, v15

    or-int/2addr v6, v9

    xor-int v9, v6, v11

    and-int/2addr v6, v11

    or-int/2addr v6, v9

    mul-int/lit16 v6, v6, 0xdc

    xor-int v9, v14, v6

    and-int/2addr v6, v14

    shl-int/2addr v6, v3

    add-int/2addr v9, v6

    not-int v0, v0

    const v6, 0x5a5f8282

    xor-int v11, v6, v0

    and-int/2addr v6, v0

    or-int/2addr v6, v11

    not-int v6, v6

    const v11, -0x5fffa3ac

    or-int/2addr v6, v11

    const v11, 0x55f8a1ab

    xor-int v13, v0, v11

    and-int v14, v0, v11

    or-int/2addr v13, v14

    not-int v13, v13

    xor-int v14, v6, v13

    and-int/2addr v6, v13

    or-int/2addr v6, v14

    mul-int/lit16 v13, v6, -0x4cc

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v14, v14

    const v15, 0x59f10

    mul-int/2addr v6, v15

    mul-int/lit16 v15, v9, 0x12e

    add-int/2addr v6, v15

    xor-int v15, v13, v9

    and-int v16, v13, v9

    or-int v15, v15, v16

    xor-int v16, v15, v14

    and-int/2addr v15, v14

    or-int v15, v16, v15

    not-int v15, v15

    mul-int/lit16 v15, v15, -0x12d

    not-int v15, v15

    sub-int/2addr v6, v15

    sub-int/2addr v6, v3

    not-int v9, v9

    xor-int v15, v9, v14

    and-int v16, v9, v14

    or-int v15, v15, v16

    not-int v15, v15

    move/from16 v16, v5

    not-int v5, v14

    xor-int v17, v5, v13

    and-int/2addr v5, v13

    or-int v5, v17, v5

    not-int v5, v5

    xor-int v17, v15, v5

    and-int/2addr v5, v15

    or-int v5, v17, v5

    mul-int/lit16 v5, v5, -0x12d

    neg-int v5, v5

    neg-int v5, v5

    not-int v5, v5

    sub-int/2addr v6, v5

    sub-int/2addr v6, v3

    not-int v5, v13

    xor-int v13, v5, v14

    and-int/2addr v5, v14

    or-int/2addr v5, v13

    not-int v5, v5

    xor-int v13, v9, v5

    and-int/2addr v5, v9

    or-int/2addr v5, v13

    mul-int/lit16 v5, v5, 0x12d

    xor-int v9, v6, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v3

    add-int/2addr v9, v5

    const v5, -0x5a0212a

    or-int/2addr v5, v0

    not-int v5, v5

    const v6, -0x5a5f8283

    xor-int v13, v0, v6

    and-int/2addr v0, v6

    or-int/2addr v0, v13

    xor-int v6, v0, v11

    and-int/2addr v0, v11

    or-int/2addr v0, v6

    not-int v0, v0

    xor-int v6, v5, v0

    and-int/2addr v0, v5

    or-int/2addr v0, v6

    mul-int/lit16 v0, v0, 0x266

    not-int v0, v0

    sub-int/2addr v9, v0

    sub-int/2addr v9, v3

    if-nez v9, :cond_0

    goto/16 :goto_51

    :cond_0
    const-wide v5, -0x11c92c2483905982L    # -8.251567389252479E222

    sput-wide v5, Lcom/appsflyer/internal/AFa1jSDK;->afDebugLog:J

    sput v12, Lcom/appsflyer/internal/AFa1jSDK;->afRDLog:I

    sput v4, Lcom/appsflyer/internal/AFa1jSDK;->afWarnLog:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFa1jSDK;->AFInAppEventType:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFa1jSDK;->unregisterClient:Ljava/util/Map;

    :try_start_1
    aget-byte v0, v2, v10

    int-to-byte v0, v0

    const/16 v5, 0x1e8

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    aget-byte v6, v2, v16

    int-to-short v6, v6

    invoke-static {v0, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->w:Ljava/lang/Object;

    if-nez v0, :cond_1

    aget-byte v0, v2, v10

    int-to-byte v0, v0

    const/16 v6, 0x64

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v9, 0x3e

    aget-byte v9, v2, v9

    int-to-short v9, v9

    invoke-static {v0, v6, v9}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15

    goto :goto_0

    :cond_1
    move-object v0, v8

    :goto_0
    const/4 v6, 0x6

    const/4 v9, 0x4

    .line 3000
    :try_start_2
    aget-byte v11, v2, v16

    int-to-byte v11, v11

    const/16 v13, 0x1e7

    aget-byte v13, v2, v13

    int-to-byte v13, v13

    const/16 v14, 0x13

    aget-byte v14, v2, v14

    neg-int v14, v14

    int-to-short v14, v14

    invoke-static {v11, v13, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aget-byte v13, v2, v10

    int-to-byte v13, v13

    aget-byte v2, v2, v6

    int-to-byte v2, v2

    xor-int/lit8 v14, v2, 0x4a

    and-int/lit8 v15, v2, 0x4a

    or-int/2addr v14, v15

    int-to-short v14, v14

    invoke-static {v13, v2, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    new-array v13, v12, [Ljava/lang/Class;

    invoke-virtual {v11, v2, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v11, v8

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v2, :cond_2

    goto :goto_1

    :catch_0
    move-object v2, v8

    :cond_2
    :try_start_3
    sget-object v11, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v13, v11, v16

    int-to-byte v13, v13

    const/16 v14, 0x31

    aget-byte v14, v11, v14

    int-to-byte v14, v14

    const/16 v15, 0x6c

    int-to-short v15, v15

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    aget-byte v14, v11, v9

    int-to-byte v14, v14

    aget-byte v11, v11, v10

    int-to-byte v11, v11

    const/16 v15, 0x81

    int-to-short v15, v15

    invoke-static {v14, v11, v15}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    new-array v14, v12, [Ljava/lang/Class;

    invoke-virtual {v13, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v13, v8

    check-cast v13, [Ljava/lang/Object;

    invoke-virtual {v11, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :goto_1
    const/16 v11, 0x38

    if-eqz v2, :cond_3

    .line 0
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v15, v14, v9

    int-to-byte v15, v15

    aget-byte v14, v14, v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    int-to-byte v14, v14

    move/from16 v17, v7

    const/16 v7, 0x95

    int-to-short v7, v7

    :try_start_5
    invoke-static {v15, v14, v7}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    move-object v14, v8

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v13, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v13, v8

    check-cast v13, [Ljava/lang/Object;

    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    :goto_2
    move-object v7, v8

    goto :goto_3

    :catch_3
    :cond_3
    move/from16 v17, v7

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v15, v14, v9

    int-to-byte v15, v15

    const/16 v18, 0xc

    aget-byte v14, v14, v18
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    int-to-byte v14, v14

    move/from16 v18, v10

    or-int/lit16 v10, v14, 0x91

    int-to-short v10, v10

    :try_start_7
    invoke-static {v15, v14, v10}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v10

    move-object v14, v8

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v13, v10, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v13, v8

    check-cast v13, [Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    :goto_4
    move-object v10, v8

    goto :goto_5

    :catch_5
    :cond_4
    move/from16 v18, v10

    goto :goto_4

    :goto_5
    if-eqz v2, :cond_5

    sget v13, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    or-int/lit8 v14, v13, 0x69

    shl-int/2addr v14, v3

    xor-int/lit8 v13, v13, 0x69

    sub-int/2addr v14, v13

    rem-int/lit16 v13, v14, 0x80

    sput v13, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/2addr v14, v4

    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v15, v14, v9

    int-to-byte v15, v15

    aget-byte v14, v14, v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    int-to-byte v14, v14

    move/from16 v19, v11

    const/16 v11, 0xad

    int-to-short v11, v11

    :try_start_9
    invoke-static {v15, v14, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    move-object v14, v8

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v13, v11, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v13, v8

    check-cast v13, [Ljava/lang/Object;

    invoke-virtual {v11, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_7

    :catch_6
    :goto_6
    move-object v2, v8

    goto :goto_7

    :catch_7
    :cond_5
    move/from16 v19, v11

    goto :goto_6

    :goto_7
    if-eqz v7, :cond_7

    sget v0, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    or-int/lit8 v14, v0, 0x1b

    shl-int/2addr v14, v3

    xor-int/lit8 v0, v0, 0x1b

    sub-int/2addr v14, v0

    rem-int/lit16 v0, v14, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/2addr v14, v4

    if-nez v14, :cond_6

    goto :goto_8

    :cond_6
    rem-int v0, v4, v4

    goto :goto_8

    :cond_7
    if-nez v0, :cond_8

    sget v0, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    xor-int/lit8 v7, v0, 0x1

    and-int/2addr v0, v3

    shl-int/2addr v0, v3

    add-int/2addr v7, v0

    rem-int/lit16 v0, v7, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/2addr v7, v4

    move-object v7, v8

    :goto_8
    const/16 v20, 0x39

    const/16 v21, 0x5c

    goto :goto_9

    :cond_8
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    const/16 v15, 0x2a3

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    const/16 v20, 0x39

    aget-byte v11, v14, v19

    int-to-byte v11, v11

    const/16 v21, 0x5c

    sget v13, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    or-int/lit16 v13, v13, 0x95

    int-to-short v13, v13

    invoke-static {v15, v11, v13}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_15

    sget v7, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    add-int/lit8 v7, v7, 0x37

    rem-int/lit16 v11, v7, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    rem-int/2addr v7, v4

    :try_start_b
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    aget-byte v7, v14, v21

    int-to-byte v7, v7

    aget-byte v11, v14, v20

    int-to-byte v11, v11

    const/16 v13, 0xc1

    int-to-short v13, v13

    invoke-static {v7, v11, v13}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    new-array v11, v3, [Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v7, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_50

    rem-int v0, v4, v4

    :goto_9
    if-eqz v2, :cond_a

    sget v0, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    xor-int/lit8 v11, v0, 0x3b

    and-int/lit8 v0, v0, 0x3b

    shl-int/2addr v0, v3

    add-int/2addr v11, v0

    rem-int/lit16 v0, v11, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/2addr v11, v4

    if-nez v11, :cond_9

    goto :goto_a

    :cond_9
    rem-int v0, v4, v4

    goto :goto_a

    :cond_a
    :try_start_c
    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v2, v0, v21

    int-to-byte v2, v2

    int-to-byte v11, v2

    const/16 v13, 0xcc

    int-to-short v13, v13

    invoke-static {v2, v11, v13}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_15

    sget v11, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    and-int/lit8 v13, v11, 0x17

    or-int/lit8 v11, v11, 0x17

    add-int/2addr v13, v11

    rem-int/lit16 v11, v13, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/2addr v13, v4

    :try_start_d
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    aget-byte v11, v0, v21

    int-to-byte v11, v11

    const/16 v13, 0x1b

    aget-byte v13, v0, v13

    int-to-byte v13, v13

    const/16 v14, 0xd9

    int-to-short v14, v14

    invoke-static {v11, v13, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aget-byte v13, v0, v9

    int-to-byte v13, v13

    aget-byte v14, v0, v19

    int-to-byte v14, v14

    const/16 v15, 0xe8

    int-to-short v15, v15

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v13

    new-array v14, v3, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v12

    invoke-virtual {v11, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :try_start_e
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    aget-byte v11, v0, v21

    int-to-byte v11, v11

    aget-byte v0, v0, v20

    int-to-byte v0, v0

    const/16 v13, 0xc1

    int-to-short v13, v13

    invoke-static {v11, v0, v13}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v11, v3, [Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4e

    :goto_a
    if-nez v10, :cond_d

    if-eqz v7, :cond_d

    sget v0, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    or-int/lit8 v10, v0, 0x15

    shl-int/2addr v10, v3

    xor-int/lit8 v0, v0, 0x15

    sub-int/2addr v10, v0

    rem-int/lit16 v0, v10, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/2addr v10, v4

    if-nez v10, :cond_b

    :try_start_f
    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    const/16 v10, 0x1a

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    const/16 v11, 0x46

    aget-byte v0, v0, v11

    int-to-byte v0, v0

    sget v11, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    or-int/lit16 v11, v11, 0x30ed

    int-to-short v11, v11

    invoke-static {v10, v0, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_b
    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v10, v0, v18

    int-to-byte v10, v10

    const/16 v11, 0x23

    aget-byte v0, v0, v11

    int-to-byte v0, v0

    sget v11, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    xor-int/lit16 v13, v11, 0xd0

    and-int/lit16 v11, v11, 0xd0

    or-int/2addr v11, v13

    int-to-short v11, v11

    invoke-static {v10, v0, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_15

    :goto_b
    :try_start_10
    new-array v10, v4, [Ljava/lang/Object;

    aput-object v0, v10, v3

    aput-object v7, v10, v12

    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v11, v0, v21

    int-to-byte v11, v11

    aget-byte v13, v0, v20

    int-to-byte v13, v13

    const/16 v14, 0xc1

    int-to-short v14, v14

    invoke-static {v11, v13, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/Class;

    aget-byte v15, v0, v21

    int-to-byte v15, v15

    aget-byte v0, v0, v20

    int-to-byte v0, v0

    invoke-static {v15, v0, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v13, v12

    const-class v0, Ljava/lang/String;

    aput-object v0, v13, v3

    invoke-virtual {v11, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_c

    throw v1

    :cond_c
    throw v0

    :cond_d
    :goto_c
    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v11, v0, v21

    int-to-byte v11, v11

    aget-byte v13, v0, v20

    int-to-byte v13, v13

    const/16 v14, 0xc1

    int-to-short v14, v14

    invoke-static {v11, v13, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v13, 0x7

    invoke-static {v11, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    aput-object v8, v11, v12

    aput-object v10, v11, v3

    aput-object v7, v11, v4

    const/4 v15, 0x3

    aput-object v2, v11, v15

    aput-object v10, v11, v9

    const/4 v10, 0x5

    aput-object v7, v11, v10

    aput-object v2, v11, v6

    new-array v2, v13, [Z

    fill-array-data v2, :array_0

    new-array v7, v13, [Z

    fill-array-data v7, :array_1

    move/from16 v22, v9

    new-array v9, v13, [Z

    aput-boolean v12, v9, v12

    aput-boolean v12, v9, v3

    aput-boolean v3, v9, v4

    aput-boolean v3, v9, v15

    aput-boolean v12, v9, v22

    aput-boolean v3, v9, v10

    aput-boolean v3, v9, v6
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_15

    move/from16 v23, v13

    :try_start_12
    aget-byte v13, v0, v16
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_15

    int-to-byte v13, v13

    const/16 v24, 0x5b

    move/from16 v25, v6

    :try_start_13
    aget-byte v6, v0, v24
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_15

    int-to-byte v6, v6

    move/from16 v24, v12

    :try_start_14
    sget v12, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    xor-int/lit16 v15, v12, 0xd9

    and-int/lit16 v12, v12, 0xd9

    or-int/2addr v12, v15

    int-to-short v12, v12

    invoke-static {v13, v6, v12}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v12, 0x15c

    aget-byte v12, v0, v12

    int-to-byte v12, v12

    const/16 v13, 0x17

    aget-byte v0, v0, v13

    int-to-byte v0, v0

    const/16 v13, 0x112

    int-to-short v13, v13

    invoke-static {v12, v0, v13}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_15

    const/16 v6, 0x22

    if-lt v0, v6, :cond_e

    move v6, v3

    goto :goto_d

    :cond_e
    move/from16 v6, v24

    :goto_d
    const/16 v12, 0x1d

    if-ne v0, v12, :cond_f

    goto :goto_e

    :cond_f
    const/16 v12, 0x1a

    if-lt v0, v12, :cond_10

    move v12, v3

    goto :goto_f

    :cond_10
    :goto_e
    move/from16 v12, v24

    :goto_f
    :try_start_15
    aput-boolean v12, v9, v24

    const/16 v12, 0x15

    if-lt v0, v12, :cond_11

    move v12, v3

    goto :goto_10

    :cond_11
    move/from16 v12, v24

    :goto_10
    aput-boolean v12, v9, v3
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    const/16 v12, 0x15

    if-lt v0, v12, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move v0, v3

    goto :goto_11

    :cond_12
    move/from16 v0, v24

    :goto_11
    :try_start_16
    aput-boolean v0, v9, v22
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_15

    rem-int v0, v4, v4

    goto :goto_12

    :catch_8
    move/from16 v25, v6

    :catch_9
    move/from16 v24, v12

    :catch_a
    move/from16 v6, v24

    :catch_b
    :goto_12
    move/from16 v12, v24

    move v13, v12

    :goto_13
    if-nez v12, :cond_5f

    const/16 v0, 0x9

    if-ge v13, v0, :cond_5f

    :try_start_17
    aget-boolean v0, v9, v13
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_15

    if-eqz v0, :cond_5e

    :try_start_18
    aget-boolean v27, v2, v13

    aget-object v0, v11, v13

    aget-boolean v28, v7, v13
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4c

    const/16 v29, 0xe

    const/16 v30, 0x10

    if-eqz v27, :cond_17

    if-eqz v0, :cond_14

    sget v31, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    const/16 v32, -0x1

    add-int/lit8 v15, v31, 0x41

    rem-int/lit16 v10, v15, 0x80

    sput v10, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    rem-int/2addr v15, v4

    .line 4000
    :try_start_19
    sget-object v10, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v15, v10, v21
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    int-to-byte v15, v15

    move/from16 v33, v4

    :try_start_1a
    aget-byte v4, v10, v20

    int-to-byte v4, v4

    invoke-static {v15, v4, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v15, v10, v18

    int-to-byte v15, v15

    const/16 v34, 0xfb

    aget-byte v10, v10, v34
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    int-to-byte v10, v10

    move/from16 v34, v3

    const/16 v3, 0x118

    int-to-short v3, v3

    :try_start_1b
    invoke-static {v15, v10, v3}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    if-eqz v3, :cond_15

    goto/16 :goto_15

    :catchall_1
    move-exception v0

    goto :goto_14

    :catchall_2
    move-exception v0

    move/from16 v34, v3

    goto :goto_14

    :catchall_3
    move-exception v0

    move/from16 v34, v3

    move/from16 v33, v4

    :goto_14
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_13

    throw v3

    :cond_13
    throw v0

    :cond_14
    move/from16 v34, v3

    move/from16 v33, v4

    const/16 v32, -0x1

    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    const/16 v10, 0x67

    aget-byte v10, v4, v10

    int-to-byte v10, v10

    aget-byte v15, v4, v30
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    int-to-byte v15, v15

    xor-int/lit16 v8, v15, 0x11b

    move-object/from16 v36, v1

    and-int/lit16 v1, v15, 0x11b

    or-int/2addr v1, v8

    int-to-short v1, v1

    :try_start_1d
    invoke-static {v10, v15, v1}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e0

    aget-byte v1, v4, v1

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    aget-byte v3, v4, v23

    int-to-byte v3, v3

    xor-int/lit16 v8, v3, 0x123

    and-int/lit16 v10, v3, 0x123

    or-int/2addr v8, v10

    int-to-short v8, v8

    invoke-static {v1, v3, v8}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    .line 0
    sget v1, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    or-int/lit8 v3, v1, 0x1f

    shl-int/lit8 v3, v3, 0x1

    xor-int/lit8 v1, v1, 0x1f

    sub-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/lit8 v3, v3, 0x2

    .line 4000
    :try_start_1e
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    aget-byte v1, v4, v21

    int-to-byte v1, v1

    aget-byte v3, v4, v29

    int-to-byte v3, v3

    sget v4, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    xor-int/lit16 v8, v4, 0x101

    and-int/lit16 v4, v4, 0x101

    or-int/2addr v4, v8

    int-to-short v4, v4

    invoke-static {v1, v3, v4}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move/from16 v3, v34

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v4, v24

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_16

    throw v1

    :cond_16
    throw v0

    :catchall_5
    move-exception v0

    move-object/from16 v36, v1

    goto/16 :goto_20

    :cond_17
    move/from16 v33, v4

    const/16 v32, -0x1

    :goto_15
    move-object/from16 v36, v1

    if-eqz v27, :cond_2a

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    :try_start_20
    sget-object v3, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v4, v3, v21

    int-to-byte v4, v4

    const/16 v8, 0x1b

    aget-byte v8, v3, v8

    int-to-byte v8, v8

    const/16 v10, 0xd9

    int-to-short v10, v10

    invoke-static {v4, v8, v10}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v8, v3, v18

    int-to-byte v8, v8

    aget-byte v3, v3, v22

    int-to-byte v3, v3

    or-int/lit16 v10, v3, 0x125

    int-to-short v10, v10

    invoke-static {v8, v3, v10}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v4, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    const-wide/32 v37, -0x6068fb58

    xor-long v3, v3, v37

    :try_start_21
    invoke-virtual {v1, v3, v4}, Ljava/util/Random;->setSeed(J)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    .line 0
    rem-int v4, v33, v33

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_16
    if-nez v3, :cond_28

    if-nez v4, :cond_18

    move-object/from16 v37, v2

    move/from16 v2, v25

    goto :goto_17

    :cond_18
    if-nez v8, :cond_19

    sget v15, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    add-int/lit8 v15, v15, 0x69

    move-object/from16 v37, v2

    rem-int/lit16 v2, v15, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    rem-int/lit8 v15, v15, 0x2

    const/4 v2, 0x5

    goto :goto_17

    :cond_19
    move-object/from16 v37, v2

    if-nez v10, :cond_1a

    move/from16 v2, v22

    goto :goto_17

    :cond_1a
    const/4 v2, 0x3

    .line 4000
    :goto_17
    :try_start_22
    new-instance v15, Ljava/lang/StringBuilder;

    xor-int/lit8 v38, v2, 0x1

    and-int/lit8 v39, v2, 0x1

    move-object/from16 v40, v3

    const/4 v3, 0x1

    shl-int/lit8 v34, v39, 0x1

    move/from16 v39, v3

    add-int v3, v38, v34

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x2e

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v3, v24

    :goto_18
    if-ge v3, v2, :cond_1d

    move/from16 v38, v2

    xor-int/lit8 v2, v28, 0x1

    move/from16 v41, v3

    move/from16 v3, v39

    if-eq v2, v3, :cond_1c

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v3

    move-object/from16 v39, v4

    if-eqz v3, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v3, v3

    mul-int/lit16 v4, v2, 0x389

    const v42, 0xe547

    sub-int v4, v4, v42

    move/from16 v42, v4

    not-int v4, v2

    xor-int v43, v4, v3

    and-int v44, v4, v3

    move/from16 v45, v4

    or-int v4, v43, v44

    not-int v4, v4

    move/from16 v43, v4

    not-int v4, v3

    xor-int/lit8 v44, v4, 0x41

    and-int/lit8 v46, v4, 0x41

    move/from16 v47, v3

    or-int v3, v44, v46

    not-int v3, v3

    or-int v3, v43, v3

    mul-int/lit16 v3, v3, -0x710

    neg-int v3, v3

    neg-int v3, v3

    or-int v43, v42, v3

    const/16 v34, 0x1

    shl-int/lit8 v43, v43, 0x1

    xor-int v3, v42, v3

    sub-int v43, v43, v3

    not-int v3, v2

    xor-int/lit8 v42, v3, -0x42

    and-int/lit8 v3, v3, -0x42

    or-int v3, v42, v3

    xor-int v42, v3, v47

    and-int v3, v3, v47

    or-int v3, v42, v3

    not-int v3, v3

    xor-int v42, v4, v2

    and-int/2addr v2, v4

    or-int v2, v42, v2

    xor-int/lit8 v4, v2, 0x41

    and-int/lit8 v42, v2, 0x41

    or-int v4, v4, v42

    not-int v4, v4

    or-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x388

    add-int v43, v43, v3

    or-int/lit8 v3, v45, 0x41

    not-int v3, v3

    const/16 v4, -0x42

    xor-int v42, v4, v47

    and-int v4, v4, v47

    or-int v4, v42, v4

    not-int v4, v4

    or-int/2addr v3, v4

    not-int v2, v2

    xor-int v4, v3, v2

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    mul-int/lit16 v2, v2, 0x388

    add-int v43, v43, v2

    goto :goto_19

    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v3, v3

    mul-int/lit16 v4, v2, 0x11c

    add-int/lit16 v4, v4, -0x69c0

    move/from16 v42, v3

    not-int v3, v2

    move/from16 v43, v3

    or-int/lit8 v3, v43, 0x60

    not-int v3, v3

    move/from16 v44, v3

    not-int v3, v2

    xor-int v45, v3, v42

    and-int v3, v3, v42

    or-int v3, v45, v3

    not-int v3, v3

    or-int v3, v44, v3

    mul-int/lit16 v3, v3, -0x11b

    neg-int v3, v3

    neg-int v3, v3

    not-int v3, v3

    sub-int/2addr v4, v3

    const/16 v34, 0x1

    add-int/lit8 v4, v4, -0x1

    const/16 v3, -0x61

    xor-int v44, v3, v2

    and-int/2addr v2, v3

    or-int v2, v44, v2

    not-int v2, v2

    mul-int/lit16 v2, v2, 0x11b

    or-int v3, v4, v2

    shl-int/lit8 v3, v3, 0x1

    xor-int/2addr v2, v4

    sub-int/2addr v3, v2

    xor-int/lit8 v2, v43, -0x61

    and-int/lit8 v4, v43, -0x61

    or-int/2addr v2, v4

    xor-int v4, v2, v42

    and-int v2, v2, v42

    or-int/2addr v2, v4

    not-int v2, v2

    mul-int/lit16 v2, v2, 0x11b

    neg-int v2, v2

    neg-int v2, v2

    and-int v4, v3, v2

    or-int/2addr v2, v3

    add-int v43, v4, v2

    :goto_19
    move/from16 v2, v43

    int-to-char v2, v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_1c
    move-object/from16 v39, v4

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x2000

    int-to-char v2, v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1a
    xor-int/lit8 v2, v41, 0x10

    and-int/lit8 v3, v41, 0x10

    const/16 v34, 0x1

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    and-int/lit8 v3, v2, -0xf

    or-int/lit8 v2, v2, -0xf

    add-int/2addr v3, v2

    move/from16 v2, v38

    move-object/from16 v4, v39

    const/16 v39, 0x1

    goto/16 :goto_18

    :cond_1d
    move-object/from16 v39, v4

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    if-nez v39, :cond_1f

    .line 0
    sget v3, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    add-int/lit8 v3, v3, 0x51

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/lit8 v3, v3, 0x2

    move/from16 v3, v33

    .line 4000
    :try_start_23
    new-array v4, v3, [Ljava/lang/Object;

    const/16 v34, 0x1

    aput-object v2, v4, v34

    aput-object v0, v4, v24

    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v3, v2, v21

    int-to-byte v3, v3

    aget-byte v15, v2, v20

    int-to-byte v15, v15

    invoke-static {v3, v15, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v38, v1

    const/4 v15, 0x2

    new-array v1, v15, [Ljava/lang/Class;

    aget-byte v15, v2, v21

    int-to-byte v15, v15

    aget-byte v2, v2, v20

    int-to-byte v2, v2

    invoke-static {v15, v2, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v24

    const-class v2, Ljava/lang/String;

    const/16 v34, 0x1

    aput-object v2, v1, v34

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    move-object v4, v1

    move-object/from16 v41, v5

    move/from16 v42, v6

    :goto_1b
    move-object/from16 v3, v40

    goto/16 :goto_1d

    :catchall_6
    move-exception v0

    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1e

    throw v1

    :cond_1e
    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    :cond_1f
    move-object/from16 v38, v1

    if-nez v8, :cond_21

    const/4 v3, 0x2

    :try_start_25
    new-array v1, v3, [Ljava/lang/Object;

    const/16 v34, 0x1

    aput-object v2, v1, v34

    aput-object v0, v1, v24

    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v3, v2, v21

    int-to-byte v3, v3

    aget-byte v4, v2, v20

    int-to-byte v4, v4

    invoke-static {v3, v4, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v15, 0x2

    new-array v4, v15, [Ljava/lang/Class;

    aget-byte v8, v2, v21

    int-to-byte v8, v8

    aget-byte v2, v2, v20

    int-to-byte v2, v2

    invoke-static {v8, v2, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v4, v24

    const-class v2, Ljava/lang/String;

    const/16 v34, 0x1

    aput-object v2, v4, v34

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    move-object v8, v1

    :goto_1c
    move-object/from16 v41, v5

    move/from16 v42, v6

    move-object/from16 v4, v39

    goto :goto_1b

    :catchall_7
    move-exception v0

    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_20

    throw v1

    :cond_20
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    :cond_21
    if-nez v10, :cond_23

    .line 0
    sget v1, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    xor-int/lit8 v3, v1, 0x11

    and-int/lit8 v1, v1, 0x11

    const/16 v34, 0x1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    const/4 v15, 0x2

    rem-int/2addr v3, v15

    .line 4000
    :try_start_27
    new-array v1, v15, [Ljava/lang/Object;

    aput-object v2, v1, v34

    aput-object v0, v1, v24

    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v3, v2, v21

    int-to-byte v3, v3

    aget-byte v4, v2, v20

    int-to-byte v4, v4

    invoke-static {v3, v4, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v15, 0x2

    new-array v4, v15, [Ljava/lang/Class;

    aget-byte v10, v2, v21

    int-to-byte v10, v10

    aget-byte v2, v2, v20

    int-to-byte v2, v2

    invoke-static {v10, v2, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v4, v24

    const-class v2, Ljava/lang/String;

    const/16 v34, 0x1

    aput-object v2, v4, v34

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    move-object v10, v1

    goto :goto_1c

    :catchall_8
    move-exception v0

    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_22

    throw v1

    :cond_22
    throw v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    :cond_23
    const/4 v15, 0x2

    :try_start_29
    new-array v1, v15, [Ljava/lang/Object;

    const/16 v34, 0x1

    aput-object v2, v1, v34

    aput-object v0, v1, v24

    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v3, v2, v21

    int-to-byte v3, v3

    aget-byte v4, v2, v20

    int-to-byte v4, v4

    invoke-static {v3, v4, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v15, 0x2

    new-array v4, v15, [Ljava/lang/Class;

    aget-byte v15, v2, v21

    int-to-byte v15, v15

    move-object/from16 v40, v2

    aget-byte v2, v40, v20

    int-to-byte v2, v2

    invoke-static {v15, v2, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v4, v24

    const-class v2, Ljava/lang/String;

    const/16 v34, 0x1

    aput-object v2, v4, v34

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    .line 0
    sget v2, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    const/16 v33, 0x2

    rem-int/lit8 v2, v2, 0x2

    .line 4000
    :try_start_2a
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    aget-byte v3, v40, v21

    int-to-byte v3, v3

    const/16 v4, 0x5b

    aget-byte v4, v40, v4

    int-to-byte v4, v4

    const/16 v15, 0x145

    int-to-short v15, v15

    invoke-static {v3, v4, v15}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    move-object/from16 v41, v5

    const/4 v4, 0x1

    :try_start_2b
    new-array v5, v4, [Ljava/lang/Class;

    aget-byte v4, v40, v21
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    int-to-byte v4, v4

    move/from16 v42, v6

    :try_start_2c
    aget-byte v6, v40, v20

    int-to-byte v6, v6

    invoke-static {v4, v6, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v5, v24

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_a

    :try_start_2d
    aget-byte v3, v40, v21

    int-to-byte v3, v3

    const/16 v4, 0x5b

    aget-byte v4, v40, v4

    int-to-byte v4, v4

    invoke-static {v3, v4, v15}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v40, v18

    int-to-byte v4, v4

    aget-byte v5, v40, v30

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x158

    and-int/lit16 v15, v5, 0x158

    or-int/2addr v6, v15

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    move-object v3, v1

    move-object/from16 v4, v39

    :goto_1d
    move-object/from16 v2, v37

    move-object/from16 v1, v38

    move-object/from16 v5, v41

    move/from16 v6, v42

    const/16 v33, 0x2

    goto/16 :goto_16

    :catchall_9
    move-exception v0

    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_24

    throw v2

    :cond_24
    throw v0

    :catchall_a
    move-exception v0

    goto :goto_1f

    :catchall_b
    move-exception v0

    goto :goto_1e

    :catchall_c
    move-exception v0

    move-object/from16 v41, v5

    :goto_1e
    move/from16 v42, v6

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_25

    throw v2

    :cond_25
    throw v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_c
    .catchall {:try_start_2e .. :try_end_2e} :catchall_4b

    :catch_c
    move-exception v0

    :try_start_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    const/16 v4, 0x67

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    aget-byte v5, v3, v30

    int-to-byte v5, v5

    const/16 v6, 0x160

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e0

    aget-byte v2, v3, v2

    xor-int/lit8 v4, v2, -0x1

    const/16 v34, 0x1

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v4, v2

    int-to-byte v2, v4

    aget-byte v4, v3, v23

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0x123

    and-int/lit16 v6, v4, 0x123

    or-int/2addr v5, v6

    int-to-short v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_4b

    const/4 v15, 0x2

    :try_start_30
    new-array v2, v15, [Ljava/lang/Object;

    const/16 v34, 0x1

    aput-object v0, v2, v34

    aput-object v1, v2, v24

    aget-byte v0, v3, v21

    int-to-byte v0, v0

    aget-byte v1, v3, v29

    int-to-byte v1, v1

    sget v3, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    or-int/lit16 v3, v3, 0x101

    int-to-short v3, v3

    invoke-static {v0, v1, v3}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v15, 0x2

    new-array v1, v15, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v24

    const-class v3, Ljava/lang/Throwable;

    const/16 v34, 0x1

    aput-object v3, v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_d

    :catchall_d
    move-exception v0

    :try_start_31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_26

    throw v1

    :cond_26
    throw v0

    :catchall_e
    move-exception v0

    move-object/from16 v41, v5

    move/from16 v42, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_27

    throw v1

    :cond_27
    throw v0

    :catchall_f
    move-exception v0

    goto :goto_21

    :cond_28
    move-object/from16 v40, v3

    move-object/from16 v39, v4

    move-object v1, v8

    move-object/from16 v8, v39

    goto :goto_22

    :catchall_10
    move-exception v0

    move-object/from16 v37, v2

    move-object/from16 v41, v5

    move/from16 v42, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_29

    throw v1

    :cond_29
    throw v0

    :catchall_11
    move-exception v0

    :goto_20
    move-object/from16 v37, v2

    :goto_21
    move-object/from16 v41, v5

    move/from16 v42, v6

    goto/16 :goto_4c

    :cond_2a
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v40, 0x0

    :goto_22
    move-object/from16 v37, v2

    move-object/from16 v41, v5

    move/from16 v42, v6

    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    const/16 v2, 0x2a3

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    const/16 v3, 0x66

    aget-byte v3, v0, v3

    neg-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x164

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/appsflyer/internal/AFa1jSDK;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_4b

    :try_start_32
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    const-class v5, Ljava/lang/Class;

    aget-byte v6, v0, v22

    int-to-byte v6, v6

    aget-byte v15, v0, v19

    int-to-byte v15, v15

    move-object/from16 v28, v1

    const/16 v1, 0x194

    int-to-short v1, v1

    invoke-static {v6, v15, v1}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    new-array v15, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v15, v24

    invoke-virtual {v5, v1, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_49

    :try_start_33
    aget-byte v3, v0, v21

    int-to-byte v3, v3

    aget-byte v4, v0, v20

    int-to-byte v4, v4

    const/16 v5, 0x19e

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v0, v22

    int-to-byte v4, v4

    const/16 v5, 0x17

    aget-byte v5, v0, v5

    int-to-byte v5, v5

    const/16 v6, 0x1a9

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_48

    :try_start_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x56

    int-to-byte v4, v4

    aget-byte v5, v0, v23

    int-to-byte v5, v5

    or-int/lit16 v6, v5, 0x1af

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_4b

    const/16 v1, 0x2136

    :try_start_35
    new-array v1, v1, [B

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_46

    :try_start_36
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    aget-byte v4, v0, v21

    int-to-byte v4, v4

    const/16 v5, 0x263

    aget-byte v5, v0, v5

    int-to-byte v5, v5

    sget v6, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    xor-int/lit16 v15, v6, 0x18d

    and-int/lit16 v6, v6, 0x18d

    or-int/2addr v6, v15

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    aget-byte v6, v0, v21

    int-to-byte v6, v6

    aget-byte v15, v0, v29

    int-to-byte v15, v15

    move-object/from16 v38, v1

    const/16 v1, 0x1c9

    int-to-short v1, v1

    invoke-static {v6, v15, v1}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v24

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_44

    :try_start_37
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    aget-byte v4, v0, v21

    int-to-byte v4, v4

    aget-byte v5, v0, v16

    int-to-byte v5, v5

    const/16 v6, 0x1db

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v15, v5, [Ljava/lang/Class;

    aget-byte v5, v0, v21
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_43

    int-to-byte v5, v5

    move-object/from16 v39, v7

    :try_start_38
    aget-byte v7, v0, v29

    int-to-byte v7, v7

    invoke-static {v5, v7, v1}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v15, v24

    invoke-virtual {v4, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_42

    :try_start_39
    filled-new-array/range {v38 .. v38}, [Ljava/lang/Object;

    move-result-object v2

    aget-byte v4, v0, v21

    int-to-byte v4, v4

    aget-byte v5, v0, v16

    int-to-byte v5, v5

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v5, v0, v17

    int-to-byte v5, v5

    aget-byte v7, v0, v24

    int-to-byte v7, v7

    const/16 v15, 0x1f1

    int-to-short v15, v15

    invoke-static {v5, v7, v15}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v15, v7, [Ljava/lang/Class;

    aput-object v36, v15, v24

    invoke-virtual {v4, v5, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_41

    :try_start_3a
    aget-byte v2, v0, v21

    int-to-byte v2, v2

    aget-byte v4, v0, v16

    int-to-byte v4, v4

    invoke-static {v2, v4, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v4, v0, v18

    int-to-byte v4, v4

    aget-byte v0, v0, v30

    int-to-byte v0, v0

    xor-int/lit16 v5, v0, 0x158

    and-int/lit16 v6, v0, 0x158

    or-int/2addr v5, v6

    int-to-short v5, v5

    invoke-static {v4, v0, v5}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_40

    const/16 v0, 0x16

    const/16 v1, 0x2108

    move v2, v1

    move-object v15, v8

    move-object/from16 v5, v41

    const/4 v4, 0x0

    move v1, v0

    move-object/from16 v0, v38

    :goto_23
    const/4 v6, 0x1

    int-to-long v7, v6

    .line 5000
    :try_start_3b
    array-length v6, v0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_3f

    move/from16 v38, v2

    move/from16 v2, v24

    :goto_24
    if-ge v2, v6, :cond_2b

    move/from16 v43, v2

    :try_start_3c
    aget-byte v2, v0, v43
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_12

    move/from16 v44, v6

    move-wide/from16 v45, v7

    int-to-long v6, v2

    shl-long v47, v45, v25

    add-long v6, v6, v47

    shl-long v47, v45, v30

    add-long v6, v6, v47

    sub-long v7, v6, v45

    or-int/lit8 v2, v43, -0x15

    const/16 v34, 0x1

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v6, v43, -0x15

    sub-int/2addr v2, v6

    and-int/lit8 v6, v2, 0x16

    or-int/lit8 v2, v2, 0x16

    add-int/2addr v2, v6

    move/from16 v6, v44

    goto :goto_24

    :catchall_12
    move-exception v0

    move-object v1, v0

    move-object v4, v3

    move-object/from16 v44, v9

    :goto_25
    move-object/from16 v46, v11

    move/from16 v49, v12

    move/from16 v50, v13

    move/from16 v38, v14

    goto/16 :goto_4a

    :cond_2b
    move-wide/from16 v45, v7

    add-int/lit8 v2, v1, 0x6a

    .line 4000
    :try_start_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    mul-int/lit16 v7, v1, -0xd1

    neg-int v7, v7

    neg-int v7, v7

    const v8, -0x1b0a4f

    or-int v43, v8, v7

    const/16 v34, 0x1

    shl-int/lit8 v43, v43, 0x1

    xor-int/2addr v7, v8

    sub-int v43, v43, v7

    not-int v7, v1

    const/16 v8, -0x2120

    xor-int v44, v8, v7

    and-int v47, v8, v7

    move/from16 v48, v8

    or-int v8, v44, v47

    not-int v8, v8

    mul-int/lit16 v8, v8, 0xd2

    neg-int v8, v8

    neg-int v8, v8

    and-int v44, v43, v8

    or-int v8, v43, v8

    add-int v44, v44, v8

    not-int v8, v1

    move/from16 v43, v2

    not-int v2, v6

    xor-int v47, v8, v2

    and-int/2addr v8, v2

    or-int v8, v47, v8

    not-int v8, v8

    const/16 v47, -0x2120

    xor-int v49, v47, v6

    and-int v47, v47, v6

    move/from16 v50, v2

    or-int v2, v49, v47

    not-int v2, v2

    xor-int v47, v8, v2

    and-int/2addr v2, v8

    or-int v2, v47, v2

    mul-int/lit16 v2, v2, 0xd2

    xor-int v8, v44, v2

    and-int v2, v44, v2

    const/16 v34, 0x1

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v8, v2

    or-int v2, v48, v50

    xor-int v44, v2, v1

    and-int/2addr v2, v1

    or-int v2, v44, v2

    not-int v2, v2

    or-int/lit16 v7, v7, 0x211f

    xor-int v44, v7, v6

    and-int/2addr v6, v7

    or-int v6, v44, v6

    not-int v6, v6

    xor-int v7, v2, v6

    and-int/2addr v2, v6

    or-int/2addr v2, v7

    mul-int/lit16 v2, v2, 0xd2

    neg-int v2, v2

    neg-int v2, v2

    not-int v2, v2

    sub-int/2addr v8, v2

    const/16 v34, 0x1

    add-int/lit8 v8, v8, -0x1

    aget-byte v2, v0, v8

    add-int/lit8 v2, v2, 0x6f

    int-to-byte v2, v2

    aput-byte v2, v0, v43

    array-length v2, v0

    neg-int v6, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_3f

    long-to-int v7, v7

    mul-int/lit16 v8, v6, -0x1ee

    move/from16 v43, v1

    mul-int/lit16 v1, v2, -0x1ee

    and-int v44, v8, v1

    or-int/2addr v1, v8

    add-int v44, v44, v1

    xor-int v1, v6, v2

    and-int v8, v6, v2

    or-int/2addr v1, v8

    not-int v1, v1

    mul-int/lit16 v1, v1, -0x1ef

    neg-int v1, v1

    neg-int v1, v1

    and-int v8, v44, v1

    or-int v1, v44, v1

    add-int/2addr v8, v1

    not-int v1, v7

    or-int v7, v6, v1

    mul-int/lit16 v7, v7, 0x1ef

    add-int/2addr v8, v7

    not-int v7, v6

    not-int v2, v2

    or-int/2addr v2, v7

    not-int v2, v2

    xor-int v7, v1, v6

    and-int/2addr v1, v6

    or-int/2addr v1, v7

    not-int v1, v1

    or-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x1ef

    or-int v2, v8, v1

    const/16 v34, 0x1

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v1, v8

    sub-int/2addr v2, v1

    const/4 v1, 0x3

    :try_start_3e
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v33, 0x2

    aput-object v1, v6, v33

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v34, 0x1

    aput-object v1, v6, v34

    aput-object v0, v6, v24

    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v1, v0, v21

    int-to-byte v1, v1

    const/16 v2, 0xcd

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    const/16 v7, 0x1f9

    int-to-short v7, v7

    invoke-static {v1, v2, v7}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/Class;

    aput-object v36, v7, v24

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v34, 0x1

    aput-object v2, v7, v34

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v33, 0x2

    aput-object v2, v7, v33

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_3e

    :try_start_3f
    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->w:Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_3f

    const/16 v6, 0x20

    if-nez v2, :cond_2d

    :try_start_40
    sput-wide v45, Lcom/appsflyer/internal/AFa1jSDK;->v:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v7

    shr-long/2addr v7, v6

    const-wide v47, -0xf1f3dde92428005L    # -5.328404275961368E235

    sub-long v47, v47, v7

    xor-long v7, v45, v47

    long-to-int v2, v7

    move/from16 v7, v24

    invoke-static {v7, v7}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v44

    const-wide/16 v7, 0x0

    cmp-long v7, v44, v7

    neg-int v7, v7

    not-int v7, v7

    const/16 v31, 0x5

    rsub-int/lit8 v7, v7, 0x5

    int-to-byte v7, v7

    sget-wide v44, Lcom/appsflyer/internal/AFa1jSDK;->v:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v46

    const/16 v8, 0x3c

    shr-long v46, v46, v8

    const-wide v48, -0xf1f3ddee7c1f452L    # -5.328402655636814E235

    sub-long v48, v48, v46

    move v8, v6

    move/from16 v46, v7

    xor-long v6, v44, v48

    long-to-int v6, v6

    new-array v6, v6, [I

    const-string v7, ""

    invoke-static {v7}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v7
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_15

    neg-int v7, v7

    move/from16 v47, v8

    move-object/from16 v44, v9

    :try_start_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v8, v8

    mul-int/lit16 v9, v7, 0x3a6

    move-object/from16 v48, v1

    and-int/lit16 v1, v9, 0x3a4

    or-int/lit16 v9, v9, 0x3a4

    add-int/2addr v1, v9

    not-int v9, v7

    move/from16 v45, v1

    not-int v1, v8

    xor-int v49, v9, v1

    and-int/2addr v1, v9

    or-int v1, v49, v1

    not-int v1, v1

    mul-int/lit16 v1, v1, -0x3a5

    or-int v49, v45, v1

    const/16 v34, 0x1

    shl-int/lit8 v49, v49, 0x1

    xor-int v1, v45, v1

    sub-int v49, v49, v1

    not-int v1, v8

    not-int v1, v1

    not-int v8, v7

    xor-int v45, v1, v8

    and-int/2addr v1, v8

    or-int v1, v45, v1

    mul-int/lit16 v1, v1, 0x3a5

    add-int v49, v49, v1

    or-int v1, v9, v7

    not-int v1, v1

    mul-int/lit16 v1, v1, 0x3a5

    neg-int v1, v1

    neg-int v1, v1

    or-int v7, v49, v1

    const/16 v34, 0x1

    shl-int/lit8 v7, v7, 0x1

    xor-int v1, v49, v1

    sub-int/2addr v7, v1

    sget-wide v8, Lcom/appsflyer/internal/AFa1jSDK;->afDebugLog:J

    sget-wide v49, Lcom/appsflyer/internal/AFa1jSDK;->v:J

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v51

    const/16 v1, 0x30

    shr-long v51, v51, v1

    const-wide v53, -0xf1f3ddee7c1f474L    # -5.328402655636775E235

    add-long v51, v51, v53

    move-object v1, v6

    move/from16 v45, v7

    xor-long v6, v49, v51

    long-to-int v6, v6

    int-to-byte v6, v6

    ushr-long v6, v8, v6

    long-to-int v6, v6

    xor-int/2addr v6, v2

    aput v6, v1, v45

    sget-wide v6, Lcom/appsflyer/internal/AFa1jSDK;->v:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    const/16 v45, 0x30

    shr-long v8, v8, v45

    const-wide v49, -0xf1f3ddee7c1f453L    # -5.328402655636812E235

    sub-long v49, v49, v8

    xor-long v6, v6, v49

    long-to-int v6, v6

    sget-wide v7, Lcom/appsflyer/internal/AFa1jSDK;->afDebugLog:J

    long-to-int v7, v7

    not-int v8, v2

    and-int/2addr v8, v7

    not-int v7, v7

    and-int/2addr v2, v7

    or-int/2addr v2, v8

    aput v2, v1, v6

    sget v2, Lcom/appsflyer/internal/AFa1jSDK;->afRDLog:I

    sget-object v6, Lcom/appsflyer/internal/AFa1jSDK;->afErrorLogForExcManagerOnly:[B

    sget v7, Lcom/appsflyer/internal/AFa1jSDK;->afWarnLog:I
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_14

    .line 0
    sget v8, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    add-int/lit8 v8, v8, 0xd

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    const/16 v33, 0x2

    rem-int/lit8 v8, v8, 0x2

    move/from16 v8, v25

    .line 4000
    :try_start_42
    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v31, 0x5

    aput-object v7, v9, v31

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v22

    const/16 v26, 0x3

    aput-object v6, v9, v26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v33, 0x2

    aput-object v2, v9, v33

    const/16 v34, 0x1

    aput-object v1, v9, v34

    const/16 v24, 0x0

    aput-object v48, v9, v24

    aget-byte v1, v0, v18

    int-to-byte v1, v1

    const/16 v2, 0x33

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    const/16 v6, 0x214

    int-to-short v6, v6

    invoke-static {v1, v2, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v8, 0x6

    new-array v2, v8, [Ljava/lang/Class;

    aget-byte v6, v0, v21

    int-to-byte v6, v6

    aget-byte v7, v0, v29

    int-to-byte v7, v7

    const/16 v8, 0x1c9

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v24, 0x0

    aput-object v6, v2, v24

    const-class v6, [I

    const/16 v34, 0x1

    aput-object v6, v2, v34

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v33, 0x2

    aput-object v6, v2, v33

    const/16 v26, 0x3

    aput-object v36, v2, v26

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v22

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v31, 0x5

    aput-object v6, v2, v31

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_13

    move-object/from16 v45, v10

    move-object/from16 v46, v11

    goto/16 :goto_27

    :catchall_13
    move-exception v0

    :try_start_43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2c

    throw v1

    :cond_2c
    throw v0
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_14

    :catchall_14
    move-exception v0

    goto :goto_26

    :catchall_15
    move-exception v0

    move-object/from16 v44, v9

    :goto_26
    move-object v1, v0

    move-object v4, v3

    goto/16 :goto_25

    :cond_2d
    move-object/from16 v48, v1

    move/from16 v47, v6

    move-object/from16 v44, v9

    :try_start_44
    sput-wide v45, Lcom/appsflyer/internal/AFa1jSDK;->force:J

    const-string v1, ""

    const/16 v6, 0x30

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    neg-int v1, v1

    neg-int v1, v1

    or-int/lit8 v6, v1, 0x5

    const/16 v34, 0x1

    shl-int/lit8 v6, v6, 0x1

    const/16 v31, 0x5

    xor-int/lit8 v1, v1, 0x5

    sub-int/2addr v6, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    const v7, -0x3fe7f09

    add-int/2addr v1, v7

    sget-wide v7, Lcom/appsflyer/internal/AFa1jSDK;->force:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v45
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_3d

    const/16 v9, 0x3c

    shr-long v45, v45, v9

    const-wide v49, -0x32f272510610b1cbL    # -1.5196980811130458E63

    add-long v45, v45, v49

    xor-long v7, v7, v45

    long-to-int v7, v7

    move/from16 v8, v22

    :try_start_45
    new-array v9, v8, [Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_3c

    :try_start_46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v26, 0x3

    aput-object v7, v9, v26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v33, 0x2

    aput-object v1, v9, v33

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/16 v34, 0x1

    aput-object v1, v9, v34

    const/16 v24, 0x0

    aput-object v48, v9, v24

    aget-byte v1, v0, v18

    int-to-byte v1, v1

    const/16 v6, 0x1e8

    aget-byte v6, v0, v6

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x212

    and-int/lit16 v8, v6, 0x212

    or-int/2addr v7, v8

    int-to-short v7, v7

    invoke-static {v1, v6, v7}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/appsflyer/internal/AFa1jSDK;->i:Ljava/lang/Object;

    check-cast v6, Ljava/lang/ClassLoader;

    const/4 v7, 0x1

    invoke-static {v1, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_3b

    const/16 v22, 0x4

    :try_start_47
    aget-byte v6, v0, v22
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_3a

    int-to-byte v6, v6

    :try_start_48
    aget-byte v7, v0, v29

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x240

    move/from16 v45, v8

    and-int/lit16 v8, v7, 0x240

    or-int v8, v45, v8

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_3b

    const/4 v8, 0x4

    :try_start_49
    new-array v7, v8, [Ljava/lang/Class;
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_3c

    :try_start_4a
    aget-byte v8, v0, v21

    int-to-byte v8, v8

    move-object/from16 v45, v10

    aget-byte v10, v0, v29
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_3b

    int-to-byte v10, v10

    move-object/from16 v46, v11

    const/16 v11, 0x1c9

    int-to-short v11, v11

    :try_start_4b
    invoke-static {v8, v10, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v24, 0x0

    aput-object v8, v7, v24

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v34, 0x1

    aput-object v8, v7, v34

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v33, 0x2

    aput-object v8, v7, v33

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x3

    aput-object v8, v7, v26

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_39

    :goto_27
    :try_start_4c
    aget-byte v2, v0, v21

    int-to-byte v2, v2

    aget-byte v6, v0, v29

    int-to-byte v6, v6

    const/16 v7, 0x1c9

    int-to-short v7, v7

    invoke-static {v2, v6, v7}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v6, v0, v30

    int-to-byte v6, v6

    aget-byte v8, v0, v47

    int-to-byte v8, v8

    const/16 v9, 0x264

    int-to-short v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v8, v9, v24

    invoke-virtual {v2, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/16 v6, 0x11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_38

    if-eqz v27, :cond_3e

    .line 0
    sget v6, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    and-int/lit8 v8, v6, 0x1b

    or-int/lit8 v6, v6, 0x1b

    add-int/2addr v8, v6

    rem-int/lit16 v6, v8, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    const/16 v33, 0x2

    rem-int/lit8 v8, v8, 0x2

    .line 4000
    :try_start_4d
    sget-object v6, Lcom/appsflyer/internal/AFa1jSDK;->w:Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_24

    if-nez v6, :cond_2e

    .line 0
    rem-int v8, v33, v33

    move-object v8, v15

    goto :goto_28

    :cond_2e
    move-object/from16 v8, v28

    :goto_28
    if-nez v6, :cond_2f

    move-object/from16 v6, v45

    goto :goto_29

    :cond_2f
    move-object/from16 v6, v40

    .line 6000
    :goto_29
    :try_start_4e
    aget-byte v9, v0, v21

    int-to-byte v9, v9

    aget-byte v10, v0, v29

    int-to-byte v10, v10

    invoke-static {v9, v10, v7}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aget-byte v10, v0, v17

    int-to-byte v10, v10

    aget-byte v11, v0, v47

    int-to-byte v11, v11

    const/16 v48, 0x12

    xor-int/lit16 v2, v11, 0x264

    move/from16 v49, v2

    and-int/lit16 v2, v11, 0x264

    or-int v2, v49, v2

    int-to-short v2, v2

    invoke-static {v10, v11, v2}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v36, v11, v24

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v34, 0x1

    aput-object v10, v11, v34

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v33, 0x2

    aput-object v10, v11, v33

    invoke-virtual {v9, v2, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    aget-byte v9, v0, v21

    int-to-byte v9, v9

    const/16 v10, 0x5b

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    const/16 v11, 0x145

    int-to-short v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_24

    const/4 v10, 0x1

    :try_start_4f
    new-array v11, v10, [Ljava/lang/Class;

    aget-byte v10, v0, v21
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_1e

    int-to-byte v10, v10

    move/from16 v49, v12

    :try_start_50
    aget-byte v12, v0, v20

    int-to-byte v12, v12

    invoke-static {v10, v12, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v24, 0x0

    aput-object v10, v11, v24

    invoke-virtual {v9, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_e
    .catchall {:try_start_50 .. :try_end_50} :catchall_1d

    if-eqz v42, :cond_31

    .line 0
    sget v11, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    or-int/lit8 v12, v11, 0x4f

    const/16 v34, 0x1

    shl-int/lit8 v12, v12, 0x1

    xor-int/lit8 v11, v11, 0x4f

    sub-int/2addr v12, v11

    rem-int/lit16 v11, v12, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    const/16 v33, 0x2

    rem-int/lit8 v12, v12, 0x2

    .line 6000
    :try_start_51
    aget-byte v11, v0, v21

    int-to-byte v11, v11

    aget-byte v12, v0, v20

    int-to-byte v12, v12

    invoke-static {v11, v12, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aget-byte v12, v0, v30
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_17

    int-to-byte v12, v12

    move/from16 v50, v13

    :try_start_52
    aget-byte v13, v0, v19

    int-to-byte v13, v13

    move-object/from16 v51, v15

    or-int/lit16 v15, v13, 0x260

    int-to-short v15, v15

    invoke-static {v12, v13, v15}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_16

    goto :goto_2b

    :catchall_16
    move-exception v0

    goto :goto_2a

    :catchall_17
    move-exception v0

    move/from16 v50, v13

    :goto_2a
    :try_start_53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_30

    throw v1

    :cond_30
    throw v0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_d
    .catchall {:try_start_53 .. :try_end_53} :catchall_20

    :catch_d
    move-exception v0

    goto/16 :goto_32

    :cond_31
    move/from16 v50, v13

    move-object/from16 v51, v15

    :goto_2b
    const/16 v11, 0x400

    :try_start_54
    new-array v12, v11, [B

    aget-byte v13, v0, v23

    int-to-byte v13, v13

    aget-byte v0, v0, v30

    int-to-byte v0, v0

    const/16 v15, 0x278

    int-to-short v15, v15

    invoke-static {v13, v0, v15}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x3

    new-array v15, v13, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v36, v15, v24

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v34, 0x1

    aput-object v13, v15, v34

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v33, 0x2

    aput-object v13, v15, v33

    invoke-virtual {v9, v0, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_20

    move/from16 v13, v38

    :goto_2c
    if-lez v13, :cond_33

    .line 0
    sget v15, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    or-int/lit8 v38, v15, 0x19

    const/16 v34, 0x1

    shl-int/lit8 v38, v38, 0x1

    xor-int/lit8 v15, v15, 0x19

    sub-int v15, v38, v15

    rem-int/lit16 v11, v15, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    const/16 v33, 0x2

    rem-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_32

    const/4 v11, 0x5

    :try_start_55
    new-array v15, v11, [Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v12, v15, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v34, 0x1

    aput-object v31, v15, v34

    const/16 v11, 0x400

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v33, 0x2

    aput-object v11, v15, v33

    invoke-virtual {v2, v1, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v15, v32

    if-eq v11, v15, :cond_33

    goto :goto_2d

    :cond_32
    const/16 v24, 0x0

    .line 6000
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v15, 0x400

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v12, v11, v15}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v15, -0x1

    if-eq v11, v15, :cond_33

    :goto_2d
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v38, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v12, v15, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    neg-int v1, v11

    move-object v15, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    mul-int/lit8 v12, v1, 0x32

    mul-int/lit8 v53, v13, -0x61

    xor-int v54, v12, v53

    and-int v12, v12, v53

    const/16 v34, 0x1

    shl-int/lit8 v12, v12, 0x1

    add-int v54, v54, v12

    not-int v12, v13

    move-object/from16 v53, v2

    not-int v2, v11

    xor-int v55, v12, v2

    and-int/2addr v2, v12

    or-int v2, v55, v2

    not-int v2, v2

    xor-int v55, v12, v1

    and-int/2addr v12, v1

    or-int v12, v55, v12

    not-int v12, v12

    or-int/2addr v2, v12

    mul-int/lit8 v2, v2, 0x62

    neg-int v2, v2

    neg-int v2, v2

    or-int v12, v54, v2

    const/16 v34, 0x1

    shl-int/lit8 v12, v12, 0x1

    xor-int v2, v54, v2

    sub-int/2addr v12, v2

    not-int v2, v13

    move/from16 v54, v2

    not-int v2, v1

    move/from16 v55, v1

    not-int v1, v11

    xor-int v56, v2, v1

    and-int/2addr v1, v2

    or-int v1, v56, v1

    not-int v1, v1

    xor-int v2, v54, v1

    and-int v1, v54, v1

    or-int/2addr v1, v2

    xor-int v2, v55, v11

    and-int v56, v55, v11

    or-int v2, v2, v56

    not-int v2, v2

    xor-int v56, v1, v2

    and-int/2addr v1, v2

    or-int v1, v56, v1

    mul-int/lit8 v1, v1, -0x31

    neg-int v1, v1

    neg-int v1, v1

    not-int v1, v1

    sub-int/2addr v12, v1

    const/16 v34, 0x1

    add-int/lit8 v12, v12, -0x1

    or-int v1, v54, v11

    not-int v1, v1

    xor-int v2, v55, v13

    and-int v11, v55, v13

    or-int/2addr v2, v11

    not-int v2, v2

    xor-int v11, v1, v2

    and-int/2addr v1, v2

    or-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x31

    add-int v13, v12, v1

    move-object v12, v15

    move-object/from16 v1, v38

    move-object/from16 v2, v53

    const/16 v11, 0x400

    const/16 v32, -0x1

    goto/16 :goto_2c

    :cond_33
    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    const/16 v22, 0x4

    aget-byte v1, v0, v22

    int-to-byte v1, v1

    aget-byte v2, v0, v30

    int-to-byte v2, v2

    xor-int/lit16 v11, v2, 0x278

    and-int/lit16 v12, v2, 0x278

    or-int/2addr v11, v12

    int-to-short v11, v11

    invoke-static {v1, v2, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v11, v2, [Ljava/lang/Class;

    invoke-virtual {v9, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aget-byte v2, v0, v21

    int-to-byte v2, v2

    const/16 v11, 0x31

    aget-byte v11, v0, v11

    int-to-byte v11, v11

    const/16 v12, 0x280

    int-to-short v12, v12

    invoke-static {v2, v11, v12}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v11, v0, v30

    int-to-byte v11, v11

    aget-byte v12, v0, v47

    int-to-byte v12, v12

    const/16 v13, 0x295

    int-to-short v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Class;

    invoke-virtual {v2, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    aget-byte v1, v0, v18

    int-to-byte v1, v1

    aget-byte v2, v0, v30

    int-to-byte v2, v2

    or-int/lit16 v11, v2, 0x158

    int-to-short v11, v11

    invoke-static {v1, v2, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v11, v2, [Ljava/lang/Class;

    invoke-virtual {v9, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    aget-byte v1, v0, v48

    int-to-byte v1, v1

    aget-byte v2, v0, v18

    int-to-byte v2, v2

    const/16 v9, 0x298

    int-to-short v9, v9

    invoke-static {v1, v2, v9}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aget-byte v2, v0, v20

    int-to-byte v2, v2

    const/16 v9, 0x17

    aget-byte v9, v0, v9

    int-to-byte v9, v9

    const/16 v10, 0x2ac

    int-to-short v10, v10

    invoke-static {v2, v9, v10}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x3

    new-array v9, v10, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    const/16 v24, 0x0

    aput-object v10, v9, v24

    const-class v10, Ljava/lang/String;

    const/16 v34, 0x1

    aput-object v10, v9, v34

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v33, 0x2

    aput-object v10, v9, v33

    invoke-virtual {v1, v2, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_20

    :try_start_56
    aget-byte v2, v0, v21

    int-to-byte v2, v2

    aget-byte v9, v0, v20

    int-to-byte v9, v9

    invoke-static {v2, v9, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v22, 0x4

    aget-byte v9, v0, v22

    int-to-byte v9, v9

    const/16 v10, 0xc

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    sget v11, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    or-int/lit16 v12, v11, 0x290

    int-to-short v12, v12

    invoke-static {v9, v10, v12}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v2, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_1c

    :try_start_57
    aget-byte v9, v0, v21

    int-to-byte v9, v9

    aget-byte v10, v0, v20

    int-to-byte v10, v10

    invoke-static {v9, v10, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v22, 0x4

    aget-byte v10, v0, v22

    int-to-byte v10, v10

    const/16 v12, 0xc

    aget-byte v12, v0, v12

    int-to-byte v12, v12

    or-int/lit16 v11, v11, 0x290

    int-to-short v11, v11

    invoke-static {v10, v12, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_1b

    const/16 v24, 0x0

    :try_start_58
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v2, v9, v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_20

    const/16 v33, 0x2

    .line 0
    rem-int v2, v33, v33

    .line 6000
    :try_start_59
    aget-byte v2, v0, v21

    int-to-byte v2, v2

    aget-byte v9, v0, v20

    int-to-byte v9, v9

    invoke-static {v2, v9, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v9, v0, v48

    int-to-byte v9, v9

    aget-byte v10, v0, v17

    int-to-byte v10, v10

    const/16 v11, 0x2c0

    int-to-short v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v2, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_1a

    :try_start_5a
    aget-byte v2, v0, v21

    int-to-byte v2, v2

    aget-byte v8, v0, v20

    int-to-byte v8, v8

    invoke-static {v2, v8, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v8, v0, v48

    int-to-byte v8, v8

    aget-byte v9, v0, v17

    int-to-byte v9, v9

    invoke-static {v8, v9, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    invoke-virtual {v2, v8, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_19

    :try_start_5b
    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->i:Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_23

    if-nez v2, :cond_36

    .line 0
    sget v2, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    add-int/lit8 v2, v2, 0x7

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    const/16 v33, 0x2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_34

    :try_start_5c
    const-class v2, Lcom/appsflyer/internal/AFa1jSDK;

    const/16 v6, 0x60

    const/16 v24, 0x0

    div-int/lit8 v6, v6, 0x0

    goto :goto_2e

    .line 6000
    :cond_34
    const-class v2, Lcom/appsflyer/internal/AFa1jSDK;
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_23

    :goto_2e
    :try_start_5d
    const-class v6, Ljava/lang/Class;

    const/16 v22, 0x4

    aget-byte v8, v0, v22

    int-to-byte v8, v8

    aget-byte v0, v0, v21

    int-to-byte v0, v0

    const/16 v9, 0x2c5

    int-to-short v9, v9

    invoke-static {v8, v0, v9}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v6, v0, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_18

    :try_start_5e
    sput-object v0, Lcom/appsflyer/internal/AFa1jSDK;->i:Ljava/lang/Object;

    goto :goto_2f

    :catchall_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_35

    throw v1

    :cond_35
    throw v0

    :cond_36
    :goto_2f
    move-object/from16 v52, v4

    move/from16 v38, v14

    move-object v4, v3

    goto/16 :goto_3a

    :catchall_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_37

    throw v1

    :cond_37
    throw v0

    :catchall_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_38

    throw v1

    :cond_38
    throw v0
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_23

    :catchall_1b
    move-exception v0

    :try_start_5f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_39

    throw v1

    :cond_39
    throw v0

    :catchall_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3a

    throw v1

    :cond_3a
    throw v0

    :catchall_1d
    move-exception v0

    goto :goto_30

    :catch_e
    move-exception v0

    goto :goto_31

    :catchall_1e
    move-exception v0

    move/from16 v49, v12

    :goto_30
    move/from16 v50, v13

    goto/16 :goto_33

    :catch_f
    move-exception v0

    move/from16 v49, v12

    :goto_31
    move/from16 v50, v13

    :goto_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    const/16 v4, 0x67

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    aget-byte v5, v2, v30

    int-to-byte v5, v5

    or-int/lit16 v7, v5, 0x270

    int-to-short v7, v7

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x2e0

    aget-byte v4, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v5, v9

    mul-int/lit8 v7, v4, -0x31

    const/16 v9, -0x33

    add-int/2addr v9, v7

    xor-int/lit8 v7, v9, 0x32

    and-int/lit8 v9, v9, 0x32

    const/16 v34, 0x1

    shl-int/lit8 v9, v9, 0x1

    add-int/2addr v7, v9

    not-int v9, v4

    xor-int v10, v9, v5

    and-int v11, v9, v5

    or-int/2addr v10, v11

    not-int v10, v10

    not-int v4, v4

    not-int v5, v5

    xor-int v11, v4, v5

    and-int v12, v4, v5

    or-int/2addr v11, v12

    xor-int/lit8 v12, v11, -0x1

    or-int/2addr v11, v12

    not-int v11, v11

    xor-int v12, v10, v11

    and-int/2addr v10, v11

    or-int/2addr v10, v12

    mul-int/lit8 v10, v10, 0x32

    neg-int v10, v10

    neg-int v10, v10

    or-int v11, v7, v10

    const/16 v34, 0x1

    shl-int/lit8 v11, v11, 0x1

    xor-int/2addr v7, v10

    sub-int/2addr v11, v7

    xor-int v7, v4, v5

    and-int/2addr v4, v5

    or-int/2addr v4, v7

    not-int v4, v4

    xor-int/lit8 v5, v9, -0x1

    or-int/2addr v5, v9

    not-int v5, v5

    xor-int v7, v4, v5

    and-int/2addr v4, v5

    or-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x32

    neg-int v4, v4

    neg-int v4, v4

    not-int v4, v4

    sub-int/2addr v11, v4

    const/16 v34, 0x1

    add-int/lit8 v11, v11, -0x1

    int-to-byte v4, v11

    aget-byte v5, v2, v23

    int-to-byte v5, v5

    xor-int/lit16 v7, v5, 0x123

    and-int/lit16 v9, v5, 0x123

    or-int/2addr v7, v9

    int-to-short v7, v7

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_20

    const/4 v15, 0x2

    :try_start_60
    new-array v4, v15, [Ljava/lang/Object;

    const/16 v34, 0x1

    aput-object v0, v4, v34

    const/16 v24, 0x0

    aput-object v1, v4, v24

    aget-byte v0, v2, v21

    int-to-byte v0, v0

    aget-byte v1, v2, v29

    int-to-byte v1, v1

    sget v2, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    xor-int/lit16 v5, v2, 0x101

    and-int/lit16 v2, v2, 0x101

    or-int/2addr v2, v5

    int-to-short v2, v2

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v15, 0x2

    new-array v1, v15, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/16 v24, 0x0

    aput-object v2, v1, v24

    const-class v2, Ljava/lang/Throwable;

    const/16 v34, 0x1

    aput-object v2, v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_1f

    :catchall_1f
    move-exception v0

    :try_start_61
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3b

    throw v1

    :cond_3b
    throw v0
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_20

    :catchall_20
    move-exception v0

    :goto_33
    :try_start_62
    sget-object v1, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v2, v1, v21

    int-to-byte v2, v2

    aget-byte v4, v1, v20

    int-to-byte v4, v4

    invoke-static {v2, v4, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v4, v1, v48

    int-to-byte v4, v4

    aget-byte v5, v1, v17

    int-to-byte v5, v5

    const/16 v7, 0x2c0

    int-to-short v7, v7

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    invoke-virtual {v2, v4, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_22

    :try_start_63
    aget-byte v2, v1, v21

    int-to-byte v2, v2

    aget-byte v4, v1, v20

    int-to-byte v4, v4

    invoke-static {v2, v4, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v4, v1, v48

    int-to-byte v4, v4

    aget-byte v1, v1, v17

    int-to-byte v1, v1

    invoke-static {v4, v1, v7}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x0

    invoke-virtual {v2, v1, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_21

    :try_start_64
    throw v0

    :catchall_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3c

    throw v1

    :cond_3c
    throw v0

    :catchall_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3d

    throw v1

    :cond_3d
    throw v0
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_23

    :catchall_23
    move-exception v0

    goto :goto_34

    :catchall_24
    move-exception v0

    move/from16 v49, v12

    move/from16 v50, v13

    :goto_34
    move-object v1, v0

    move-object v4, v3

    move/from16 v38, v14

    :goto_35
    const/16 v22, 0x4

    goto/16 :goto_4a

    :cond_3e
    move-object/from16 v38, v1

    move/from16 v49, v12

    move/from16 v50, v13

    move-object/from16 v51, v15

    const/16 v48, 0x12

    .line 7000
    :try_start_65
    aget-byte v1, v0, v21

    int-to-byte v1, v1

    const/16 v2, 0xcd

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    const/16 v6, 0x2d2

    int-to-short v6, v6

    invoke-static {v1, v2, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aget-byte v2, v0, v21

    int-to-byte v2, v2

    aget-byte v6, v0, v29

    int-to-byte v6, v6

    invoke-static {v2, v6, v7}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v2, v8, v24

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    filled-new-array/range {v38 .. v38}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_37

    const/16 v22, 0x4

    :try_start_66
    aget-byte v8, v0, v22
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_36

    int-to-byte v8, v8

    :try_start_67
    aget-byte v9, v0, v20

    int-to-byte v9, v9

    const/16 v10, 0x2ed

    int-to-short v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    new-array v9, v12, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aget-byte v8, v0, v21

    int-to-byte v8, v8

    const/16 v9, 0x31

    aget-byte v9, v0, v9

    int-to-byte v9, v9

    const/16 v10, 0x2f8

    int-to-short v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_37

    const/16 v22, 0x4

    :try_start_68
    aget-byte v9, v0, v22
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_36

    int-to-byte v9, v9

    const/16 v10, 0x17

    :try_start_69
    aget-byte v10, v0, v10

    int-to-byte v10, v10

    const/16 v11, 0x30d

    int-to-short v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    new-array v10, v12, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    aget-byte v9, v0, v17

    int-to-byte v9, v9

    aget-byte v10, v0, v47

    int-to-byte v10, v10

    xor-int/lit16 v11, v10, 0x264

    and-int/lit16 v12, v10, 0x264

    or-int/2addr v11, v12

    int-to-short v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v36, v11, v24

    invoke-virtual {v2, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_37

    :try_start_6a
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    aget-byte v9, v0, v21

    int-to-byte v9, v9

    const/16 v10, 0x263

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    sget v11, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    xor-int/lit16 v12, v11, 0x18d

    and-int/lit16 v11, v11, 0x18d

    or-int/2addr v11, v12

    int-to-short v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    aget-byte v10, v0, v21

    int-to-byte v10, v10

    aget-byte v12, v0, v29

    int-to-byte v12, v12

    invoke-static {v10, v12, v7}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v24, 0x0

    aput-object v10, v11, v24

    invoke-virtual {v9, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_35

    :try_start_6b
    const-class v9, Lcom/appsflyer/internal/AFa1jSDK;
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_37

    const/16 v33, 0x2

    .line 0
    rem-int v10, v33, v33

    .line 7000
    :try_start_6c
    const-class v10, Ljava/lang/Class;
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_34

    const/16 v22, 0x4

    :try_start_6d
    aget-byte v11, v0, v22
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_33

    int-to-byte v11, v11

    :try_start_6e
    aget-byte v12, v0, v21

    int-to-byte v12, v12

    const/16 v13, 0x2c5

    int-to-short v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_34

    :try_start_6f
    aget-byte v10, v0, v21

    int-to-byte v10, v10

    const/16 v33, 0x2

    aget-byte v11, v0, v33

    int-to-byte v11, v11

    const/16 v12, 0x313

    int-to-short v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v12, 0x0

    new-array v11, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    new-array v13, v12, [Ljava/lang/Object;

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aget-byte v12, v0, v23

    int-to-byte v12, v12

    aget-byte v13, v0, v30

    int-to-byte v13, v13

    const/16 v15, 0x278

    int-to-short v15, v15

    invoke-static {v12, v13, v15}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    new-array v15, v13, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v36, v15, v24

    sget-object v26, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v34, 0x1

    aput-object v26, v15, v34

    sget-object v26, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v33, 0x2

    aput-object v26, v15, v33

    invoke-virtual {v10, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aget-byte v15, v0, v47

    int-to-byte v15, v15

    aget-byte v13, v0, v19
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_37

    int-to-byte v13, v13

    move/from16 v38, v14

    or-int/lit16 v14, v13, 0x325

    int-to-short v14, v14

    :try_start_70
    invoke-static {v15, v13, v14}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    invoke-virtual {v10, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    aget-byte v13, v0, v21
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_32

    int-to-byte v13, v13

    const/16 v22, 0x4

    :try_start_71
    aget-byte v14, v0, v22
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_31

    int-to-byte v14, v14

    xor-int/lit16 v15, v14, 0x329

    move/from16 v52, v15

    and-int/lit16 v15, v14, 0x329

    or-int v15, v52, v15

    int-to-short v15, v15

    :try_start_72
    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    aget-byte v14, v0, v18

    int-to-byte v14, v14

    aget-byte v0, v0, v30

    int-to-byte v0, v0

    xor-int/lit16 v15, v0, 0x158

    move/from16 v52, v15

    and-int/lit16 v15, v0, 0x158

    or-int v15, v52, v15

    int-to-short v15, v15

    invoke-static {v14, v0, v15}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    invoke-virtual {v13, v0, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/16 v13, 0x400

    new-array v13, v13, [B

    const/4 v14, 0x0

    :goto_36
    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v2, v6, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_32

    if-lez v15, :cond_41

    .line 0
    sget v52, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    move-object/from16 v53, v2

    add-int/lit8 v2, v52, 0x61

    move-object/from16 v52, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    const/16 v33, 0x2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3f

    move-object v4, v3

    int-to-long v2, v14

    move-wide/from16 v54, v2

    const/4 v2, 0x1

    :try_start_73
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v8, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v54, v2

    if-gez v2, :cond_42

    const/4 v2, 0x0

    goto :goto_37

    :cond_3f
    move-object v4, v3

    int-to-long v2, v14

    move-wide/from16 v54, v2

    const/4 v2, 0x0

    .line 7000
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v8, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v56

    cmp-long v3, v54, v56

    if-gez v3, :cond_40

    :goto_37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v13, v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v11, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_25

    long-to-int v2, v2

    mul-int/lit16 v3, v15, 0x13f

    move-object/from16 v54, v1

    mul-int/lit16 v1, v14, -0x13d

    add-int/2addr v3, v1

    not-int v1, v14

    move/from16 v55, v1

    not-int v1, v15

    xor-int v56, v1, v2

    and-int/2addr v1, v2

    or-int v1, v56, v1

    not-int v1, v1

    or-int v1, v55, v1

    mul-int/lit16 v1, v1, -0x13e

    add-int/2addr v3, v1

    xor-int v1, v55, v2

    and-int v56, v55, v2

    or-int v1, v1, v56

    not-int v1, v1

    move/from16 v56, v1

    not-int v1, v2

    xor-int v57, v1, v15

    and-int v58, v1, v15

    or-int v57, v57, v58

    xor-int v58, v57, v14

    and-int v57, v57, v14

    move/from16 v59, v1

    or-int v1, v58, v57

    not-int v1, v1

    or-int v1, v56, v1

    mul-int/lit16 v1, v1, 0x13e

    neg-int v1, v1

    neg-int v1, v1

    not-int v1, v1

    sub-int/2addr v3, v1

    const/16 v34, 0x1

    add-int/lit8 v3, v3, -0x1

    xor-int v1, v55, v59

    and-int v55, v55, v59

    or-int v1, v1, v55

    xor-int v55, v1, v15

    and-int/2addr v1, v15

    or-int v1, v55, v1

    not-int v1, v1

    xor-int v55, v15, v14

    and-int/2addr v14, v15

    or-int v14, v55, v14

    xor-int v15, v14, v2

    and-int/2addr v2, v14

    or-int/2addr v2, v15

    not-int v2, v2

    xor-int v14, v1, v2

    and-int/2addr v1, v2

    or-int/2addr v1, v14

    mul-int/lit16 v1, v1, 0x13e

    neg-int v1, v1

    neg-int v1, v1

    and-int v2, v3, v1

    or-int/2addr v1, v3

    add-int v14, v2, v1

    move-object v3, v4

    move-object/from16 v4, v52

    move-object/from16 v2, v53

    move-object/from16 v1, v54

    goto/16 :goto_36

    :cond_40
    move v12, v2

    goto :goto_38

    :catchall_25
    move-exception v0

    move-object v1, v0

    goto/16 :goto_35

    :cond_41
    move-object/from16 v52, v4

    move-object v4, v3

    :cond_42
    const/4 v12, 0x0

    :goto_38
    :try_start_74
    new-array v1, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_30

    :try_start_75
    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v11, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_10
    .catchall {:try_start_75 .. :try_end_75} :catchall_25

    :catch_10
    :try_start_76
    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v2, v0, v48

    int-to-byte v2, v2

    const/16 v3, 0x2f4

    aget-byte v3, v0, v3

    neg-int v3, v3

    int-to-byte v3, v3

    const/16 v6, 0x349

    int-to-short v6, v6

    invoke-static {v2, v3, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v15, 0x2

    new-array v3, v15, [Ljava/lang/Class;

    aget-byte v6, v0, v21

    int-to-byte v6, v6

    aget-byte v8, v0, v29

    int-to-byte v8, v8

    const/16 v10, 0x36c

    int-to-short v10, v10

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v24, 0x0

    aput-object v6, v3, v24

    aget-byte v6, v0, v21

    int-to-byte v6, v6

    aget-byte v8, v0, v18

    int-to-byte v8, v8

    xor-int/lit16 v11, v8, 0x36a

    and-int/lit16 v12, v8, 0x36a

    or-int/2addr v11, v12

    int-to-short v11, v11

    invoke-static {v6, v8, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v34, 0x1

    aput-object v6, v3, v34

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_30

    :try_start_77
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    aget-byte v3, v0, v21

    int-to-byte v3, v3

    aget-byte v6, v0, v29

    int-to-byte v6, v6

    invoke-static {v3, v6, v10}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v6, v0, v23

    int-to-byte v6, v6

    aget-byte v8, v0, v47

    int-to-byte v8, v8

    const/16 v10, 0x392

    int-to-short v10, v10

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v36, v8, v24

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_2f

    :try_start_78
    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_30

    :try_start_79
    aget-byte v2, v0, v48

    int-to-byte v2, v2

    const/16 v3, 0x145

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    const/16 v6, 0x395

    int-to-short v6, v6

    invoke-static {v2, v3, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0xfb

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    int-to-byte v6, v3

    const/16 v8, 0x3b4

    int-to-short v8, v8

    invoke-static {v3, v6, v8}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/16 v8, 0x23

    aget-byte v8, v0, v8

    int-to-byte v8, v8

    const/16 v10, 0x5b

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    sget v11, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    or-int/lit16 v12, v11, 0x399

    int-to-short v12, v12

    invoke-static {v8, v10, v12}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v10, 0x23

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    const/16 v12, 0x14

    aget-byte v12, v0, v12

    int-to-byte v12, v12

    const/16 v13, 0x3d2

    int-to-short v13, v13

    invoke-static {v10, v12, v13}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v12, Ljava/util/ArrayList;

    check-cast v10, Ljava/util/List;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_14
    .catchall {:try_start_79 .. :try_end_79} :catchall_30

    :try_start_7a
    const-class v13, Ljava/lang/Class;
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_2d

    const/16 v22, 0x4

    :try_start_7b
    aget-byte v14, v0, v22
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_2c

    int-to-byte v14, v14

    const/16 v15, 0x1b

    :try_start_7c
    aget-byte v0, v0, v15

    int-to-byte v0, v0

    xor-int/lit16 v15, v11, 0x3c8

    and-int/lit16 v11, v11, 0x3c8

    or-int/2addr v11, v15

    int-to-short v11, v11

    invoke-static {v14, v0, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v13, v0, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_2d

    :try_start_7d
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7d} :catch_14
    .catchall {:try_start_7d .. :try_end_7d} :catchall_30

    const/4 v11, 0x0

    :goto_39
    if-ge v11, v10, :cond_43

    :try_start_7e
    invoke-static {v3, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v0, v11, v13}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_14
    .catchall {:try_start_7e .. :try_end_7e} :catchall_25

    and-int/lit8 v13, v11, 0x1

    or-int/lit8 v11, v11, 0x1

    add-int/2addr v11, v13

    goto :goto_39

    :cond_43
    :try_start_7f
    invoke-virtual {v8, v2, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_14
    .catchall {:try_start_7f .. :try_end_7f} :catchall_30

    :try_start_80
    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->i:Ljava/lang/Object;
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_30

    if-nez v0, :cond_45

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v0, v2

    const v2, -0x1001a05

    xor-int v3, v2, v0

    and-int/2addr v2, v0

    or-int/2addr v2, v3

    not-int v2, v2

    not-int v3, v0

    const v6, 0x25053f07

    xor-int v8, v3, v6

    and-int/2addr v3, v6

    or-int/2addr v3, v8

    const v8, -0x7e8565e4

    xor-int v9, v3, v8

    and-int/2addr v3, v8

    or-int/2addr v3, v9

    not-int v3, v3

    xor-int v8, v2, v3

    and-int/2addr v2, v3

    or-int/2addr v2, v8

    mul-int/lit16 v2, v2, -0x13e

    const v3, -0x7fb902c7

    add-int/2addr v3, v2

    or-int v2, v6, v0

    not-int v2, v2

    const v6, -0x7f857fe8

    or-int/2addr v2, v6

    mul-int/lit16 v2, v2, -0x13e

    and-int v6, v3, v2

    or-int/2addr v2, v3

    add-int/2addr v6, v2

    const v2, -0x25053f08

    xor-int v3, v2, v0

    and-int/2addr v0, v2

    or-int/2addr v0, v3

    not-int v0, v0

    const v2, 0x7e8565e3

    xor-int v3, v2, v0

    and-int/2addr v0, v2

    or-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x13e

    neg-int v0, v0

    neg-int v0, v0

    and-int v2, v6, v0

    or-int/2addr v0, v6

    add-int/2addr v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v0, v8

    const v3, 0x7df7eb55

    xor-int v6, v3, v0

    and-int/2addr v3, v0

    or-int/2addr v3, v6

    not-int v3, v3

    mul-int/lit16 v3, v3, 0x26f

    const v6, 0x6efead64

    add-int/2addr v6, v3

    not-int v3, v0

    const v8, 0x840aa01

    or-int/2addr v3, v8

    mul-int/lit16 v3, v3, -0x26f

    neg-int v3, v3

    neg-int v3, v3

    xor-int v8, v6, v3

    and-int/2addr v3, v6

    const/16 v34, 0x1

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v8, v3

    const v3, 0x5d76ab55

    or-int/2addr v3, v0

    not-int v3, v3

    const v6, -0x7df7eb56

    xor-int v9, v6, v3

    and-int/2addr v3, v6

    or-int/2addr v3, v9

    const v6, 0x28c1ea01

    or-int/2addr v0, v6

    not-int v0, v0

    xor-int v6, v3, v0

    and-int/2addr v0, v3

    or-int/2addr v0, v6

    mul-int/lit16 v0, v0, 0x26f

    and-int v3, v8, v0

    or-int/2addr v0, v8

    add-int/2addr v3, v0

    if-le v2, v3, :cond_44

    :try_start_81
    sput-object v1, Lcom/appsflyer/internal/AFa1jSDK;->i:Ljava/lang/Object;

    const/4 v0, 0x1

    const/16 v24, 0x0

    div-int/lit8 v0, v0, 0x0

    goto :goto_3a

    .line 7000
    :cond_44
    sput-object v1, Lcom/appsflyer/internal/AFa1jSDK;->i:Ljava/lang/Object;
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_25

    :cond_45
    :goto_3a
    if-eqz v27, :cond_48

    .line 4000
    :try_start_82
    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v2, v0, v48

    int-to-byte v2, v2

    aget-byte v3, v0, v18

    int-to-byte v3, v3

    const/16 v6, 0x298

    int-to-short v6, v6

    invoke-static {v2, v3, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v3, v0, v20

    int-to-byte v3, v3

    const/16 v24, 0x0

    aget-byte v6, v0, v24

    int-to-byte v6, v6

    xor-int/lit16 v8, v6, 0x3f5

    and-int/lit16 v9, v6, 0x3f5

    or-int/2addr v8, v9

    int-to-short v8, v8

    invoke-static {v3, v6, v8}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x2

    new-array v6, v15, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/16 v24, 0x0

    aput-object v8, v6, v24

    aget-byte v8, v0, v21

    int-to-byte v8, v8

    aget-byte v9, v0, v18

    int-to-byte v9, v9

    xor-int/lit16 v10, v9, 0x36a

    and-int/lit16 v11, v9, 0x36a

    or-int/2addr v10, v11

    int-to-short v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v6, v10

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v6, Lcom/appsflyer/internal/AFa1jSDK;
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_30

    :try_start_83
    const-class v8, Ljava/lang/Class;
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_27

    const/16 v22, 0x4

    :try_start_84
    aget-byte v9, v0, v22

    int-to-byte v9, v9

    aget-byte v10, v0, v21

    int-to-byte v10, v10

    const/16 v11, 0x2c5

    int-to-short v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v8, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_26

    :try_start_85
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_46

    aget-byte v5, v0, v18

    int-to-byte v5, v5

    aget-byte v0, v0, v30

    int-to-byte v0, v0

    xor-int/lit16 v6, v0, 0x158

    and-int/lit16 v8, v0, 0x158

    or-int/2addr v6, v8

    int-to-short v6, v6

    invoke-static {v5, v0, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    new-array v5, v12, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    move-object v0, v3

    goto :goto_3c

    :catchall_26
    move-exception v0

    goto :goto_3b

    :catchall_27
    move-exception v0

    const/16 v22, 0x4

    :goto_3b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_47

    throw v1

    :cond_47
    throw v0

    :cond_48
    const/16 v22, 0x4

    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v2, v0, v21

    int-to-byte v2, v2

    aget-byte v3, v0, v18

    int-to-byte v3, v3

    xor-int/lit16 v6, v3, 0x36a

    and-int/lit16 v8, v3, 0x36a

    or-int/2addr v6, v8

    int-to-short v6, v6

    invoke-static {v2, v3, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v3, v0, v20

    int-to-byte v3, v3

    const/16 v24, 0x0

    aget-byte v0, v0, v24

    int-to-byte v0, v0

    xor-int/lit16 v6, v0, 0x3f5

    and-int/lit16 v8, v0, 0x3f5

    or-int/2addr v6, v8

    int-to-short v6, v6

    invoke-static {v3, v0, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    new-array v3, v10, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/16 v24, 0x0

    aput-object v6, v3, v24

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_45

    :try_start_86
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_86
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_86 .. :try_end_86} :catch_11
    .catchall {:try_start_86 .. :try_end_86} :catchall_45

    goto :goto_3c

    :catch_11
    move-exception v0

    :try_start_87
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    throw v0
    :try_end_87
    .catch Ljava/lang/ClassNotFoundException; {:try_start_87 .. :try_end_87} :catch_12
    .catchall {:try_start_87 .. :try_end_87} :catchall_45

    :catch_12
    const/4 v0, 0x0

    :goto_3c
    if-eqz v0, :cond_4d

    :try_start_88
    check-cast v0, Ljava/lang/Class;

    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    aget-byte v3, v2, v18

    int-to-byte v3, v3

    const/16 v5, 0x1e8

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v6, 0x405

    int-to-short v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x2

    new-array v3, v15, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v6, v3, v24

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v6, v3, v10

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    xor-int/lit8 v6, v27, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFa1jSDK;->w:Ljava/lang/Object;

    const/16 v1, 0x3522

    new-array v1, v1, [B

    const/16 v3, 0x2a3

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    const/16 v6, 0x66

    aget-byte v6, v2, v6

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v8, 0x425

    int-to-short v8, v8

    invoke-static {v3, v6, v8}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_45

    :try_start_89
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    aget-byte v6, v2, v21

    int-to-byte v6, v6

    const/16 v8, 0x263

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    sget v9, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    xor-int/lit16 v10, v9, 0x18d

    and-int/lit16 v9, v9, 0x18d

    or-int/2addr v9, v10

    int-to-short v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Class;

    aget-byte v9, v2, v21

    int-to-byte v9, v9

    aget-byte v10, v2, v29

    int-to-byte v10, v10

    invoke-static {v9, v10, v7}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v24, 0x0

    aput-object v9, v8, v24

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_2b

    :try_start_8a
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    aget-byte v6, v2, v21

    int-to-byte v6, v6

    aget-byte v8, v2, v16

    int-to-byte v8, v8

    const/16 v9, 0x1db

    int-to-short v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Class;

    aget-byte v10, v2, v21

    int-to-byte v10, v10

    aget-byte v11, v2, v29

    int-to-byte v11, v11

    invoke-static {v10, v11, v7}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v24, 0x0

    aput-object v7, v8, v24

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_2a

    :try_start_8b
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    aget-byte v7, v2, v21

    int-to-byte v7, v7

    aget-byte v8, v2, v16

    int-to-byte v8, v8

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aget-byte v8, v2, v17

    int-to-byte v8, v8

    const/16 v24, 0x0

    aget-byte v10, v2, v24

    int-to-byte v10, v10

    const/16 v11, 0x1f1

    int-to-short v11, v11

    invoke-static {v8, v10, v11}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    aput-object v36, v11, v24

    invoke-virtual {v7, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_29

    const/16 v33, 0x2

    .line 0
    rem-int v6, v33, v33

    .line 4000
    :try_start_8c
    aget-byte v6, v2, v21

    int-to-byte v6, v6

    aget-byte v7, v2, v16

    int-to-byte v7, v7

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v7, v2, v18

    int-to-byte v7, v7

    aget-byte v2, v2, v30

    int-to-byte v2, v2

    xor-int/lit16 v8, v2, 0x158

    and-int/lit16 v9, v2, 0x158

    or-int/2addr v8, v9

    int-to-short v8, v8

    invoke-static {v7, v2, v8}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v6, v2, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_28

    :try_start_8d
    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x34f8

    move-object v6, v4

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    move v2, v3

    move-object v3, v6

    move/from16 v14, v38

    move-object/from16 v9, v44

    move-object/from16 v10, v45

    move-object/from16 v11, v46

    move/from16 v12, v49

    move/from16 v13, v50

    move-object/from16 v15, v51

    const/16 v24, 0x0

    const/16 v25, 0x6

    const/16 v32, -0x1

    goto/16 :goto_23

    :catchall_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_49

    throw v1

    :cond_49
    throw v0

    :catchall_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4a

    throw v1

    :cond_4a
    throw v0

    :catchall_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4b

    throw v1

    :cond_4b
    throw v0

    :catchall_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4c

    throw v1

    :cond_4c
    throw v0

    :cond_4d
    const/4 v15, 0x2

    new-array v0, v15, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v2, v0, v24

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v2, v0, v10

    move-object/from16 v2, v52

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    xor-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFa1jSDK;->w:Ljava/lang/Object;
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_45

    .line 0
    sget v0, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    xor-int/lit8 v1, v0, 0x55

    and-int/lit8 v0, v0, 0x55

    const/16 v34, 0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    const/16 v33, 0x2

    rem-int/lit8 v1, v1, 0x2

    .line 4000
    :try_start_8e
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_4a

    .line 0
    rem-int v4, v33, v33

    move/from16 v2, v23

    const/4 v12, 0x1

    const/4 v15, 0x2

    const/16 v24, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    goto/16 :goto_50

    :catchall_2c
    move-exception v0

    goto :goto_3d

    :catchall_2d
    move-exception v0

    const/16 v22, 0x4

    .line 7000
    :goto_3d
    :try_start_8f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4e

    throw v1

    :cond_4e
    throw v0
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_8f} :catch_13
    .catchall {:try_start_8f .. :try_end_8f} :catchall_45

    :catch_13
    move-exception v0

    goto :goto_3e

    :catch_14
    move-exception v0

    const/16 v22, 0x4

    :goto_3e
    :try_start_90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    const/16 v3, 0x67

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    aget-byte v5, v2, v30

    int-to-byte v5, v5

    const/16 v6, 0x3f9

    int-to-short v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2e0

    aget-byte v3, v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v5, v5

    mul-int/lit8 v6, v3, -0x31

    const/16 v7, -0x33

    add-int/2addr v7, v6

    const/16 v32, -0x1

    xor-int v6, v32, v5

    or-int/2addr v6, v5

    mul-int/lit8 v6, v6, -0x32

    neg-int v6, v6

    neg-int v6, v6

    and-int v8, v7, v6

    or-int/2addr v6, v7

    add-int/2addr v8, v6

    not-int v6, v3

    xor-int v7, v6, v5

    and-int v9, v6, v5

    or-int/2addr v7, v9

    not-int v7, v7

    not-int v3, v3

    not-int v5, v5

    or-int v9, v3, v5

    xor-int/lit8 v10, v9, -0x1

    or-int/2addr v9, v10

    not-int v9, v9

    xor-int v10, v7, v9

    and-int/2addr v7, v9

    or-int/2addr v7, v10

    mul-int/lit8 v7, v7, 0x32

    neg-int v7, v7

    neg-int v7, v7

    or-int v9, v8, v7

    const/16 v34, 0x1

    shl-int/lit8 v9, v9, 0x1

    xor-int/2addr v7, v8

    sub-int/2addr v9, v7

    xor-int v7, v3, v5

    and-int/2addr v3, v5

    or-int/2addr v3, v7

    not-int v3, v3

    xor-int/lit8 v7, v6, -0x1

    or-int/2addr v6, v7

    not-int v6, v6

    xor-int v7, v3, v6

    and-int/2addr v3, v6

    or-int/2addr v3, v7

    xor-int/lit8 v6, v5, -0x1

    or-int/2addr v5, v6

    not-int v5, v5

    or-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x32

    neg-int v3, v3

    neg-int v3, v3

    xor-int v5, v9, v3

    and-int/2addr v3, v9

    const/16 v34, 0x1

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v5, v3

    int-to-byte v3, v5

    aget-byte v5, v2, v23

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x123

    and-int/lit16 v7, v5, 0x123

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_45

    const/4 v15, 0x2

    :try_start_91
    new-array v3, v15, [Ljava/lang/Object;

    const/16 v34, 0x1

    aput-object v0, v3, v34

    const/16 v24, 0x0

    aput-object v1, v3, v24

    aget-byte v0, v2, v21

    int-to-byte v0, v0

    aget-byte v1, v2, v29

    int-to-byte v1, v1

    sget v2, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    or-int/lit16 v2, v2, 0x101

    int-to-short v2, v2

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v15, 0x2

    new-array v1, v15, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/16 v24, 0x0

    aput-object v2, v1, v24

    const-class v2, Ljava/lang/Throwable;

    const/16 v34, 0x1

    aput-object v2, v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_2e

    :catchall_2e
    move-exception v0

    :try_start_92
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4f

    throw v1

    :cond_4f
    throw v0

    :catchall_2f
    move-exception v0

    const/16 v22, 0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_50

    throw v1

    :cond_50
    throw v0

    :catchall_30
    move-exception v0

    goto :goto_41

    :catchall_31
    move-exception v0

    move-object v4, v3

    goto/16 :goto_49

    :catchall_32
    move-exception v0

    move-object v4, v3

    goto :goto_41

    :catchall_33
    move-exception v0

    move-object v4, v3

    move/from16 v38, v14

    goto :goto_3f

    :catchall_34
    move-exception v0

    move-object v4, v3

    move/from16 v38, v14

    const/16 v22, 0x4

    :goto_3f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_51

    throw v1

    :cond_51
    throw v0

    :catchall_35
    move-exception v0

    move-object v4, v3

    move/from16 v38, v14

    const/16 v22, 0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_52

    throw v1

    :cond_52
    throw v0

    :catchall_36
    move-exception v0

    move-object v4, v3

    goto/16 :goto_48

    :catchall_37
    move-exception v0

    move-object v4, v3

    goto :goto_40

    :catchall_38
    move-exception v0

    move-object v4, v3

    move/from16 v49, v12

    move/from16 v50, v13

    :goto_40
    move/from16 v38, v14

    :goto_41
    const/16 v22, 0x4

    goto/16 :goto_49

    :catchall_39
    move-exception v0

    move-object v4, v3

    goto :goto_42

    :catchall_3a
    move-exception v0

    move-object v4, v3

    goto :goto_43

    :catchall_3b
    move-exception v0

    move-object v4, v3

    move-object/from16 v46, v11

    :goto_42
    move/from16 v49, v12

    move/from16 v50, v13

    move/from16 v38, v14

    const/16 v22, 0x4

    goto :goto_44

    :catchall_3c
    move-exception v0

    move-object v4, v3

    move/from16 v22, v8

    :goto_43
    move-object/from16 v46, v11

    move/from16 v49, v12

    move/from16 v50, v13

    move/from16 v38, v14

    .line 4000
    :goto_44
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_53

    throw v1

    :cond_53
    throw v0

    :catchall_3d
    move-exception v0

    move-object v4, v3

    goto/16 :goto_47

    :catchall_3e
    move-exception v0

    move-object v4, v3

    move-object/from16 v44, v9

    move-object/from16 v46, v11

    move/from16 v49, v12

    move/from16 v50, v13

    move/from16 v38, v14

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_54

    throw v1

    :cond_54
    throw v0

    :catchall_3f
    move-exception v0

    move-object v4, v3

    goto/16 :goto_46

    :catchall_40
    move-exception v0

    move-object v4, v3

    move-object/from16 v44, v9

    move-object/from16 v46, v11

    move/from16 v49, v12

    move/from16 v50, v13

    move/from16 v38, v14

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_55

    throw v1

    :cond_55
    throw v0

    :catchall_41
    move-exception v0

    move-object v4, v3

    move-object/from16 v44, v9

    move-object/from16 v46, v11

    move/from16 v49, v12

    move/from16 v50, v13

    move/from16 v38, v14

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_56

    throw v1

    :cond_56
    throw v0

    :catchall_42
    move-exception v0

    move-object v4, v3

    goto :goto_45

    :catchall_43
    move-exception v0

    move-object v4, v3

    move-object/from16 v39, v7

    :goto_45
    move-object/from16 v44, v9

    move-object/from16 v46, v11

    move/from16 v49, v12

    move/from16 v50, v13

    move/from16 v38, v14

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_57

    throw v1

    :cond_57
    throw v0

    :catchall_44
    move-exception v0

    move-object v4, v3

    move-object/from16 v39, v7

    move-object/from16 v44, v9

    move-object/from16 v46, v11

    move/from16 v49, v12

    move/from16 v50, v13

    move/from16 v38, v14

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_58

    throw v1

    :cond_58
    throw v0
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_45

    :catchall_45
    move-exception v0

    goto :goto_49

    :catchall_46
    move-exception v0

    move-object v4, v3

    move-object/from16 v39, v7

    :goto_46
    move-object/from16 v44, v9

    :goto_47
    move-object/from16 v46, v11

    move/from16 v49, v12

    move/from16 v50, v13

    :goto_48
    move/from16 v38, v14

    :goto_49
    move-object v1, v0

    :goto_4a
    :try_start_93
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception v0

    :try_start_94
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4b
    throw v1

    :catchall_48
    move-exception v0

    move-object/from16 v39, v7

    move-object/from16 v44, v9

    move-object/from16 v46, v11

    move/from16 v49, v12

    move/from16 v50, v13

    move/from16 v38, v14

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_59

    throw v1

    :cond_59
    throw v0

    :catchall_49
    move-exception v0

    move-object/from16 v39, v7

    move-object/from16 v44, v9

    move-object/from16 v46, v11

    move/from16 v49, v12

    move/from16 v50, v13

    move/from16 v38, v14

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5a

    throw v1

    :cond_5a
    throw v0
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_4a

    :catchall_4a
    move-exception v0

    goto :goto_4d

    :catchall_4b
    move-exception v0

    :goto_4c
    move-object/from16 v39, v7

    move-object/from16 v44, v9

    move-object/from16 v46, v11

    move/from16 v49, v12

    move/from16 v50, v13

    move/from16 v38, v14

    goto :goto_4d

    :catchall_4c
    move-exception v0

    move-object/from16 v36, v1

    move-object/from16 v37, v2

    move-object/from16 v41, v5

    move/from16 v42, v6

    move-object/from16 v39, v7

    move-object/from16 v44, v9

    move-object/from16 v46, v11

    move/from16 v49, v12

    move/from16 v50, v13

    move/from16 v38, v14

    const/16 v29, 0xe

    :goto_4d
    or-int/lit8 v1, v50, 0x1

    const/16 v34, 0x1

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v50, 0x1

    sub-int/2addr v1, v2

    move/from16 v2, v23

    :goto_4e
    if-ge v1, v2, :cond_5c

    .line 0
    :try_start_95
    aget-boolean v3, v44, v1

    if-eqz v3, :cond_5b

    const/16 v35, 0x0

    sput-object v35, Lcom/appsflyer/internal/AFa1jSDK;->w:Ljava/lang/Object;

    sput-object v35, Lcom/appsflyer/internal/AFa1jSDK;->i:Ljava/lang/Object;

    const/4 v15, 0x2

    const/16 v24, 0x0

    const/16 v34, 0x1

    goto/16 :goto_4f

    :cond_5b
    const/16 v35, 0x0

    xor-int/lit8 v3, v1, -0x1c

    and-int/lit8 v1, v1, -0x1c

    const/16 v34, 0x1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    xor-int/lit8 v1, v3, 0x1d

    and-int/lit8 v3, v3, 0x1d

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    goto :goto_4e

    :cond_5c
    sget-object v1, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    const/16 v2, 0x67

    aget-byte v2, v1, v2

    int-to-byte v2, v2

    aget-byte v3, v1, v16

    int-to-byte v3, v3

    const/16 v4, 0x455

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_95} :catch_15

    sget v3, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    add-int/lit8 v3, v3, 0x79

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    const/4 v15, 0x2

    rem-int/2addr v3, v15

    :try_start_96
    new-array v3, v15, [Ljava/lang/Object;

    const/16 v34, 0x1

    aput-object v0, v3, v34

    const/16 v24, 0x0

    aput-object v2, v3, v24

    aget-byte v0, v1, v21

    int-to-byte v0, v0

    aget-byte v1, v1, v29

    int-to-byte v1, v1

    sget v2, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    xor-int/lit16 v4, v2, 0x101

    and-int/lit16 v2, v2, 0x101

    or-int/2addr v2, v4

    int-to-short v2, v2

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v15, 0x2

    new-array v1, v15, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/16 v24, 0x0

    aput-object v2, v1, v24

    const-class v2, Ljava/lang/Throwable;

    const/16 v34, 0x1

    aput-object v2, v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_4d

    :catchall_4d
    move-exception v0

    :try_start_97
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5d

    throw v1

    :cond_5d
    throw v0

    :cond_5e
    move-object/from16 v36, v1

    move-object/from16 v37, v2

    move/from16 v34, v3

    move v15, v4

    move-object/from16 v41, v5

    move/from16 v42, v6

    move-object/from16 v39, v7

    move-object/from16 v35, v8

    move-object/from16 v44, v9

    move-object/from16 v46, v11

    move/from16 v49, v12

    move/from16 v50, v13

    move/from16 v38, v14

    move/from16 v2, v23

    :goto_4f
    move/from16 v12, v49

    :goto_50
    add-int/lit8 v13, v50, 0x1

    move/from16 v23, v2

    move v4, v15

    move/from16 v3, v34

    move-object/from16 v8, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move/from16 v14, v38

    move-object/from16 v7, v39

    move-object/from16 v5, v41

    move/from16 v6, v42

    move-object/from16 v9, v44

    move-object/from16 v11, v46

    const/4 v10, 0x5

    const/16 v25, 0x6

    goto/16 :goto_13

    :cond_5f
    :goto_51
    return-void

    :catchall_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_60

    throw v1

    :cond_60
    throw v0

    :catchall_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_61

    throw v1

    :cond_61
    throw v0

    :catchall_50
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_62

    throw v1

    :cond_62
    throw v0
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_97} :catch_15

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_51
    move-exception v0

    .line 2000
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_63

    throw v1

    :cond_63
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
.end method

.method private constructor <init>()V
    .locals 0

    .line 65353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFAdRevenueData(ICI)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x2

    .line 65352
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    and-int/lit8 v2, v1, 0x73

    or-int/lit8 v1, v1, 0x73

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->w:Ljava/lang/Object;

    or-int/lit8 v3, v1, 0x71

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    xor-int/lit8 v1, v1, 0x71

    sub-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    rem-int/2addr v3, v0

    const/4 v1, 0x3

    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v3, p1

    sget-object p0, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    const/16 p2, 0x54

    aget-byte p2, p0, p2

    int-to-byte p2, p2

    const/16 v5, 0x1e8

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x212

    and-int/lit16 v7, v5, 0x212

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {p2, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object p2

    sget-object v5, Lcom/appsflyer/internal/AFa1jSDK;->i:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {p2, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    const/4 v5, 0x4

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x31

    aget-byte p0, p0, v6

    int-to-byte p0, p0

    sget v6, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    xor-int/lit16 v7, v6, 0x449

    and-int/lit16 v6, v6, 0x449

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {v5, p0, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, p1

    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object p1, v1, v4

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, v1, v0

    invoke-virtual {p2, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    or-int/lit8 p2, p1, 0x51

    shl-int/2addr p2, v4

    xor-int/lit8 p1, p1, 0x51

    sub-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    rem-int/2addr p2, v0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    throw p1

    :cond_0
    throw p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static getMediationNetwork(I)I
    .locals 8

    const/4 v0, 0x2

    .line 65350
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    and-int/lit8 v2, v1, 0x75

    or-int/lit8 v1, v1, 0x75

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    rem-int/2addr v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_2

    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->w:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/2addr v1, v0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    const/16 v4, 0x54

    aget-byte v4, v1, v4

    int-to-byte v4, v4

    const/16 v5, 0x1e8

    aget-byte v5, v1, v5

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x212

    and-int/lit16 v7, v5, 0x212

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/AFa1jSDK;->i:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x4

    aget-byte v5, v1, v5

    int-to-byte v5, v5

    const/16 v7, 0xe

    aget-byte v1, v1, v7

    int-to-byte v1, v1

    or-int/lit16 v7, v1, 0x240

    int-to-short v7, v7

    invoke-static {v5, v1, v7}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    new-array v5, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v4, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v1, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    return p0

    :cond_0
    throw v3

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
.end method

.method public static getMonetizationNetwork(Ljava/lang/Object;)I
    .locals 10

    const/4 v0, 0x2

    .line 65351
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    and-int/lit8 v2, v1, 0x7

    or-int/lit8 v1, v1, 0x7

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_2

    sget-object v2, Lcom/appsflyer/internal/AFa1jSDK;->w:Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x47

    or-int/lit8 v1, v1, 0x47

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/2addr v3, v0

    :try_start_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    const/16 v1, 0x54

    aget-byte v1, v0, v1

    int-to-byte v1, v1

    const/16 v3, 0x1e8

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    or-int/lit16 v4, v3, 0x212

    int-to-short v4, v4

    invoke-static {v1, v3, v4}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/appsflyer/internal/AFa1jSDK;->i:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ClassLoader;

    const/4 v4, 0x1

    invoke-static {v1, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const/16 v3, 0x3e

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    const/16 v5, 0xc

    aget-byte v0, v0, v5

    int-to-byte v0, v0

    const/16 v5, 0x480

    int-to-short v5, v5

    invoke-static {v3, v0, v5}, Lcom/appsflyer/internal/AFa1jSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    not-int v1, v0

    const v2, -0x5ab1e10b

    xor-int v3, v2, v1

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    not-int v1, v1

    const v2, -0x3382e4d8    # -6.635024E7f

    xor-int v3, v2, v1

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    mul-int/lit16 v1, v1, -0x3a5

    const v3, 0x5c71ebc0

    add-int/2addr v3, v1

    not-int v0, v0

    xor-int v1, v2, v0

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    not-int v0, v0

    const v1, 0x210204d5

    or-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3a5

    add-int/2addr v3, v0

    const v0, 0x295b36a0

    or-int v1, v3, v0

    shl-int/2addr v1, v4

    xor-int/2addr v0, v3

    sub-int/2addr v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v0, v2

    const v2, -0xcc7d267

    xor-int v3, v2, v0

    and-int/2addr v2, v0

    or-int/2addr v2, v3

    not-int v2, v2

    const v3, 0x806d020

    or-int/2addr v2, v3

    not-int v0, v0

    const v3, 0x2916f5a8

    xor-int v5, v0, v3

    and-int v7, v0, v3

    or-int/2addr v5, v7

    const v7, 0xcc7d266

    or-int v8, v5, v7

    not-int v8, v8

    xor-int v9, v2, v8

    and-int/2addr v2, v8

    or-int/2addr v2, v9

    mul-int/lit16 v2, v2, 0x376

    const v8, 0x653901ea

    add-int/2addr v8, v2

    xor-int v2, v0, v7

    and-int/2addr v0, v7

    or-int/2addr v0, v2

    not-int v0, v0

    xor-int v2, v3, v0

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    mul-int/lit16 v0, v0, -0x6ec

    or-int v2, v8, v0

    shl-int/2addr v2, v4

    xor-int/2addr v0, v8

    sub-int/2addr v2, v0

    not-int v0, v5

    mul-int/lit16 v0, v0, 0x376

    neg-int v0, v0

    neg-int v0, v0

    and-int v3, v2, v0

    or-int/2addr v0, v2

    add-int/2addr v3, v0

    if-le v1, v3, :cond_0

    div-int/2addr v6, v6

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method private static getMonetizationNetwork(II)V
    .locals 1

    const/4 p0, 0x2

    .line 65354
    rem-int p1, p0, p0

    sget p1, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    and-int/lit8 v0, p1, 0x37

    or-int/lit8 p1, p1, 0x37

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/2addr v0, p0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static init$0()V
    .locals 5

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/2addr v1, v0

    const/16 v1, 0x493

    new-array v2, v1, [B

    const-string v3, "\u0008\u00e2\u001c\u00e3\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd<\u000e\u00f2\u0012\u00fb\u0004\u00fd\u0013\u00be\u0018/\u0000\u0006\u0006\u00f6\u0002\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c6\u0015\u0008\u001e\u00d35\u00f3\u00f4\n\u000b\u0003\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u0016%\u0014\u00f8\u0010\u00f6\u000e\u0008\u00de\u0017\r\u00f6\u00ff\u0006\u0015\u0000\u0003\u00f6\u000c\t\u00d02\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u00162\u0003\u00da(\u0006\u00f6\u0002\u000e\n\u0001\u0012\u00d8(\u00fe\u000e\u00f8\u00fb\u000e\u00d82\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u0001\u0012\u00d5&\u0006\u00fc\u0011\u00d4(\u000c\u0001\u0012\u00d2/\u00f8\u0004\u00e1!\u0005\u0008\u0000\u00e2(\u000c\u0001\u0012\u00d2!\u0005\u0008\u0000\u00e2(\u000c8\u0000\u0016\u00f0\u00d18\u0000\u0016\u00f0\u00d1\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00fa\u0018\u00ee\u00d0>\t\u00c2I\u00fc\u0006\u00f7\u0008\u000c\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca()\u00fd\u0004\u00f4\u000b\u0001\u0012\u00df%\u0000\u0004\u00f8\u0010\u0005\u0008\u000f\u00f8\u0004\u00fd\u0007\u0001\u0005\u0008\u0000\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u00176\u00f7\u0006\u00fb\u00c35\u00f2\u0010\u0004\u00f9\t\u0002\u00f4\n\u0017\u00ed\u0008\t\u0001\u0010\u00ec\u001e\u00fa\u000e\u00f4\u00ee\t\u00ed\u000b\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e\t\u00f96\u00ee\u0005\u000e\u0007\u00f8\t\u0002\u0015\u0000\u0003\u00f6\u000c\t\u00e3\u0018\u0007\u00fb\u00eb\u001f\u0006\u0003\u0000\r\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ed)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u000c\u0006\u0007\u00f5\u00ee\u0006\u00f0\u000b5\u0015\u0003\u00f5\u0012\u0002\u00bf7\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c6\u00057\u0004\u00d15\u00ce\u00025\u00da+\u0006\u0005\u0001\u0000\u0006\u00d8+\u00cf\u0001\u0012\u00e1\u0016\u0011\u00ff\t\u0000\u00f4\u0005\u00fa\u0018\u00ee\u00d0C\u00fa\u0012\u00bd*\u0000\u00fd\u0001\u0012\u00df\u0014\u0016\u00f7\u00fa\u0018\u00ee\u00d0>\t\u00c2\u00176\u00f4\u0003\u0002\u0010\u00f6\u0002\u00e8(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0019 \u0016\u00f0\u00eb(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00f6\u00ff\u0006\u00e52\u00fa\u0003\u0010\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d3(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00bf>\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c5\u0016\u0008(\u00c9?\u00e9\u00f4\n\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00bf>\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c5\u0016\u0008\u001e\u00d35\u00f3\u00f4\n\u000b\u0003\u0001\u0012\u00dc\u001b\u0002\u0008\u00fb\u0016\u00f8\t\u0002\u00e3\u001a\u0012\u0006\u00fb\u0006\u00fc\u00fb\u0001\n\u00f6\u00ff\u0006\u00f5\u0012\u00e1\u0016\u00ff\u0006\u00ee\"\u0001\u0010\u00ee\u0007\u00ef\u000b\u00fe\u00fa\u000e\u00f4\u0001\u0012\u00d5\u0001\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00e2$\u0011\u00f3\u0012\u00fa\n\u0007\u00fe\u0006\t\u00f8\u00f8\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0019$\u0016\u00d1&\u0006\u00fc\u0006\u00f5\u0006\u00e3$\u0016\u0001\u0012\u00d0$\u0014\u00ff\u0000\u000c\u0002\u00f4\u00ee\u0014\u0016\u00f7\u0004\n\u00fc\u0012\u00f4\u0001\u0012\u00d2,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00fa\u0018\u00ee\u00d0J\u0002\u00f8\u0006\u00c5O\u00f2\n\u00c1/\u0012\n\u00dc(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0001\u0012\u00dd\u001a\u0016\u00ff\u00d4,\t\u0001\n\u00fa\u0018\u00ee\u00d0J\u0002\u00f8\u0006\u00c5O\u00f2\n\u00c1/\u0012\n\u00d8,\t\u0001\n\u0001\u0012\u00e2\u0019\u0014\u00ee\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d9)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fe\u00d6:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0018,\u0006\u0007\u00f5\u00ff\u0004\r\u00fc\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u001e(\u00e2\u001b\u000b\u0005\u0006\n\u00ce$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00fa\u0018\u00ee\u00d0C\u00fe\t\u00c2\u0017:\u00fe\u00f4\u00e06\u00f4\u0003\u0002\u0010\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca\u0018,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00fe\u00f2\u0012\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0017\"\u0015\u00f5\u00e2$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00f4\u0016\u00f7\u00e7 \r\u0004\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00ce(\u000c\u00f6\u0001\u0014\u00fe\u0006\u00fa\u00ff\u0011\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00da\u0014\u0016\u00f7\u00e0*\u00fc\u000b\u00fb\u000c\t\u0002\u0001\u0012\u00d2/\u0001\u0006\u0002\u0002\u00fa\u000c\t\u00e3(\u00fa\u00f8\u00ee\u000b\u00eb\u000b\u0006\u00f5\u0006\u00e2,\u00f8\u0015\u0003\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c6\u0015\u0008\u001e\u00d3<\u00ec\u00f4\n\u00dcH5\u0015\u0003\u00f5\u0012\u0002\u00bf7\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c6\u000c\u00001\u0002\u0005\u0001\u00d8\u00fd7\u00d0\u0005\u00007\u00d7-\u00d41\u00ce\u00ee\n\u00ec\u000bI\u0004\u00b4I\u00fe\u000e\u0003\u00f9\u0002\u0005\u000b\u000b\u00b0O\u00fc\u0004\u0011\u00b8\u0001\u0012\u00d25\u0000\u0003\u00f6\u000c\u00f8\u0019\u00d3-\u00ff\u00c8\u0001\u0002\t\u000f/\u00f8\u0004\u0008\u00fe&\u00f1\u0016\u0014\u00f2\u000c\n\u00f3\u00e2 \u0016\u00f0"

    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v2, Lcom/appsflyer/internal/AFa1jSDK;->$$a:[B

    const/16 v1, 0x22

    sput v1, Lcom/appsflyer/internal/AFa1jSDK;->$$b:I

    sget v1, Lcom/appsflyer/internal/AFa1jSDK;->$10:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1jSDK;->$11:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
