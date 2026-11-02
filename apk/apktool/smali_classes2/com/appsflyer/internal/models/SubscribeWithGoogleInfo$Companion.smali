.class public final Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;"
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

.field private static getOneTimePurchaseOfferDetails:[C = null

.field private static getPackageName:I = 0x0

.field private static getQuantity:[I = null

.field private static toJsonMap:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    .line 65353
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->getOneTimePurchaseOfferDetails:[C

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->getQuantity:[I

    return-void

    nop

    :array_0
    .array-data 2
        -0xe66s
        -0xe30s
        -0xe31s
        -0xe38s
        -0xe38s
        -0xe39s
        -0xe0fs
        -0xe0bs
        -0xe37s
        -0xe3as
        -0xe3cs
        -0xe36s
        -0xe70s
        -0xe3cs
        -0xe37s
        -0xe35s
        -0xe0cs
        -0xe0bs
        -0xe37s
        -0xe2es
        -0xe2ds
    .end array-data

    nop

    :array_1
    .array-data 4
        0x18f654a8
        0x742451d8
        -0x625fb59d
        0x3d93a7cc
        0x6215e93d
        0x77acbb5c
        0x6eb4bbfd
        0x6cb0272e
        0x74654f02
        0x75dc795b
        -0x346132ec
        -0x2ff675ab
        0x47ffb24a
        -0x55959312
        -0x2bdf0adf
        0x63248233
        0x9443ea4
        0x620948c3
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;-><init>()V

    return-void
.end method

.method private static a(ZLjava/lang/String;[I[Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x2

    .line 220
    rem-int v2, v1, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 180
    sget v3, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    add-int/lit8 v3, v3, 0x23

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$10:I

    rem-int/2addr v3, v1

    const-string v4, "ISO-8859-1"

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v3, 0x21

    div-int/2addr v3, v2

    goto :goto_0

    .line 0
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :cond_1
    :goto_0
    check-cast v0, [B

    .line 162
    new-instance v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;

    invoke-direct {v3}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;-><init>()V

    .line 165
    aget v4, p2, v2

    const/4 v5, 0x1

    .line 166
    aget v6, p2, v5

    .line 167
    aget v7, p2, v1

    const/4 v8, 0x3

    .line 168
    aget v8, p2, v8

    .line 170
    sget-object v9, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->getOneTimePurchaseOfferDetails:[C

    if-eqz v9, :cond_3

    array-length v10, v9

    new-array v11, v10, [C

    .line 180
    sget v12, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$10:I

    add-int/lit8 v12, v12, 0x3b

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    rem-int/2addr v12, v1

    move v12, v2

    :goto_1
    if-ge v12, v10, :cond_2

    sget v13, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    add-int/lit8 v13, v13, 0x43

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$10:I

    rem-int/2addr v13, v1

    .line 170
    aget-char v13, v9, v12

    int-to-long v13, v13

    const-wide v15, -0x5b8f6744fab90e5dL    # -3.653433016889386E-133

    xor-long/2addr v13, v15

    long-to-int v13, v13

    int-to-char v13, v13

    aput-char v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    move-object v9, v11

    .line 171
    :cond_3
    new-array v10, v6, [C

    .line 173
    invoke-static {v9, v4, v10, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v0, :cond_8

    .line 215
    sget v4, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    add-int/lit8 v4, v4, 0x3f

    rem-int/lit16 v9, v4, 0x80

    sput v9, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$10:I

    rem-int/2addr v4, v1

    if-eqz v4, :cond_4

    .line 177
    new-array v4, v6, [C

    .line 180
    iput v5, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    move v9, v5

    goto :goto_2

    .line 177
    :cond_4
    new-array v4, v6, [C

    .line 180
    iput v2, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    move v9, v2

    :goto_2
    iget v11, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    if-ge v11, v6, :cond_7

    .line 182
    sget v11, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$10:I

    add-int/2addr v11, v5

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    rem-int/2addr v11, v1

    .line 181
    iget v11, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    aget-byte v11, v0, v11

    if-ne v11, v5, :cond_6

    .line 220
    sget v11, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    add-int/lit8 v11, v11, 0x1f

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$10:I

    rem-int/2addr v11, v1

    if-eqz v11, :cond_5

    .line 182
    iget v11, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    iget v12, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    aget-char v12, v10, v12

    ushr-int/lit8 v12, v12, 0x5

    ushr-int v9, v12, v9

    int-to-char v9, v9

    aput-char v9, v4, v11

    goto :goto_3

    :cond_5
    iget v11, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    iget v12, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    aget-char v12, v10, v12

    mul-int/2addr v12, v1

    add-int/2addr v12, v5

    sub-int/2addr v12, v9

    int-to-char v9, v12

    aput-char v9, v4, v11

    goto :goto_3

    .line 184
    :cond_6
    iget v11, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    iget v12, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    aget-char v12, v10, v12

    mul-int/2addr v12, v1

    sub-int/2addr v12, v9

    int-to-char v9, v12

    aput-char v9, v4, v11

    .line 187
    :goto_3
    iget v9, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    aget-char v9, v4, v9

    .line 180
    iget v11, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    add-int/2addr v11, v5

    iput v11, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    goto :goto_2

    :cond_7
    move-object v10, v4

    :cond_8
    if-lez v8, :cond_9

    .line 195
    new-array v0, v6, [C

    .line 197
    invoke-static {v10, v2, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v4, v6, v8

    .line 198
    invoke-static {v0, v2, v10, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    invoke-static {v0, v8, v10, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    if-eqz p0, :cond_b

    .line 182
    sget v0, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$10:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    rem-int/2addr v0, v1

    .line 204
    new-array v0, v6, [C

    .line 206
    iput v2, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    :goto_4
    iget v4, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    if-ge v4, v6, :cond_a

    .line 207
    iget v4, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    iget v8, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    sub-int v8, v6, v8

    sub-int/2addr v8, v5

    aget-char v8, v10, v8

    aput-char v8, v0, v4

    .line 206
    iget v4, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    goto :goto_4

    :cond_a
    move-object v10, v0

    :cond_b
    if-lez v7, :cond_d

    .line 182
    sget v0, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$10:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_c

    .line 215
    iput v5, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    goto :goto_5

    :cond_c
    iput v2, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    :goto_5
    iget v0, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    if-ge v0, v6, :cond_d

    .line 216
    iget v0, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    iget v4, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    aget-char v4, v10, v4

    aget v7, p2, v1

    sub-int/2addr v4, v7

    int-to-char v4, v4

    aput-char v4, v10, v0

    .line 215
    iget v0, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    add-int/2addr v0, v5

    iput v0, v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1e;->getOneTimePurchaseOfferDetails:I

    goto :goto_5

    .line 220
    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([C)V

    aput-object v0, p3, v2

    return-void
.end method

.method private static b([II[Ljava/lang/Object;)V
    .locals 19

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
    sget-object v5, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->getQuantity:[I

    const-wide v6, -0x53b9e19b66ba9d65L    # -2.0710540038493842E-95

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    .line 148
    sget v9, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    add-int/lit8 v9, v9, 0x6b

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$10:I

    rem-int/2addr v9, v1

    .line 97
    array-length v9, v5

    new-array v11, v9, [I

    add-int/lit8 v10, v10, 0x79

    .line 148
    rem-int/lit16 v12, v10, 0x80

    sput v12, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    rem-int/2addr v10, v1

    move v10, v8

    :goto_0
    if-ge v10, v9, :cond_0

    .line 97
    aget v12, v5, v10

    int-to-long v12, v12

    xor-long/2addr v12, v6

    long-to-int v12, v12

    aput v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move-object v5, v11

    :cond_1
    array-length v5, v5

    new-array v9, v5, [I

    .line 98
    sget-object v10, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->getQuantity:[I

    const/4 v11, 0x1

    if-eqz v10, :cond_4

    .line 148
    sget v12, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    add-int/lit8 v12, v12, 0x57

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$10:I

    rem-int/2addr v12, v1

    if-eqz v12, :cond_2

    array-length v12, v10

    new-array v13, v12, [I

    move v14, v11

    goto :goto_1

    .line 98
    :cond_2
    array-length v12, v10

    new-array v13, v12, [I

    move v14, v8

    :goto_1
    if-ge v14, v12, :cond_3

    .line 148
    sget v15, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$10:I

    add-int/lit8 v15, v15, 0x61

    move/from16 v16, v1

    rem-int/lit16 v1, v15, 0x80

    sput v1, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    rem-int/lit8 v15, v15, 0x2

    .line 98
    aget v1, v10, v14

    move-wide/from16 v17, v6

    int-to-long v6, v1

    xor-long v6, v6, v17

    long-to-int v1, v6

    aput v1, v13, v14

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v16

    move-wide/from16 v6, v17

    goto :goto_1

    :cond_3
    move-object v10, v13

    :cond_4
    move/from16 v16, v1

    invoke-static {v10, v8, v9, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iput v8, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    :goto_2
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    array-length v5, v0

    if-ge v1, v5, :cond_6

    .line 101
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    aget v1, v0, v1

    const/16 v5, 0x10

    shr-int/2addr v1, v5

    int-to-char v1, v1

    aput-char v1, v3, v8

    .line 102
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    aget v1, v0, v1

    int-to-char v1, v1

    aput-char v1, v3, v11

    .line 103
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    add-int/2addr v1, v11

    aget v1, v0, v1

    shr-int/2addr v1, v5

    int-to-char v1, v1

    aput-char v1, v3, v16

    .line 104
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    add-int/2addr v1, v11

    aget v1, v0, v1

    int-to-char v1, v1

    const/4 v6, 0x3

    aput-char v1, v3, v6

    .line 108
    aget-char v1, v3, v8

    shl-int/2addr v1, v5

    aget-char v7, v3, v11

    add-int/2addr v1, v7

    iput v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 109
    aget-char v1, v3, v16

    shl-int/2addr v1, v5

    aget-char v7, v3, v6

    add-int/2addr v1, v7

    iput v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 112
    invoke-static {v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent([I)V

    .line 148
    sget v1, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    add-int/2addr v1, v11

    rem-int/lit16 v7, v1, 0x80

    sput v7, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$10:I

    rem-int/lit8 v1, v1, 0x2

    move v1, v8

    :goto_3
    if-ge v1, v5, :cond_5

    sget v7, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$10:I

    add-int/2addr v7, v11

    rem-int/lit16 v10, v7, 0x80

    sput v10, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    rem-int/lit8 v7, v7, 0x2

    .line 116
    iget v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    aget v10, v9, v1

    xor-int/2addr v7, v10

    iput v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 117
    iget v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    invoke-static {v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity(I)I

    move-result v7

    iget v10, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    xor-int/2addr v7, v10

    iput v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 119
    iget v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 120
    iget v10, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    iput v10, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 121
    iput v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 123
    :cond_5
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 124
    iget v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    iput v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 125
    iput v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 127
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    aget v7, v9, v5

    xor-int/2addr v1, v7

    iput v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 128
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    const/16 v7, 0x11

    aget v7, v9, v7

    xor-int/2addr v1, v7

    iput v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 131
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 133
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    ushr-int/2addr v1, v5

    int-to-char v1, v1

    aput-char v1, v3, v8

    .line 134
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    int-to-char v1, v1

    aput-char v1, v3, v11

    .line 135
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    ushr-int/2addr v1, v5

    int-to-char v1, v1

    aput-char v1, v3, v16

    .line 136
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    int-to-char v1, v1

    aput-char v1, v3, v6

    .line 139
    invoke-static {v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent([I)V

    .line 142
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    mul-int/lit8 v1, v1, 0x2

    aget-char v5, v3, v8

    aput-char v5, v4, v1

    .line 143
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v11

    aget-char v5, v3, v11

    aput-char v5, v4, v1

    .line 144
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    aget-char v5, v3, v16

    aput-char v5, v4, v1

    .line 145
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v6

    aget-char v5, v3, v6

    aput-char v5, v4, v1

    .line 100
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    .line 148
    sget v1, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$11:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->$10:I

    rem-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    :cond_6
    new-instance v0, Ljava/lang/String;

    move/from16 v1, p1

    invoke-direct {v0, v4, v8, v1}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p2, v8

    return-void
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;
    .locals 13

    const/4 v0, 0x2

    .line 339
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    new-instance v2, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    const/4 v3, 0x0

    const/16 v4, 0xc

    .line 333
    filled-new-array {v3, v4, v3, v3}, [I

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000"

    invoke-static {v6, v8, v5, v7}, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->a(ZLjava/lang/String;[I[Ljava/lang/Object;)V

    aget-object v5, v7, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x6

    .line 334
    new-array v8, v7, [I

    fill-array-data v8, :array_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    rsub-int/lit8 v9, v9, 0xb

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->b([II[Ljava/lang/Object;)V

    aget-object v8, v10, v3

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    new-array v9, v7, [I

    fill-array-data v9, :array_1

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    const/16 v11, 0x9

    add-int/2addr v10, v11

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v9, v10, v12}, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->b([II[Ljava/lang/Object;)V

    aget-object v9, v12, v3

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    filled-new-array {v4, v11, v3, v7}, [I

    move-result-object v4

    new-array v10, v6, [Ljava/lang/Object;

    const-string v11, "\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001"

    invoke-static {v3, v11, v4, v10}, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->a(ZLjava/lang/String;[I[Ljava/lang/Object;)V

    aget-object v4, v10, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    new-array v7, v7, [I

    fill-array-data v7, :array_2

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    add-int/lit8 v10, v10, 0xb

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v10, v6}, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->b([II[Ljava/lang/Object;)V

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v4

    move-object v3, v5

    move-object v4, v8

    move-object v5, v9

    .line 332
    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget p1, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->getPackageName:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->toJsonMap:I

    rem-int/2addr p1, v0

    return-object v2

    nop

    :array_0
    .array-data 4
        0x5139bf22
        0x3ea8b14f
        -0x48a0d499
        0x51b86816
        0x2d3c20fc
        0x94bca3f
    .end array-data

    :array_1
    .array-data 4
        -0x46506d
        0x513e67f4
        -0x8ec868e
        0x7cbd43bd
        0x7e587d95
        -0x478ecbbf
    .end array-data

    :array_2
    .array-data 4
        0x7aa777d0
        0x7e011e5c
        -0x2136ff0a
        -0x6bffec9a
        0x52498af3
        -0x1731f2c5
    .end array-data
.end method

.method public final bridge synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 330
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->toJsonMap:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->getPackageName:I

    rem-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->toJsonMap:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;->getPackageName:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/16 v0, 0x4b

    div-int/lit8 v0, v0, 0x0

    :cond_0
    return-object p1
.end method
