.class public final Lcom/appsflyer/internal/models/ProductPurchase$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/ProductPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/ProductPurchase;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/ProductPurchase$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/ProductPurchase;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ProductPurchase;"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static InAppPurchaseEvent:[B = null

.field private static PurchaseClient:I = 0x0

.field private static equals:I = 0x1

.field private static getOneTimePurchaseOfferDetails:I = 0x64aa63a6

.field private static getPackageName:I = 0x461298e0

.field private static getQuantity:I = -0x1fb6a7

.field private static stopObservingTransactions:[I

.field private static toJsonMap:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x51

    .line 65353
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->InAppPurchaseEvent:[B

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->stopObservingTransactions:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x57t
        0x48t
        -0x2at
        -0x10t
        -0x36t
        -0x7at
        -0x35t
        -0x29t
        -0x9t
        -0x22t
        -0x1et
        -0x2at
        -0x26t
        -0x1et
        0x39t
        -0x25t
        0x3dt
        -0x17t
        0x35t
        -0x31t
        -0x2at
        -0x3bt
        -0x2ct
        -0x35t
        -0x40t
        -0x36t
        -0x2bt
        -0x31t
        -0x24t
        -0x15t
        0x2ft
        -0x1bt
        -0x2ft
        -0x3et
        -0x2dt
        -0x3bt
        -0x39t
        -0xbt
        0x3ft
        0x3at
        -0x26t
        -0x3ft
        -0x2bt
        0x39t
        -0x33t
        -0x2bt
        0x7dt
        0x1ft
        0x71t
        0x2dt
        0x63t
        0xat
        0x15t
        0x4t
        0x14t
        0x2t
        0xft
        0x3t
        0x5t
        0x79t
        0x14t
        0xdt
        0xft
        0x14t
        0xet
        -0x5at
        -0x28t
        -0x64t
        -0xft
        -0x64t
        -0x8t
        -0x80t
        -0x73t
        -0x3ct
        -0x3ct
        -0x3ct
        -0x3ct
        -0x3ct
        -0x3ct
        -0x3ct
    .end array-data

    nop

    :array_1
    .array-data 4
        -0x3affa7f1
        0x442434e0
        -0x3c52df89
        -0x50109026
        0x639926c0
        -0x3339d9d4    # -1.038872E8f
        0x6a6c6069
        -0x77cb59dc
        -0x2df7f595
        0x4cecf1cb    # 1.2422716E8f
        0x20f5268a
        -0x3ebb4c7
        0x48a6bbf4    # 341471.62f
        0x6358af6c
        -0x603e8b08
        -0x454d3b55
        -0x6b96f325
        0x3d33018f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;-><init>()V

    return-void
.end method

.method private static a(IIBSI[Ljava/lang/Object;)V
    .locals 13

    const/4 v0, 0x2

    .line 235
    rem-int v1, v0, v0

    .line 167
    new-instance v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;

    invoke-direct {v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;-><init>()V

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    sget v3, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->getPackageName:I

    int-to-long v3, v3

    const-wide v5, -0x3a6649c2b9ed673cL    # -1.9893597754177665E27

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr p1, v3

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-ne p1, v3, :cond_0

    move v3, v7

    goto :goto_0

    .line 235
    :cond_0
    sget v3, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$10:I

    add-int/lit8 v3, v3, 0x7

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$11:I

    rem-int/2addr v3, v0

    move v3, v4

    :goto_0
    xor-int/lit8 v8, v3, 0x1

    if-eq v8, v7, :cond_5

    .line 174
    sget-object p1, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->InAppPurchaseEvent:[B

    if-eqz p1, :cond_3

    array-length v8, p1

    new-array v9, v8, [B

    move v10, v4

    :goto_1
    if-ge v10, v8, :cond_2

    .line 223
    sget v11, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$10:I

    add-int/lit8 v11, v11, 0x43

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$11:I

    rem-int/2addr v11, v0

    if-nez v11, :cond_1

    aget-byte v11, p1, v10

    int-to-long v11, v11

    or-long/2addr v11, v5

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    goto :goto_1

    .line 174
    :cond_1
    aget-byte v11, p1, v10

    int-to-long v11, v11

    xor-long/2addr v11, v5

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v9

    :cond_3
    if-eqz p1, :cond_4

    .line 175
    sget-object p1, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->InAppPurchaseEvent:[B

    sget v8, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->getQuantity:I

    int-to-long v8, v8

    xor-long/2addr v8, v5

    long-to-int v8, v8

    add-int v8, p4, v8

    aget-byte p1, p1, v8

    int-to-long v8, p1

    xor-long/2addr v8, v5

    long-to-int p1, v8

    int-to-byte p1, p1

    sget v8, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->getPackageName:I

    int-to-long v8, v8

    xor-long/2addr v8, v5

    long-to-int v8, v8

    add-int/2addr p1, v8

    int-to-byte p1, p1

    goto :goto_2

    .line 182
    :cond_4
    sget-object p1, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->toJsonMap:[S

    sget v8, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->getQuantity:I

    int-to-long v8, v8

    xor-long/2addr v8, v5

    long-to-int v8, v8

    add-int v8, p4, v8

    aget-short p1, p1, v8

    int-to-long v8, p1

    xor-long/2addr v8, v5

    long-to-int p1, v8

    int-to-short p1, p1

    sget v8, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->getPackageName:I

    int-to-long v8, v8

    xor-long/2addr v8, v5

    long-to-int v8, v8

    add-int/2addr p1, v8

    int-to-short p1, p1

    :cond_5
    :goto_2
    if-lez p1, :cond_c

    add-int v8, p4, p1

    sub-int/2addr v8, v0

    .line 193
    sget v9, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->getQuantity:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v9, v9

    add-int/2addr v8, v9

    add-int/2addr v8, v3

    .line 198
    iput v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getPackageName:I

    .line 213
    sget v3, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->getOneTimePurchaseOfferDetails:I

    int-to-long v8, v3

    xor-long/2addr v8, v5

    long-to-int v3, v8

    add-int/2addr p0, v3

    int-to-char p0, p0

    iput-char p0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->InAppPurchaseEvent:C

    .line 214
    iget-char p0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->InAppPurchaseEvent:C

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    iget-char p0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->InAppPurchaseEvent:C

    iput-char p0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getQuantity:C

    .line 218
    sget-object p0, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->InAppPurchaseEvent:[B

    if-eqz p0, :cond_8

    .line 235
    sget v3, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$11:I

    add-int/lit8 v3, v3, 0x43

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$10:I

    rem-int/2addr v3, v0

    if-eqz v3, :cond_6

    array-length v3, p0

    new-array v8, v3, [B

    goto :goto_3

    .line 218
    :cond_6
    array-length v3, p0

    new-array v8, v3, [B

    :goto_3
    move v9, v4

    :goto_4
    if-ge v9, v3, :cond_7

    .line 235
    sget v10, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$10:I

    add-int/lit8 v10, v10, 0x35

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$11:I

    rem-int/2addr v10, v0

    .line 218
    aget-byte v10, p0, v9

    int-to-long v10, v10

    xor-long/2addr v10, v5

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    move-object p0, v8

    :cond_8
    if-eqz p0, :cond_9

    move p0, v7

    goto :goto_5

    :cond_9
    move p0, v4

    .line 219
    :goto_5
    iput v7, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getOneTimePurchaseOfferDetails:I

    :goto_6
    iget v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getOneTimePurchaseOfferDetails:I

    if-ge v3, p1, :cond_c

    if-eqz p0, :cond_b

    .line 235
    sget v3, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$10:I

    add-int/lit8 v3, v3, 0xd

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$11:I

    rem-int/2addr v3, v0

    if-nez v3, :cond_a

    .line 222
    sget-object v3, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->InAppPurchaseEvent:[B

    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getPackageName:I

    shl-int/lit8 v9, v8, 0x1

    iput v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getPackageName:I

    aget-byte v3, v3, v8

    int-to-long v8, v3

    rem-long/2addr v8, v5

    long-to-int v3, v8

    int-to-byte v3, v3

    .line 223
    iget-char v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getQuantity:C

    ushr-int v3, v3, p3

    int-to-byte v3, v3

    xor-int/2addr v3, p2

    shr-int v3, v8, v3

    int-to-char v3, v3

    goto :goto_7

    .line 222
    :cond_a
    sget-object v3, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->InAppPurchaseEvent:[B

    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getPackageName:I

    add-int/lit8 v9, v8, -0x1

    iput v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getPackageName:I

    aget-byte v3, v3, v8

    int-to-long v8, v3

    xor-long/2addr v8, v5

    long-to-int v3, v8

    int-to-byte v3, v3

    .line 223
    iget-char v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getQuantity:C

    add-int v3, v3, p3

    int-to-byte v3, v3

    xor-int/2addr v3, p2

    add-int/2addr v8, v3

    int-to-char v3, v8

    :goto_7
    iput-char v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->InAppPurchaseEvent:C

    goto :goto_8

    .line 226
    :cond_b
    sget-object v3, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->toJsonMap:[S

    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getPackageName:I

    add-int/lit8 v9, v8, -0x1

    iput v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getPackageName:I

    aget-short v3, v3, v8

    int-to-long v8, v3

    xor-long/2addr v8, v5

    long-to-int v3, v8

    int-to-short v3, v3

    .line 227
    iget-char v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getQuantity:C

    add-int v3, v3, p3

    int-to-short v3, v3

    xor-int/2addr v3, p2

    add-int/2addr v8, v3

    int-to-char v3, v8

    iput-char v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->InAppPurchaseEvent:C

    .line 230
    :goto_8
    iget-char v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->InAppPurchaseEvent:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    iget-char v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->InAppPurchaseEvent:C

    iput-char v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getQuantity:C

    .line 219
    iget v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getOneTimePurchaseOfferDetails:I

    add-int/2addr v3, v7

    iput v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getOneTimePurchaseOfferDetails:I

    goto :goto_6

    .line 235
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p5, v4

    return-void
.end method

.method private static b([II[Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 148
    rem-int v2, v1, v1

    .line 93
    new-instance v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;

    invoke-direct {v2}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;-><init>()V

    const/4 v3, 0x4

    .line 95
    new-array v3, v3, [C

    .line 96
    array-length v4, v0

    mul-int/2addr v4, v1

    new-array v4, v4, [C

    .line 97
    sget-object v5, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->stopObservingTransactions:[I

    const-wide v6, -0x53b9e19b66ba9d65L    # -2.0710540038493842E-95

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 148
    sget v9, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$10:I

    add-int/lit8 v9, v9, 0x2b

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$11:I

    rem-int/2addr v9, v1

    if-nez v9, :cond_0

    array-length v9, v5

    new-array v10, v9, [I

    goto :goto_0

    .line 97
    :cond_0
    array-length v9, v5

    new-array v10, v9, [I

    :goto_0
    move v11, v8

    :goto_1
    if-ge v11, v9, :cond_1

    .line 148
    sget v12, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$10:I

    add-int/lit8 v12, v12, 0x7d

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$11:I

    rem-int/2addr v12, v1

    .line 97
    aget v12, v5, v11

    int-to-long v12, v12

    xor-long/2addr v12, v6

    long-to-int v12, v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v10

    :cond_2
    array-length v5, v5

    new-array v9, v5, [I

    .line 98
    sget-object v10, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->stopObservingTransactions:[I

    if-eqz v10, :cond_4

    array-length v11, v10

    new-array v12, v11, [I

    move v13, v8

    :goto_2
    if-ge v13, v11, :cond_3

    .line 148
    sget v14, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$11:I

    add-int/lit8 v14, v14, 0x77

    rem-int/lit16 v15, v14, 0x80

    sput v15, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$10:I

    rem-int/2addr v14, v1

    .line 98
    aget v14, v10, v13

    int-to-long v14, v14

    xor-long/2addr v14, v6

    long-to-int v14, v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    move-object v10, v12

    :cond_4
    invoke-static {v10, v8, v9, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iput v8, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    :goto_3
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    array-length v6, v0

    if-ge v5, v6, :cond_6

    .line 148
    sget v5, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$11:I

    add-int/lit8 v5, v5, 0x43

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$10:I

    rem-int/2addr v5, v1

    .line 101
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    aget v5, v0, v5

    const/16 v6, 0x10

    shr-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v8

    .line 102
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    aget v5, v0, v5

    int-to-char v5, v5

    const/4 v7, 0x1

    aput-char v5, v3, v7

    .line 103
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    add-int/2addr v5, v7

    aget v5, v0, v5

    shr-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v1

    .line 104
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    add-int/2addr v5, v7

    aget v5, v0, v5

    int-to-char v5, v5

    const/4 v10, 0x3

    aput-char v5, v3, v10

    .line 108
    aget-char v5, v3, v8

    shl-int/2addr v5, v6

    aget-char v11, v3, v7

    add-int/2addr v5, v11

    iput v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 109
    aget-char v5, v3, v1

    shl-int/2addr v5, v6

    aget-char v11, v3, v10

    add-int/2addr v5, v11

    iput v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 112
    invoke-static {v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent([I)V

    move v5, v8

    :goto_4
    if-ge v5, v6, :cond_5

    .line 148
    sget v11, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$11:I

    add-int/lit8 v11, v11, 0x39

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->$10:I

    rem-int/2addr v11, v1

    .line 116
    iget v11, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    aget v12, v9, v5

    xor-int/2addr v11, v12

    iput v11, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 117
    iget v11, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    invoke-static {v11}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity(I)I

    move-result v11

    iget v12, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    xor-int/2addr v11, v12

    iput v11, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 119
    iget v11, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 120
    iget v12, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    iput v12, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 121
    iput v11, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 123
    :cond_5
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 124
    iget v11, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    iput v11, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 125
    iput v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 127
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    aget v11, v9, v6

    xor-int/2addr v5, v11

    iput v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 128
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    const/16 v11, 0x11

    aget v11, v9, v11

    xor-int/2addr v5, v11

    iput v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 131
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 133
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    ushr-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v8

    .line 134
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    int-to-char v5, v5

    aput-char v5, v3, v7

    .line 135
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    ushr-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v1

    .line 136
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    int-to-char v5, v5

    aput-char v5, v3, v10

    .line 139
    invoke-static {v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent([I)V

    .line 142
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    mul-int/2addr v5, v1

    aget-char v6, v3, v8

    aput-char v6, v4, v5

    .line 143
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v7

    aget-char v6, v3, v7

    aput-char v6, v4, v5

    .line 144
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v1

    aget-char v6, v3, v1

    aput-char v6, v4, v5

    .line 145
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v10

    aget-char v6, v3, v10

    aput-char v6, v4, v5

    .line 100
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    add-int/2addr v5, v1

    iput v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    goto/16 :goto_3

    .line 148
    :cond_6
    new-instance v0, Ljava/lang/String;

    move/from16 v1, p1

    invoke-direct {v0, v4, v8, v1}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p2, v8

    return-void
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ProductPurchase;
    .locals 29
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x2

    .line 56
    rem-int v2, v1, v1

    .line 0
    const-string v2, ""

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, -0x22b8faf7

    const/4 v4, 0x0

    .line 26
    invoke-static {v2, v4}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    sub-int v6, v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v7, v3, -0x20

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v8, v3

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    add-int/lit8 v3, v3, 0x72

    int-to-short v9, v3

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v3, v10, v12

    const v10, 0x460d2e64

    sub-int/2addr v10, v3

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static/range {v6 .. v11}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->a(IIBSI[Ljava/lang/Object;)V

    aget-object v6, v11, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v6, 0xa

    .line 27
    new-array v7, v6, [I

    fill-array-data v7, :array_0

    invoke-static {v4, v4, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    add-int/lit8 v9, v9, 0x12

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->b([II[Ljava/lang/Object;)V

    aget-object v7, v10, v4

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 28
    invoke-static {v4, v4, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    const v10, -0x22b8faf2

    sub-int v11, v10, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit8 v12, v7, -0x17

    invoke-static {v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v7

    int-to-byte v13, v7

    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x22

    int-to-short v14, v7

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v15

    cmp-long v7, v15, v17

    const v15, 0x460d2e67

    sub-int/2addr v15, v7

    new-array v7, v3, [Ljava/lang/Object;

    move-object/from16 v16, v7

    invoke-static/range {v11 .. v16}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->a(IIBSI[Ljava/lang/Object;)V

    aget-object v7, v16, v4

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    const/4 v11, -0x1

    invoke-virtual {v0, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const v12, -0x22b8faff

    .line 29
    invoke-static {v4, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    sub-int v19, v12, v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    rsub-int/lit8 v20, v12, -0x14

    invoke-static {v4, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    int-to-byte v12, v12

    invoke-static {v4, v4}, Landroid/view/View;->resolveSize(II)I

    move-result v13

    rsub-int/lit8 v13, v13, -0xc

    int-to-short v13, v13

    const v14, 0x460d2e72

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v15

    sub-int v23, v14, v15

    new-array v14, v3, [Ljava/lang/Object;

    move/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v24, v14

    invoke-static/range {v19 .. v24}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->a(IIBSI[Ljava/lang/Object;)V

    aget-object v12, v24, v4

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const/16 v13, 0x8

    .line 30
    new-array v14, v13, [I

    fill-array-data v14, :array_1

    invoke-static {v4, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v15

    add-int/lit8 v15, v15, 0x10

    move/from16 v22, v1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v14, v15, v1}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->b([II[Ljava/lang/Object;)V

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v14, -0x22b8faf3

    .line 31
    invoke-static {v4, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v15

    sub-int v23, v14, v15

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v14

    rsub-int/lit8 v24, v14, -0x1e

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v14

    int-to-byte v14, v14

    rsub-int/lit8 v14, v14, -0x1

    int-to-byte v14, v14

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v15

    shr-int/2addr v15, v13

    add-int/lit8 v15, v15, -0x14

    int-to-short v15, v15

    const v16, 0x460d2e80    # 9035.625f

    move/from16 v19, v5

    const/16 v5, 0x30

    invoke-static {v2, v5, v4, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v20

    sub-int v27, v16, v20

    move/from16 v16, v6

    new-array v6, v3, [Ljava/lang/Object;

    move-object/from16 v28, v6

    move/from16 v25, v14

    move/from16 v26, v15

    invoke-static/range {v23 .. v28}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->a(IIBSI[Ljava/lang/Object;)V

    aget-object v6, v28, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 32
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v14

    shr-int/lit8 v14, v14, 0x10

    add-int v23, v14, v10

    invoke-static {v2, v2, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v14

    add-int/lit8 v24, v14, -0x18

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v14

    cmpl-float v14, v14, v19

    int-to-byte v14, v14

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v15

    cmpl-float v15, v15, v19

    add-int/lit8 v15, v15, -0xc

    int-to-short v15, v15

    invoke-static {v4}, Landroid/telephony/cdma/CdmaCellLocation;->convertQuartSecToDecDegrees(I)D

    move-result-wide v20

    const-wide/16 v25, 0x0

    cmpl-double v20, v20, v25

    const v21, 0x460d2e87

    sub-int v27, v21, v20

    move/from16 v20, v10

    new-array v10, v3, [Ljava/lang/Object;

    move-object/from16 v28, v10

    move/from16 v25, v14

    move/from16 v26, v15

    invoke-static/range {v23 .. v28}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->a(IIBSI[Ljava/lang/Object;)V

    aget-object v10, v28, v4

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    cmp-long v10, v23, v17

    const v15, -0x22b8fb00

    sub-int v23, v15, v10

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v10

    cmpl-float v10, v10, v19

    rsub-int/lit8 v24, v10, -0xf

    invoke-static {v2, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v10

    rsub-int/lit8 v10, v10, -0x1

    int-to-byte v10, v10

    invoke-static {v2, v5, v4, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v5

    add-int/lit8 v5, v5, 0x39

    int-to-short v5, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v25

    cmp-long v15, v25, v17

    const v21, 0x460d2e93

    sub-int v27, v21, v15

    new-array v15, v3, [Ljava/lang/Object;

    move/from16 v26, v5

    move/from16 v25, v10

    move-object/from16 v28, v15

    invoke-static/range {v23 .. v28}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->a(IIBSI[Ljava/lang/Object;)V

    aget-object v5, v28, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 34
    new-array v5, v13, [I

    fill-array-data v5, :array_2

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    add-int/lit8 v10, v10, 0xd

    move/from16 v21, v13

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v5, v10, v13}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->b([II[Ljava/lang/Object;)V

    aget-object v5, v13, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    sub-int v23, v20, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    rsub-int/lit8 v24, v10, -0x1b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    cmp-long v10, v25, v17

    rsub-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    invoke-static {v4, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    add-int/lit8 v13, v13, -0x47

    int-to-short v13, v13

    const v20, 0x460d2ea5

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    sub-int v27, v20, v25

    move/from16 v20, v4

    new-array v4, v3, [Ljava/lang/Object;

    move-object/from16 v28, v4

    move/from16 v25, v10

    move/from16 v26, v13

    invoke-static/range {v23 .. v28}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->a(IIBSI[Ljava/lang/Object;)V

    aget-object v4, v28, v20

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v10, 0x1a724f61

    const v13, -0x2c7f1ce6

    const v11, -0x2081540b

    const v3, -0x175341da

    .line 36
    filled-new-array {v11, v3, v10, v13}, [I

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    rsub-int/lit8 v13, v10, 0x8

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v3, v13, v11}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->b([II[Ljava/lang/Object;)V

    aget-object v3, v11, v20

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v10, -0x1

    invoke-virtual {v0, v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v10, 0xe

    .line 37
    new-array v10, v10, [I

    fill-array-data v10, :array_3

    invoke-static/range {v17 .. v18}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v11

    add-int/lit8 v11, v11, 0x1c

    move/from16 v21, v3

    const/4 v13, 0x1

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v3}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->b([II[Ljava/lang/Object;)V

    aget-object v3, v3, v20

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0xe

    .line 38
    new-array v10, v10, [I

    fill-array-data v10, :array_4

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v25

    cmp-long v11, v25, v17

    add-int/lit8 v11, v11, 0x1a

    move/from16 v17, v7

    const/4 v13, 0x1

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v7}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->b([II[Ljava/lang/Object;)V

    aget-object v7, v7, v20

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x6

    .line 39
    new-array v10, v10, [I

    fill-array-data v10, :array_5

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v11

    cmpl-float v11, v11, v19

    rsub-int/lit8 v11, v11, 0xa

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v13}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->b([II[Ljava/lang/Object;)V

    aget-object v10, v13, v20

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v10, Lcom/appsflyer/internal/models/ProductPurchase;

    .line 41
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v3

    move-object/from16 v16, v5

    move-object v13, v6

    move-object/from16 v20, v7

    move-object v7, v10

    move v11, v12

    move/from16 v10, v17

    move/from16 v18, v21

    move-object/from16 v21, v0

    move-object v12, v1

    move-object/from16 v17, v4

    .line 40
    invoke-direct/range {v7 .. v21}, Lcom/appsflyer/internal/models/ProductPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget v0, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->equals:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->PurchaseClient:I

    rem-int/lit8 v0, v0, 0x2

    return-object v7

    nop

    :array_0
    .array-data 4
        0x7786789f
        -0x3965577
        -0x47fc5709
        0x17e17d05
        0x5139bd72
        0x1909a50e
        0x42653274
        0x2b6ab1d5
        0x16a87e22
        0x2b4d9f52
    .end array-data

    :array_1
    .array-data 4
        -0x4f0a0869
        0x2f3166a8
        -0x5573d60e
        -0x6180ca72
        0x7f48dc99
        -0x13396e5b
        0x4e02525b    # 5.4660883E8f
        -0x193639ea
    .end array-data

    :array_2
    .array-data 4
        0x7786789f
        -0x3965577
        -0x47fc5709
        0x17e17d05
        -0x3edc0efd
        0x25b88697
        -0x7da33091
        -0x29b7206f
    .end array-data

    :array_3
    .array-data 4
        -0x60f5de3f
        0x495abd50    # 895957.0f
        0x5222aa67
        -0x514e522b
        0x64d9c3a1
        0x4257a0aa
        0xd401467
        0x77c912ac
        -0x24449627
        -0x79ee5ef1
        -0x27ba95ed
        0x739b3d67
        0x12cfccfa
        -0x7861d1eb
    .end array-data

    :array_4
    .array-data 4
        -0x60f5de3f
        0x495abd50    # 895957.0f
        0x5222aa67
        -0x514e522b
        0x64d9c3a1
        0x4257a0aa
        0xd401467
        0x77c912ac
        0x22dff95e
        0x44c5c38a
        -0x2baf67f7
        0x79693440
        0x49290e4f
        0x5d198b12
    .end array-data

    :array_5
    .array-data 4
        -0x47232fc
        -0x75ebbab0
        -0x6ffb76e4
        -0x718cbe4f
        0x718ff5b3
        0x46c203d5
    .end array-data
.end method

.method public final synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 23
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->equals:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->PurchaseClient:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ProductPurchase;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ProductPurchase;

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method
