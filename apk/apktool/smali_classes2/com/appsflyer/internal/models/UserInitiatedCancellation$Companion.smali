.class public final Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/UserInitiatedCancellation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/UserInitiatedCancellation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/UserInitiatedCancellation;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/UserInitiatedCancellation;"
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

.field private static getOneTimePurchaseOfferDetails:J = 0x5af9f3c80b77bd2L

.field private static getPackageName:I = 0x0

.field private static getQuantity:I = -0x7f48842e

.field private static toJsonMap:C = '\u9c5f'


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;[Ljava/lang/Object;)V
    .locals 16

    const/4 v0, 0x2

    .line 127
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->$11:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->$10:I

    rem-int/2addr v1, v0

    if-eqz p4, :cond_0

    .line 0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    :goto_0
    check-cast v1, [C

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v2, p1

    :goto_1
    check-cast v2, [C

    if-eqz p0, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 127
    sget v4, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->$10:I

    add-int/lit8 v4, v4, 0x4b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->$11:I

    rem-int/2addr v4, v0

    goto :goto_2

    :cond_2
    move-object/from16 v3, p0

    .line 0
    :goto_2
    check-cast v3, [C

    .line 95
    new-instance v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1i;

    invoke-direct {v4}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1i;-><init>()V

    .line 97
    array-length v5, v2

    new-array v6, v5, [C

    .line 98
    array-length v7, v3

    new-array v8, v7, [C

    const/4 v9, 0x0

    .line 99
    invoke-static {v2, v9, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    invoke-static {v3, v9, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    aget-char v2, v6, v9

    xor-int v2, v2, p3

    int-to-char v2, v2

    aput-char v2, v6, v9

    .line 102
    aget-char v2, v8, v0

    move/from16 v3, p2

    int-to-char v3, v3

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v8, v0

    .line 104
    array-length v2, v1

    .line 105
    new-array v3, v2, [C

    .line 106
    iput v9, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1i;->getOneTimePurchaseOfferDetails:I

    :goto_3
    iget v5, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1i;->getOneTimePurchaseOfferDetails:I

    if-ge v5, v2, :cond_3

    .line 127
    sget v5, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->$11:I

    add-int/lit8 v5, v5, 0x3b

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->$10:I

    rem-int/2addr v5, v0

    .line 107
    iget v5, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1i;->getOneTimePurchaseOfferDetails:I

    add-int/2addr v5, v0

    rem-int/lit8 v5, v5, 0x4

    .line 108
    iget v7, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1i;->getOneTimePurchaseOfferDetails:I

    add-int/lit8 v7, v7, 0x3

    rem-int/lit8 v7, v7, 0x4

    .line 111
    iget v10, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1i;->getOneTimePurchaseOfferDetails:I

    rem-int/lit8 v10, v10, 0x4

    aget-char v10, v6, v10

    mul-int/lit16 v10, v10, 0x7fce

    aget-char v11, v8, v5

    add-int/2addr v10, v11

    const v11, 0xffff

    rem-int/2addr v10, v11

    int-to-char v10, v10

    iput-char v10, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1i;->InAppPurchaseEvent:C

    .line 113
    aget-char v10, v6, v7

    mul-int/lit16 v10, v10, 0x7fce

    aget-char v5, v8, v5

    add-int/2addr v10, v5

    div-int/2addr v10, v11

    int-to-char v5, v10

    aput-char v5, v8, v7

    .line 115
    iget-char v5, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1i;->InAppPurchaseEvent:C

    aput-char v5, v6, v7

    .line 118
    iget v5, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1i;->getOneTimePurchaseOfferDetails:I

    iget v10, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1i;->getOneTimePurchaseOfferDetails:I

    aget-char v10, v1, v10

    aget-char v7, v6, v7

    xor-int/2addr v7, v10

    int-to-long v10, v7

    sget-wide v12, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->getOneTimePurchaseOfferDetails:J

    const-wide v14, 0x5af9f3c80b77bd2L

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    sget v7, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->getQuantity:I

    int-to-long v12, v7

    xor-long/2addr v12, v14

    long-to-int v7, v12

    int-to-long v12, v7

    xor-long/2addr v10, v12

    sget-char v7, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->toJsonMap:C

    int-to-long v12, v7

    xor-long/2addr v12, v14

    long-to-int v7, v12

    int-to-char v7, v7

    int-to-long v12, v7

    xor-long/2addr v10, v12

    long-to-int v7, v10

    int-to-char v7, v7

    aput-char v7, v3, v5

    .line 106
    iget v5, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1i;->getOneTimePurchaseOfferDetails:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1i;->getOneTimePurchaseOfferDetails:I

    goto :goto_3

    .line 127
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    aput-object v0, p5, v9

    return-void
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/UserInitiatedCancellation;
    .locals 14

    const/4 v0, 0x2

    .line 142
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v2, Lcom/appsflyer/internal/models/UserInitiatedCancellation;

    const/4 v3, 0x0

    .line 139
    invoke-static {v3}, Landroid/telephony/cdma/CdmaCellLocation;->convertQuartSecToDecDegrees(I)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v10, v4, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    const v5, 0xaa53

    add-int/2addr v4, v5

    int-to-char v11, v4

    const/4 v4, 0x1

    new-array v13, v4, [Ljava/lang/Object;

    const-string v8, "\u0000\u0000\u0000\u0000"

    const-string v9, "\u341e\u1a54\u53e8\uc9aa"

    const-string v12, "\u0413\uaa87\uf27f\u9063\u564b\ua3c5\u6f15\ud65a\ue953\u82af\u6ec0\u89f2\u672a\u6614\u0ba9\u32f8\uf37b\uea98"

    invoke-static/range {v8 .. v13}, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;[Ljava/lang/Object;)V

    aget-object v5, v13, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/internal/models/CancelSurveyResult;->Companion:Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;

    check-cast v6, Lcom/appsflyer/internal/models/Deserialize;

    invoke-static {p1, v5, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appsflyer/internal/models/CancelSurveyResult;

    .line 140
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    shr-int/lit8 v9, v6, 0x10

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-char v10, v6

    new-array v12, v4, [Ljava/lang/Object;

    const-string v7, "\u0000\u0000\u0000\u0000"

    const-string v8, "\u700b\ub683\ud163\ua8ba"

    const-string v11, "\u3227\u6e28\udcc0\u6379\u22e0\u9c8a\uc6a2\ue3b0\u0308\u8ee7"

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;[Ljava/lang/Object;)V

    aget-object v3, v12, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-direct {v2, v5, p1}, Lcom/appsflyer/internal/models/UserInitiatedCancellation;-><init>(Lcom/appsflyer/internal/models/CancelSurveyResult;Ljava/lang/String;)V

    .line 142
    sget p1, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->InAppPurchaseEvent:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->getPackageName:I

    rem-int/2addr p1, v0

    return-object v2
.end method

.method public final synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 136
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->getPackageName:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->InAppPurchaseEvent:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/UserInitiatedCancellation;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/UserInitiatedCancellation;

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method
