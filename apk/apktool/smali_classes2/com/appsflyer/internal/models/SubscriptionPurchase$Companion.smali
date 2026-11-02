.class public final Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/SubscriptionPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/SubscriptionPurchase;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/SubscriptionPurchase;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscriptionPurchase;"
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

.field private static InAppPurchaseEvent:C = '\ub4c1'

.field private static PurchaseClient:I = 0x1

.field private static getOneTimePurchaseOfferDetails:J = 0x7dd1443ef08102dL

.field private static getPackageName:C = '\u1b3a'

.field private static getQuantity:C = '\u8691'

.field private static hashCode:I = 0x0

.field private static toJsonMap:C = '\u5762'


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x2

    .line 77
    rem-int v1, v0, v0

    if-eqz p0, :cond_0

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 77
    sget v1, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->$10:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->$11:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x3

    rem-int/2addr v1, v1

    .line 0
    :cond_0
    check-cast p0, [C

    .line 54
    new-instance v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;

    invoke-direct {v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;-><init>()V

    .line 57
    iput p1, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->getPackageName:I

    .line 60
    array-length p1, p0

    new-array v2, p1, [J

    const/4 v3, 0x0

    .line 63
    iput v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    :goto_0
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 77
    sget v4, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->$10:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->$11:I

    rem-int/2addr v4, v0

    .line 64
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    iget v5, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    aget-char v5, p0, v5

    int-to-long v5, v5

    iget v7, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    int-to-long v7, v7

    iget v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->getPackageName:I

    int-to-long v9, v9

    mul-long/2addr v7, v9

    xor-long/2addr v5, v7

    sget-wide v7, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->getOneTimePurchaseOfferDetails:J

    const-wide v9, 0x49d1ea6aed71ada8L    # 4.091221287231824E47

    xor-long/2addr v7, v9

    xor-long/2addr v5, v7

    aput-wide v5, v2, v4

    .line 63
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    goto :goto_0

    .line 72
    :cond_1
    new-array p1, p1, [C

    .line 73
    iput v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    :goto_1
    iget v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 74
    iget v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    aget-wide v4, v2, v4

    long-to-int v4, v4

    int-to-char v4, v4

    aput-char v4, p1, v0

    .line 73
    iget v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    goto :goto_1

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    aput-object p0, p2, v3

    return-void
.end method

.method private static b(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 17

    const/4 v0, 0x2

    .line 111
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->$10:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->$11:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_3

    if-eqz p0, :cond_0

    .line 0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    :goto_0
    check-cast v1, [C

    .line 82
    new-instance v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;

    invoke-direct {v2}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;-><init>()V

    .line 84
    array-length v3, v1

    new-array v3, v3, [C

    const/4 v4, 0x0

    .line 86
    iput v4, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;->getQuantity:I

    .line 87
    new-array v5, v0, [C

    .line 88
    :goto_1
    iget v6, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;->getQuantity:I

    array-length v7, v1

    if-ge v6, v7, :cond_2

    .line 89
    iget v6, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;->getQuantity:I

    aget-char v6, v1, v6

    aput-char v6, v5, v4

    .line 90
    iget v6, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;->getQuantity:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    aget-char v6, v1, v6

    aput-char v6, v5, v7

    const v6, 0xe370

    move v8, v4

    :goto_2
    const/16 v9, 0x10

    if-ge v8, v9, :cond_1

    .line 111
    sget v9, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->$11:I

    add-int/lit8 v9, v9, 0x57

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->$10:I

    rem-int/2addr v9, v0

    .line 94
    aget-char v9, v5, v7

    aget-char v10, v5, v4

    add-int v11, v10, v6

    shl-int/lit8 v12, v10, 0x4

    sget-char v13, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->toJsonMap:C

    int-to-long v13, v13

    const-wide v15, -0x27577c5feb583b9L    # -5.422479841697977E296

    xor-long/2addr v13, v15

    long-to-int v13, v13

    int-to-char v13, v13

    add-int/2addr v12, v13

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v10, 0x5

    sget-char v13, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->getPackageName:C

    int-to-long v13, v13

    xor-long/2addr v13, v15

    long-to-int v13, v13

    int-to-char v13, v13

    add-int/2addr v12, v13

    xor-int/2addr v11, v12

    sub-int/2addr v9, v11

    int-to-char v9, v9

    aput-char v9, v5, v7

    add-int v11, v9, v6

    shl-int/lit8 v12, v9, 0x4

    .line 98
    sget-char v13, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->getQuantity:C

    int-to-long v13, v13

    xor-long/2addr v13, v15

    long-to-int v13, v13

    int-to-char v13, v13

    add-int/2addr v12, v13

    xor-int/2addr v11, v12

    ushr-int/lit8 v9, v9, 0x5

    sget-char v12, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->InAppPurchaseEvent:C

    int-to-long v12, v12

    xor-long/2addr v12, v15

    long-to-int v12, v12

    int-to-char v12, v12

    add-int/2addr v9, v12

    xor-int/2addr v9, v11

    sub-int/2addr v10, v9

    int-to-char v9, v10

    aput-char v9, v5, v4

    const v9, 0x9e37

    sub-int/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 105
    :cond_1
    iget v6, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;->getQuantity:I

    aget-char v8, v5, v4

    aput-char v8, v3, v6

    .line 106
    iget v6, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;->getQuantity:I

    add-int/2addr v6, v7

    aget-char v7, v5, v7

    aput-char v7, v3, v6

    .line 107
    iget v6, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;->getQuantity:I

    add-int/2addr v6, v0

    iput v6, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;->getQuantity:I

    goto :goto_1

    .line 111
    :cond_2
    new-instance v0, Ljava/lang/String;

    move/from16 v1, p1

    invoke-direct {v0, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p2, v4

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscriptionPurchase;
    .locals 23

    move-object/from16 v0, p1

    const/4 v1, 0x2

    .line 44
    rem-int v2, v1, v1

    .line 0
    const-string v2, ""

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 27
    invoke-static {v3, v3}, Landroid/view/View;->getDefaultSize(II)I

    move-result v4

    add-int/lit16 v4, v4, 0x6371

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "\ubde9\ude9d\u7b09\u97b3\u3008\u4cc4\ue946\u05ff\ua67e"

    invoke-static {v7, v4, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v4, v6, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 382
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 383
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 44
    sget v7, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->hashCode:I

    add-int/lit8 v7, v7, 0x55

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->PurchaseClient:I

    rem-int/2addr v7, v1

    .line 383
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 384
    check-cast v7, Lorg/json/JSONObject;

    .line 28
    sget-object v8, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->Companion:Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;

    invoke-virtual {v8, v7}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    move-result-object v7

    .line 384
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    :cond_0
    move-object v14, v6

    check-cast v14, Ljava/util/List;

    .line 29
    new-instance v8, Lcom/appsflyer/internal/models/SubscriptionPurchase;

    .line 30
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x14

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "\u3a43\u090b\ud2cc\ufdf6\ua4e6\uf49b\u86d6\u168d\u0ca7\u11a7\u09e7\u46a0\u3c1f\u58c0\u6591\u54f1\u5529\u8a4e\ued0e\uf5d6"

    invoke-static {v7, v4, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v4, v6, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0xdd9b

    .line 31
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    add-int/2addr v6, v4

    new-array v4, v5, [Ljava/lang/Object;

    const-string v7, "\ubde6\u607f\u06dd\u2537\ucb8c\ue9ee\u8c42\ub2dc\u510e\u7782\u15ea\u3858\udea4\ufd19\ua390\u41fe\u6441\u0aab\u291b\ucf70"

    invoke-static {v7, v6, v4}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v4, v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/appsflyer/internal/models/CanceledStateContext;->Companion:Lcom/appsflyer/internal/models/CanceledStateContext$Companion;

    check-cast v6, Lcom/appsflyer/internal/models/Deserialize;

    invoke-static {v0, v4, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/appsflyer/internal/models/CanceledStateContext;

    .line 32
    invoke-static {v3, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v4

    rsub-int v4, v4, 0x4a03

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "\ubde0\uf7fe\u29f7\u63e9\u95fb\ucfe4\u01f6\ubbfc\ueddc\u27fd\u59f8\u93cb\uc5d4\u7fcc\ub1db\uebe1\u1dd1\u57d3\u89dd\uc3c8\u75d0\uafdc\ue1ae\u1ba5\u4dbf\u87bd"

    invoke-static {v7, v4, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v4, v6, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;->Companion:Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;

    check-cast v6, Lcom/appsflyer/internal/models/Deserialize;

    invoke-static {v0, v4, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "\u3f50\ufa11\u7fcc\uf0d8"

    invoke-static {v7, v4, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v4, v6, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0xd

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "\u764c\ue851\ued0e\uf5d6\u6c99\u7ba7\u6185\u11af\u5907\ue05d\u0695\u39fe\u733d\u6746"

    invoke-static {v7, v4, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v4, v6, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x13

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "\u2d8e\u7ddf\ud044\u4de1\ucdb5\u8510\u00db\u76ee\u02af\udbb1\udfa3\u42df\u77d1\u4225\u8697\u67ed\ub38a\uf029\u4c38\u5241"

    invoke-static {v7, v4, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v4, v6, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$getNullable(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    .line 37
    invoke-static {v3, v3, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "\uf41f\u9236\uaa38\ud14b\ucdb5\u8510\u208f\u68a0\u95ae\ud8de\u6507\u72fc\u0751\u8b22\ued0e\uf5d6\u103f\u7765"

    invoke-static {v7, v4, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v4, v6, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/appsflyer/internal/models/PausedStateContext;->Companion:Lcom/appsflyer/internal/models/PausedStateContext$Companion;

    check-cast v6, Lcom/appsflyer/internal/models/Deserialize;

    invoke-static {v0, v4, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lcom/appsflyer/internal/models/PausedStateContext;

    const/16 v4, 0x30

    .line 38
    invoke-static {v2, v4, v3, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    const v6, 0xcaba

    sub-int/2addr v6, v4

    new-array v4, v5, [Ljava/lang/Object;

    const-string v7, "\ubdf7\u775b\u2894\udddd\u9706\u484c\u7da4\u36f7\ue839\u9d73"

    invoke-static {v7, v6, v4}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v4, v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v6

    int-to-byte v6, v6

    const v7, 0x95ac

    sub-int/2addr v7, v6

    new-array v6, v5, [Ljava/lang/Object;

    move/from16 v22, v1

    const-string v1, "\ubdf6\u285c\u96be\u7cf0\ueb45\u51b0\u3fe2\uaa53\u1088"

    invoke-static {v1, v7, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v1, v6, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    const v7, 0xed07

    sub-int/2addr v7, v6

    new-array v6, v5, [Ljava/lang/Object;

    move/from16 v17, v3

    const-string v3, "\ubdf6\u50f7\u67e9\u7ae3\u09fa\u1cd4\u33c6\uc6d6\ud5d8\ue8ed\uffaa\u92bc\ua1b9\ub499\u4b88\u5e83\u6d92\u009e\u179e\u2a49\u3967\ucc70\ue370"

    invoke-static {v3, v7, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v3, v6, v17

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;->Companion:Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo$Companion;

    check-cast v6, Lcom/appsflyer/internal/models/Deserialize;

    invoke-static {v0, v3, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmp-long v3, v6, v20

    add-int/lit8 v3, v3, 0x10

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "\uebc9\uff6d\u8307\u2fd5\u96ff\u26ab\ubdea\u660f\uddb4\ub5f0\u0751\u8b22\u208f\u68a0\u95ae\ud8de\ucba6\udcce"

    invoke-static {v7, v3, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v3, v6, v17

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0xeae6

    .line 42
    invoke-static/range {v20 .. v21}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v6

    add-int/2addr v6, v2

    new-array v2, v5, [Ljava/lang/Object;

    const-string v5, "\ubdf1\u5705\u683c\u7d5e\u1641\u2b89\u3ca9\ud1a5\ueac5\uffe9\u9104\uaa37"

    invoke-static {v5, v6, v2}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v2, v2, v17

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/appsflyer/internal/models/TestPurchase;->Companion:Lcom/appsflyer/internal/models/TestPurchase$Companion;

    check-cast v5, Lcom/appsflyer/internal/models/Deserialize;

    invoke-static {v0, v2, v5}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/appsflyer/internal/models/TestPurchase;

    move-object/from16 v18, v1

    move-object/from16 v20, v3

    move-object/from16 v17, v4

    .line 29
    invoke-direct/range {v8 .. v21}, Lcom/appsflyer/internal/models/SubscriptionPurchase;-><init>(Ljava/lang/String;Lcom/appsflyer/internal/models/CanceledStateContext;Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/appsflyer/internal/models/PausedStateContext;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;Ljava/lang/String;Lcom/appsflyer/internal/models/TestPurchase;)V

    .line 44
    sget v0, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->PurchaseClient:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->hashCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    return-object v8

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method public final bridge synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 24
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->PurchaseClient:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->hashCode:I

    rem-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscriptionPurchase;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->PurchaseClient:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/SubscriptionPurchase$Companion;->hashCode:I

    rem-int/2addr v1, v0

    return-object p1
.end method
