.class public final Lcom/appsflyer/internal/models/OfferDetails$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/OfferDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/OfferDetails;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/OfferDetails$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/OfferDetails;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/OfferDetails;"
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

.field private static InAppPurchaseEvent:C = '\u8a02'

.field private static equals:I = 0x1

.field private static getOneTimePurchaseOfferDetails:C = '\u084a'

.field private static getPackageName:C = '\uc3cc'

.field private static getQuantity:I = 0x0

.field private static toJsonMap:C = '\u140d'


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/OfferDetails$Companion;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 17

    const/4 v0, 0x2

    .line 111
    rem-int v1, v0, v0

    if-eqz p0, :cond_1

    .line 93
    sget v1, Lcom/appsflyer/internal/models/OfferDetails$Companion;->$10:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/OfferDetails$Companion;->$11:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0

    :cond_1
    move-object/from16 v1, p0

    .line 0
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

    .line 93
    sget v6, Lcom/appsflyer/internal/models/OfferDetails$Companion;->$10:I

    add-int/lit8 v6, v6, 0x29

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/models/OfferDetails$Companion;->$11:I

    rem-int/2addr v6, v0

    .line 88
    :goto_1
    iget v6, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;->getQuantity:I

    array-length v7, v1

    if-ge v6, v7, :cond_4

    .line 111
    sget v6, Lcom/appsflyer/internal/models/OfferDetails$Companion;->$11:I

    add-int/lit8 v6, v6, 0x7b

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/models/OfferDetails$Companion;->$10:I

    rem-int/2addr v6, v0

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 89
    iget v6, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;->getQuantity:I

    aget-char v6, v1, v6

    aput-char v6, v5, v7

    .line 90
    iget v6, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;->getQuantity:I

    shl-int/2addr v6, v7

    aget-char v6, v1, v6

    aput-char v6, v5, v7

    goto :goto_2

    .line 89
    :cond_2
    iget v6, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;->getQuantity:I

    aget-char v6, v1, v6

    aput-char v6, v5, v4

    .line 90
    iget v6, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1f;->getQuantity:I

    add-int/2addr v6, v7

    aget-char v6, v1, v6

    aput-char v6, v5, v7

    :goto_2
    const v6, 0xe370

    move v8, v4

    :goto_3
    const/16 v9, 0x10

    if-ge v8, v9, :cond_3

    .line 93
    sget v9, Lcom/appsflyer/internal/models/OfferDetails$Companion;->$10:I

    add-int/lit8 v9, v9, 0x57

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/models/OfferDetails$Companion;->$11:I

    rem-int/2addr v9, v0

    .line 94
    aget-char v9, v5, v7

    aget-char v10, v5, v4

    add-int v11, v10, v6

    shl-int/lit8 v12, v10, 0x4

    sget-char v13, Lcom/appsflyer/internal/models/OfferDetails$Companion;->getOneTimePurchaseOfferDetails:C

    int-to-long v13, v13

    const-wide v15, -0x27577c5feb583b9L    # -5.422479841697977E296

    xor-long/2addr v13, v15

    long-to-int v13, v13

    int-to-char v13, v13

    add-int/2addr v12, v13

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v10, 0x5

    sget-char v13, Lcom/appsflyer/internal/models/OfferDetails$Companion;->getPackageName:C

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
    sget-char v13, Lcom/appsflyer/internal/models/OfferDetails$Companion;->InAppPurchaseEvent:C

    int-to-long v13, v13

    xor-long/2addr v13, v15

    long-to-int v13, v13

    int-to-char v13, v13

    add-int/2addr v12, v13

    xor-int/2addr v11, v12

    ushr-int/lit8 v9, v9, 0x5

    sget-char v12, Lcom/appsflyer/internal/models/OfferDetails$Companion;->toJsonMap:C

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

    goto :goto_3

    .line 105
    :cond_3
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

    goto/16 :goto_1

    .line 111
    :cond_4
    new-instance v0, Ljava/lang/String;

    move/from16 v1, p1

    invoke-direct {v0, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p2, v4

    return-void
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/OfferDetails;
    .locals 8

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    new-instance v1, Lcom/appsflyer/internal/models/OfferDetails;

    .line 218
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x9

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "\u3bfe\uc1df\u62a9\u66ed\u8500\uffb6\u44bd\ufab6\u45dd\u5119"

    invoke-static {v5, v2, v4}, Lcom/appsflyer/internal/models/OfferDetails$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v2, 0x0

    aget-object v4, v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 219
    :goto_0
    invoke-static {v0, v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0xa

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "\ufef7\u86c5\u2dd4\u6188\ua1db\u4ec1\u3ce0\u00f8\u60f9\ud837"

    invoke-static {v7, v5, v6}, Lcom/appsflyer/internal/models/OfferDetails$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v5, v6, v2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    .line 220
    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "\u3bfe\uc1df\u62a9\u66ed\u193f\u20f3\u1e1c\u2929"

    invoke-static {v6, v0, v3}, Lcom/appsflyer/internal/models/OfferDetails$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v0, v3, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$getNullable(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 217
    invoke-direct {v1, v4, v5, p1}, Lcom/appsflyer/internal/models/OfferDetails;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final bridge synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 215
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/OfferDetails$Companion;->getQuantity:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/OfferDetails$Companion;->equals:I

    rem-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/OfferDetails$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/OfferDetails;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/models/OfferDetails$Companion;->equals:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/OfferDetails$Companion;->getQuantity:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/16 v0, 0x2b

    div-int/lit8 v0, v0, 0x0

    :cond_0
    return-object p1
.end method
