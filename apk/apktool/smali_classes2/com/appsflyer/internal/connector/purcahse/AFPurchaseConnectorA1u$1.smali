.class final Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static getOneTimePurchaseOfferDetails:I = 0x1

.field private static getPackageName:[I

.field private static getQuantity:I


# instance fields
.field private synthetic toJsonMap:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    .line 65354
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->getPackageName:[I

    return-void

    :array_0
    .array-data 4
        0x5838f3e3    # 8.134305E14f
        0x6f83c0af
        -0x7c60e9e2
        -0x47422d4f
        -0x2afd37a8
        0x3d5b5e24
        0x707831cb
        0x1e96ac90
        -0x60c6fcb4    # -3.9178E-20f
        -0x1800cecd
        -0x797424b9
        0xdedc1f8
        -0x51ec1943
        0x7c99651
        -0x4e48dd17
        -0x67a1b094
        -0x6549ec42
        0x5b5c1b95
    .end array-data
.end method

.method constructor <init>(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->toJsonMap:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([II[Ljava/lang/Object;)V
    .locals 18

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
    sget-object v5, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->getPackageName:[I

    const-wide v6, -0x53b9e19b66ba9d65L    # -2.0710540038493842E-95

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    .line 148
    sget v10, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->$11:I

    add-int/lit8 v10, v10, 0x4f

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->$10:I

    rem-int/2addr v10, v1

    if-eqz v10, :cond_0

    array-length v10, v5

    new-array v11, v10, [I

    move v12, v9

    goto :goto_0

    .line 97
    :cond_0
    array-length v10, v5

    new-array v11, v10, [I

    move v12, v8

    :goto_0
    if-ge v12, v10, :cond_2

    .line 148
    sget v13, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->$10:I

    add-int/lit8 v13, v13, 0x51

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->$11:I

    rem-int/2addr v13, v1

    if-nez v13, :cond_1

    aget v13, v5, v12

    int-to-long v13, v13

    add-long/2addr v13, v6

    long-to-int v13, v13

    aput v13, v11, v12

    shr-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 97
    :cond_1
    aget v13, v5, v12

    int-to-long v13, v13

    xor-long/2addr v13, v6

    long-to-int v13, v13

    aput v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    move-object v5, v11

    :cond_3
    array-length v5, v5

    new-array v10, v5, [I

    .line 98
    sget-object v11, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->getPackageName:[I

    if-eqz v11, :cond_6

    .line 148
    sget v12, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->$10:I

    add-int/lit8 v12, v12, 0x6b

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->$11:I

    rem-int/2addr v12, v1

    if-nez v12, :cond_4

    array-length v12, v11

    new-array v13, v12, [I

    move v14, v9

    goto :goto_1

    .line 98
    :cond_4
    array-length v12, v11

    new-array v13, v12, [I

    move v14, v8

    :goto_1
    if-ge v14, v12, :cond_5

    aget v15, v11, v14

    move-wide/from16 v16, v6

    int-to-long v6, v15

    xor-long v6, v6, v16

    long-to-int v6, v6

    aput v6, v13, v14

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v6, v16

    goto :goto_1

    :cond_5
    move-object v11, v13

    :cond_6
    invoke-static {v11, v8, v10, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iput v8, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    :goto_2
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    array-length v6, v0

    if-ge v5, v6, :cond_8

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

    aput-char v5, v3, v9

    .line 103
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    add-int/2addr v5, v9

    aget v5, v0, v5

    shr-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v1

    .line 104
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    add-int/2addr v5, v9

    aget v5, v0, v5

    int-to-char v5, v5

    const/4 v7, 0x3

    aput-char v5, v3, v7

    .line 108
    aget-char v5, v3, v8

    shl-int/2addr v5, v6

    aget-char v11, v3, v9

    add-int/2addr v5, v11

    iput v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 109
    aget-char v5, v3, v1

    shl-int/2addr v5, v6

    aget-char v11, v3, v7

    add-int/2addr v5, v11

    iput v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 112
    invoke-static {v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent([I)V

    move v5, v8

    :goto_3
    if-ge v5, v6, :cond_7

    .line 116
    iget v11, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    aget v12, v10, v5

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

    .line 148
    sget v11, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->$10:I

    add-int/lit8 v11, v11, 0x49

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->$11:I

    rem-int/2addr v11, v1

    goto :goto_3

    .line 123
    :cond_7
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 124
    iget v11, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    iput v11, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    .line 125
    iput v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 127
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    aget v11, v10, v6

    xor-int/2addr v5, v11

    iput v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    .line 128
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->getQuantity:I

    const/16 v11, 0x11

    aget v11, v10, v11

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

    aput-char v5, v3, v9

    .line 135
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    ushr-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v1

    .line 136
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->toJsonMap:I

    int-to-char v5, v5

    aput-char v5, v3, v7

    .line 139
    invoke-static {v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent([I)V

    .line 142
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    mul-int/2addr v5, v1

    aget-char v6, v3, v8

    aput-char v6, v4, v5

    .line 143
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v9

    aget-char v6, v3, v9

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

    add-int/2addr v5, v7

    aget-char v6, v3, v7

    aput-char v6, v4, v5

    .line 100
    iget v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    add-int/2addr v5, v1

    iput v5, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1c;->InAppPurchaseEvent:I

    .line 148
    sget v5, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->$10:I

    add-int/lit8 v5, v5, 0x4f

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->$11:I

    rem-int/2addr v5, v1

    goto/16 :goto_2

    :cond_8
    new-instance v0, Ljava/lang/String;

    move/from16 v1, p1

    invoke-direct {v0, v4, v8, v1}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p2, v8

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 86
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->getQuantity:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->getOneTimePurchaseOfferDetails:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 72
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string p1, "[PurchaseConnector]: Failed to query purchases history"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 86
    sget p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->getQuantity:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->getOneTimePurchaseOfferDetails:I

    rem-int/2addr p1, v0

    .line 78
    iget-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->toJsonMap:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;

    iget-object p1, p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getQuantity:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/16 p2, 0xc

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x17

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->a([II[Ljava/lang/Object;)V

    aget-object p2, v1, v2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    const-string p1, "[PurchaseConnector]: No active subscriptions and/or non-consumed one-time purchases found"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->toJsonMap:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;

    invoke-virtual {v1, p1, p2, v3}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getPackageName(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Z)V

    .line 86
    sget p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->getOneTimePurchaseOfferDetails:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;->getQuantity:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_2

    const/16 p1, 0x2b

    div-int/2addr p1, v2

    :cond_2
    return-void

    .line 72
    :cond_3
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1

    :array_0
    .array-data 4
        0x2e99a8ba
        0x30cc5057
        0x48fd8200    # 519184.0f
        -0x7be2f8ed
        -0x2536efbc
        -0x20a110e
        -0x20718b80
        0x10465f0e
        -0x2ed30690
        -0x1de34599
        -0x4b533d7
        0x28d40928
    .end array-data
.end method
