.class public final Lcom/appsflyer/internal/models/ValidationFailureData$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/ValidationFailureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/ValidationFailureData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/ValidationFailureData$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/ValidationFailureData;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ValidationFailureData;"
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

.field private static InAppPurchaseEvent:[I = null

.field private static getPackageName:I = 0x0

.field private static toJsonMap:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    .line 65353
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->InAppPurchaseEvent:[I

    return-void

    :array_0
    .array-data 4
        0x3ad66d96
        -0x2f6a69a8
        0x40b7ee43
        -0x17863649
        0x1847d860
        0x38113385
        -0x51f00364
        -0x4060c4f8
        -0x2adfd250
        -0x3925d6ec
        0x3981877b
        -0x5ccb69d4
        -0x6277742d
        0x6ac02d46
        -0x603800b6
        -0x16023e41
        -0x63e010fd
        0x222f6732
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;-><init>()V

    return-void
.end method

.method private static a([II[Ljava/lang/Object;)V
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
    sget-object v5, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->InAppPurchaseEvent:[I

    const-wide v6, -0x53b9e19b66ba9d65L    # -2.0710540038493842E-95

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    .line 148
    sget v9, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->$11:I

    add-int/lit8 v10, v9, 0x47

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->$10:I

    rem-int/2addr v10, v1

    .line 97
    array-length v10, v5

    new-array v11, v10, [I

    add-int/lit8 v9, v9, 0x4f

    .line 148
    rem-int/lit16 v12, v9, 0x80

    sput v12, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->$10:I

    rem-int/2addr v9, v1

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_0

    .line 97
    aget v12, v5, v9

    int-to-long v12, v12

    xor-long/2addr v12, v6

    long-to-int v12, v12

    aput v12, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move-object v5, v11

    :cond_1
    array-length v5, v5

    new-array v9, v5, [I

    .line 98
    sget-object v10, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->InAppPurchaseEvent:[I

    if-eqz v10, :cond_3

    array-length v11, v10

    new-array v12, v11, [I

    move v13, v8

    :goto_1
    if-ge v13, v11, :cond_2

    aget v14, v10, v13

    int-to-long v14, v14

    xor-long/2addr v14, v6

    long-to-int v14, v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    move-object v10, v12

    :cond_3
    invoke-static {v10, v8, v9, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iput v8, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    :goto_2
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    array-length v6, v0

    if-ge v5, v6, :cond_5

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

    .line 148
    sget v5, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->$10:I

    add-int/lit8 v5, v5, 0x37

    rem-int/lit16 v11, v5, 0x80

    sput v11, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->$11:I

    rem-int/2addr v5, v1

    move v5, v8

    :goto_3
    if-ge v5, v6, :cond_4

    sget v11, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->$11:I

    add-int/lit8 v11, v11, 0x4b

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->$10:I

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

    goto :goto_3

    .line 123
    :cond_4
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

    goto/16 :goto_2

    .line 148
    :cond_5
    new-instance v0, Ljava/lang/String;

    move/from16 v1, p1

    invoke-direct {v0, v4, v8, v1}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p2, v8

    return-void
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ValidationFailureData;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    .line 16
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x727a65af

    const v3, -0x23bc4d93

    const v4, -0x144e0d4d

    const v5, -0x1b6358e0

    .line 13
    filled-new-array {v4, v5, v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/graphics/PointF;->length(FF)F

    move-result v4

    cmpl-float v3, v4, v3

    const/4 v4, 0x6

    rsub-int/lit8 v3, v3, 0x6

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->a([II[Ljava/lang/Object;)V

    const/4 v2, 0x0

    aget-object v3, v6, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x1

    invoke-virtual {p1, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 14
    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v6

    add-int/lit8 v6, v6, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v5}, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->a([II[Ljava/lang/Object;)V

    aget-object v2, v5, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v2, Lcom/appsflyer/internal/models/ValidationFailureData;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, p1}, Lcom/appsflyer/internal/models/ValidationFailureData;-><init>(ILjava/lang/String;)V

    .line 16
    sget p1, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->toJsonMap:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->getPackageName:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    const/4 p1, 0x0

    throw p1

    :array_0
    .array-data 4
        0x3895bddb
        -0x6847b1db
        0x6f6fc6ab
        0x68b64cfb
        -0x4d468225
        -0x1d51c3f5
    .end array-data
.end method

.method public final bridge synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 10
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->getPackageName:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->toJsonMap:I

    rem-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ValidationFailureData;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->getPackageName:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->toJsonMap:I

    rem-int/2addr v1, v0

    return-object p1
.end method
