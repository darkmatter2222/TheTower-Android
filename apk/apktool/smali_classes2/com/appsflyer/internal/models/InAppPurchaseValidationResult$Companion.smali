.class public final Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;"
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

.field private static InAppPurchaseEvent:[C = null

.field private static getOneTimePurchaseOfferDetails:Z = false

.field private static getPackageName:I = 0x0

.field private static getQuantity:Z = false

.field private static hashCode:I = 0x1

.field private static toJsonMap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    .line 65353
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->InAppPurchaseEvent:[C

    const v0, -0x7e5f77a8

    sput v0, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->toJsonMap:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->getQuantity:Z

    sput-boolean v0, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->getOneTimePurchaseOfferDetails:Z

    return-void

    :array_0
    .array-data 2
        -0x771as
        -0x770bs
        -0x7719s
        -0x771bs
        -0x7714s
        -0x771cs
        -0x7718s
        -0x7715s
        -0x770cs
        -0x7709s
        -0x7705s
        -0x7710s
        -0x7707s
        -0x770es
        -0x770fs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;-><init>()V

    return-void
.end method

.method private static a([ILjava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x2

    .line 172
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->$10:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->$11:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_9

    if-eqz p3, :cond_0

    .line 0
    const-string v1, "ISO-8859-1"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :cond_0
    check-cast p3, [B

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_1
    check-cast p1, [C

    .line 129
    new-instance v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;

    invoke-direct {v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;-><init>()V

    .line 131
    sget-object v2, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->InAppPurchaseEvent:[C

    const-wide v3, -0x4071bfb67e5f7782L    # -0.014771055477528213

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    array-length v6, v2

    new-array v7, v6, [C

    .line 172
    sget v8, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->$11:I

    add-int/lit8 v8, v8, 0x11

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->$10:I

    rem-int/2addr v8, v0

    move v8, v5

    :goto_0
    if-ge v8, v6, :cond_2

    .line 131
    aget-char v9, v2, v8

    int-to-long v9, v9

    xor-long/2addr v9, v3

    long-to-int v9, v9

    int-to-char v9, v9

    aput-char v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v7

    .line 132
    :cond_3
    sget v6, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->toJsonMap:I

    int-to-long v6, v6

    xor-long/2addr v3, v6

    long-to-int v3, v3

    .line 134
    sget-boolean v4, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->getOneTimePurchaseOfferDetails:Z

    if-eqz v4, :cond_5

    .line 172
    sget p0, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->$10:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->$11:I

    rem-int/2addr p0, v0

    .line 136
    array-length p0, p3

    iput p0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    .line 137
    iget p0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    new-array p0, p0, [C

    .line 139
    iput v5, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    :goto_1
    iget p1, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    iget v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    if-ge p1, v0, :cond_4

    .line 140
    iget p1, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    iget v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    add-int/lit8 v0, v0, -0x1

    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    sub-int/2addr v0, v4

    aget-byte v0, p3, v0

    add-int/2addr v0, p2

    aget-char v0, v2, v0

    sub-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, p0, p1

    .line 139
    iget p1, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    goto :goto_1

    .line 146
    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    aput-object p1, p4, v5

    return-void

    .line 147
    :cond_5
    sget-boolean p3, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->getQuantity:Z

    if-nez p3, :cond_7

    .line 162
    array-length p1, p0

    iput p1, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    .line 163
    iget p1, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    new-array p1, p1, [C

    .line 165
    iput v5, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    .line 172
    sget p3, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->$11:I

    add-int/lit8 p3, p3, 0x55

    rem-int/lit16 v4, p3, 0x80

    sput v4, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->$10:I

    rem-int/2addr p3, v0

    .line 165
    :goto_2
    iget p3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    iget v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    if-ge p3, v0, :cond_6

    .line 166
    iget p3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    iget v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    add-int/lit8 v0, v0, -0x1

    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    sub-int/2addr v0, v4

    aget v0, p0, v0

    sub-int/2addr v0, p2

    aget-char v0, v2, v0

    sub-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, p1, p3

    .line 165
    iget p3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    add-int/lit8 p3, p3, 0x1

    iput p3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    goto :goto_2

    .line 172
    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    aput-object p0, p4, v5

    return-void

    .line 149
    :cond_7
    array-length p0, p1

    iput p0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    .line 150
    iget p0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    new-array p0, p0, [C

    .line 152
    iput v5, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    :goto_3
    iget p3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    iget v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    if-ge p3, v0, :cond_8

    .line 153
    iget p3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    iget v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getPackageName:I

    add-int/lit8 v0, v0, -0x1

    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    sub-int/2addr v0, v4

    aget-char v0, p1, v0

    sub-int/2addr v0, p2

    aget-char v0, v2, v0

    sub-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, p0, p3

    .line 152
    iget p3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    add-int/lit8 p3, p3, 0x1

    iput p3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1b;->getOneTimePurchaseOfferDetails:I

    goto :goto_3

    .line 159
    :cond_8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    aput-object p1, p4, v5

    return-void

    :cond_9
    const/4 p0, 0x0

    .line 172
    throw p0
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;
    .locals 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    .line 26
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v5, v5, v2, v6, v4}, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->a([ILjava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    aget-object v4, v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const/16 v6, 0x30

    .line 15
    invoke-static {v6}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v7

    add-int/lit8 v7, v7, 0x4f

    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, "\u0082\u0083\u008d\u008c\u008a\u0081\u0084\u0087\u008b\u0086\u008a\u0084\u0089\u0088\u0081\u0087"

    invoke-static {v5, v5, v7, v9, v8}, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->a([ILjava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v7, v8, v2

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 16
    sget-object v7, Lcom/appsflyer/internal/models/ProductPurchase;->Companion:Lcom/appsflyer/internal/models/ProductPurchase$Companion;

    invoke-static {v1, v6, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    add-int/lit16 v6, v6, 0x80

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v5, v5, v6, v9, v8}, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->a([ILjava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v6, v8, v2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ProductPurchase;

    move-result-object v6

    goto :goto_0

    .line 26
    :cond_0
    sget v6, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->hashCode:I

    add-int/lit8 v6, v6, 0x69

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->getPackageName:I

    rem-int/2addr v6, v0

    move-object v6, v5

    .line 20
    :goto_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x7f

    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, "\u008d\u0086\u008d\u0089\u008b\u0082\u0081\u0084\u0085\u008f\u008d\u008e"

    invoke-static {v5, v5, v7, v9, v8}, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->a([ILjava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v7, v8, v2

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 26
    sget v7, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->getPackageName:I

    add-int/lit8 v7, v7, 0x7b

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->hashCode:I

    rem-int/2addr v7, v0

    const-wide/16 v10, 0x0

    if-nez v7, :cond_1

    .line 21
    sget-object v0, Lcom/appsflyer/internal/models/ValidationFailureData;->Companion:Lcom/appsflyer/internal/models/ValidationFailureData$Companion;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    cmp-long v7, v7, v10

    add-int/lit16 v7, v7, 0x7209

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v5, v7, v9, v3}, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->a([ILjava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v2, v3, v2

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/appsflyer/internal/models/ValidationFailureData;->Companion:Lcom/appsflyer/internal/models/ValidationFailureData$Companion;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    cmp-long v7, v7, v10

    rsub-int v7, v7, 0x80

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v5, v7, v9, v3}, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->a([ILjava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v2, v3, v2

    :goto_1
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/models/ValidationFailureData$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ValidationFailureData;

    move-result-object p1

    move-object v5, p1

    .line 25
    :cond_2
    new-instance p1, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;

    invoke-direct {p1, v4, v6, v5}, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;-><init>(ZLcom/appsflyer/internal/models/ProductPurchase;Lcom/appsflyer/internal/models/ValidationFailureData;)V

    return-object p1
.end method

.method public final bridge synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 11
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->getPackageName:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->hashCode:I

    rem-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->hashCode:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult$Companion;->getPackageName:I

    rem-int/2addr v1, v0

    return-object p1
.end method
