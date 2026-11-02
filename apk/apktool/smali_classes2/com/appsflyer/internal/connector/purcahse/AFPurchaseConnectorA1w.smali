.class public Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;
.super Ljava/lang/Object;


# static fields
.field private static final $$a:[B = null

.field private static final $$b:I = 0x0

.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field public static final PurchaseClientCompanion:Ljava/util/Map;

.field private static PurchaseClientInAppPurchaseValidationResultListener:J

.field private static PurchaseClientPurchaseEventDataSource:J

.field private static PurchaseClientSubscriptionPurchaseEventDataSource:J

.field private static build:[B

.field private static getVERSION_NAMEannotations:Ljava/lang/Object;

.field private static onNewPurchases:B

.field private static setAfClient:[B

.field private static setConnector:Ljava/lang/Object;

.field public static final setSubscriptionValidationResultListener:Ljava/util/Map;


# direct methods
.method private static $$c(BIS)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    xor-int/lit8 v2, v1, 0x55

    and-int/lit8 v3, v1, 0x55

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    rem-int/2addr v2, v0

    add-int/lit8 p0, p0, 0x21

    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    neg-int p2, p2

    mul-int/lit16 v3, p2, 0x132

    and-int/lit16 v4, v3, 0x262

    or-int/lit16 v3, v3, 0x262

    add-int/2addr v4, v3

    const v3, -0x60726

    sub-int/2addr v4, v3

    xor-int/lit16 v3, p2, 0x50b

    and-int/lit16 v5, p2, 0x50b

    or-int/2addr v3, v5

    not-int v3, v3

    xor-int v5, p2, p1

    and-int v6, p2, p1

    or-int/2addr v5, v6

    not-int v5, v5

    or-int/2addr v3, v5

    mul-int/lit16 v3, v3, 0x131

    and-int v5, v4, v3

    or-int/2addr v3, v4

    add-int/2addr v5, v3

    not-int v3, p1

    xor-int v4, v3, p2

    and-int/2addr p2, v3

    or-int/2addr p2, v4

    not-int p2, p2

    const/16 v3, -0x50c

    xor-int v4, v3, p2

    and-int/2addr p2, v3

    or-int/2addr p2, v4

    mul-int/lit16 p2, p2, 0x131

    neg-int p2, p2

    neg-int p2, p2

    and-int v3, v5, p2

    or-int/2addr p2, v5

    add-int/2addr v3, p2

    add-int/lit8 p2, p1, 0x1

    new-array v4, p2, [B

    const/4 v5, 0x0

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    move p0, p2

    move v6, v3

    move v1, v5

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    move v1, v5

    :goto_0
    add-int/lit8 v6, v1, 0x1

    int-to-byte v7, p0

    aput-byte v7, v4, v1

    if-ne v6, p2, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    xor-int/lit8 p2, p1, 0x45

    and-int/lit8 p1, p1, 0x45

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    rem-int/2addr p2, v0

    return-object p0

    :cond_2
    aget-byte v1, v2, v3

    sget v7, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    or-int/lit8 v8, v7, 0x9

    shl-int/lit8 v8, v8, 0x1

    xor-int/lit8 v7, v7, 0x9

    sub-int/2addr v8, v7

    rem-int/lit16 v7, v8, 0x80

    sput v7, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    rem-int/2addr v8, v0

    move v11, v3

    move v3, v1

    move v1, v6

    move v6, v11

    :goto_1
    mul-int/lit16 v7, v3, -0x1d0

    mul-int/lit16 v8, p0, -0x3a1

    neg-int v8, v8

    neg-int v8, v8

    not-int v8, v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    not-int v3, v3

    xor-int v8, p0, p1

    and-int v9, p0, p1

    or-int/2addr v8, v9

    not-int v9, v8

    xor-int v10, v3, v9

    and-int/2addr v9, v3

    or-int/2addr v9, v10

    mul-int/lit16 v9, v9, -0x1d1

    not-int v9, v9

    sub-int/2addr v7, v9

    add-int/lit8 v7, v7, -0x1

    xor-int v9, v3, p1

    and-int v10, v3, p1

    or-int/2addr v9, v10

    not-int v9, v9

    xor-int v10, p0, v9

    and-int/2addr p0, v9

    or-int/2addr p0, v10

    mul-int/lit16 p0, p0, 0x3a2

    not-int p0, p0

    sub-int/2addr v7, p0

    add-int/lit8 v7, v7, -0x1

    xor-int p0, v8, v3

    and-int/2addr v3, v8

    or-int/2addr p0, v3

    mul-int/lit16 p0, p0, 0x1d1

    or-int v3, v7, p0

    shl-int/lit8 v3, v3, 0x1

    xor-int/2addr p0, v7

    sub-int/2addr v3, p0

    add-int/lit8 p0, v3, -0x3

    or-int/lit8 v3, v6, 0x1

    shl-int/lit8 v3, v3, 0x1

    xor-int/lit8 v6, v6, 0x1

    sub-int/2addr v3, v6

    sget v6, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    and-int/lit8 v7, v6, 0x5b

    or-int/lit8 v6, v6, 0x5b

    add-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    rem-int/2addr v7, v0

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 58

    const-class v1, [B

    invoke-static {}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->init$0()V

    const/16 v0, 0x99

    .line 2000
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    const/16 v3, 0x29

    aget-byte v3, v2, v3

    neg-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x46

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    const/16 v5, 0x507

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x5b

    aget-byte v5, v2, v4

    int-to-byte v5, v5

    const/16 v6, 0x10

    aget-byte v7, v2, v6

    int-to-byte v7, v7

    const/16 v8, 0x4f2

    int-to-short v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_62

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v3, v8

    not-int v8, v3

    const v9, -0x210d2ec6

    xor-int v11, v9, v8

    and-int/2addr v8, v9

    or-int/2addr v8, v11

    not-int v8, v8

    const v9, 0x1090e85

    or-int/2addr v8, v9

    mul-int/lit16 v8, v8, -0xf1

    const v9, -0x6d01e6b3

    or-int v11, v9, v8

    shl-int/2addr v11, v7

    xor-int/2addr v8, v9

    sub-int/2addr v11, v8

    const v8, 0x4c8fcd52    # 7.539368E7f

    xor-int v9, v11, v8

    and-int/2addr v8, v11

    shl-int/2addr v8, v7

    add-int/2addr v9, v8

    not-int v3, v3

    const v8, -0x210d2ec6

    xor-int v11, v8, v3

    and-int/2addr v3, v8

    or-int/2addr v3, v11

    const v8, 0x1491e87

    or-int/2addr v3, v8

    not-int v3, v3

    const v8, 0x401002

    xor-int v11, v8, v3

    and-int/2addr v3, v8

    or-int/2addr v3, v11

    mul-int/lit16 v3, v3, 0xf1

    xor-int v8, v9, v3

    and-int/2addr v3, v9

    shl-int/2addr v3, v7

    add-int/2addr v8, v3

    const v3, -0x3885494e

    xor-int v9, v3, v0

    and-int/2addr v3, v0

    or-int/2addr v3, v9

    not-int v3, v3

    const v9, 0x2081004d

    xor-int v11, v9, v3

    and-int/2addr v3, v9

    or-int/2addr v3, v11

    mul-int/lit16 v9, v3, 0x150

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    const v12, 0x28470

    mul-int/2addr v3, v12

    mul-int/lit16 v12, v8, -0x1e9

    and-int v13, v3, v12

    or-int/2addr v3, v12

    add-int/2addr v13, v3

    not-int v3, v9

    not-int v12, v8

    or-int/2addr v3, v12

    not-int v14, v11

    xor-int v15, v3, v14

    and-int/2addr v3, v14

    or-int/2addr v3, v15

    mul-int/lit16 v3, v3, -0x1ea

    add-int/2addr v13, v3

    not-int v3, v8

    xor-int v8, v3, v9

    and-int/2addr v3, v9

    or-int/2addr v3, v8

    not-int v3, v3

    or-int v8, v12, v11

    not-int v8, v8

    or-int/2addr v3, v8

    mul-int/lit16 v3, v3, 0x1ea

    add-int/2addr v13, v3

    not-int v3, v9

    mul-int/lit16 v3, v3, 0x1ea

    xor-int v8, v13, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v7

    add-int/2addr v8, v3

    const v3, 0x609130df

    xor-int v9, v3, v0

    and-int v11, v3, v0

    or-int/2addr v9, v11

    not-int v9, v9

    const v11, -0x789579e0

    xor-int v12, v11, v9

    and-int/2addr v9, v11

    or-int/2addr v9, v12

    mul-int/lit16 v9, v9, -0xa8

    neg-int v9, v9

    neg-int v9, v9

    and-int v11, v8, v9

    or-int/2addr v8, v9

    add-int/2addr v11, v8

    not-int v0, v0

    or-int/2addr v0, v3

    not-int v0, v0

    const v3, -0x3885494e

    or-int/2addr v0, v3

    mul-int/lit16 v3, v0, 0xa8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v8, v8

    const v9, -0x17178

    mul-int/2addr v0, v9

    mul-int/lit16 v9, v11, 0x235

    neg-int v9, v9

    neg-int v9, v9

    not-int v9, v9

    sub-int/2addr v0, v9

    sub-int/2addr v0, v7

    not-int v9, v3

    not-int v12, v11

    not-int v13, v8

    or-int/2addr v12, v13

    not-int v12, v12

    xor-int v14, v9, v12

    and-int/2addr v12, v9

    or-int/2addr v12, v14

    or-int v14, v11, v8

    not-int v14, v14

    xor-int v15, v12, v14

    and-int/2addr v12, v14

    or-int/2addr v12, v15

    mul-int/lit16 v12, v12, -0x234

    add-int/2addr v0, v12

    or-int v12, v9, v11

    xor-int v14, v12, v8

    and-int/2addr v8, v12

    or-int/2addr v8, v14

    not-int v8, v8

    mul-int/lit16 v8, v8, 0x468

    neg-int v8, v8

    neg-int v8, v8

    and-int v12, v0, v8

    or-int/2addr v0, v8

    add-int/2addr v12, v0

    xor-int v0, v9, v13

    and-int v8, v9, v13

    or-int/2addr v0, v8

    not-int v0, v0

    or-int/2addr v3, v11

    not-int v3, v3

    xor-int v8, v0, v3

    and-int/2addr v0, v3

    or-int/2addr v0, v8

    mul-int/lit16 v0, v0, 0x234

    not-int v0, v0

    sub-int/2addr v12, v0

    sub-int/2addr v12, v7

    if-nez v12, :cond_0

    goto/16 :goto_5a

    :cond_0
    const-wide v8, -0x58836345623abae0L    # -1.7728553867032E-118

    sput-wide v8, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientPurchaseEventDataSource:J

    const/16 v0, 0x45

    sput-byte v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->onNewPurchases:B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->setSubscriptionValidationResultListener:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const/16 v3, 0x13

    :try_start_1
    aget-byte v0, v2, v3

    neg-int v0, v0

    int-to-byte v0, v0

    const/16 v8, 0x105

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    const/16 v9, 0x4ee

    int-to-short v9, v9

    invoke-static {v0, v8, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getVERSION_NAMEannotations:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11

    const/16 v9, 0x42

    if-nez v0, :cond_2

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v0, v11

    not-int v11, v0

    const v12, -0x36e35b40    # -641612.0f

    xor-int v13, v12, v11

    and-int/2addr v11, v12

    or-int/2addr v11, v13

    not-int v11, v11

    const v12, 0x39d1f8ab

    xor-int v13, v12, v0

    and-int v14, v12, v0

    or-int/2addr v13, v14

    not-int v13, v13

    or-int/2addr v11, v13

    not-int v13, v0

    const v14, -0x39d1f8ac

    xor-int v15, v13, v14

    and-int v16, v13, v14

    or-int v15, v15, v16

    not-int v15, v15

    xor-int v16, v11, v15

    and-int/2addr v11, v15

    or-int v11, v16, v11

    mul-int/lit16 v11, v11, 0x3bf

    const v15, -0x70ee21a

    add-int/2addr v15, v11

    const v11, 0xab6c080

    and-int v16, v15, v11

    or-int/2addr v11, v15

    add-int v16, v16, v11

    xor-int v11, v12, v13

    and-int/2addr v12, v13

    or-int/2addr v11, v12

    not-int v11, v11

    const v12, -0x36e35b40    # -641612.0f

    xor-int v13, v12, v0

    and-int/2addr v12, v0

    or-int/2addr v12, v13

    not-int v12, v12

    xor-int v13, v11, v12

    and-int/2addr v11, v12

    or-int/2addr v11, v13

    xor-int v12, v14, v0

    and-int/2addr v0, v14

    or-int/2addr v0, v12

    not-int v0, v0

    or-int/2addr v0, v11

    mul-int/lit16 v0, v0, 0x3bf

    not-int v0, v0

    sub-int v16, v16, v0

    add-int/lit8 v0, v16, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    const v12, 0x7c4ccded

    xor-int v13, v12, v11

    and-int v14, v12, v11

    or-int/2addr v13, v14

    not-int v13, v13

    const v14, -0x5c8c53b4

    or-int/2addr v13, v14

    mul-int/lit16 v13, v13, -0xdc

    const v14, 0x7d8da68c

    add-int/2addr v14, v13

    or-int/2addr v11, v12

    not-int v11, v11

    const v12, -0x7ccce000

    xor-int v13, v12, v11

    and-int/2addr v11, v12

    or-int/2addr v11, v13

    mul-int/lit16 v11, v11, 0xdc

    and-int v12, v14, v11

    or-int/2addr v11, v14

    add-int/2addr v12, v11

    const v11, 0x12c40c64

    add-int/2addr v12, v11

    if-gt v0, v12, :cond_1

    const/16 v0, 0x6c

    :try_start_2
    aget-byte v0, v2, v0

    neg-int v0, v0

    int-to-byte v0, v0

    aget-byte v11, v2, v9

    int-to-byte v11, v11

    or-int/lit16 v12, v11, 0x1128

    int-to-short v12, v12

    invoke-static {v0, v11, v12}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2000
    :cond_1
    aget-byte v0, v2, v3

    neg-int v0, v0

    int-to-byte v0, v0

    const/16 v11, 0x1c

    aget-byte v11, v2, v11

    int-to-byte v11, v11

    xor-int/lit16 v12, v11, 0x4a1

    and-int/lit16 v13, v11, 0x4a1

    or-int/2addr v12, v13

    int-to-short v12, v12

    invoke-static {v0, v11, v12}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11

    goto :goto_0

    :cond_2
    move-object v0, v5

    :goto_0
    const/16 v11, 0x29

    const/4 v12, 0x2

    .line 3000
    :try_start_3
    aget-byte v11, v2, v11

    neg-int v11, v11

    int-to-byte v11, v11

    const/16 v13, 0x20d

    aget-byte v13, v2, v13

    int-to-byte v13, v13

    const/16 v14, 0x4a1

    int-to-short v14, v14

    invoke-static {v11, v13, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aget-byte v13, v2, v3

    neg-int v13, v13

    int-to-byte v13, v13

    const/4 v14, 0x6

    aget-byte v2, v2, v14

    int-to-byte v2, v2

    const/16 v14, 0x488

    int-to-short v14, v14

    invoke-static {v13, v2, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    new-array v13, v10, [Ljava/lang/Class;

    invoke-virtual {v11, v2, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v11, v5

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v2, :cond_3

    .line 0
    rem-int v11, v12, v12

    :catch_0
    move/from16 v16, v3

    goto :goto_1

    :catch_1
    move-object v2, v5

    .line 3000
    :cond_3
    :try_start_4
    sget-object v11, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    const/16 v13, 0x29

    aget-byte v13, v11, v13

    neg-int v13, v13

    int-to-byte v13, v13

    const/16 v14, 0x46

    aget-byte v14, v11, v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    int-to-byte v14, v14

    xor-int/lit16 v15, v14, 0x462

    move/from16 v16, v3

    and-int/lit16 v3, v14, 0x462

    or-int/2addr v3, v15

    int-to-short v3, v3

    :try_start_5
    invoke-static {v13, v14, v3}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v13, v11, v4

    int-to-byte v13, v13

    const/16 v14, 0x39

    aget-byte v11, v11, v14

    int-to-byte v11, v11

    const/16 v14, 0x462

    int-to-short v14, v14

    invoke-static {v13, v11, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v11

    new-array v13, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v11, v5

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :goto_1
    if-eqz v2, :cond_4

    .line 0
    sget v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    add-int/lit8 v3, v3, 0x6d

    rem-int/lit16 v11, v3, 0x80

    sput v11, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    rem-int/2addr v3, v12

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v11, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v13, v11, v4

    int-to-byte v13, v13

    aget-byte v11, v11, v9

    int-to-byte v11, v11

    or-int/lit16 v14, v11, 0x444

    int-to-short v14, v14

    invoke-static {v13, v11, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v11

    move-object v13, v5

    check-cast v13, [Ljava/lang/Class;

    invoke-virtual {v3, v11, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v11, v5

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    :cond_4
    move-object v3, v5

    :goto_2
    const/16 v11, 0xc

    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v15, v14, v4

    int-to-byte v15, v15

    aget-byte v14, v14, v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    int-to-byte v14, v14

    move/from16 v17, v4

    const/16 v4, 0x444

    int-to-short v4, v4

    :try_start_8
    invoke-static {v15, v14, v4}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    move-object v14, v5

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v13, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v13, v5

    check-cast v13, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    :goto_3
    move-object v4, v5

    goto :goto_4

    :catch_5
    :cond_5
    move/from16 v17, v4

    goto :goto_3

    :goto_4
    if-eqz v2, :cond_6

    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v15, v14, v17

    int-to-byte v15, v15

    aget-byte v14, v14, v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    int-to-byte v14, v14

    move/from16 v18, v9

    const/16 v9, 0x436

    int-to-short v9, v9

    :try_start_a
    invoke-static {v15, v14, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v9

    move-object v14, v5

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v13, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v13, v5

    check-cast v13, [Ljava/lang/Object;

    invoke-virtual {v9, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_6

    :catch_6
    :goto_5
    move-object v2, v5

    goto :goto_6

    :catch_7
    :cond_6
    move/from16 v18, v9

    goto :goto_5

    :goto_6
    if-eqz v3, :cond_7

    sget v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v14, v0, 0x80

    sput v14, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    rem-int/2addr v0, v12

    if-nez v0, :cond_8

    const/16 v0, 0x42

    :try_start_b
    div-int/2addr v0, v10
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    throw v0

    :cond_7
    if-nez v0, :cond_9

    move-object v3, v5

    :cond_8
    :goto_7
    const/16 v19, 0x10f

    const/16 v20, 0xfb

    goto :goto_8

    :cond_9
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v15, v14, v11

    int-to-byte v15, v15

    const/16 v19, 0x10f

    aget-byte v9, v14, v18

    int-to-byte v9, v9

    const/16 v20, 0xfb

    const/16 v13, 0x42c

    int-to-short v13, v13

    invoke-static {v15, v9, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_11

    rem-int v3, v12, v12

    sget v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    xor-int/lit8 v9, v3, 0x17

    and-int/lit8 v3, v3, 0x17

    shl-int/2addr v3, v7

    add-int/2addr v9, v3

    rem-int/lit16 v3, v9, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    rem-int/2addr v9, v12

    :try_start_d
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    aget-byte v3, v14, v20

    int-to-byte v3, v3

    aget-byte v9, v14, v19

    int-to-byte v9, v9

    const/16 v13, 0x422

    int-to-short v13, v13

    invoke-static {v3, v9, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v9, v7, [Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    aput-object v13, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_61

    :goto_8
    if-eqz v2, :cond_a

    move/from16 v21, v10

    goto :goto_9

    :cond_a
    :try_start_e
    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v2, v0, v20

    int-to-byte v2, v2

    const/16 v9, 0x48

    aget-byte v9, v0, v9

    int-to-byte v9, v9

    const/16 v13, 0x417

    int-to-short v13, v13

    invoke-static {v2, v9, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    :try_start_f
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    aget-byte v9, v0, v20

    int-to-byte v9, v9

    const/16 v13, 0x1d

    aget-byte v13, v0, v13

    int-to-byte v13, v13

    const/16 v14, 0x40a

    int-to-short v14, v14

    invoke-static {v9, v13, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aget-byte v13, v0, v17

    int-to-byte v13, v13

    aget-byte v14, v0, v18

    int-to-byte v14, v14

    xor-int/lit16 v15, v14, 0x3f1

    move/from16 v21, v10

    and-int/lit16 v10, v14, 0x3f1

    or-int/2addr v10, v15

    int-to-short v10, v10

    invoke-static {v13, v14, v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v10

    new-array v13, v7, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v21

    invoke-virtual {v9, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_60

    :try_start_10
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    aget-byte v9, v0, v20

    int-to-byte v9, v9

    aget-byte v0, v0, v19

    int-to-byte v0, v0

    const/16 v10, 0x422

    int-to-short v10, v10

    invoke-static {v9, v0, v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v9, v7, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v21

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5f

    :goto_9
    if-nez v4, :cond_c

    if-eqz v3, :cond_c

    :try_start_11
    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v4, v0, v16

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v9, 0x25

    aget-byte v9, v0, v9

    int-to-byte v9, v9

    const/16 v10, 0x3f1

    int-to-short v10, v10

    invoke-static {v4, v9, v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    :try_start_12
    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v7

    aput-object v3, v9, v21

    aget-byte v4, v0, v20

    int-to-byte v4, v4

    aget-byte v10, v0, v19

    int-to-byte v10, v10

    const/16 v13, 0x422

    int-to-short v13, v13

    invoke-static {v4, v10, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v10, v12, [Ljava/lang/Class;

    aget-byte v14, v0, v20

    int-to-byte v14, v14

    aget-byte v0, v0, v19

    int-to-byte v0, v0

    invoke-static {v14, v0, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v10, v21

    const-class v0, Ljava/lang/String;

    aput-object v0, v10, v7

    invoke-virtual {v4, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_b

    throw v1

    :cond_b
    throw v0

    :cond_c
    :goto_a
    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v9, v0, v20

    int-to-byte v9, v9

    aget-byte v10, v0, v19

    int-to-byte v10, v10

    const/16 v13, 0x422

    int-to-short v13, v13

    invoke-static {v9, v10, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x7

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    aput-object v5, v9, v21

    aput-object v4, v9, v7

    aput-object v3, v9, v12

    const/4 v14, 0x3

    aput-object v2, v9, v14

    const/4 v15, 0x4

    aput-object v4, v9, v15

    const/4 v4, 0x5

    aput-object v3, v9, v4

    const/4 v3, 0x6

    aput-object v2, v9, v3

    new-array v2, v10, [Z

    fill-array-data v2, :array_0

    new-array v3, v10, [Z

    fill-array-data v3, :array_1

    move/from16 v22, v15

    new-array v15, v10, [Z

    aput-boolean v21, v15, v21

    aput-boolean v21, v15, v7

    aput-boolean v7, v15, v12

    aput-boolean v7, v15, v14

    aput-boolean v21, v15, v22

    aput-boolean v7, v15, v4

    const/16 v23, 0x6

    aput-boolean v7, v15, v23
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11

    const/16 v23, 0x29

    move/from16 v24, v10

    :try_start_14
    aget-byte v10, v0, v23
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11

    neg-int v10, v10

    int-to-byte v10, v10

    const/16 v23, 0x7e

    move/from16 v25, v6

    :try_start_15
    aget-byte v6, v0, v23

    int-to-byte v6, v6

    const/16 v14, 0x3e8

    int-to-short v14, v14

    invoke-static {v10, v6, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v10, 0x8a

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    const/16 v14, 0x17

    aget-byte v0, v0, v14

    int-to-byte v0, v0

    const/16 v14, 0x3d1

    int-to-short v14, v14

    invoke-static {v10, v0, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    const/16 v6, 0x22

    if-lt v0, v6, :cond_d

    sget v6, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    and-int/lit8 v10, v6, 0x59

    or-int/lit8 v6, v6, 0x59

    add-int/2addr v10, v6

    rem-int/lit16 v6, v10, 0x80

    sput v6, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    rem-int/2addr v10, v12

    move v6, v7

    goto :goto_b

    :cond_d
    move/from16 v6, v21

    :goto_b
    const/16 v10, 0x1d

    if-ne v0, v10, :cond_e

    goto :goto_c

    :cond_e
    const/16 v10, 0x1a

    if-lt v0, v10, :cond_f

    move v10, v7

    goto :goto_d

    :cond_f
    :goto_c
    move/from16 v10, v21

    :goto_d
    :try_start_16
    aput-boolean v10, v15, v21
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_11

    const/16 v10, 0x15

    if-lt v0, v10, :cond_11

    sget v10, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    and-int/lit8 v14, v10, 0x73

    or-int/lit8 v10, v10, 0x73

    add-int/2addr v14, v10

    rem-int/lit16 v10, v14, 0x80

    sput v10, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    rem-int/2addr v14, v12

    if-eqz v14, :cond_10

    goto :goto_e

    :cond_10
    move v10, v7

    goto :goto_f

    :cond_11
    :goto_e
    move/from16 v10, v21

    :goto_f
    :try_start_17
    aput-boolean v10, v15, v7

    const/16 v10, 0x15

    if-lt v0, v10, :cond_12

    move v0, v7

    goto :goto_10

    :cond_12
    move/from16 v0, v21

    :goto_10
    aput-boolean v0, v15, v22
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11

    goto :goto_11

    :catch_8
    move/from16 v25, v6

    :catch_9
    move/from16 v6, v21

    :catch_a
    :goto_11
    move/from16 v10, v21

    move v14, v10

    :goto_12
    xor-int/lit8 v0, v10, 0x1

    if-eq v0, v7, :cond_13

    goto/16 :goto_5a

    :cond_13
    const/16 v0, 0x9

    if-ge v14, v0, :cond_66

    :try_start_18
    aget-boolean v0, v15, v14
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_11

    if-eqz v0, :cond_65

    move/from16 v26, v4

    const/16 v27, 0xe

    move/from16 v28, v12

    :try_start_19
    aget-boolean v12, v2, v14

    aget-object v0, v9, v14

    aget-boolean v29, v3, v14
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5d

    const/16 v30, 0x2b

    if-eqz v12, :cond_17

    if-eqz v0, :cond_15

    sget v31, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    add-int/lit8 v11, v31, 0x1

    rem-int/lit16 v7, v11, 0x80

    sput v7, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    rem-int/lit8 v11, v11, 0x2

    .line 4000
    :try_start_1a
    sget-object v7, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v11, v7, v20

    int-to-byte v11, v11

    aget-byte v4, v7, v19

    int-to-byte v4, v4

    invoke-static {v11, v4, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v11, v7, v16

    neg-int v11, v11

    int-to-byte v11, v11

    const/16 v33, 0x11e

    aget-byte v7, v7, v33

    int-to-byte v7, v7

    const/16 v5, 0x3cb

    int-to-short v5, v5

    invoke-static {v11, v7, v5}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    if-eqz v4, :cond_15

    goto :goto_13

    :catchall_2
    move-exception v0

    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_14

    throw v4

    :cond_14
    throw v0

    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    const/16 v7, 0x17f

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    aget-byte v11, v5, v25

    int-to-byte v11, v11

    or-int/lit16 v12, v11, 0x3c0

    int-to-short v12, v12

    invoke-static {v7, v11, v12}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v4, v5, v30

    int-to-byte v4, v4

    aget-byte v7, v5, v24

    int-to-byte v7, v7

    xor-int/lit16 v11, v7, 0x3c0

    and-int/lit16 v12, v7, 0x3c0

    or-int/2addr v11, v12

    int-to-short v11, v11

    invoke-static {v4, v7, v11}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_12

    :try_start_1c
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    aget-byte v4, v5, v20

    int-to-byte v4, v4

    aget-byte v5, v5, v27

    int-to-byte v5, v5

    const/16 v7, 0x3c0

    int-to-short v11, v7

    invoke-static {v4, v5, v11}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v7, v21

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_16

    throw v4

    :cond_16
    throw v0

    :cond_17
    :goto_13
    if-eqz v12, :cond_2b

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    .line 0
    sget v5, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    add-int/lit8 v5, v5, 0x1b

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    rem-int/lit8 v5, v5, 0x2

    .line 4000
    :try_start_1e
    sget-object v5, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v7, v5, v20

    int-to-byte v7, v7

    const/16 v11, 0x1d

    aget-byte v11, v5, v11
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    int-to-byte v11, v11

    move-object/from16 v34, v1

    const/16 v1, 0x40a

    int-to-short v1, v1

    :try_start_1f
    invoke-static {v7, v11, v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aget-byte v7, v5, v16

    neg-int v7, v7

    int-to-byte v7, v7

    aget-byte v5, v5, v22

    int-to-byte v5, v5

    const/16 v11, 0x3ae

    int-to-short v11, v11

    invoke-static {v7, v5, v11}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v35
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    const-wide/32 v37, -0x4d594a85

    move-object v5, v2

    xor-long v1, v35, v37

    :try_start_20
    invoke-virtual {v4, v1, v2}, Ljava/util/Random;->setSeed(J)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_14
    if-nez v1, :cond_29

    if-nez v2, :cond_18

    const/16 v35, 0x6

    move-object/from16 v37, v1

    move/from16 v1, v35

    move-object/from16 v35, v2

    goto :goto_16

    :cond_18
    if-nez v7, :cond_19

    .line 0
    sget v35, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    or-int/lit8 v36, v35, 0x27

    const/16 v31, 0x1

    shl-int/lit8 v36, v36, 0x1

    xor-int/lit8 v35, v35, 0x27

    move-object/from16 v37, v1

    sub-int v1, v36, v35

    move-object/from16 v35, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    rem-int/lit8 v1, v1, 0x2

    move/from16 v1, v26

    goto :goto_16

    :cond_19
    move-object/from16 v37, v1

    move-object/from16 v35, v2

    if-nez v11, :cond_1b

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    and-int/lit8 v2, v1, 0x5

    or-int/lit8 v1, v1, 0x5

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1a

    goto :goto_15

    :cond_1a
    move/from16 v1, v22

    goto :goto_16

    :cond_1b
    :goto_15
    const/4 v1, 0x3

    .line 4000
    :goto_16
    :try_start_21
    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    move-object/from16 v36, v3

    add-int/lit8 v3, v1, 0x1

    :try_start_22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v3, v21

    :goto_17
    if-ge v3, v1, :cond_1e

    move/from16 v38, v1

    if-eqz v29, :cond_1d

    const/16 v1, 0x1a

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v39

    if-eqz v39, :cond_1c

    and-int/lit8 v39, v1, 0x41

    or-int/lit8 v1, v1, 0x41

    goto :goto_18

    :cond_1c
    neg-int v1, v1

    neg-int v1, v1

    xor-int/lit8 v39, v1, 0x60

    and-int/lit8 v1, v1, 0x60

    const/16 v31, 0x1

    shl-int/lit8 v1, v1, 0x1

    :goto_18
    add-int v39, v39, v1

    move/from16 v1, v39

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v39, v3

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    goto :goto_19

    :cond_1d
    move/from16 v39, v3

    const/16 v1, 0xc

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    move-object/from16 v40, v4

    move-object v1, v5

    :try_start_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    long-to-int v4, v4

    mul-int/lit16 v5, v3, 0x212

    neg-int v5, v5

    neg-int v5, v5

    move-object/from16 v41, v1

    and-int/lit16 v1, v5, 0x422

    or-int/lit16 v5, v5, 0x422

    add-int/2addr v1, v5

    const v5, 0x424000

    and-int v42, v1, v5

    or-int/2addr v1, v5

    add-int v42, v42, v1

    not-int v1, v4

    or-int/2addr v1, v3

    not-int v1, v1

    xor-int/lit16 v5, v3, 0x2000

    move/from16 v43, v1

    and-int/lit16 v1, v3, 0x2000

    or-int/2addr v1, v5

    not-int v1, v1

    or-int v1, v43, v1

    mul-int/lit16 v1, v1, 0x211

    add-int v42, v42, v1

    or-int v1, v3, v4

    not-int v1, v1

    const/16 v3, -0x2001

    xor-int v4, v3, v1

    and-int/2addr v1, v3

    or-int/2addr v1, v4

    mul-int/lit16 v1, v1, 0x211

    add-int v1, v42, v1

    int-to-char v1, v1

    :try_start_24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_19
    add-int/lit8 v3, v39, -0x35

    xor-int/lit8 v1, v3, 0x36

    and-int/lit8 v3, v3, 0x36

    const/16 v31, 0x1

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    move/from16 v1, v38

    move-object/from16 v4, v40

    move-object/from16 v5, v41

    goto/16 :goto_17

    :catchall_4
    move-exception v0

    move-object/from16 v41, v1

    goto/16 :goto_20

    :cond_1e
    move-object/from16 v40, v4

    move-object/from16 v41, v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    if-nez v35, :cond_20

    move/from16 v2, v28

    :try_start_25
    new-array v3, v2, [Ljava/lang/Object;

    const/16 v31, 0x1

    aput-object v1, v3, v31

    aput-object v0, v3, v21

    sget-object v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v2, v1, v20

    int-to-byte v2, v2

    aget-byte v4, v1, v19

    int-to-byte v4, v4

    invoke-static {v2, v4, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aget-byte v4, v1, v20

    int-to-byte v4, v4

    aget-byte v1, v1, v19

    int-to-byte v1, v1

    invoke-static {v4, v1, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v5, v21

    const-class v1, Ljava/lang/String;

    const/16 v31, 0x1

    aput-object v1, v5, v31

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    move-object v2, v1

    move/from16 v38, v6

    :goto_1a
    move-object/from16 v1, v37

    goto/16 :goto_1c

    :catchall_5
    move-exception v0

    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1f

    throw v1

    :cond_1f
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    :cond_20
    if-nez v7, :cond_22

    const/4 v2, 0x2

    :try_start_27
    new-array v3, v2, [Ljava/lang/Object;

    const/16 v31, 0x1

    aput-object v1, v3, v31

    aput-object v0, v3, v21

    sget-object v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v2, v1, v20

    int-to-byte v2, v2

    aget-byte v4, v1, v19

    int-to-byte v4, v4

    invoke-static {v2, v4, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aget-byte v4, v1, v20

    int-to-byte v4, v4

    aget-byte v1, v1, v19

    int-to-byte v1, v1

    invoke-static {v4, v1, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v5, v21

    const-class v1, Ljava/lang/String;

    const/16 v31, 0x1

    aput-object v1, v5, v31

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    move-object v7, v1

    :goto_1b
    move/from16 v38, v6

    move-object/from16 v2, v35

    goto :goto_1a

    :catchall_6
    move-exception v0

    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_21

    throw v1

    :cond_21
    throw v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    :cond_22
    if-nez v11, :cond_24

    const/4 v2, 0x2

    :try_start_29
    new-array v3, v2, [Ljava/lang/Object;

    const/16 v31, 0x1

    aput-object v1, v3, v31

    aput-object v0, v3, v21

    sget-object v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v2, v1, v20

    int-to-byte v2, v2

    aget-byte v4, v1, v19

    int-to-byte v4, v4

    invoke-static {v2, v4, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aget-byte v4, v1, v20

    int-to-byte v4, v4

    aget-byte v1, v1, v19

    int-to-byte v1, v1

    invoke-static {v4, v1, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v5, v21

    const-class v1, Ljava/lang/String;

    const/16 v31, 0x1

    aput-object v1, v5, v31

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    move-object v11, v1

    goto :goto_1b

    :catchall_7
    move-exception v0

    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_23

    throw v1

    :cond_23
    throw v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    :cond_24
    const/4 v2, 0x2

    :try_start_2b
    new-array v3, v2, [Ljava/lang/Object;

    const/16 v31, 0x1

    aput-object v1, v3, v31

    aput-object v0, v3, v21

    sget-object v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v2, v1, v20

    int-to-byte v2, v2

    aget-byte v4, v1, v19

    int-to-byte v4, v4

    invoke-static {v2, v4, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aget-byte v4, v1, v20

    int-to-byte v4, v4

    move-object/from16 v37, v1

    aget-byte v1, v37, v19

    int-to-byte v1, v1

    invoke-static {v4, v1, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v5, v21

    const-class v1, Ljava/lang/String;

    const/16 v31, 0x1

    aput-object v1, v5, v31

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    :try_start_2c
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    aget-byte v3, v37, v20

    int-to-byte v3, v3

    const/16 v4, 0x7e

    aget-byte v4, v37, v4

    int-to-byte v4, v4

    const/16 v5, 0x39e

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_a

    move/from16 v38, v6

    const/4 v4, 0x1

    :try_start_2d
    new-array v6, v4, [Ljava/lang/Class;

    aget-byte v4, v37, v20

    int-to-byte v4, v4

    move-object/from16 v39, v7

    aget-byte v7, v37, v19

    int-to-byte v7, v7

    invoke-static {v4, v7, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v6, v21

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    :try_start_2e
    aget-byte v3, v37, v20

    int-to-byte v3, v3

    const/16 v4, 0x7e

    aget-byte v4, v37, v4

    int-to-byte v4, v4

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v37, v16

    neg-int v4, v4

    int-to-byte v4, v4

    aget-byte v5, v37, v25

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x383

    and-int/lit16 v7, v5, 0x383

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_8

    move-object/from16 v2, v35

    move-object/from16 v7, v39

    :goto_1c
    move-object/from16 v3, v36

    move/from16 v6, v38

    move-object/from16 v4, v40

    move-object/from16 v5, v41

    const/16 v28, 0x2

    goto/16 :goto_14

    :catchall_8
    move-exception v0

    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_25

    throw v2

    :cond_25
    throw v0

    :catchall_9
    move-exception v0

    goto :goto_1d

    :catchall_a
    move-exception v0

    move/from16 v38, v6

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_26

    throw v2

    :cond_26
    throw v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_b
    .catchall {:try_start_2f .. :try_end_2f} :catchall_5c

    :catch_b
    move-exception v0

    :try_start_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    const/16 v4, 0x17f

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    aget-byte v5, v3, v25

    int-to-byte v5, v5

    const/16 v6, 0x383

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v3, v30

    int-to-byte v2, v2

    aget-byte v4, v3, v24

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0x3c0

    and-int/lit16 v6, v4, 0x3c0

    or-int/2addr v5, v6

    int-to-short v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_5c

    const/4 v2, 0x2

    :try_start_31
    new-array v4, v2, [Ljava/lang/Object;

    const/16 v31, 0x1

    aput-object v0, v4, v31

    aput-object v1, v4, v21

    aget-byte v0, v3, v20

    int-to-byte v0, v0

    aget-byte v1, v3, v27

    int-to-byte v1, v1

    const/16 v7, 0x3c0

    int-to-short v2, v7

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v21

    const-class v2, Ljava/lang/Throwable;

    const/16 v31, 0x1

    aput-object v2, v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_b

    :catchall_b
    move-exception v0

    :try_start_32
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_27

    throw v1

    :cond_27
    throw v0

    :catchall_c
    move-exception v0

    move/from16 v38, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_28

    throw v1

    :cond_28
    throw v0

    :catchall_d
    move-exception v0

    goto :goto_20

    :catchall_e
    move-exception v0

    goto :goto_1e

    :cond_29
    move-object/from16 v37, v1

    move-object/from16 v35, v2

    move-object/from16 v41, v5

    move-object/from16 v39, v7

    goto :goto_21

    :catchall_f
    move-exception v0

    move-object/from16 v36, v3

    :goto_1e
    move-object/from16 v41, v5

    goto :goto_20

    :catchall_10
    move-exception v0

    goto :goto_1f

    :catchall_11
    move-exception v0

    move-object/from16 v34, v1

    :goto_1f
    move-object/from16 v41, v2

    move-object/from16 v36, v3

    move/from16 v38, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2a

    throw v1

    :cond_2a
    throw v0

    :catchall_12
    move-exception v0

    move-object/from16 v34, v1

    move-object/from16 v41, v2

    move-object/from16 v36, v3

    :goto_20
    move/from16 v38, v6

    goto/16 :goto_51

    :cond_2b
    move-object/from16 v34, v1

    move-object/from16 v41, v2

    const/4 v11, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    :goto_21
    move-object/from16 v36, v3

    move/from16 v38, v6

    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_5c

    const/16 v32, 0xc

    :try_start_33
    aget-byte v1, v0, v32
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_5b

    int-to-byte v1, v1

    const/16 v2, 0xa

    :try_start_34
    aget-byte v2, v0, v2

    neg-int v2, v2

    int-to-byte v2, v2

    xor-int/lit16 v3, v2, 0x34c

    and-int/lit16 v4, v2, 0x34c

    or-int/2addr v3, v4

    int-to-short v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_5c

    :try_start_35
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    const-class v4, Ljava/lang/Class;

    aget-byte v5, v0, v17

    int-to-byte v5, v5

    aget-byte v6, v0, v18

    int-to-byte v6, v6

    const/16 v7, 0x34c

    int-to-short v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v7, v21

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_59

    :try_start_36
    aget-byte v3, v0, v20

    int-to-byte v3, v3

    aget-byte v4, v0, v19

    int-to-byte v4, v4

    const/16 v5, 0x342

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v0, v17

    int-to-byte v4, v4

    const/16 v5, 0x17

    aget-byte v5, v0, v5

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x331

    and-int/lit16 v7, v5, 0x331

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_58

    :try_start_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v4, v0, v24

    int-to-byte v4, v4

    int-to-byte v5, v4

    xor-int/lit16 v6, v5, 0x331

    and-int/lit16 v7, v5, 0x331

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move/from16 v4, v26

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_5c

    const/16 v2, 0x1e11

    :try_start_38
    new-array v2, v2, [B

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_56

    :try_start_39
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    aget-byte v4, v0, v20

    int-to-byte v4, v4

    const/16 v5, 0x35b

    aget-byte v5, v0, v5

    int-to-byte v5, v5

    const/16 v6, 0x331

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    aget-byte v5, v0, v20

    int-to-byte v5, v5

    aget-byte v7, v0, v27

    int-to-byte v7, v7

    move-object/from16 v29, v2

    xor-int/lit16 v2, v7, 0x305

    move/from16 v40, v2

    and-int/lit16 v2, v7, 0x305

    or-int v2, v40, v2

    int-to-short v2, v2

    invoke-static {v5, v7, v2}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v6, v21

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_54

    :try_start_3a
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    aget-byte v2, v0, v20

    int-to-byte v2, v2

    const/16 v4, 0x75

    aget-byte v4, v0, v4

    int-to-byte v4, v4

    const/16 v5, 0x305

    int-to-short v6, v5

    invoke-static {v2, v4, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Class;

    aget-byte v4, v0, v20

    int-to-byte v4, v4

    aget-byte v5, v0, v27
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_53

    int-to-byte v5, v5

    move-object/from16 v42, v8

    xor-int/lit16 v8, v5, 0x305

    move/from16 v43, v8

    and-int/lit16 v8, v5, 0x305

    or-int v8, v43, v8

    int-to-short v8, v8

    :try_start_3b
    invoke-static {v4, v5, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v7, v21

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_52

    const/16 v28, 0x2

    .line 0
    rem-int v2, v28, v28

    .line 4000
    :try_start_3c
    filled-new-array/range {v29 .. v29}, [Ljava/lang/Object;

    move-result-object v2

    aget-byte v4, v0, v20

    int-to-byte v4, v4

    const/16 v5, 0x75

    aget-byte v5, v0, v5

    int-to-byte v5, v5

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v31, 0x1

    aget-byte v5, v0, v31

    int-to-byte v5, v5

    aget-byte v7, v0, v30

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x2e7

    move/from16 v43, v8

    and-int/lit16 v8, v7, 0x2e7

    or-int v8, v43, v8

    int-to-short v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v34, v8, v21

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_51

    .line 0
    sget v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    const/16 v28, 0x2

    rem-int/lit8 v2, v2, 0x2

    .line 4000
    :try_start_3d
    aget-byte v2, v0, v20

    int-to-byte v2, v2

    const/16 v4, 0x75

    aget-byte v4, v0, v4

    int-to-byte v4, v4

    invoke-static {v2, v4, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v4, v0, v16

    neg-int v4, v4

    int-to-byte v4, v4

    aget-byte v0, v0, v25

    int-to-byte v0, v0

    xor-int/lit16 v5, v0, 0x383

    and-int/lit16 v6, v0, 0x383

    or-int/2addr v5, v6

    int-to-short v5, v5

    invoke-static {v4, v0, v5}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_50

    const/16 v28, 0x2

    .line 0
    rem-int v0, v28, v28

    const/16 v0, 0x11

    const/16 v1, 0x1de5

    move v2, v1

    move v1, v0

    move v0, v2

    move-object/from16 v2, v29

    move-object/from16 v5, v42

    const/4 v4, 0x0

    :goto_22
    const/4 v6, 0x1

    int-to-long v7, v6

    move/from16 v31, v6

    .line 5000
    :try_start_3e
    array-length v6, v2
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_4f

    move-wide/from16 v43, v7

    move/from16 v7, v21

    :goto_23
    if-ge v7, v6, :cond_2d

    .line 0
    sget v8, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    xor-int/lit8 v29, v8, 0x5f

    and-int/lit8 v8, v8, 0x5f

    shl-int/lit8 v8, v8, 0x1

    add-int v8, v29, v8

    move/from16 v29, v6

    rem-int/lit16 v6, v8, 0x80

    sput v6, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    const/16 v28, 0x2

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_2c

    :try_start_3f
    aget-byte v6, v2, v7

    move v8, v7

    int-to-long v6, v6

    const/16 v45, 0xa

    shr-long v45, v43, v45

    rem-long v6, v6, v45

    const/16 v45, 0x2d

    shl-long v45, v43, v45

    or-long v6, v6, v45

    rem-long v43, v6, v43
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_13

    add-int/lit8 v7, v8, 0x13

    xor-int/lit8 v6, v7, -0x7

    and-int/lit8 v7, v7, -0x7

    const/16 v31, 0x1

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v6

    move/from16 v6, v29

    const/16 v31, 0x1

    goto :goto_23

    :catchall_13
    move-exception v0

    :goto_24
    move-object v1, v0

    move-object v6, v3

    move-object/from16 v47, v9

    move/from16 v43, v10

    move/from16 v51, v14

    move-object/from16 v46, v15

    const/16 v23, 0x3

    :goto_25
    const/16 v32, 0xc

    goto/16 :goto_4f

    :cond_2c
    move v8, v7

    .line 5000
    :try_start_40
    aget-byte v6, v2, v8
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_14

    int-to-long v6, v6

    const/16 v45, 0x6

    shl-long v45, v43, v45

    add-long v6, v6, v45

    shl-long v45, v43, v25

    add-long v6, v6, v45

    sub-long v43, v6, v43

    or-int/lit8 v6, v8, 0x2d

    const/16 v31, 0x1

    shl-int/lit8 v6, v6, 0x1

    xor-int/lit8 v7, v8, 0x2d

    sub-int/2addr v6, v7

    or-int/lit8 v7, v6, -0x2c

    shl-int/lit8 v7, v7, 0x1

    xor-int/lit8 v6, v6, -0x2c

    sub-int/2addr v7, v6

    move/from16 v6, v29

    goto :goto_23

    :catchall_14
    move-exception v0

    const/16 v31, 0x1

    goto :goto_24

    :cond_2d
    add-int/lit16 v6, v1, 0x1d7

    or-int/lit16 v7, v1, 0x1dff

    shl-int/lit8 v7, v7, 0x1

    xor-int/lit16 v8, v1, 0x1dff

    sub-int/2addr v7, v8

    .line 4000
    :try_start_41
    aget-byte v7, v2, v7

    xor-int/lit8 v8, v7, 0x70

    and-int/lit8 v7, v7, 0x70

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v8, v7

    int-to-byte v7, v8

    aput-byte v7, v2, v6

    array-length v6, v2

    neg-int v7, v1

    move v8, v1

    move-object/from16 v29, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_4f

    long-to-int v1, v1

    mul-int/lit16 v2, v7, 0x274

    move/from16 v45, v2

    mul-int/lit16 v2, v6, 0x274

    neg-int v2, v2

    neg-int v2, v2

    or-int v46, v45, v2

    const/16 v31, 0x1

    shl-int/lit8 v46, v46, 0x1

    xor-int v2, v45, v2

    sub-int v46, v46, v2

    xor-int v2, v6, v1

    and-int v45, v6, v1

    or-int v2, v2, v45

    move/from16 v45, v2

    not-int v2, v7

    xor-int v47, v45, v2

    and-int v2, v45, v2

    or-int v2, v47, v2

    mul-int/lit16 v2, v2, -0x273

    add-int v46, v46, v2

    not-int v2, v6

    xor-int v45, v2, v1

    and-int/2addr v2, v1

    or-int v2, v45, v2

    not-int v2, v2

    or-int/2addr v2, v7

    mul-int/lit16 v2, v2, -0x273

    not-int v2, v2

    sub-int v46, v46, v2

    const/16 v31, 0x1

    add-int/lit8 v46, v46, -0x1

    not-int v2, v1

    xor-int v45, v2, v6

    and-int/2addr v2, v6

    or-int v2, v45, v2

    not-int v2, v2

    xor-int v6, v7, v1

    and-int/2addr v1, v7

    or-int/2addr v1, v6

    not-int v1, v1

    or-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x273

    not-int v1, v1

    sub-int v46, v46, v1

    const/16 v31, 0x1

    add-int/lit8 v46, v46, -0x1

    const/4 v1, 0x3

    :try_start_42
    new-array v2, v1, [Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_4e

    :try_start_43
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v28, 0x2

    aput-object v1, v2, v28

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v31

    aput-object v29, v2, v21

    sget-object v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v6, v1, v20

    int-to-byte v6, v6

    const/16 v7, 0xf0

    aget-byte v7, v1, v7

    int-to-byte v7, v7

    move-object/from16 v29, v1

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$b:I

    move/from16 v45, v8

    xor-int/lit16 v8, v1, 0x240

    move/from16 v46, v8

    and-int/lit16 v8, v1, 0x240

    or-int v8, v46, v8

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_4d

    const/4 v7, 0x3

    :try_start_44
    new-array v8, v7, [Ljava/lang/Class;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_4c

    :try_start_45
    aput-object v34, v8, v21

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v31, 0x1

    aput-object v7, v8, v31

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v28, 0x2

    aput-object v7, v8, v28

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_4d

    :try_start_46
    sget-object v6, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getVERSION_NAMEannotations:Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_4f

    if-nez v6, :cond_30

    :try_start_47
    sput-wide v43, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientInAppPurchaseValidationResultListener:J

    move/from16 v6, v25

    new-array v7, v6, [B

    fill-array-data v7, :array_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v46

    const/16 v6, 0x30

    shr-long v46, v46, v6

    const-wide v48, -0x459ef899201dd269L    # -1.7194808462625085E-27

    add-long v46, v46, v48

    move v8, v1

    move-object/from16 v48, v2

    xor-long v1, v43, v46

    long-to-int v1, v1

    sget-wide v43, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientInAppPurchaseValidationResultListener:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v46

    const/16 v2, 0x20

    shr-long v46, v46, v2

    const-wide v49, 0x459ef8993e9aaa81L    # 2.3962718937049134E27

    add-long v46, v46, v49

    move v6, v1

    xor-long v1, v43, v46

    long-to-int v1, v1

    int-to-byte v1, v1

    move/from16 v43, v1

    const/16 v2, 0x10

    new-array v1, v2, [B

    sget-wide v46, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientInAppPurchaseValidationResultListener:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v49

    const/16 v2, 0x30

    shr-long v49, v49, v2

    const-wide v51, 0x459ef8993e9aaa89L    # 2.3962718937049156E27

    sub-long v51, v51, v49

    move/from16 v44, v6

    move-object v2, v7

    xor-long v6, v46, v51

    long-to-int v6, v6

    move/from16 v7, v21

    invoke-static {v7, v7}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v46
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_19

    move-object/from16 v47, v2

    const/4 v7, 0x5

    :try_start_48
    new-array v2, v7, [Ljava/lang/Object;

    const/16 v25, 0x10

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v22

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v23, 0x3

    aput-object v7, v2, v23

    const/16 v28, 0x2

    aput-object v1, v2, v28

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v31, 0x1

    aput-object v6, v2, v31

    const/16 v21, 0x0

    aput-object v47, v2, v21

    aget-byte v6, v29, v20

    int-to-byte v6, v6

    const/16 v7, 0x1d

    aget-byte v7, v29, v7

    int-to-byte v7, v7

    move/from16 v46, v8

    const/16 v8, 0x40a

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x29

    aget-byte v7, v29, v7

    neg-int v7, v7

    int-to-byte v7, v7

    aget-byte v8, v29, v30
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_17

    int-to-byte v8, v8

    move-object/from16 v47, v9

    or-int/lit16 v9, v8, 0x2c4

    int-to-short v9, v9

    :try_start_49
    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    new-array v9, v8, [Ljava/lang/Class;

    const-class v26, Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v26, v9, v21

    sget-object v26, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v31, 0x1

    aput-object v26, v9, v31

    const-class v26, Ljava/lang/Object;

    const/16 v28, 0x2

    aput-object v26, v9, v28

    sget-object v26, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x3

    aput-object v26, v9, v23

    sget-object v26, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v26, v9, v22

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_16

    :try_start_4a
    sget-byte v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->onNewPurchases:B

    sget-wide v6, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientPurchaseEventDataSource:J

    invoke-static {v1, v2, v6, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1m;->getPackageName([BBJ)V

    invoke-static/range {v44 .. v44}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1j;->toJsonMap(I)[[B

    move-result-object v2
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_18

    move/from16 v6, v22

    :try_start_4b
    new-array v7, v6, [Ljava/lang/Object;

    const/16 v23, 0x3

    aput-object v2, v7, v23

    const/16 v28, 0x2

    aput-object v1, v7, v28

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v31, 0x1

    aput-object v1, v7, v31

    const/16 v21, 0x0

    aput-object v48, v7, v21

    aget-byte v1, v29, v16

    neg-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x74

    aget-byte v2, v29, v2

    neg-int v2, v2

    int-to-byte v2, v2

    const/16 v6, 0x2c4

    int-to-short v6, v6

    invoke-static {v1, v2, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v6, 0x4

    new-array v2, v6, [Ljava/lang/Class;

    aget-byte v6, v29, v20

    int-to-byte v6, v6

    aget-byte v9, v29, v27

    int-to-byte v9, v9

    xor-int/lit16 v8, v9, 0x305

    move/from16 v43, v8

    and-int/lit16 v8, v9, 0x305

    or-int v8, v43, v8

    int-to-short v8, v8

    invoke-static {v6, v9, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v21, 0x0

    aput-object v6, v2, v21

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v31, 0x1

    aput-object v6, v2, v31

    const/16 v28, 0x2

    aput-object v34, v2, v28

    const-class v6, [[B

    const/16 v23, 0x3

    aput-object v6, v2, v23

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_15

    move/from16 v43, v10

    move-object/from16 v44, v11

    goto/16 :goto_2a

    :catchall_15
    move-exception v0

    :try_start_4c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2e

    throw v1

    :cond_2e
    throw v0

    :catchall_16
    move-exception v0

    goto :goto_26

    :catchall_17
    move-exception v0

    move-object/from16 v47, v9

    :goto_26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2f

    throw v1

    :cond_2f
    throw v0
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_18

    :catchall_18
    move-exception v0

    goto :goto_27

    :catchall_19
    move-exception v0

    move-object/from16 v47, v9

    :goto_27
    move-object v1, v0

    move-object v6, v3

    move/from16 v43, v10

    move/from16 v51, v14

    move-object/from16 v46, v15

    :goto_28
    const/16 v23, 0x3

    :goto_29
    const/16 v25, 0x10

    goto/16 :goto_25

    :cond_30
    move/from16 v46, v1

    move-object/from16 v48, v2

    move-object/from16 v47, v9

    :try_start_4d
    sput-wide v43, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientSubscriptionPurchaseEventDataSource:J
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_4b

    const/16 v2, 0x10

    :try_start_4e
    new-array v1, v2, [B
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_4a

    :try_start_4f
    fill-array-data v1, :array_3
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_49

    :try_start_50
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v7

    const/16 v2, 0x30

    shr-long/2addr v7, v2

    const-wide v49, -0x158e39c99c25c9c9L    # -5.572739971439485E204

    add-long v7, v7, v49

    xor-long v7, v43, v7

    long-to-int v2, v7

    sget-wide v7, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientSubscriptionPurchaseEventDataSource:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v43
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_4b

    const/16 v9, 0x20

    shr-long v43, v43, v9

    const-wide v49, 0x158e39c9aaa811a3L    # 7.531644443041625E-205

    add-long v43, v43, v49

    xor-long v7, v7, v43

    long-to-int v7, v7

    int-to-byte v7, v7

    const/4 v8, 0x4

    :try_start_51
    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_48

    const/16 v23, 0x3

    :try_start_52
    aput-object v7, v9, v23
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_47

    :try_start_53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v28, 0x2

    aput-object v2, v9, v28

    const/16 v31, 0x1

    aput-object v1, v9, v31

    const/16 v21, 0x0

    aput-object v48, v9, v21

    aget-byte v1, v29, v16

    neg-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x105

    aget-byte v2, v29, v2

    int-to-byte v2, v2

    const/16 v7, 0x285

    int-to-short v7, v7

    invoke-static {v1, v2, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->setConnector:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ClassLoader;

    const/4 v7, 0x1

    invoke-static {v1, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    ushr-int/lit8 v2, v46, 0x1

    int-to-byte v2, v2

    aget-byte v7, v29, v30

    int-to-byte v7, v7

    const/16 v8, 0x244

    int-to-short v8, v8

    invoke-static {v2, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    new-array v7, v8, [Ljava/lang/Class;

    aget-byte v8, v29, v20
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_48

    int-to-byte v8, v8

    move/from16 v43, v10

    :try_start_54
    aget-byte v10, v29, v27

    int-to-byte v10, v10

    move-object/from16 v44, v11

    xor-int/lit16 v11, v10, 0x305

    move/from16 v48, v11

    and-int/lit16 v11, v10, 0x305

    or-int v11, v48, v11

    int-to-short v11, v11

    invoke-static {v8, v10, v11}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v21, 0x0

    aput-object v8, v7, v21

    const/16 v31, 0x1

    aput-object v34, v7, v31

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v28, 0x2

    aput-object v8, v7, v28

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_46

    const/16 v23, 0x3

    :try_start_55
    aput-object v8, v7, v23
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_45

    :try_start_56
    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_46

    :goto_2a
    :try_start_57
    aget-byte v2, v29, v20

    int-to-byte v2, v2

    aget-byte v6, v29, v27

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x305

    and-int/lit16 v8, v6, 0x305

    or-int/2addr v7, v8

    int-to-short v7, v7

    invoke-static {v2, v6, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v31, 0x1

    aget-byte v6, v29, v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v7, v7

    mul-int/lit16 v8, v6, -0x11a

    const/16 v9, 0x11c

    and-int v10, v9, v8

    or-int/2addr v8, v9

    add-int/2addr v10, v8

    const/4 v8, -0x2

    or-int v9, v8, v6

    not-int v9, v9

    xor-int v11, v8, v7

    and-int v48, v8, v7

    or-int v11, v11, v48

    not-int v11, v11

    xor-int v48, v9, v11

    and-int/2addr v9, v11

    or-int v9, v48, v9

    mul-int/lit16 v9, v9, -0x11b

    neg-int v9, v9

    neg-int v9, v9

    and-int v11, v10, v9

    or-int/2addr v9, v10

    add-int/2addr v11, v9

    not-int v6, v6

    or-int/lit8 v9, v6, 0x1

    not-int v9, v9

    mul-int/lit16 v9, v9, 0x11b

    add-int/2addr v11, v9

    const/4 v9, -0x2

    xor-int v10, v9, v6

    and-int/2addr v6, v9

    or-int/2addr v6, v10

    xor-int v10, v6, v7

    and-int/2addr v6, v7

    or-int/2addr v6, v10

    not-int v6, v6

    mul-int/lit16 v6, v6, 0x11b

    xor-int v7, v11, v6

    and-int/2addr v6, v11

    const/16 v31, 0x1

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v6

    int-to-byte v6, v7

    const/16 v7, 0x1b

    aget-byte v7, v29, v7

    int-to-byte v7, v7

    const/16 v10, 0x23c

    int-to-short v10, v10

    invoke-static {v6, v7, v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v21, 0x0

    aput-object v7, v10, v21

    invoke-virtual {v2, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/16 v6, 0x14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_44

    const/4 v7, 0x1

    if-eq v12, v7, :cond_3c

    .line 7000
    :try_start_58
    aget-byte v0, v29, v20

    int-to-byte v0, v0

    const/16 v6, 0xf0

    aget-byte v6, v29, v6

    int-to-byte v6, v6

    const/16 v7, 0x1ce

    int-to-short v7, v7

    invoke-static {v0, v6, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aget-byte v6, v29, v20

    int-to-byte v6, v6

    aget-byte v7, v29, v27

    int-to-byte v7, v7

    xor-int/lit16 v9, v7, 0x305

    and-int/lit16 v10, v7, 0x305

    or-int/2addr v9, v10

    int-to-short v9, v9

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Class;

    const/16 v21, 0x0

    aput-object v6, v9, v21

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aget-byte v7, v29, v17

    int-to-byte v7, v7

    aget-byte v9, v29, v19

    int-to-byte v9, v9

    const/16 v10, 0x1b3

    int-to-short v10, v10

    invoke-static {v7, v9, v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aget-byte v7, v29, v20

    int-to-byte v7, v7

    const/16 v9, 0x46

    aget-byte v9, v29, v9

    int-to-byte v9, v9

    const/16 v10, 0x1a8

    int-to-short v10, v10

    invoke-static {v7, v9, v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aget-byte v9, v29, v17

    int-to-byte v9, v9

    const/16 v10, 0x17

    aget-byte v10, v29, v10

    int-to-byte v10, v10

    const/16 v11, 0x193

    int-to-short v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/16 v31, 0x1

    aget-byte v9, v29, v31

    int-to-byte v9, v9

    const/16 v10, 0x1b

    aget-byte v10, v29, v10

    int-to-byte v10, v10

    const/16 v11, 0x239

    int-to-short v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    const/16 v21, 0x0

    aput-object v34, v11, v21

    invoke-virtual {v6, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_24

    :try_start_59
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    aget-byte v9, v29, v20

    int-to-byte v9, v9

    const/16 v10, 0x35b

    aget-byte v10, v29, v10

    int-to-byte v10, v10

    const/16 v11, 0x331

    int-to-short v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    aget-byte v10, v29, v20

    int-to-byte v10, v10

    const/16 v48, 0x1cd

    aget-byte v2, v29, v27

    int-to-byte v2, v2

    move/from16 v49, v8

    or-int/lit16 v8, v2, 0x305

    int-to-short v8, v8

    invoke-static {v10, v2, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v21, 0x0

    aput-object v2, v11, v21

    invoke-virtual {v9, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_22

    :try_start_5a
    aget-byte v2, v29, v20

    int-to-byte v2, v2

    const/16 v8, 0xf0

    aget-byte v8, v29, v8

    const/16 v31, 0x1

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    const/16 v9, 0x18d

    int-to-short v9, v9

    invoke-static {v2, v8, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x0

    new-array v8, v9, [Ljava/lang/Class;

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x56

    int-to-byte v9, v9

    const/16 v25, 0x10

    aget-byte v10, v29, v25

    int-to-byte v10, v10

    const/16 v11, 0x228

    int-to-short v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v10

    move/from16 v50, v12

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Class;

    const/16 v21, 0x0

    aput-object v34, v12, v21

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v31, 0x1

    aput-object v11, v12, v31

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v28, 0x2

    aput-object v11, v12, v28

    invoke-virtual {v2, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    ushr-int/lit8 v11, v46, 0x1

    int-to-byte v11, v11

    aget-byte v12, v29, v18
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_24

    int-to-byte v12, v12

    move-object/from16 v46, v15

    const/16 v15, 0x171

    int-to-short v15, v15

    :try_start_5b
    invoke-static {v11, v12, v15}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v15, v12, [Ljava/lang/Class;

    invoke-virtual {v2, v11, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    aget-byte v11, v29, v20

    int-to-byte v11, v11

    const/16 v22, 0x4

    aget-byte v12, v29, v22

    int-to-byte v12, v12

    const/16 v15, 0x167

    int-to-short v15, v15

    invoke-static {v11, v12, v15}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aget-byte v12, v29, v16

    neg-int v12, v12

    int-to-byte v12, v12

    const/16 v25, 0x10

    aget-byte v15, v29, v25
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_21

    int-to-byte v15, v15

    move/from16 v51, v14

    xor-int/lit16 v14, v15, 0x383

    move/from16 v29, v14

    and-int/lit16 v14, v15, 0x383

    or-int v14, v29, v14

    int-to-short v14, v14

    :try_start_5c
    invoke-static {v12, v15, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/16 v12, 0x400

    new-array v12, v12, [B

    const/4 v14, 0x0

    :goto_2b
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v6, v1, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_20

    if-lez v15, :cond_34

    .line 0
    sget v29, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    move-object/from16 v52, v6

    add-int/lit8 v6, v29, 0x5

    move-object/from16 v53, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    const/16 v28, 0x2

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_32

    move-object v6, v3

    int-to-long v3, v14

    move-wide/from16 v54, v3

    const/4 v3, 0x1

    :try_start_5d
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_1a

    cmp-long v3, v54, v3

    if-gez v3, :cond_31

    const/4 v3, 0x0

    goto :goto_2c

    :cond_31
    move-object/from16 v55, v6

    goto/16 :goto_2e

    :catchall_1a
    move-exception v0

    goto/16 :goto_2d

    :cond_32
    move-object v6, v3

    int-to-long v3, v14

    move-wide/from16 v54, v3

    const/4 v3, 0x0

    .line 7000
    :try_start_5e
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v56

    cmp-long v4, v54, v56

    if-gez v4, :cond_33

    :goto_2c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v12, v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_1b

    long-to-int v3, v3

    mul-int/lit16 v4, v15, 0x1c2

    move/from16 v29, v4

    mul-int/lit16 v4, v14, -0x1c0

    and-int v54, v29, v4

    or-int v4, v29, v4

    add-int v54, v54, v4

    not-int v4, v15

    xor-int v29, v4, v14

    and-int/2addr v4, v14

    or-int v4, v29, v4

    not-int v4, v4

    move-object/from16 v55, v6

    not-int v6, v14

    xor-int v29, v6, v15

    and-int v56, v6, v15

    or-int v29, v29, v56

    move/from16 v56, v6

    or-int v6, v29, v3

    not-int v6, v6

    xor-int v29, v4, v6

    and-int/2addr v6, v4

    or-int v6, v29, v6

    mul-int/lit16 v6, v6, 0x1c1

    add-int v54, v54, v6

    mul-int/lit16 v4, v4, -0x543

    neg-int v4, v4

    neg-int v4, v4

    or-int v6, v54, v4

    const/16 v31, 0x1

    shl-int/lit8 v6, v6, 0x1

    xor-int v4, v54, v4

    sub-int/2addr v6, v4

    not-int v4, v15

    xor-int v29, v4, v14

    and-int/2addr v4, v14

    or-int v4, v29, v4

    not-int v4, v4

    not-int v3, v3

    xor-int v14, v56, v3

    and-int v3, v56, v3

    or-int/2addr v3, v14

    xor-int v14, v3, v15

    and-int/2addr v3, v15

    or-int/2addr v3, v14

    not-int v3, v3

    xor-int v14, v4, v3

    and-int/2addr v3, v4

    or-int/2addr v3, v14

    mul-int/lit16 v3, v3, 0x1c1

    neg-int v3, v3

    neg-int v3, v3

    not-int v3, v3

    sub-int/2addr v6, v3

    const/16 v31, 0x1

    add-int/lit8 v14, v6, -0x1

    move-object/from16 v6, v52

    move-object/from16 v4, v53

    move-object/from16 v3, v55

    goto/16 :goto_2b

    :cond_33
    move-object/from16 v55, v6

    goto :goto_2f

    :catchall_1b
    move-exception v0

    move-object/from16 v55, v6

    :goto_2d
    move-object v1, v0

    goto/16 :goto_28

    :cond_34
    move-object/from16 v55, v3

    move-object/from16 v53, v4

    :goto_2e
    const/4 v3, 0x0

    :goto_2f
    :try_start_5f
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_23

    :try_start_60
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v11, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v11, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_c
    .catchall {:try_start_60 .. :try_end_60} :catchall_23

    :catch_c
    :try_start_61
    const-class v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_23

    :try_start_62
    const-class v2, Ljava/lang/Class;

    sget-object v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v4, v3, v17

    int-to-byte v4, v4

    const/16 v6, 0x48

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v7, 0x1db

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_1f

    :try_start_63
    aget-byte v2, v3, v48

    int-to-byte v2, v2

    const/16 v4, 0x35a

    aget-byte v4, v3, v4

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v6, 0x157

    int-to-short v6, v6

    invoke-static {v2, v4, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    aget-byte v4, v3, v20

    int-to-byte v4, v4

    aget-byte v7, v3, v27

    int-to-byte v7, v7

    const/16 v8, 0x134

    int-to-short v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v21, 0x0

    aput-object v4, v6, v21

    aget-byte v4, v3, v20

    int-to-byte v4, v4

    const/16 v7, 0x39

    aget-byte v7, v3, v7

    int-to-byte v7, v7

    const/16 v10, 0x122

    int-to-short v10, v10

    invoke-static {v4, v7, v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v31, 0x1

    aput-object v4, v6, v31

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_23

    :try_start_64
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    aget-byte v4, v3, v20

    int-to-byte v4, v4

    aget-byte v6, v3, v27

    int-to-byte v6, v6

    invoke-static {v4, v6, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x1b

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v7, 0x10e

    int-to-short v7, v7

    invoke-static {v9, v6, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const/16 v21, 0x0

    aput-object v34, v8, v21

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_1e

    :try_start_65
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_23

    :try_start_66
    aget-byte v2, v3, v48

    int-to-byte v2, v2

    const/16 v4, 0x168

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    const/16 v6, 0x10b

    int-to-short v6, v6

    invoke-static {v2, v4, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x346

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    const/16 v6, 0x11e

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v7, 0xec

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x4b0

    aget-byte v7, v3, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v8, v8

    mul-int/lit16 v9, v7, -0x18c

    const/16 v10, -0x18e

    add-int/2addr v10, v9

    not-int v9, v8

    not-int v11, v9

    not-int v12, v7

    xor-int v14, v11, v12

    and-int/2addr v11, v12

    or-int/2addr v11, v14

    xor-int v12, v9, v7

    and-int/2addr v9, v7

    or-int/2addr v9, v12

    not-int v9, v9

    xor-int v12, v11, v9

    and-int/2addr v9, v11

    or-int/2addr v9, v12

    mul-int/lit16 v9, v9, -0x18d

    neg-int v9, v9

    neg-int v9, v9

    or-int v11, v10, v9

    const/16 v31, 0x1

    shl-int/lit8 v11, v11, 0x1

    xor-int/2addr v9, v10

    sub-int/2addr v11, v9

    not-int v9, v7

    mul-int/lit16 v10, v9, -0x18d

    neg-int v10, v10

    neg-int v10, v10

    and-int v12, v11, v10

    or-int/2addr v10, v11

    add-int/2addr v12, v10

    xor-int v10, v8, v9

    and-int/2addr v8, v9

    or-int/2addr v8, v10

    not-int v7, v7

    xor-int/lit8 v9, v7, -0x1

    or-int/2addr v7, v9

    not-int v7, v7

    xor-int v9, v8, v7

    and-int/2addr v7, v8

    or-int/2addr v7, v9

    mul-int/lit16 v7, v7, 0x18d

    neg-int v7, v7

    neg-int v7, v7

    not-int v7, v7

    sub-int/2addr v12, v7

    const/16 v31, 0x1

    add-int/lit8 v12, v12, -0x1

    int-to-byte v7, v12

    const/16 v8, 0x7e

    aget-byte v8, v3, v8

    int-to-byte v8, v8

    const/16 v9, 0xe5

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v8, 0x4b0

    aget-byte v8, v3, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v9, v9

    mul-int/lit16 v10, v8, 0x132

    neg-int v10, v10

    neg-int v10, v10

    const/16 v11, 0x130

    or-int v12, v11, v10

    const/16 v31, 0x1

    shl-int/lit8 v12, v12, 0x1

    xor-int/2addr v10, v11

    sub-int/2addr v12, v10

    const/4 v10, -0x1

    xor-int v11, v10, v8

    or-int/2addr v11, v8

    not-int v11, v11

    xor-int/2addr v10, v9

    or-int/2addr v10, v9

    not-int v10, v10

    xor-int v14, v11, v10

    and-int/2addr v10, v11

    or-int/2addr v10, v14

    mul-int/lit16 v10, v10, 0x131

    neg-int v10, v10

    neg-int v10, v10

    xor-int v11, v12, v10

    and-int/2addr v10, v12

    const/16 v31, 0x1

    shl-int/lit8 v10, v10, 0x1

    add-int/2addr v11, v10

    not-int v8, v8

    not-int v9, v9

    xor-int/lit8 v10, v9, -0x1

    or-int/2addr v9, v10

    not-int v9, v9

    xor-int v10, v8, v9

    and-int/2addr v8, v9

    or-int/2addr v8, v10

    mul-int/lit16 v8, v8, 0x131

    neg-int v8, v8

    neg-int v8, v8

    not-int v8, v8

    sub-int/2addr v11, v8

    const/16 v31, 0x1

    add-int/lit8 v11, v11, -0x1

    int-to-byte v8, v11

    const/16 v9, 0x14

    aget-byte v9, v3, v9

    int-to-byte v9, v9

    const/16 v10, 0xce

    int-to-short v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v9, Ljava/util/ArrayList;

    check-cast v8, Ljava/util/List;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_d
    .catchall {:try_start_66 .. :try_end_66} :catchall_23

    :try_start_67
    const-class v10, Ljava/lang/Class;

    aget-byte v11, v3, v17

    int-to-byte v11, v11

    const/16 v12, 0x1d

    aget-byte v3, v3, v12

    int-to-byte v3, v3

    const/16 v12, 0xb6

    int-to-short v12, v12

    invoke-static {v11, v3, v12}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    invoke-virtual {v10, v3, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_1c

    :try_start_68
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    const/4 v10, 0x0

    :goto_30
    if-ge v10, v8, :cond_35

    invoke-static {v4, v10}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v3, v10, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    :cond_35
    invoke-virtual {v7, v2, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_d
    .catchall {:try_start_68 .. :try_end_68} :catchall_23

    :try_start_69
    sget-object v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->setConnector:Ljava/lang/Object;

    if-nez v1, :cond_36

    sput-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->setConnector:Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_23

    :cond_36
    move-object v1, v0

    goto/16 :goto_36

    :catchall_1c
    move-exception v0

    :try_start_6a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_37

    throw v2

    :cond_37
    throw v0
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_d
    .catchall {:try_start_6a .. :try_end_6a} :catchall_23

    :catch_d
    move-exception v0

    :try_start_6b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    const/16 v4, 0x17f

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    const/16 v25, 0x10

    aget-byte v5, v3, v25

    int-to-byte v5, v5

    sget v6, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$b:I

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v3, v30

    int-to-byte v2, v2

    aget-byte v4, v3, v24

    int-to-byte v4, v4

    or-int/lit16 v5, v4, 0x3c0

    int-to-short v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_23

    const/4 v2, 0x2

    :try_start_6c
    new-array v4, v2, [Ljava/lang/Object;

    const/16 v31, 0x1

    aput-object v0, v4, v31

    const/16 v21, 0x0

    aput-object v1, v4, v21

    aget-byte v0, v3, v20

    int-to-byte v0, v0

    aget-byte v1, v3, v27

    int-to-byte v1, v1

    const/16 v7, 0x3c0

    int-to-short v2, v7

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v2, v1, v21

    const-class v2, Ljava/lang/Throwable;

    const/16 v31, 0x1

    aput-object v2, v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_1d

    :catchall_1d
    move-exception v0

    :try_start_6d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_38

    throw v1

    :cond_38
    throw v0

    :catchall_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_39

    throw v1

    :cond_39
    throw v0

    :catchall_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3a

    throw v1

    :cond_3a
    throw v0

    :catchall_20
    move-exception v0

    move-object/from16 v55, v3

    goto :goto_31

    :catchall_21
    move-exception v0

    move-object/from16 v55, v3

    move/from16 v51, v14

    goto :goto_31

    :catchall_22
    move-exception v0

    move-object/from16 v55, v3

    move/from16 v51, v14

    move-object/from16 v46, v15

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3b

    throw v1

    :cond_3b
    throw v0
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_23

    :catchall_23
    move-exception v0

    goto :goto_31

    :catchall_24
    move-exception v0

    move-object/from16 v55, v3

    move/from16 v51, v14

    move-object/from16 v46, v15

    :goto_31
    move-object v1, v0

    move-object/from16 v6, v55

    goto/16 :goto_28

    :cond_3c
    move-object/from16 v55, v3

    move-object/from16 v53, v4

    move/from16 v49, v8

    move/from16 v50, v12

    move/from16 v51, v14

    move-object/from16 v46, v15

    const/16 v48, 0x1cd

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    not-int v3, v2

    const v4, 0x1b30642a

    xor-int v6, v4, v3

    and-int/2addr v4, v3

    or-int/2addr v4, v6

    not-int v4, v4

    const v6, 0x60cc0b95

    xor-int v7, v4, v6

    and-int/2addr v4, v6

    or-int/2addr v4, v7

    const v6, -0x1020040b

    xor-int v7, v6, v2

    and-int/2addr v6, v2

    or-int/2addr v6, v7

    not-int v6, v6

    xor-int v7, v4, v6

    and-int/2addr v4, v6

    or-int/2addr v4, v7

    mul-int/lit16 v4, v4, -0x2c9

    neg-int v4, v4

    neg-int v4, v4

    const v6, 0x28143242

    or-int v7, v6, v4

    const/16 v31, 0x1

    shl-int/lit8 v7, v7, 0x1

    xor-int/2addr v4, v6

    sub-int/2addr v7, v4

    const v4, -0x1020040b

    or-int/2addr v2, v4

    not-int v2, v2

    mul-int/lit16 v2, v2, 0x592

    and-int v4, v7, v2

    or-int/2addr v2, v7

    add-int/2addr v4, v2

    const v2, 0x6bdc6bb5

    xor-int v6, v2, v3

    and-int/2addr v2, v3

    or-int/2addr v2, v6

    not-int v2, v2

    mul-int/lit16 v2, v2, 0x2c9

    add-int/2addr v4, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    const v3, -0x559dae81

    not-int v6, v2

    or-int/2addr v3, v6

    not-int v3, v3

    const v6, 0x100da080

    xor-int v7, v3, v6

    and-int/2addr v3, v6

    or-int/2addr v3, v7

    not-int v6, v2

    const v7, 0x67f00f2d

    or-int/2addr v6, v7

    not-int v6, v6

    xor-int v8, v3, v6

    and-int/2addr v3, v6

    or-int/2addr v3, v8

    mul-int/lit16 v3, v3, 0x1d0

    neg-int v3, v3

    neg-int v3, v3

    const v6, -0xd2308c3

    or-int v8, v6, v3

    const/16 v31, 0x1

    shl-int/lit8 v8, v8, 0x1

    xor-int/2addr v3, v6

    sub-int/2addr v8, v3

    const v3, -0x67f00f2e    # -1.86039E-24f

    or-int/2addr v3, v2

    const v6, -0x559dae81

    xor-int v10, v3, v6

    and-int/2addr v3, v6

    or-int/2addr v3, v10

    mul-int/lit16 v3, v3, -0x1d0

    or-int v6, v8, v3

    const/16 v31, 0x1

    shl-int/lit8 v6, v6, 0x1

    xor-int/2addr v3, v8

    sub-int/2addr v6, v3

    or-int/2addr v2, v7

    not-int v2, v2

    const v3, 0x100da080

    xor-int v7, v3, v2

    and-int/2addr v2, v3

    or-int/2addr v2, v7

    mul-int/lit16 v2, v2, 0x1d0

    neg-int v2, v2

    neg-int v2, v2

    and-int v3, v6, v2

    or-int/2addr v2, v6

    add-int/2addr v3, v2

    if-le v4, v3, :cond_56

    .line 4000
    :try_start_6e
    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getVERSION_NAMEannotations:Ljava/lang/Object;

    if-nez v2, :cond_3d

    move-object/from16 v3, v35

    goto :goto_32

    :cond_3d
    move-object/from16 v3, v39

    :goto_32
    if-nez v2, :cond_3e

    move-object/from16 v2, v44

    goto :goto_33

    :cond_3e
    move-object/from16 v2, v37

    .line 6000
    :goto_33
    aget-byte v4, v29, v20

    int-to-byte v4, v4

    aget-byte v6, v29, v27

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x305

    and-int/lit16 v8, v6, 0x305

    or-int/2addr v7, v8

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v31, 0x1

    aget-byte v6, v29, v31

    int-to-byte v6, v6

    const/16 v7, 0x1b

    aget-byte v7, v29, v7

    int-to-byte v7, v7

    const/16 v8, 0x239

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v6
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_43

    const/4 v7, 0x3

    :try_start_6f
    new-array v8, v7, [Ljava/lang/Class;
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_42

    const/16 v21, 0x0

    :try_start_70
    aput-object v34, v8, v21

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v31, 0x1

    aput-object v7, v8, v31

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v28, 0x2

    aput-object v7, v8, v28

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    aget-byte v6, v29, v20

    int-to-byte v6, v6

    const/16 v7, 0x7e

    aget-byte v7, v29, v7

    int-to-byte v7, v7

    const/16 v8, 0x39e

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_43

    const/4 v7, 0x1

    :try_start_71
    new-array v8, v7, [Ljava/lang/Class;

    aget-byte v7, v29, v20

    int-to-byte v7, v7

    aget-byte v10, v29, v19

    int-to-byte v10, v10

    invoke-static {v7, v10, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v21, 0x0

    aput-object v7, v8, v21

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_10
    .catchall {:try_start_71 .. :try_end_71} :catchall_3c

    if-eqz v38, :cond_40

    :try_start_72
    aget-byte v8, v29, v20

    int-to-byte v8, v8

    aget-byte v10, v29, v19

    int-to-byte v10, v10

    invoke-static {v8, v10, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v31, 0x1

    aget-byte v10, v29, v31

    and-int/lit8 v11, v10, 0x1

    or-int/lit8 v10, v10, 0x1

    add-int/2addr v11, v10

    int-to-byte v10, v11

    aget-byte v11, v29, v18

    int-to-byte v11, v11

    const/16 v12, 0x236

    int-to-short v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_25

    goto :goto_34

    :catchall_25
    move-exception v0

    :try_start_73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3f

    throw v1

    :cond_3f
    throw v0
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_10
    .catchall {:try_start_73 .. :try_end_73} :catchall_26

    :catchall_26
    move-exception v0

    move-object/from16 v6, v55

    const/16 v23, 0x3

    const/16 v25, 0x10

    const/16 v32, 0xc

    goto/16 :goto_41

    .line 0
    :cond_40
    :goto_34
    sget v8, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    const/16 v23, 0x3

    add-int/lit8 v8, v8, 0x3

    rem-int/lit16 v10, v8, 0x80

    sput v10, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    const/16 v28, 0x2

    rem-int/lit8 v8, v8, 0x2

    const/16 v8, 0x400

    .line 6000
    :try_start_74
    new-array v10, v8, [B

    const/16 v11, 0x56

    int-to-byte v11, v11

    const/16 v25, 0x10

    aget-byte v12, v29, v25

    int-to-byte v12, v12

    const/16 v14, 0x228

    int-to-short v14, v14

    invoke-static {v11, v12, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v11
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_3c

    const/4 v12, 0x3

    :try_start_75
    new-array v14, v12, [Ljava/lang/Class;
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_3b

    const/16 v21, 0x0

    :try_start_76
    aput-object v34, v14, v21

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v31, 0x1

    aput-object v12, v14, v31

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v28, 0x2

    aput-object v12, v14, v28

    invoke-virtual {v6, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_3c

    :goto_35
    if-lez v0, :cond_42

    const/16 v21, 0x0

    :try_start_77
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v10, v12, v14}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_26

    const/4 v14, -0x1

    if-eq v12, v14, :cond_42

    .line 0
    sget v14, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    xor-int/lit8 v15, v14, 0x65

    and-int/lit8 v14, v14, 0x65

    const/16 v31, 0x1

    shl-int/lit8 v14, v14, 0x1

    add-int/2addr v15, v14

    rem-int/lit16 v14, v15, 0x80

    sput v14, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    const/16 v28, 0x2

    rem-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_41

    const/4 v14, 0x4

    :try_start_78
    new-array v15, v14, [Ljava/lang/Object;

    aput-object v10, v15, v31

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v31

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v23, 0x3

    aput-object v14, v15, v23

    invoke-virtual {v11, v7, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    neg-int v12, v12

    neg-int v12, v12

    and-int v14, v0, v12

    or-int/2addr v0, v12

    add-int/2addr v0, v14

    goto :goto_35

    :cond_41
    const/16 v21, 0x0

    .line 6000
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v10, v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v7, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_26

    sub-int/2addr v0, v12

    goto :goto_35

    :cond_42
    :try_start_79
    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v1, v0, v17

    int-to-byte v1, v1

    const/16 v25, 0x10

    aget-byte v4, v0, v25

    int-to-byte v4, v4

    xor-int/lit16 v8, v4, 0x220

    and-int/lit16 v10, v4, 0x220

    or-int/2addr v8, v10

    int-to-short v8, v8

    invoke-static {v1, v4, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    new-array v4, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aget-byte v4, v0, v20

    int-to-byte v4, v4

    const/16 v8, 0x46

    aget-byte v8, v0, v8

    int-to-byte v8, v8

    const/16 v10, 0x220

    int-to-short v10, v10

    invoke-static {v4, v8, v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v31, 0x1

    aget-byte v8, v0, v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    mul-int/lit16 v11, v8, 0x1d7

    not-int v11, v11

    rsub-int v11, v11, 0x1d6

    or-int/lit8 v12, v8, 0x1

    mul-int/lit16 v12, v12, -0x1d6

    neg-int v12, v12

    neg-int v12, v12

    xor-int v14, v11, v12

    and-int/2addr v11, v12

    const/16 v31, 0x1

    shl-int/lit8 v11, v11, 0x1

    add-int/2addr v14, v11

    not-int v11, v8

    xor-int v12, v9, v11

    and-int/2addr v9, v11

    or-int/2addr v9, v12

    not-int v9, v9

    not-int v11, v8

    xor-int v12, v11, v10

    and-int v15, v11, v10

    or-int/2addr v12, v15

    not-int v12, v12

    xor-int v15, v9, v12

    and-int/2addr v9, v12

    or-int/2addr v9, v15

    not-int v12, v10

    xor-int/lit8 v15, v12, 0x1

    const/16 v31, 0x1

    and-int/lit8 v12, v12, 0x1

    or-int/2addr v12, v15

    xor-int v15, v12, v8

    and-int/2addr v8, v12

    or-int/2addr v8, v15

    not-int v12, v8

    xor-int v15, v9, v12

    and-int/2addr v9, v12

    or-int/2addr v9, v15

    mul-int/lit16 v9, v9, -0x1d6

    neg-int v9, v9

    neg-int v9, v9

    not-int v9, v9

    sub-int/2addr v14, v9

    const/16 v31, 0x1

    add-int/lit8 v14, v14, -0x1

    xor-int/lit8 v9, v11, 0x1

    and-int/lit8 v11, v11, 0x1

    or-int/2addr v9, v11

    xor-int v11, v9, v10

    and-int/2addr v9, v10

    or-int/2addr v9, v11

    not-int v9, v9

    not-int v8, v8

    xor-int v10, v9, v8

    and-int/2addr v8, v9

    or-int/2addr v8, v10

    mul-int/lit16 v8, v8, 0x1d6

    add-int/2addr v14, v8

    int-to-byte v8, v14

    const/16 v9, 0x1b

    aget-byte v9, v0, v9

    int-to-byte v9, v9

    xor-int/lit16 v10, v9, 0x208

    and-int/lit16 v11, v9, 0x208

    or-int/2addr v10, v11

    int-to-short v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Class;

    invoke-virtual {v4, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    aget-byte v1, v0, v16

    neg-int v1, v1

    int-to-byte v1, v1

    const/16 v25, 0x10

    aget-byte v4, v0, v25

    int-to-byte v4, v4

    xor-int/lit16 v8, v4, 0x383

    and-int/lit16 v9, v4, 0x383

    or-int/2addr v8, v9

    int-to-short v8, v8

    invoke-static {v1, v4, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    new-array v4, v9, [Ljava/lang/Class;

    invoke-virtual {v6, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    aget-byte v1, v0, v48

    int-to-byte v1, v1

    const/16 v4, 0x39

    aget-byte v4, v0, v4

    int-to-byte v4, v4

    const/16 v6, 0x208

    int-to-short v6, v6

    invoke-static {v1, v4, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v4, 0x341

    aget-byte v4, v0, v4

    or-int/lit8 v6, v4, 0x1

    const/16 v31, 0x1

    shl-int/lit8 v6, v6, 0x1

    xor-int/lit8 v4, v4, 0x1

    sub-int/2addr v6, v4

    int-to-byte v4, v6

    const/16 v6, 0x17

    aget-byte v6, v0, v6

    int-to-byte v6, v6

    const/16 v7, 0x1f4

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_3c

    const/4 v7, 0x3

    :try_start_7a
    new-array v6, v7, [Ljava/lang/Class;
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_3a

    :try_start_7b
    const-class v7, Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v7, v6, v21

    const-class v7, Ljava/lang/String;

    const/16 v31, 0x1

    aput-object v7, v6, v31

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v28, 0x2

    aput-object v7, v6, v28

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_3c

    :try_start_7c
    aget-byte v4, v0, v20

    int-to-byte v4, v4

    aget-byte v6, v0, v19

    int-to-byte v6, v6

    invoke-static {v4, v6, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v6, v0, v17
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_39

    int-to-byte v6, v6

    const/16 v32, 0xc

    :try_start_7d
    aget-byte v7, v0, v32
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_38

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x1e0

    and-int/lit16 v9, v7, 0x1e0

    or-int/2addr v8, v9

    int-to-short v8, v8

    :try_start_7e
    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_39

    .line 0
    sget v6, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    add-int/lit8 v6, v6, 0x73

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    const/16 v28, 0x2

    rem-int/lit8 v6, v6, 0x2

    .line 6000
    :try_start_7f
    aget-byte v6, v0, v20

    int-to-byte v6, v6

    aget-byte v7, v0, v19

    int-to-byte v7, v7

    invoke-static {v6, v7, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v7, v0, v17
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_37

    int-to-byte v7, v7

    const/16 v32, 0xc

    :try_start_80
    aget-byte v8, v0, v32
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_36

    int-to-byte v8, v8

    xor-int/lit16 v9, v8, 0x1e0

    and-int/lit16 v10, v8, 0x1e0

    or-int/2addr v9, v10

    int-to-short v9, v9

    :try_start_81
    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v6, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_37

    const/16 v21, 0x0

    :try_start_82
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v11, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_3c

    :try_start_83
    aget-byte v4, v0, v20

    int-to-byte v4, v4

    aget-byte v6, v0, v19

    int-to-byte v6, v6

    invoke-static {v4, v6, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v6, v0, v48

    int-to-byte v6, v6

    const/16 v7, 0xcf

    aget-byte v7, v0, v7

    int-to-byte v7, v7

    const/16 v8, 0x1e0

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_34

    :try_start_84
    aget-byte v3, v0, v20

    int-to-byte v3, v3

    aget-byte v4, v0, v19

    int-to-byte v4, v4

    invoke-static {v3, v4, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v0, v48

    int-to-byte v4, v4

    const/16 v6, 0xcf

    aget-byte v6, v0, v6

    int-to-byte v6, v6

    invoke-static {v4, v6, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_33

    :try_start_85
    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->setConnector:Ljava/lang/Object;
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_32

    if-nez v2, :cond_45

    .line 0
    sget v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    add-int/lit8 v2, v2, 0x69

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    const/16 v28, 0x2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_44

    .line 6000
    :try_start_86
    const-class v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_23

    :try_start_87
    const-class v3, Ljava/lang/Class;

    aget-byte v4, v0, v17

    int-to-byte v4, v4

    const/16 v6, 0x48

    aget-byte v0, v0, v6

    int-to-byte v0, v0

    const/16 v6, 0x1db

    int-to-short v6, v6

    invoke-static {v4, v0, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_27

    :try_start_88
    sput-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->setConnector:Ljava/lang/Object;

    goto :goto_36

    :catchall_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_43

    throw v1

    :cond_43
    throw v0

    :cond_44
    const/16 v33, 0x0

    .line 0
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->hashCode()I

    throw v33
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_23

    :cond_45
    :goto_36
    if-eqz v50, :cond_48

    .line 4000
    :try_start_89
    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v2, v0, v48

    int-to-byte v2, v2

    const/16 v3, 0x39

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    const/16 v4, 0x208

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x341

    aget-byte v3, v0, v3

    or-int/lit8 v4, v3, 0x1

    const/16 v31, 0x1

    shl-int/lit8 v4, v4, 0x1

    xor-int/lit8 v3, v3, 0x1

    sub-int/2addr v4, v3

    int-to-byte v3, v4

    aget-byte v4, v0, v30

    int-to-byte v4, v4

    sget v6, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_2a

    long-to-int v7, v7

    mul-int/lit16 v8, v6, -0x3db

    const/16 v9, -0xf74

    or-int v10, v9, v8

    const/16 v31, 0x1

    shl-int/lit8 v10, v10, 0x1

    xor-int/2addr v8, v9

    sub-int/2addr v10, v8

    not-int v8, v6

    not-int v9, v7

    xor-int v11, v8, v9

    and-int v12, v8, v9

    or-int/2addr v11, v12

    xor-int/lit8 v12, v11, -0x4

    const/4 v14, -0x4

    and-int/2addr v11, v14

    or-int/2addr v11, v12

    not-int v11, v11

    or-int v12, v14, v6

    xor-int v15, v12, v7

    and-int/2addr v12, v7

    or-int/2addr v12, v15

    not-int v12, v12

    xor-int v15, v11, v12

    and-int/2addr v11, v12

    or-int/2addr v11, v15

    mul-int/lit16 v11, v11, 0x3dc

    and-int v12, v10, v11

    or-int/2addr v10, v11

    add-int/2addr v12, v10

    xor-int v10, v14, v8

    and-int v11, v14, v8

    or-int/2addr v10, v11

    mul-int/lit16 v10, v10, -0x3dc

    neg-int v10, v10

    neg-int v10, v10

    not-int v10, v10

    sub-int/2addr v12, v10

    const/16 v31, 0x1

    add-int/lit8 v12, v12, -0x1

    const/16 v23, 0x3

    xor-int v10, v23, v8

    and-int v11, v23, v8

    or-int/2addr v10, v11

    not-int v10, v10

    xor-int v11, v8, v7

    and-int/2addr v7, v8

    or-int/2addr v7, v11

    not-int v7, v7

    xor-int v8, v10, v7

    and-int/2addr v7, v10

    or-int/2addr v7, v8

    xor-int/lit8 v8, v9, -0x4

    and-int/2addr v9, v14

    or-int/2addr v8, v9

    or-int/2addr v6, v8

    not-int v6, v6

    xor-int v8, v7, v6

    and-int/2addr v6, v7

    or-int/2addr v6, v8

    mul-int/lit16 v6, v6, 0x3dc

    add-int/2addr v12, v6

    int-to-short v6, v12

    :try_start_8a
    invoke-static {v3, v4, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v4, v6, v21

    aget-byte v4, v0, v20

    int-to-byte v4, v4

    const/16 v7, 0x39

    aget-byte v7, v0, v7

    int-to-byte v7, v7

    const/16 v8, 0x122

    int-to-short v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_29

    :try_start_8b
    const-class v6, Ljava/lang/Class;

    aget-byte v7, v0, v17

    int-to-byte v7, v7

    const/16 v8, 0x48

    aget-byte v8, v0, v8

    int-to-byte v8, v8

    const/16 v9, 0x1db

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v6, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_28

    :try_start_8c
    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_46

    aget-byte v4, v0, v16

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v25, 0x10

    aget-byte v0, v0, v25

    int-to-byte v0, v0

    or-int/lit16 v5, v0, 0x383

    int-to-short v5, v5

    invoke-static {v4, v0, v5}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    new-array v4, v9, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    move-object v0, v3

    goto/16 :goto_38

    :catchall_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_47

    throw v1

    :cond_47
    throw v0
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_29

    :catchall_29
    move-exception v0

    goto :goto_37

    :catchall_2a
    move-exception v0

    const/16 v23, 0x3

    :goto_37
    move-object v1, v0

    move-object/from16 v6, v55

    goto/16 :goto_29

    :cond_48
    const/16 v23, 0x3

    :try_start_8d
    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v2, v0, v20

    int-to-byte v2, v2

    const/16 v3, 0x39

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    const/16 v4, 0x122

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x341

    aget-byte v3, v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v4, v6

    mul-int/lit16 v6, v3, -0x295

    const/16 v7, -0x295

    add-int/2addr v7, v6

    not-int v6, v4

    not-int v8, v3

    xor-int v9, v49, v8

    and-int v10, v49, v8

    or-int/2addr v9, v10

    not-int v9, v9

    xor-int v10, v6, v9

    and-int/2addr v6, v9

    or-int/2addr v6, v10

    mul-int/lit16 v6, v6, 0x52c

    neg-int v6, v6

    neg-int v6, v6

    xor-int v9, v7, v6

    and-int/2addr v6, v7

    const/16 v31, 0x1

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v9, v6

    xor-int/lit8 v6, v4, 0x1

    and-int/lit8 v7, v4, 0x1

    or-int/2addr v6, v7

    not-int v6, v6

    xor-int v7, v3, v4

    and-int/2addr v4, v3

    or-int/2addr v4, v7

    not-int v4, v4

    xor-int v7, v6, v4

    and-int/2addr v4, v6

    or-int/2addr v4, v7

    mul-int/lit16 v4, v4, -0x52c

    and-int v6, v9, v4

    or-int/2addr v4, v9

    add-int/2addr v6, v4

    const/4 v4, -0x2

    xor-int v7, v4, v3

    and-int/2addr v3, v4

    or-int/2addr v3, v7

    not-int v3, v3

    const/16 v31, 0x1

    or-int/lit8 v4, v8, 0x1

    not-int v4, v4

    xor-int v7, v3, v4

    and-int/2addr v3, v4

    or-int/2addr v3, v7

    mul-int/lit16 v3, v3, 0x296

    or-int v4, v6, v3

    shl-int/lit8 v4, v4, 0x1

    xor-int/2addr v3, v6

    sub-int/2addr v4, v3

    int-to-byte v3, v4

    aget-byte v0, v0, v30

    int-to-byte v0, v0

    sget v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$b:I

    const/16 v22, 0x4

    add-int/lit8 v4, v4, -0x4

    int-to-short v4, v4

    invoke-static {v3, v0, v4}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v4, v3, v21

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_31

    :try_start_8e
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8e .. :try_end_8e} :catch_e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_29

    goto :goto_38

    :catch_e
    move-exception v0

    :try_start_8f
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    throw v0
    :try_end_8f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8f .. :try_end_8f} :catch_f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_29

    :catch_f
    const/4 v0, 0x0

    :goto_38
    if-eqz v0, :cond_4d

    :try_start_90
    move-object v4, v0

    check-cast v4, Ljava/lang/Class;

    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v2, v0, v16

    neg-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0x105

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    const/16 v5, 0x9b

    int-to-short v5, v5

    invoke-static {v2, v3, v5}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v2, v3, v21

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v2, v3, v7

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    xor-int/lit8 v3, v50, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getVERSION_NAMEannotations:Ljava/lang/Object;

    const/16 v1, 0x26e1

    new-array v2, v1, [B
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_31

    const/16 v32, 0xc

    :try_start_91
    aget-byte v1, v0, v32

    int-to-byte v1, v1

    const/16 v3, 0xa

    aget-byte v3, v0, v3

    neg-int v3, v3

    int-to-byte v3, v3

    const/16 v6, 0x5a

    int-to-short v6, v6

    invoke-static {v1, v3, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_2f

    move-object/from16 v6, v55

    :try_start_92
    invoke-virtual {v6, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_35

    .line 0
    sget v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    xor-int/lit8 v8, v3, 0x49

    and-int/lit8 v3, v3, 0x49

    shl-int/2addr v3, v7

    add-int/2addr v8, v3

    rem-int/lit16 v3, v8, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    const/16 v28, 0x2

    rem-int/lit8 v8, v8, 0x2

    .line 4000
    :try_start_93
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    aget-byte v3, v0, v20

    int-to-byte v3, v3

    const/16 v7, 0x35b

    aget-byte v7, v0, v7

    int-to-byte v7, v7

    const/16 v8, 0x331

    int-to-short v8, v8

    invoke-static {v3, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    aget-byte v7, v0, v20

    int-to-byte v7, v7

    aget-byte v9, v0, v27

    int-to-byte v9, v9

    or-int/lit16 v10, v9, 0x305

    int-to-short v10, v10

    invoke-static {v7, v9, v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v21, 0x0

    aput-object v7, v8, v21

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_2e

    :try_start_94
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    aget-byte v3, v0, v20

    int-to-byte v3, v3

    const/16 v7, 0x75

    aget-byte v7, v0, v7

    int-to-byte v7, v7

    const/16 v8, 0x305

    int-to-short v9, v8

    invoke-static {v3, v7, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Class;

    aget-byte v7, v0, v20

    int-to-byte v7, v7

    aget-byte v11, v0, v27

    int-to-byte v11, v11

    or-int/lit16 v12, v11, 0x305

    int-to-short v12, v12

    invoke-static {v7, v11, v12}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v21, 0x0

    aput-object v7, v10, v21

    invoke-virtual {v3, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_2d

    :try_start_95
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    aget-byte v7, v0, v20

    int-to-byte v7, v7

    const/16 v10, 0x75

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    invoke-static {v7, v10, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v31, 0x1

    aget-byte v10, v0, v31

    int-to-byte v10, v10

    aget-byte v11, v0, v30

    int-to-byte v11, v11

    xor-int/lit16 v12, v11, 0x2e7

    and-int/lit16 v14, v11, 0x2e7

    or-int/2addr v12, v14

    int-to-short v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    const/16 v21, 0x0

    aput-object v34, v12, v21

    invoke-virtual {v7, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_2c

    :try_start_96
    aget-byte v3, v0, v20

    int-to-byte v3, v3

    const/16 v7, 0x75

    aget-byte v7, v0, v7

    int-to-byte v7, v7

    invoke-static {v3, v7, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v7, v0, v16

    neg-int v7, v7

    int-to-byte v7, v7

    const/16 v25, 0x10

    aget-byte v0, v0, v25

    int-to-byte v0, v0

    xor-int/lit16 v9, v0, 0x383

    and-int/lit16 v10, v0, 0x383

    or-int/2addr v9, v10

    int-to-short v9, v9

    invoke-static {v7, v0, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_2b

    :try_start_97
    invoke-static/range {v45 .. v45}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v0, 0x26ad

    move-object v3, v6

    move/from16 v10, v43

    move-object/from16 v11, v44

    move-object/from16 v15, v46

    move-object/from16 v9, v47

    move/from16 v12, v50

    move/from16 v14, v51

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v25, 0x10

    goto/16 :goto_22

    :catchall_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_49

    throw v1

    :cond_49
    throw v0

    :catchall_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4a

    throw v1

    :cond_4a
    throw v0

    :catchall_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4b

    throw v1

    :cond_4b
    throw v0

    :catchall_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4c

    throw v1

    :cond_4c
    throw v0

    :catchall_2f
    move-exception v0

    move-object/from16 v6, v55

    goto/16 :goto_3b

    :cond_4d
    move-object/from16 v6, v55

    const/4 v2, 0x2

    const/16 v32, 0xc

    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v2, v0, v21

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v2, v0, v7

    move-object/from16 v4, v53

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_35

    if-nez v50, :cond_4e

    .line 0
    sget v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    xor-int/lit8 v3, v2, 0x51

    and-int/lit8 v2, v2, 0x51

    shl-int/2addr v2, v7

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    const/16 v28, 0x2

    rem-int/lit8 v3, v3, 0x2

    const/4 v2, 0x1

    goto :goto_39

    :cond_4e
    const/4 v2, 0x0

    .line 4000
    :goto_39
    :try_start_98
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getVERSION_NAMEannotations:Ljava/lang/Object;
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_35

    .line 0
    sget v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    const/16 v28, 0x2

    rem-int/lit8 v0, v0, 0x2

    .line 4000
    :try_start_99
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_30

    move/from16 v1, v24

    move/from16 v2, v51

    const/4 v4, 0x2

    const/4 v10, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v25, 0x10

    const/16 v31, 0x1

    const/16 v33, 0x0

    goto/16 :goto_59

    :catchall_30
    move-exception v0

    const/16 v25, 0x10

    goto/16 :goto_53

    :catchall_31
    move-exception v0

    move-object/from16 v6, v55

    goto :goto_3a

    :catchall_32
    move-exception v0

    move-object/from16 v6, v55

    const/16 v23, 0x3

    :goto_3a
    const/16 v32, 0xc

    goto :goto_3b

    :catchall_33
    move-exception v0

    move-object/from16 v6, v55

    const/16 v23, 0x3

    const/16 v32, 0xc

    .line 6000
    :try_start_9a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4f

    throw v1

    :cond_4f
    throw v0

    :catchall_34
    move-exception v0

    move-object/from16 v6, v55

    const/16 v23, 0x3

    const/16 v32, 0xc

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_50

    throw v1

    :cond_50
    throw v0
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_35

    :catchall_35
    move-exception v0

    :goto_3b
    move-object v1, v0

    const/16 v25, 0x10

    goto/16 :goto_4f

    :catchall_36
    move-exception v0

    move-object/from16 v6, v55

    const/16 v23, 0x3

    goto :goto_3c

    :catchall_37
    move-exception v0

    move-object/from16 v6, v55

    const/16 v23, 0x3

    const/16 v32, 0xc

    :goto_3c
    :try_start_9b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_51

    throw v1

    :cond_51
    throw v0

    :catchall_38
    move-exception v0

    move-object/from16 v6, v55

    const/16 v23, 0x3

    goto :goto_3d

    :catchall_39
    move-exception v0

    move-object/from16 v6, v55

    const/16 v23, 0x3

    const/16 v32, 0xc

    :goto_3d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_52

    throw v1

    :cond_52
    throw v0

    :catchall_3a
    move-exception v0

    move/from16 v23, v7

    goto :goto_3e

    :catchall_3b
    move-exception v0

    move/from16 v23, v12

    :goto_3e
    move-object/from16 v6, v55

    goto :goto_3f

    :catchall_3c
    move-exception v0

    move-object/from16 v6, v55

    const/16 v23, 0x3

    :goto_3f
    const/16 v32, 0xc

    :goto_40
    const/16 v25, 0x10

    goto/16 :goto_41

    :catch_10
    move-exception v0

    move-object/from16 v6, v55

    const/16 v23, 0x3

    const/16 v32, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    const/16 v5, 0x17f

    aget-byte v5, v4, v5
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_3f

    int-to-byte v5, v5

    const/16 v25, 0x10

    :try_start_9c
    aget-byte v7, v4, v25

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x228

    and-int/lit16 v9, v7, 0x228

    or-int/2addr v8, v9

    int-to-short v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v5, v4, v30

    int-to-byte v5, v5

    aget-byte v7, v4, v24

    int-to-byte v7, v7

    or-int/lit16 v8, v7, 0x3c0

    int-to-short v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_3e

    const/4 v5, 0x2

    :try_start_9d
    new-array v7, v5, [Ljava/lang/Object;

    const/16 v31, 0x1

    aput-object v0, v7, v31

    const/16 v21, 0x0

    aput-object v1, v7, v21

    aget-byte v0, v4, v20

    int-to-byte v0, v0

    aget-byte v1, v4, v27

    int-to-byte v1, v1

    const/16 v4, 0x3c0

    int-to-short v5, v4

    invoke-static {v0, v1, v5}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v4, v1, v21

    const-class v4, Ljava/lang/Throwable;

    const/16 v31, 0x1

    aput-object v4, v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_3d

    :catchall_3d
    move-exception v0

    :try_start_9e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_53

    throw v1

    :cond_53
    throw v0
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_3e

    :catchall_3e
    move-exception v0

    goto :goto_41

    :catchall_3f
    move-exception v0

    goto/16 :goto_40

    :goto_41
    :try_start_9f
    sget-object v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v4, v1, v20

    int-to-byte v4, v4

    aget-byte v5, v1, v19

    int-to-byte v5, v5

    invoke-static {v4, v5, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v5, v1, v48

    int-to-byte v5, v5

    const/16 v7, 0xcf

    aget-byte v7, v1, v7

    int-to-byte v7, v7

    const/16 v8, 0x1e0

    int-to-short v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_41

    :try_start_a0
    aget-byte v3, v1, v20

    int-to-byte v3, v3

    aget-byte v4, v1, v19

    int-to-byte v4, v4

    invoke-static {v3, v4, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v1, v48

    int-to-byte v4, v4

    const/16 v5, 0xcf

    aget-byte v1, v1, v5

    int-to-byte v1, v1

    invoke-static {v4, v1, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_40

    :try_start_a1
    throw v0

    :catchall_40
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_54

    throw v1

    :cond_54
    throw v0

    :catchall_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_55

    throw v1

    :cond_55
    throw v0

    :catchall_42
    move-exception v0

    move/from16 v23, v7

    move-object/from16 v6, v55

    goto/16 :goto_48

    :catchall_43
    move-exception v0

    move-object/from16 v6, v55

    goto :goto_47

    :cond_56
    move-object/from16 v6, v55

    const/16 v23, 0x3

    const/16 v25, 0x10

    const/16 v32, 0xc

    const/16 v33, 0x0

    .line 0
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->hashCode()I

    throw v33

    :catchall_44
    move-exception v0

    move-object v6, v3

    goto :goto_46

    :catchall_45
    move-exception v0

    move-object v6, v3

    goto :goto_42

    :catchall_46
    move-exception v0

    move-object v6, v3

    goto :goto_43

    :catchall_47
    move-exception v0

    move-object v6, v3

    move/from16 v43, v10

    :goto_42
    move/from16 v51, v14

    move-object/from16 v46, v15

    goto :goto_44

    :catchall_48
    move-exception v0

    move-object v6, v3

    move/from16 v43, v10

    :goto_43
    move/from16 v51, v14

    move-object/from16 v46, v15

    const/16 v23, 0x3

    :goto_44
    const/16 v25, 0x10

    const/16 v32, 0xc

    .line 4000
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_57

    throw v1

    :cond_57
    throw v0

    :catchall_49
    move-exception v0

    const/16 v25, 0x10

    :goto_45
    move-object v6, v3

    move/from16 v43, v10

    move/from16 v51, v14

    move-object/from16 v46, v15

    const/16 v23, 0x3

    goto/16 :goto_4d

    :catchall_4a
    move-exception v0

    move/from16 v25, v2

    goto :goto_45

    :catchall_4b
    move-exception v0

    move-object v6, v3

    move/from16 v43, v10

    :goto_46
    move/from16 v51, v14

    move-object/from16 v46, v15

    :goto_47
    const/16 v23, 0x3

    :goto_48
    const/16 v25, 0x10

    goto/16 :goto_4d

    :catchall_4c
    move-exception v0

    move-object v6, v3

    move/from16 v23, v7

    goto :goto_49

    :catchall_4d
    move-exception v0

    move-object v6, v3

    move-object/from16 v47, v9

    move/from16 v43, v10

    move/from16 v51, v14

    move-object/from16 v46, v15

    const/16 v23, 0x3

    goto :goto_4a

    :catchall_4e
    move-exception v0

    move/from16 v23, v1

    move-object v6, v3

    :goto_49
    move-object/from16 v47, v9

    move/from16 v43, v10

    move/from16 v51, v14

    move-object/from16 v46, v15

    :goto_4a
    const/16 v32, 0xc

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_58

    throw v1

    :cond_58
    throw v0

    :catchall_4f
    move-exception v0

    move-object v6, v3

    goto/16 :goto_4c

    :catchall_50
    move-exception v0

    move-object v6, v3

    move-object/from16 v47, v9

    move/from16 v43, v10

    move/from16 v51, v14

    move-object/from16 v46, v15

    const/16 v23, 0x3

    const/16 v32, 0xc

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_59

    throw v1

    :cond_59
    throw v0

    :catchall_51
    move-exception v0

    move-object v6, v3

    move-object/from16 v47, v9

    move/from16 v43, v10

    move/from16 v51, v14

    move-object/from16 v46, v15

    const/16 v23, 0x3

    const/16 v32, 0xc

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5a

    throw v1

    :cond_5a
    throw v0

    :catchall_52
    move-exception v0

    move-object v6, v3

    goto :goto_4b

    :catchall_53
    move-exception v0

    move-object v6, v3

    move-object/from16 v42, v8

    :goto_4b
    move-object/from16 v47, v9

    move/from16 v43, v10

    move/from16 v51, v14

    move-object/from16 v46, v15

    const/16 v23, 0x3

    const/16 v32, 0xc

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5b

    throw v1

    :cond_5b
    throw v0

    :catchall_54
    move-exception v0

    move-object v6, v3

    move-object/from16 v42, v8

    move-object/from16 v47, v9

    move/from16 v43, v10

    move/from16 v51, v14

    move-object/from16 v46, v15

    const/16 v23, 0x3

    const/16 v32, 0xc

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5c

    throw v1

    :cond_5c
    throw v0
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_55

    :catchall_55
    move-exception v0

    goto :goto_4e

    :catchall_56
    move-exception v0

    move-object v6, v3

    move-object/from16 v42, v8

    :goto_4c
    move-object/from16 v47, v9

    move/from16 v43, v10

    move/from16 v51, v14

    move-object/from16 v46, v15

    const/16 v23, 0x3

    :goto_4d
    const/16 v32, 0xc

    :goto_4e
    move-object v1, v0

    :goto_4f
    :try_start_a2
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_57

    goto :goto_50

    :catchall_57
    move-exception v0

    :try_start_a3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_50
    throw v1

    :catchall_58
    move-exception v0

    move-object/from16 v42, v8

    move-object/from16 v47, v9

    move/from16 v43, v10

    move/from16 v51, v14

    move-object/from16 v46, v15

    const/16 v23, 0x3

    const/16 v32, 0xc

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5d

    throw v1

    :cond_5d
    throw v0

    :catchall_59
    move-exception v0

    move-object/from16 v42, v8

    move-object/from16 v47, v9

    move/from16 v43, v10

    move/from16 v51, v14

    move-object/from16 v46, v15

    const/16 v23, 0x3

    const/16 v32, 0xc

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5e

    throw v1

    :cond_5e
    throw v0
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_5a

    :catchall_5a
    move-exception v0

    goto :goto_53

    :catchall_5b
    move-exception v0

    move-object/from16 v42, v8

    move-object/from16 v47, v9

    move/from16 v43, v10

    goto :goto_52

    :catchall_5c
    move-exception v0

    :goto_51
    move-object/from16 v42, v8

    move-object/from16 v47, v9

    move/from16 v43, v10

    move/from16 v51, v14

    move-object/from16 v46, v15

    const/16 v23, 0x3

    const/16 v32, 0xc

    goto :goto_53

    :catchall_5d
    move-exception v0

    move-object/from16 v34, v1

    move-object/from16 v41, v2

    move-object/from16 v36, v3

    move/from16 v38, v6

    move-object/from16 v42, v8

    move-object/from16 v47, v9

    move/from16 v43, v10

    move/from16 v32, v11

    :goto_52
    move/from16 v51, v14

    move-object/from16 v46, v15

    const/16 v23, 0x3

    .line 0
    :goto_53
    :try_start_a4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    move/from16 v2, v51

    mul-int/lit16 v14, v2, -0x13d

    not-int v3, v14

    rsub-int v3, v3, 0x13e

    not-int v4, v2

    const/4 v5, -0x2

    xor-int v6, v5, v1

    and-int/2addr v5, v1

    or-int/2addr v5, v6

    not-int v5, v5

    xor-int v6, v4, v5

    and-int/2addr v5, v4

    or-int/2addr v5, v6

    mul-int/lit16 v5, v5, -0x13e

    neg-int v5, v5

    neg-int v5, v5

    and-int v6, v3, v5

    or-int/2addr v3, v5

    add-int/2addr v6, v3

    not-int v3, v2

    xor-int v5, v3, v1

    and-int/2addr v3, v1

    or-int/2addr v3, v5

    not-int v3, v3

    not-int v5, v1

    xor-int/lit8 v7, v5, 0x1

    const/16 v31, 0x1

    and-int/lit8 v5, v5, 0x1

    or-int/2addr v5, v7

    xor-int v7, v5, v2

    and-int/2addr v5, v2

    or-int/2addr v5, v7

    not-int v5, v5

    xor-int v7, v3, v5

    and-int/2addr v3, v5

    or-int/2addr v3, v7

    mul-int/lit16 v3, v3, 0x13e

    add-int/2addr v6, v3

    not-int v3, v1

    xor-int v5, v4, v3

    and-int/2addr v3, v4

    or-int/2addr v3, v5

    xor-int/lit8 v4, v3, 0x1

    const/16 v31, 0x1

    and-int/lit8 v3, v3, 0x1

    or-int/2addr v3, v4

    not-int v3, v3

    xor-int/lit8 v4, v2, 0x1

    and-int/lit8 v5, v2, 0x1

    or-int/2addr v4, v5

    xor-int v5, v4, v1

    and-int/2addr v1, v4

    or-int/2addr v1, v5

    not-int v1, v1

    xor-int v4, v3, v1

    and-int/2addr v1, v3

    or-int/2addr v1, v4

    mul-int/lit16 v1, v1, 0x13e

    add-int/2addr v6, v1

    move/from16 v1, v24

    :goto_54
    if-ge v6, v1, :cond_60

    aget-boolean v3, v46, v6
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a4} :catch_11

    if-eqz v3, :cond_5f

    const/4 v3, 0x1

    goto :goto_55

    :cond_5f
    add-int/lit8 v6, v6, 0x1

    const/16 v28, 0x2

    rem-int v12, v28, v28

    goto :goto_54

    :cond_60
    const/4 v3, 0x0

    :goto_55
    if-eqz v3, :cond_62

    const/16 v33, 0x0

    :try_start_a5
    sput-object v33, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getVERSION_NAMEannotations:Ljava/lang/Object;

    sput-object v33, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->setConnector:Ljava/lang/Object;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a5} :catch_11

    sget v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    or-int/lit8 v3, v0, 0x7d

    const/16 v31, 0x1

    shl-int/lit8 v3, v3, 0x1

    xor-int/lit8 v0, v0, 0x7d

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    const/16 v28, 0x2

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_61

    const/4 v0, 0x3

    const/16 v22, 0x4

    div-int/lit8 v0, v0, 0x4

    move/from16 v4, v28

    goto :goto_56

    :cond_61
    const/16 v22, 0x4

    rem-int v12, v28, v28

    const/4 v4, 0x2

    :goto_56
    const/16 v21, 0x0

    const/16 v31, 0x1

    goto/16 :goto_58

    :cond_62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, -0xc912501

    or-int v3, v2, v1

    not-int v3, v3

    const v4, 0x40828

    xor-int v5, v4, v3

    and-int/2addr v3, v4

    or-int/2addr v3, v5

    mul-int/lit16 v3, v3, -0x2f4

    const v4, 0x1bfc403b

    add-int/2addr v4, v3

    not-int v1, v1

    xor-int v3, v2, v1

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0x2f4

    add-int/2addr v4, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, 0x24048802

    xor-int v3, v1, v2

    and-int v5, v1, v2

    or-int/2addr v3, v5

    mul-int/lit16 v3, v3, 0x3dc

    not-int v3, v3

    const v5, -0x2ae76766

    sub-int/2addr v5, v3

    not-int v3, v1

    const v6, 0x349ddc42

    xor-int v7, v3, v6

    and-int/2addr v3, v6

    or-int/2addr v3, v7

    not-int v3, v3

    const v6, 0x4862009d

    or-int/2addr v3, v6

    mul-int/lit16 v3, v3, -0x7b8

    neg-int v3, v3

    neg-int v3, v3

    or-int v6, v5, v3

    const/16 v31, 0x1

    shl-int/lit8 v6, v6, 0x1

    xor-int/2addr v3, v5

    sub-int/2addr v6, v3

    const v3, -0x58fb54de

    xor-int v5, v3, v1

    and-int/2addr v3, v1

    or-int/2addr v3, v5

    not-int v3, v3

    or-int/2addr v2, v3

    not-int v1, v1

    const v3, 0x58fb54dd

    xor-int v5, v1, v3

    and-int/2addr v1, v3

    or-int/2addr v1, v5

    not-int v1, v1

    or-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3dc

    neg-int v1, v1

    neg-int v1, v1

    or-int v2, v6, v1

    const/16 v31, 0x1

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v1, v6

    sub-int/2addr v2, v1

    if-gt v4, v2, :cond_63

    :try_start_a6
    sget-object v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    const/16 v2, 0x1afd

    aget-byte v2, v1, v2

    int-to-byte v2, v2

    const/16 v3, 0x68

    aget-byte v3, v1, v3

    int-to-byte v3, v3

    const/16 v4, 0x5b1e

    aget-byte v1, v1, v4

    goto :goto_57

    :cond_63
    sget-object v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    const/16 v2, 0x17f

    aget-byte v2, v1, v2

    int-to-byte v2, v2

    const/16 v3, 0x75

    aget-byte v3, v1, v3

    int-to-byte v3, v3

    const/16 v4, 0x50e

    aget-byte v1, v1, v4

    :goto_57
    int-to-short v1, v1

    invoke-static {v2, v3, v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a6} :catch_11

    const/4 v2, 0x2

    :try_start_a7
    new-array v3, v2, [Ljava/lang/Object;

    const/16 v31, 0x1

    aput-object v0, v3, v31

    const/16 v21, 0x0

    aput-object v1, v3, v21

    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    aget-byte v1, v0, v20

    int-to-byte v1, v1

    aget-byte v0, v0, v27

    int-to-byte v0, v0

    const/16 v7, 0x3c0

    int-to-short v2, v7

    invoke-static {v1, v0, v2}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v2, v1, v21

    const-class v2, Ljava/lang/Throwable;

    const/16 v31, 0x1

    aput-object v2, v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_5e

    :catchall_5e
    move-exception v0

    :try_start_a8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_64

    throw v1

    :cond_64
    throw v0

    :cond_65
    move-object/from16 v34, v1

    move-object/from16 v41, v2

    move-object/from16 v36, v3

    move-object/from16 v33, v5

    move/from16 v38, v6

    move/from16 v31, v7

    move-object/from16 v42, v8

    move-object/from16 v47, v9

    move/from16 v43, v10

    move/from16 v32, v11

    move v4, v12

    move v2, v14

    move-object/from16 v46, v15

    move/from16 v1, v24

    const/16 v23, 0x3

    :goto_58
    move/from16 v10, v43

    :goto_59
    add-int/lit8 v14, v2, 0x5d

    and-int/lit8 v0, v14, -0x5c

    or-int/lit8 v2, v14, -0x5c

    add-int v14, v0, v2

    move/from16 v24, v1

    move v12, v4

    move/from16 v7, v31

    move/from16 v11, v32

    move-object/from16 v5, v33

    move-object/from16 v1, v34

    move-object/from16 v3, v36

    move/from16 v6, v38

    move-object/from16 v2, v41

    move-object/from16 v8, v42

    move-object/from16 v15, v46

    move-object/from16 v9, v47

    const/4 v4, 0x5

    goto/16 :goto_12

    :cond_66
    :goto_5a
    return-void

    :catchall_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_67

    throw v1

    :cond_67
    throw v0

    :catchall_60
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_68

    throw v1

    :cond_68
    throw v0

    :catchall_61
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_69

    throw v1

    :cond_69
    throw v0
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_a8} :catch_11

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_62
    move-exception v0

    .line 2000
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_6a

    throw v1

    :cond_6a
    throw v0

    nop

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
        0x4dt
        0x68t
        -0x7ft
        0x38t
        0x67t
        -0x20t
        0x23t
        0x22t
        0x6dt
        0x5dt
        -0x5ft
        0x1dt
        -0x5dt
        0x46t
        0x3at
        0x52t
    .end array-data

    :array_3
    .array-data 1
        0x7ft
        -0x61t
        0x48t
        -0x3ct
        -0x9t
        -0x7dt
        0x32t
        0x38t
        0x35t
        -0x1bt
        -0x6at
        -0xft
        0x66t
        0x63t
        0x13t
        -0x65t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 65354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQuantity(I)I
    .locals 8

    const/4 v0, 0x2

    .line 65351
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    or-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/lit8 v4, v1, 0x3

    sub-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    rem-int/2addr v2, v0

    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getVERSION_NAMEannotations:Ljava/lang/Object;

    or-int/lit8 v4, v1, 0x15

    shl-int/2addr v4, v3

    xor-int/lit8 v1, v1, 0x15

    sub-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    rem-int/2addr v4, v0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    const/16 v4, 0x13

    aget-byte v4, v1, v4

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0x105

    aget-byte v5, v1, v5

    int-to-byte v5, v5

    const/16 v6, 0x285

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->setConnector:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x5b

    aget-byte v5, v1, v5

    int-to-byte v5, v5

    const/16 v6, 0x42

    aget-byte v6, v1, v6

    int-to-byte v6, v6

    const/4 v7, 0x7

    aget-byte v1, v1, v7

    int-to-short v1, v1

    invoke-static {v5, v6, v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Class;

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

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    or-int/lit8 v2, v1, 0x49

    shl-int/2addr v2, v3

    xor-int/lit8 v1, v1, 0x49

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/16 v0, 0x4d

    div-int/2addr v0, v7

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
.end method

.method public static getQuantity(IIC)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x2

    .line 65353
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    add-int/lit8 v2, v1, 0xd

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    rem-int/2addr v2, v0

    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getVERSION_NAMEannotations:Ljava/lang/Object;

    or-int/lit8 v3, v1, 0x75

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    xor-int/lit8 v1, v1, 0x75

    sub-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    rem-int/2addr v3, v0

    xor-int/lit8 v3, v1, 0x71

    and-int/lit8 v1, v1, 0x71

    shl-int/2addr v1, v4

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    rem-int/2addr v3, v0

    const/4 v1, 0x3

    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v3, p1

    sget-object p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    const/16 p2, 0x13

    aget-byte p2, p0, p2

    neg-int p2, p2

    int-to-byte p2, p2

    const/16 v5, 0x105

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x285

    int-to-short v6, v6

    invoke-static {p2, v5, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object p2

    sget-object v5, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->setConnector:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {p2, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    aget-byte v5, p0, v0

    int-to-byte v5, v5

    const/4 v6, 0x6

    aget-byte p0, p0, v6

    int-to-byte p0, p0

    int-to-short v6, p0

    invoke-static {v5, p0, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, p1

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, v1, v4

    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object p1, v1, v0

    invoke-virtual {p2, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    or-int/lit8 p2, p1, 0x19

    shl-int/2addr p2, v4

    xor-int/lit8 p1, p1, 0x19

    sub-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    rem-int/2addr p2, v0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

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

.method static init$0()V
    .locals 5

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    or-int/lit8 v2, v1, 0x39

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v1, v1, 0x39

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    rem-int/2addr v2, v0

    const-string v0, "ISO-8859-1"

    const-string v1, "tQ(\u00e8\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd<\u000e\u00f2\u0012\u00fb\u0004\u00fd\u0013\u00be\u0018/\u0000\u0006\u0006\u000e\u00f6\u0003\u000c\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c67\u000f\u0002\u0003\u00fa\u0001\u0014\u00fe\u0006\u00c0D\u0008\u0000\u00f4\u0001\n\u000e\u00f5\u00cd\u0015\u0008\r(\u0000\u00f4\u0008\u00fc\u0015\u00f5\u00e1/\u0002\u0003\u00fa\u0001\u0014\u00fe\u0006\u00d2\u00f3F\u00e2\u0003\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u0016%\u0014\u00f8\u0010\u00f6\u000e\u0008\u00de\u0017\r\u00f6\u00ff\u0006\u0015\u0000\u0003\u00f6\u000c\t\u00d02\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u00162\u0003\u00da(\u0006\u00f6\u0002\u000e\n\u0001\u0012\u00d8(\u00fe\u000e\u00f8\u00fb\u000e\u00d82\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u0001\u0012\u00d5&\u0006\u00fc\u0011\u00d4(\u000c\u0001\u0012\u00d2/\u00f8\u0004\u00e1!\u0005\u0008\u0000\u00e2(\u000c\u0001\u0012\u00d2!\u0005\u0008\u0000\u00e2(\u000c8\u0000\u0016\u00f0\u00d18\u0000\u0016\u00f0\u00d1\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00fa\u0018\u00ee\u00d0>\t\u00c2I\u00fc\u0006\u00f7\u0008\u000c\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca()\u00fd\u0004\u00f4\u000b\u0001\u0012\u00df%\u0000\u0004\u00f8\u0010\u0005\u0008\u000f\u00f8\u0004\u00fd\u0007\u0001\u0005\u0008\u0000\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u00176\u00f7\u0006\u00fb\u00c35\u00f2\u0010\u0004\u00f9\t\u0002\u00f4\n\u0017\u00ed\u0008\t\u0001\u0010\u00ec\u001e\u00fa\u000e\u00f4\u00ee\t\u00ed\u000b\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e\t\u00f96\u00ee\u0005\u000e\u0007\u00f8\t\u0002\u0015\u0000\u0003\u00f6\u000c\t\u00e3\u0018\u0007\u00fb\u00eb\u001f\u0006\u0003\u0000\r\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ed)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u000c\u0006\u0007\u00f5\u00ee\u0006\u00f0\u000b5\u0015\u0003\u00f5\u0012\u0002\u00bf7\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c67\u000f\u0002\u0003\u00fa\u0001\u0014\u00fe\u0006\u00c0D\u0008\u0000\u00f4\u0001\n\u000e\u00f5\u00cd5\u00cf\u0001\u0012\u00e1\u0016\u0011\u00ff\t\u0000\u00f4\u0005\u00fa\u0018\u00ee\u00d0C\u00fa\u0012\u00bd*\u0000\u00fd\u0001\u0012\u00df\u0014\u0016\u00f7\u00fa\u0018\u00ee\u00d0>\t\u00c2\u00176\u00f4\u0003\u0002\u0010\u00f6\u0002\u00e8(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0019 \u0016\u00f0\u00eb(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00f6\u00ff\u0006\u00e52\u00fa\u0003\u0010\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d3(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0014\u0003\u00f2\u001b\u00ed\u000f\u0004\u000c\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00bf>\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c58\u000f\u0002\u0003\u00fa\u0001\u0014\u00fe\u0006\u00bfE\u0008\u0000\u00f4\u0001\n\u000e\u00f5\u00cc\u0016\u0008\r(\u0000\u00f4\u0008\u00fc\u0015\u00f5\u00e1/\u0002\u0003\u00fa\u0001\u0014\u00fe\u0006\u00d2\u00f3:\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00bf>\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c58\u000f\u0002\u0003\u00fa\u0001\u0014\u00fe\u0006\u00bfE\u0008\u0000\u00f4\u0001\n\u000e\u00f5\u00cc\u0016\u0008\r(\u0000\u00f4\u0008\u00fc\u0015\u00f5\u00e1/\u0002\u0003\u00fa\u0001\u0014\u00fe\u0006\u00d2\u00f3F\u00e2\u0003\u00fe\u00de,\u00ff\u0002\u00e2\u0017\u0012\u00fb\u0001\n\u00f6\u00ff\u0006\u00f5\u0012\u00e1\u0016\u00ff\u0006\u00ee\"\u0001\u0010\u00ee\u0007\u00ef\u000b\u00fe\u00fa\u000e\u00f4\u0001\u0012\u00d5\u0001\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00e2$\u0011\u00f3\u0012\u00fa\n\u0007\u00fe\u0006\t\u00f8\u00f8\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0019$\u0016\u00d1&\u0006\u00fc\u0006\u00f5\u0006\u00e3$\u0016\u0001\u0012\u00d0$\u0014\u00ff\u0000\u000c\u0002\u00f4\u00ee\u0014\u0016\u00f7\u0004\n\u00fc\u0012\u00f4\u0001\u0012\u00d2,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00fa\u0018\u00ee\u00d0J\u0002\u00f8\u0006\u00c5O\u00f2\n\u00c1/\u0012\n\u00dc(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0001\u0012\u00dd\u001a\u0016\u00ff\u00d4,\t\u0001\n\u00fa\u0018\u00ee\u00d0J\u0002\u00f8\u0006\u00c5O\u00f2\n\u00c1/\u0012\n\u00d8,\t\u0001\n\u0001\u0012\u00e2\u0019\u0014\u00ee\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d9)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fe\u00d6:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0018,\u0006\u0007\u00f5\u00ff\u0004\r\u00fc\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u001e(\u00e2\u001b\u000b\u0005\u0006\n\u00ce$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00fa\u0018\u00ee\u00d0C\u00fe\t\u00c2\u0017:\u00fe\u00f4\u00e06\u00f4\u0003\u0002\u0010\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca\u0018,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00fe\u00f2\u0012\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0017\"\u0015\u00f5\u00e2$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00f4\u0016\u00f7\u00e7 \r\u0004\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00ce(\u000c\u00f6\u0001\u0014\u00fe\u0006\u00fa\u00ff\u0011\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00da\u0014\u0016\u00f7\u00e0*\u00fc\u000b\u00fb\u000c\t\u0002\u0001\u0012\u00d2/\u0001\u0006\u0002\u0002\u00fa\u000c\t\u00e3(\u00fa\u00f8\u00ee\u000b\u00eb\u000b\u0006\u00f5\u0006\u00e2,\u00f8\u0015\u0003\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c67\u000f\u0002\u0003\u00fa\u0001\u0014\u00fe\u0006\u00c0D\u0008\u0000\u00f4\u0001\n\u000e\u00f5\u00cd\u0015\u0008\r(\u0000\u00f4\u0008\u00fc\u0015\u00f5\u00e1/\u0002\u0003\u00fa\u0001\u0014\u00fe\u0006\u00d2\u00f3I\u00b0N5\u0015\u0003\u00f5\u0012\u0002\u00bf7\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c67\u000f\u0002\u0003\u00fa\u0001\u0014\u00fe\u0006\u00c0D\u0008\u0000\u00f4\u0001\n\u000e\u00f5\u00cd6\u00ce\u00ee\n\u00ec\u000bI\u0004\u00b4I\u00fe\u000e\u0003\u00f9\u0002\u0005\u000b\u000b\u00b0O\u00fc\u0004\u0011\u00b8(\u00d62\u0003\u00e3(\u0000\u00f4\u0008\u00fc\u0015\u00f5\u00e34\u00f2\u000c\t\u0001\u0012\u00e0\'\u00ef\u0010\t\u00f8\u000e\u0008"

    const/4 v3, 0x0

    const/16 v4, 0x515

    if-nez v2, :cond_0

    new-array v2, v4, [B

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    const/16 v0, 0x54f5

    :goto_0
    sput v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$b:I

    return-void

    :cond_0
    new-array v2, v4, [B

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    const/16 v0, 0xa7

    goto :goto_0
.end method

.method public static toJsonMap(Ljava/lang/Object;)I
    .locals 9

    const/4 v0, 0x2

    .line 65352
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    xor-int/lit8 v2, v1, 0x77

    and-int/lit8 v1, v1, 0x77

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    rem-int/2addr v2, v0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getVERSION_NAMEannotations:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    rem-int/2addr v1, v0

    :try_start_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$a:[B

    const/16 v5, 0x13

    aget-byte v5, v1, v5

    neg-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x105

    aget-byte v6, v1, v6

    int-to-byte v6, v6

    const/16 v7, 0x285

    int-to-short v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->setConnector:Ljava/lang/Object;

    check-cast v6, Ljava/lang/ClassLoader;

    invoke-static {v5, v3, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x5b

    aget-byte v6, v1, v6

    int-to-byte v6, v6

    const/16 v7, 0x42

    aget-byte v7, v1, v7

    int-to-byte v7, v7

    const/4 v8, 0x7

    aget-byte v1, v1, v8

    int-to-short v1, v1

    invoke-static {v6, v7, v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-virtual {v5, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$11:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->$10:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    return p0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    throw v4

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0

    :cond_2
    throw v4
.end method
