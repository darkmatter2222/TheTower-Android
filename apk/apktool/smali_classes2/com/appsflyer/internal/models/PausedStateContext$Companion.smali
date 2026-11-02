.class public final Lcom/appsflyer/internal/models/PausedStateContext$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/PausedStateContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/PausedStateContext;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/PausedStateContext$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/PausedStateContext;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/PausedStateContext;"
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

.field private static InAppPurchaseEvent:I = 0x1

.field private static getOneTimePurchaseOfferDetails:[I

.field private static getPackageName:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    .line 65353
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->getOneTimePurchaseOfferDetails:[I

    return-void

    :array_0
    .array-data 4
        -0x4dc754d4
        0x2a90f670
        0x2ae75111
        0x5df251a2
        0x733e8c0d
        0x44065b7c
        -0x285d142f
        0x4378d491
        0x6a7abc5f
        0x4ad39a59    # 6933804.5f
        -0x445a5f52
        -0x14a7738a
        0x2f1830ad
        0x647d5d4a
        0x21e25de5
        -0x7eedad28
        0x5f98f4d3
        0x4b8eccba    # 1.8717044E7f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/PausedStateContext$Companion;-><init>()V

    return-void
.end method

.method private static a([II[Ljava/lang/Object;)V
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
    sget-object v5, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->getOneTimePurchaseOfferDetails:[I

    const-wide v6, -0x53b9e19b66ba9d65L    # -2.0710540038493842E-95

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_2

    .line 148
    sget v10, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->$11:I

    add-int/lit8 v10, v10, 0x19

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->$10:I

    rem-int/2addr v10, v1

    if-eqz v10, :cond_0

    array-length v10, v5

    new-array v11, v10, [I

    move v12, v8

    goto :goto_0

    .line 97
    :cond_0
    array-length v10, v5

    new-array v11, v10, [I

    move v12, v9

    :goto_0
    if-ge v12, v10, :cond_1

    aget v13, v5, v12

    int-to-long v13, v13

    xor-long/2addr v13, v6

    long-to-int v13, v13

    aput v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v11

    :cond_2
    array-length v5, v5

    new-array v10, v5, [I

    .line 98
    sget-object v11, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->getOneTimePurchaseOfferDetails:[I

    if-eqz v11, :cond_5

    .line 148
    sget v12, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->$10:I

    add-int/lit8 v12, v12, 0x3b

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->$11:I

    rem-int/2addr v12, v1

    .line 98
    array-length v12, v11

    new-array v13, v12, [I

    move v14, v9

    :goto_1
    if-ge v14, v12, :cond_4

    .line 148
    sget v15, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->$10:I

    add-int/lit8 v15, v15, 0x35

    move/from16 v16, v1

    rem-int/lit16 v1, v15, 0x80

    sput v1, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->$11:I

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_3

    aget v1, v11, v14

    move-wide/from16 v17, v6

    int-to-long v6, v1

    xor-long v6, v6, v17

    long-to-int v1, v6

    aput v1, v13, v14

    goto :goto_2

    :cond_3
    move-wide/from16 v17, v6

    .line 98
    aget v1, v11, v14

    int-to-long v6, v1

    xor-long v6, v6, v17

    long-to-int v1, v6

    aput v1, v13, v14

    add-int/lit8 v14, v14, 0x1

    :goto_2
    move/from16 v1, v16

    move-wide/from16 v6, v17

    goto :goto_1

    :cond_4
    move-object v11, v13

    :cond_5
    move/from16 v16, v1

    invoke-static {v11, v9, v10, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iput v9, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    :goto_3
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    array-length v5, v0

    if-ge v1, v5, :cond_7

    .line 101
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    aget v1, v0, v1

    const/16 v5, 0x10

    shr-int/2addr v1, v5

    int-to-char v1, v1

    aput-char v1, v3, v9

    .line 102
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    aget v1, v0, v1

    int-to-char v1, v1

    aput-char v1, v3, v8

    .line 103
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    add-int/2addr v1, v8

    aget v1, v0, v1

    shr-int/2addr v1, v5

    int-to-char v1, v1

    aput-char v1, v3, v16

    .line 104
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    add-int/2addr v1, v8

    aget v1, v0, v1

    int-to-char v1, v1

    const/4 v6, 0x3

    aput-char v1, v3, v6

    .line 108
    aget-char v1, v3, v9

    shl-int/2addr v1, v5

    aget-char v7, v3, v8

    add-int/2addr v1, v7

    iput v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 109
    aget-char v1, v3, v16

    shl-int/2addr v1, v5

    aget-char v7, v3, v6

    add-int/2addr v1, v7

    iput v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 112
    invoke-static {v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent([I)V

    move v1, v9

    :goto_4
    if-ge v1, v5, :cond_6

    .line 116
    iget v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    aget v11, v10, v1

    xor-int/2addr v7, v11

    iput v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 117
    iget v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    invoke-static {v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity(I)I

    move-result v7

    iget v11, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    xor-int/2addr v7, v11

    iput v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 119
    iget v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 120
    iget v11, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    iput v11, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 121
    iput v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 123
    :cond_6
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 124
    iget v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    iput v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 125
    iput v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 127
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    aget v7, v10, v5

    xor-int/2addr v1, v7

    iput v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 128
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    const/16 v7, 0x11

    aget v7, v10, v7

    xor-int/2addr v1, v7

    iput v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 131
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 133
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    ushr-int/2addr v1, v5

    int-to-char v1, v1

    aput-char v1, v3, v9

    .line 134
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    int-to-char v1, v1

    aput-char v1, v3, v8

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
    invoke-static {v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent([I)V

    .line 142
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    mul-int/lit8 v1, v1, 0x2

    aget-char v5, v3, v9

    aput-char v5, v4, v1

    .line 143
    iget v1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    aget-char v5, v3, v8

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

    goto/16 :goto_3

    .line 148
    :cond_7
    new-instance v0, Ljava/lang/String;

    move/from16 v1, p1

    invoke-direct {v0, v4, v9, v1}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p2, v9

    return-void
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/PausedStateContext;
    .locals 7

    const/4 v0, 0x2

    .line 316
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    new-instance v2, Lcom/appsflyer/internal/models/PausedStateContext;

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    rsub-int/lit8 v5, v5, 0xe

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->a([II[Ljava/lang/Object;)V

    aget-object v3, v6, v4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1}, Lcom/appsflyer/internal/models/PausedStateContext;-><init>(Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->InAppPurchaseEvent:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->getPackageName:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    const/4 p1, 0x0

    throw p1

    :array_0
    .array-data 4
        -0x308810b8
        0x36f70a4b
        -0x3624a2ac    # -1797034.5f
        -0x6e2dd6ea
        -0x18244fa8
        0x2220e058
        0x396db74b
        0x8de91cc
    .end array-data
.end method

.method public final bridge synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 314
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->InAppPurchaseEvent:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->getPackageName:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/PausedStateContext;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/PausedStateContext$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/PausedStateContext;

    const/4 p1, 0x0

    throw p1
.end method
