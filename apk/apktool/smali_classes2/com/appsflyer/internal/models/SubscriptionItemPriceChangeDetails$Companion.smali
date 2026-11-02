.class public final Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;"
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

.field private static InAppPurchaseEvent:Z = false

.field private static getOneTimePurchaseOfferDetails:Z = false

.field private static getPackageName:[C = null

.field private static getQuantity:I = 0x0

.field private static hashCode:I = 0x1

.field private static toJsonMap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    .line 65353
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->getPackageName:[C

    const v0, -0x7e5f7791

    sput v0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->toJsonMap:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->getOneTimePurchaseOfferDetails:Z

    sput-boolean v0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->InAppPurchaseEvent:Z

    return-void

    :array_0
    .array-data 2
        -0x77f8s
        -0x7709s
        -0x7701s
        -0x77f6s
        -0x7705s
        -0x77f5s
        -0x77dfs
        -0x770as
        -0x77e1s
        -0x7703s
        -0x77fcs
        -0x77d6s
        -0x77f9s
        -0x77f4s
        -0x77fas
        -0x77e5s
        -0x7800s
        -0x77ffs
        -0x77e0s
        -0x7702s
        -0x77e6s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;-><init>()V

    return-void
.end method

.method private static a([ILjava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 14

    move-object/from16 v0, p3

    const/4 v1, 0x2

    .line 172
    rem-int v2, v1, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 139
    sget v3, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->$10:I

    add-int/lit8 v3, v3, 0xf

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->$11:I

    rem-int/2addr v3, v1

    const-string v4, "ISO-8859-1"

    if-eqz v3, :cond_0

    .line 0
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    throw v2

    .line 0
    :cond_1
    :goto_0
    check-cast v0, [B

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, p1

    :goto_1
    check-cast v3, [C

    .line 129
    new-instance v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;

    invoke-direct {v4}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;-><init>()V

    .line 131
    sget-object v5, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->getPackageName:[C

    const-wide v6, -0x4071bfb67e5f7782L    # -0.014771055477528213

    const/4 v8, 0x0

    if-eqz v5, :cond_4

    .line 165
    sget v9, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->$11:I

    add-int/lit8 v9, v9, 0x57

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->$10:I

    rem-int/2addr v9, v1

    .line 131
    array-length v9, v5

    new-array v10, v9, [C

    move v11, v8

    :goto_2
    if-ge v11, v9, :cond_3

    aget-char v12, v5, v11

    int-to-long v12, v12

    xor-long/2addr v12, v6

    long-to-int v12, v12

    int-to-char v12, v12

    aput-char v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    move-object v5, v10

    .line 132
    :cond_4
    sget v9, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->toJsonMap:I

    int-to-long v9, v9

    xor-long/2addr v6, v9

    long-to-int v6, v6

    .line 134
    sget-boolean v7, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->InAppPurchaseEvent:Z

    const/4 v9, 0x1

    if-eqz v7, :cond_8

    .line 165
    sget p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->$11:I

    add-int/lit8 p0, p0, 0x6d

    rem-int/lit16 v3, p0, 0x80

    sput v3, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->$10:I

    rem-int/2addr p0, v1

    if-eqz p0, :cond_5

    .line 136
    array-length p0, v0

    iput p0, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    .line 137
    iget p0, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    new-array p0, p0, [C

    .line 139
    iput v9, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    goto :goto_3

    .line 136
    :cond_5
    array-length p0, v0

    iput p0, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    .line 137
    iget p0, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    new-array p0, p0, [C

    .line 139
    iput v8, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    :goto_3
    iget v3, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    iget v7, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    if-ge v3, v7, :cond_6

    .line 140
    iget v3, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    iget v7, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    sub-int/2addr v7, v9

    iget v10, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    sub-int/2addr v7, v10

    aget-byte v7, v0, v7

    add-int v7, v7, p2

    aget-char v7, v5, v7

    sub-int/2addr v7, v6

    int-to-char v7, v7

    aput-char v7, p0, v3

    .line 139
    iget v3, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    add-int/2addr v3, v9

    iput v3, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    goto :goto_3

    .line 146
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 172
    sget p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->$11:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 v3, p0, 0x80

    sput v3, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->$10:I

    rem-int/2addr p0, v1

    if-nez p0, :cond_7

    aput-object v0, p4, v8

    return-void

    :cond_7
    throw v2

    .line 147
    :cond_8
    sget-boolean v0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->getOneTimePurchaseOfferDetails:Z

    if-eqz v0, :cond_a

    .line 149
    array-length p0, v3

    iput p0, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    .line 150
    iget p0, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    new-array p0, p0, [C

    .line 152
    iput v8, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    :goto_4
    iget v0, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    iget v2, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    if-ge v0, v2, :cond_9

    .line 139
    sget v0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->$10:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->$11:I

    rem-int/2addr v0, v1

    .line 153
    iget v0, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    iget v2, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    sub-int/2addr v2, v9

    iget v7, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    sub-int/2addr v2, v7

    aget-char v2, v3, v2

    sub-int v2, v2, p2

    aget-char v2, v5, v2

    sub-int/2addr v2, v6

    int-to-char v2, v2

    aput-char v2, p0, v0

    .line 152
    iget v0, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    add-int/2addr v0, v9

    iput v0, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    goto :goto_4

    .line 159
    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    aput-object v0, p4, v8

    return-void

    .line 162
    :cond_a
    array-length v0, p0

    iput v0, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    .line 163
    iget v0, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    new-array v0, v0, [C

    .line 165
    :goto_5
    iput v8, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    :goto_6
    iget v2, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    iget v3, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    if-ge v2, v3, :cond_c

    .line 172
    sget v2, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->$11:I

    add-int/lit8 v2, v2, 0x4b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->$10:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_b

    .line 166
    iget v2, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    iget v3, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    ushr-int/2addr v3, v9

    iget v7, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    shr-int/2addr v3, v7

    aget v3, p0, v3

    sub-int v3, v3, p2

    aget-char v3, v5, v3

    sub-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 165
    iget v2, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    goto :goto_5

    .line 166
    :cond_b
    iget v2, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    iget v3, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    sub-int/2addr v3, v9

    iget v7, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    sub-int/2addr v3, v7

    aget v3, p0, v3

    sub-int v3, v3, p2

    aget-char v3, v5, v3

    sub-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 165
    iget v2, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    add-int/2addr v2, v9

    iput v2, v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    goto :goto_6

    .line 172
    :cond_c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    aput-object p0, p4, v8

    return-void
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;
    .locals 9

    const/4 v0, 0x2

    .line 260
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->hashCode:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->getQuantity:I

    rem-int/2addr v1, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "\u0081\u0091\u008b\u0090\u0081\u008f\u008a\u008e\u008d\u008c\u0081\u0084\u008b\u008a\u0089\u0088\u0081\u0087\u0086\u0081\u0085\u0084\u0081\u0083\u0082\u0081"

    invoke-static {v5, v5, v2, v6, v4}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->a([ILjava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    aget-object v4, v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0x7f

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "\u0081\u0084\u008b\u008a\u0089\u0088\u0081\u0092"

    invoke-static {v5, v5, v6, v8, v7}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->a([ILjava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v6, v7, v2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 260
    sget v7, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->getQuantity:I

    add-int/lit8 v7, v7, 0x71

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->hashCode:I

    rem-int/2addr v7, v0

    .line 256
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/internal/models/Money;->Companion:Lcom/appsflyer/internal/models/Money$Companion;

    invoke-virtual {v0, v6}, Lcom/appsflyer/internal/models/Money$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/Money;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_0
    sget v6, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->hashCode:I

    add-int/lit8 v6, v6, 0x53

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->getQuantity:I

    rem-int/2addr v6, v0

    move-object v0, v5

    .line 257
    :goto_0
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x7f

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "\u0081\u0086\u0094\u0093\u0081\u008f\u0092\u008e\u008d\u008c\u0081\u0084\u008b\u008a\u0083"

    invoke-static {v5, v5, v6, v8, v7}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->a([ILjava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v6, v7, v2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x7f

    new-array v3, v3, [Ljava/lang/Object;

    const-string v8, "\u0081\u0085\u008e\u0085\u0095\u0081\u008f\u0092\u008e\u008d\u008c\u0081\u0084\u008b\u008a\u0083"

    invoke-static {v5, v5, v7, v8, v3}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->a([ILjava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v2, v3, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    new-instance v1, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    invoke-direct {v1, v4, v0, v6, p1}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;-><init>(Ljava/lang/String;Lcom/appsflyer/internal/models/Money;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final bridge synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 252
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->getQuantity:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->hashCode:I

    rem-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->getQuantity:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;->hashCode:I

    rem-int/2addr v1, v0

    return-object p1
.end method
