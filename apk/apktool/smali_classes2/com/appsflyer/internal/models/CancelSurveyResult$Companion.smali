.class public final Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/CancelSurveyResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/CancelSurveyResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/CancelSurveyResult;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/CancelSurveyResult;"
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

.field private static InAppPurchaseEvent:C = '\u0000'

.field private static getPackageName:[C = null

.field private static getQuantity:I = 0x1

.field private static toJsonMap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 65353
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->getPackageName:[C

    const v0, 0xf177

    sput-char v0, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->InAppPurchaseEvent:C

    return-void

    nop

    :array_0
    .array-data 2
        -0x3b79s
        -0x3b60s
        -0x3b7cs
        -0x3b7as
        -0x3b63s
        -0x3b65s
        -0x3b44s
        -0x3b75s
        -0x3b66s
        -0x3b7bs
        -0x3b64s
        -0x3b77s
        -0x3b67s
        -0x3b76s
        -0x3b78s
        -0x3b74s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;-><init>()V

    return-void
.end method

.method private static a(BILjava/lang/String;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x2

    .line 273
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->$11:I

    add-int/lit8 v2, v1, 0x5

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->$10:I

    rem-int/2addr v2, v0

    if-eqz p2, :cond_0

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->$10:I

    rem-int/2addr v1, v0

    .line 0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :cond_0
    check-cast p2, [C

    .line 190
    new-instance v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;

    invoke-direct {v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;-><init>()V

    .line 195
    sget-object v2, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->getPackageName:[C

    const-wide v3, -0x79e45c2705910e8dL

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 273
    sget v6, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->$10:I

    add-int/lit8 v6, v6, 0x19

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->$11:I

    rem-int/2addr v6, v0

    .line 195
    array-length v6, v2

    new-array v7, v6, [C

    move v8, v5

    :goto_0
    if-ge v8, v6, :cond_2

    .line 273
    sget v9, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->$10:I

    add-int/lit8 v9, v9, 0x29

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->$11:I

    rem-int/2addr v9, v0

    if-nez v9, :cond_1

    aget-char v9, v2, v8

    int-to-long v9, v9

    xor-long/2addr v9, v3

    long-to-int v9, v9

    int-to-char v9, v9

    aput-char v9, v7, v8

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 195
    :cond_1
    aget-char v9, v2, v8

    int-to-long v9, v9

    xor-long/2addr v9, v3

    long-to-int v9, v9

    int-to-char v9, v9

    aput-char v9, v7, v8

    goto :goto_1

    :cond_2
    move-object v2, v7

    .line 197
    :cond_3
    sget-char v6, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->InAppPurchaseEvent:C

    int-to-long v6, v6

    xor-long/2addr v3, v6

    long-to-int v3, v3

    int-to-char v3, v3

    .line 201
    new-array v4, p1, [C

    .line 204
    rem-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_4

    add-int/lit8 v6, p1, -0x1

    .line 206
    aget-char v7, p2, v6

    sub-int/2addr v7, p0

    int-to-char v7, v7

    aput-char v7, v4, v6

    goto :goto_2

    :cond_4
    move v6, p1

    :goto_2
    const/4 v7, 0x1

    if-le v6, v7, :cond_8

    .line 273
    sget v8, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->$11:I

    add-int/lit8 v8, v8, 0x13

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->$10:I

    rem-int/2addr v8, v0

    .line 210
    iput v5, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getQuantity:I

    :goto_3
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getQuantity:I

    if-ge v8, v6, :cond_8

    .line 213
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getQuantity:I

    aget-char v8, p2, v8

    iput-char v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getPackageName:C

    .line 214
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getQuantity:I

    add-int/2addr v8, v7

    aget-char v8, p2, v8

    iput-char v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getOneTimePurchaseOfferDetails:C

    .line 217
    iget-char v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getPackageName:C

    iget-char v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getOneTimePurchaseOfferDetails:C

    if-ne v8, v9, :cond_5

    .line 218
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getQuantity:I

    iget-char v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getPackageName:C

    sub-int/2addr v9, p0

    int-to-char v9, v9

    aput-char v9, v4, v8

    .line 219
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getQuantity:I

    add-int/2addr v8, v7

    iget-char v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getOneTimePurchaseOfferDetails:C

    sub-int/2addr v9, p0

    int-to-char v9, v9

    aput-char v9, v4, v8

    goto/16 :goto_4

    .line 221
    :cond_5
    iget-char v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getPackageName:C

    div-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->InAppPurchaseEvent:I

    .line 222
    iget-char v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getPackageName:C

    rem-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->hashCode:I

    .line 223
    iget-char v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getOneTimePurchaseOfferDetails:C

    div-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->toJsonMap:I

    .line 224
    iget-char v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getOneTimePurchaseOfferDetails:C

    rem-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->stopObservingTransactions:I

    .line 228
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->hashCode:I

    iget v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->stopObservingTransactions:I

    if-ne v8, v9, :cond_6

    .line 229
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->InAppPurchaseEvent:I

    add-int/2addr v8, v3

    sub-int/2addr v8, v7

    rem-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->InAppPurchaseEvent:I

    .line 230
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->toJsonMap:I

    add-int/2addr v8, v3

    sub-int/2addr v8, v7

    rem-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->toJsonMap:I

    .line 232
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->InAppPurchaseEvent:I

    mul-int/2addr v8, v3

    iget v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->hashCode:I

    add-int/2addr v8, v9

    .line 233
    iget v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->toJsonMap:I

    mul-int/2addr v9, v3

    iget v10, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->stopObservingTransactions:I

    add-int/2addr v9, v10

    .line 235
    iget v10, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getQuantity:I

    aget-char v8, v2, v8

    aput-char v8, v4, v10

    .line 236
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getQuantity:I

    add-int/2addr v8, v7

    aget-char v9, v2, v9

    aput-char v9, v4, v8

    goto :goto_4

    .line 241
    :cond_6
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->InAppPurchaseEvent:I

    iget v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->toJsonMap:I

    if-ne v8, v9, :cond_7

    .line 242
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->hashCode:I

    add-int/2addr v8, v3

    sub-int/2addr v8, v7

    rem-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->hashCode:I

    .line 243
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->stopObservingTransactions:I

    add-int/2addr v8, v3

    sub-int/2addr v8, v7

    rem-int/2addr v8, v3

    iput v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->stopObservingTransactions:I

    .line 245
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->InAppPurchaseEvent:I

    mul-int/2addr v8, v3

    iget v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->hashCode:I

    add-int/2addr v8, v9

    .line 246
    iget v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->toJsonMap:I

    mul-int/2addr v9, v3

    iget v10, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->stopObservingTransactions:I

    add-int/2addr v9, v10

    .line 248
    iget v10, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getQuantity:I

    aget-char v8, v2, v8

    aput-char v8, v4, v10

    .line 249
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getQuantity:I

    add-int/2addr v8, v7

    aget-char v9, v2, v9

    aput-char v9, v4, v8

    goto :goto_4

    .line 258
    :cond_7
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->InAppPurchaseEvent:I

    mul-int/2addr v8, v3

    iget v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->stopObservingTransactions:I

    add-int/2addr v8, v9

    .line 259
    iget v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->toJsonMap:I

    mul-int/2addr v9, v3

    iget v10, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->hashCode:I

    add-int/2addr v9, v10

    .line 261
    iget v10, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getQuantity:I

    aget-char v8, v2, v8

    aput-char v8, v4, v10

    .line 262
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getQuantity:I

    add-int/2addr v8, v7

    aget-char v9, v2, v9

    aput-char v9, v4, v8

    .line 210
    :goto_4
    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getQuantity:I

    add-int/2addr v8, v0

    iput v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1k;->getQuantity:I

    goto/16 :goto_3

    :cond_8
    move p0, v5

    :goto_5
    if-ge p0, p1, :cond_9

    .line 270
    aget-char p2, v4, p0

    xor-int/lit16 p2, p2, 0x359a

    int-to-char p2, p2

    aput-char p2, v4, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    .line 273
    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    aput-object p0, p3, v5

    return-void
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/CancelSurveyResult;
    .locals 9

    const/4 v0, 0x2

    .line 159
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v2, Lcom/appsflyer/internal/models/CancelSurveyResult;

    const/4 v3, 0x0

    .line 156
    invoke-static {v3, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x5d

    int-to-byte v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x6

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "\u0007\r\u000c\n\u0000\u0001"

    invoke-static {v4, v5, v8, v7}, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->a(BILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v4, v7, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x30

    .line 157
    invoke-static {v1, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x4b

    int-to-byte v7, v7

    invoke-static {v1, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "\u0007\r\u000c\n\u0000\u0001\u0004\n\r\u0007\u0002\u0001\u000e\u0008\u363a"

    invoke-static {v7, v5, v8, v6}, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->a(BILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-direct {v2, v4, p1}, Lcom/appsflyer/internal/models/CancelSurveyResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget p1, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->toJsonMap:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->getQuantity:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-object v2

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 153
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->toJsonMap:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->getQuantity:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/CancelSurveyResult;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/CancelSurveyResult$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/CancelSurveyResult;

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method
