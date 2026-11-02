.class public final Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;"
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

.field private static getOneTimePurchaseOfferDetails:I = 0x1

.field private static getPackageName:I = -0x3358e083

.field private static getQuantity:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;-><init>()V

    return-void
.end method

.method private static a(ZIIILjava/lang/String;[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x2

    .line 129
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->$10:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->$11:I

    rem-int/2addr v1, v0

    if-eqz p4, :cond_0

    .line 0
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    .line 93
    new-instance v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;

    invoke-direct {v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;-><init>()V

    .line 96
    new-array v2, p3, [C

    const/4 v3, 0x0

    .line 100
    iput v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->toJsonMap:I

    :goto_0
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->toJsonMap:I

    if-ge v4, p3, :cond_1

    .line 101
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->toJsonMap:I

    aget-char v4, p4, v4

    iput v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->getOneTimePurchaseOfferDetails:I

    .line 103
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->toJsonMap:I

    iget v5, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->getOneTimePurchaseOfferDetails:I

    add-int/2addr v5, p1

    int-to-char v5, v5

    aput-char v5, v2, v4

    .line 104
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->toJsonMap:I

    aget-char v5, v2, v4

    sget v6, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->getPackageName:I

    int-to-long v6, v6

    const-wide v8, -0x234c06853358e044L    # -3.716675051141761E138

    xor-long/2addr v6, v8

    long-to-int v6, v6

    sub-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v2, v4

    .line 100
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->toJsonMap:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->toJsonMap:I

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    .line 109
    iput p2, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->InAppPurchaseEvent:I

    .line 111
    new-array p1, p3, [C

    .line 113
    invoke-static {v2, v3, p1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget p2, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->InAppPurchaseEvent:I

    sub-int p2, p3, p2

    iget p4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->InAppPurchaseEvent:I

    invoke-static {p1, v3, v2, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget p2, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->InAppPurchaseEvent:I

    iget p4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->InAppPurchaseEvent:I

    sub-int p4, p3, p4

    invoke-static {p1, p2, v2, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-eqz p0, :cond_4

    .line 120
    new-array p0, p3, [C

    .line 122
    iput v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->toJsonMap:I

    .line 129
    sget p1, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->$10:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->$11:I

    rem-int/2addr p1, v0

    .line 122
    :goto_1
    iget p1, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->toJsonMap:I

    if-ge p1, p3, :cond_3

    .line 123
    iget p1, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->toJsonMap:I

    iget p2, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->toJsonMap:I

    sub-int p2, p3, p2

    add-int/lit8 p2, p2, -0x1

    aget-char p2, v2, p2

    aput-char p2, p0, p1

    .line 122
    iget p1, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->toJsonMap:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2w;->toJsonMap:I

    goto :goto_1

    :cond_3
    move-object v2, p0

    .line 129
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    aput-object p0, p5, v3

    return-void
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;
    .locals 20

    move-object/from16 v0, p1

    const/4 v1, 0x2

    .line 203
    rem-int v2, v1, v1

    .line 0
    const-string v2, ""

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    new-instance v3, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 196
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit16 v6, v4, 0x129

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v7, v4, 0xc

    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/graphics/PointF;->length(FF)F

    move-result v5

    cmpl-float v5, v5, v4

    add-int/lit8 v8, v5, 0x10

    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v9, "\uffea\ufffd\u0006\ufffd\u000f\u0001\u0006\uffff\uffe8\u0004\ufff9\u0006\ufff9\r\u000c\u0007"

    invoke-static/range {v5 .. v10}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->a(ZIIILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v12, 0x0

    aget-object v5, v10, v12

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/internal/models/AutoRenewingPlan;->Companion:Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;

    check-cast v6, Lcom/appsflyer/internal/models/Deserialize;

    invoke-static {v0, v5, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appsflyer/internal/models/AutoRenewingPlan;

    .line 197
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    rsub-int v14, v6, 0x127

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v15, v6, 0x7

    invoke-static {v12, v12}, Landroid/view/View;->resolveSize(II)I

    move-result v6

    add-int/lit8 v16, v6, 0x17

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v17, "\ufffb\ufffd\uffff\u0007\uffff\u0008\u000e\ufffe\uffff\u0000\uffff\u000c\u000c\uffff\ufffe\uffe3\u000e\uffff\u0007\uffec\uffff\n\u0006"

    move-object/from16 v18, v6

    invoke-static/range {v13 .. v18}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->a(ZIIILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v6, v18, v12

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/appsflyer/internal/models/DeferredItemReplacement;->Companion:Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;

    check-cast v7, Lcom/appsflyer/internal/models/Deserialize;

    invoke-static {v0, v6, v7}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appsflyer/internal/models/DeferredItemReplacement;

    .line 198
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int v14, v7, 0x12c

    invoke-static {v12, v4, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v7

    cmpl-float v7, v7, v4

    add-int/lit8 v15, v7, 0x8

    invoke-static {v12, v4, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v7

    cmpl-float v7, v7, v4

    rsub-int/lit8 v16, v7, 0xa

    new-array v7, v11, [Ljava/lang/Object;

    const-string v17, "\u0005\ufffe\u0007\u000e\uffe9\ufffe\u0002\ufffa\ufffa\r"

    move-object/from16 v18, v7

    invoke-static/range {v13 .. v18}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->a(ZIIILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v7, v18, v12

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v8

    shr-int/lit8 v8, v8, 0x8

    add-int/lit16 v14, v8, 0x128

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v8

    rsub-int/lit8 v15, v8, 0x2

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v8

    rsub-int/lit8 v16, v8, 0xc

    new-array v8, v11, [Ljava/lang/Object;

    const-string v17, "\u0005\u000c\u0008\uffff\uffff\ufffe\u000b\uffdd\ufffe\r\ufffa\u0002"

    move-object/from16 v18, v8

    invoke-static/range {v13 .. v18}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->a(ZIIILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v8, v18, v12

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/appsflyer/internal/models/OfferDetails;->Companion:Lcom/appsflyer/internal/models/OfferDetails$Companion;

    check-cast v9, Lcom/appsflyer/internal/models/Deserialize;

    invoke-static {v0, v8, v9}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/appsflyer/internal/models/OfferDetails;

    .line 200
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    add-int/lit16 v14, v9, 0x128

    const/16 v9, 0x30

    invoke-static {v9}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v10

    add-int/lit8 v15, v10, -0x28

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    shr-int/lit8 v10, v10, 0x16

    add-int/lit8 v16, v10, 0xb

    new-array v10, v11, [Ljava/lang/Object;

    const/4 v13, 0x1

    const-string v17, "\uffe9\ufffd\u0002\ufffa\t\ufffe\u000b\t\u0007\ufffa\u0005"

    move-object/from16 v18, v10

    invoke-static/range {v13 .. v18}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->a(ZIIILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v10, v18, v12

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    sget-object v13, Lcom/appsflyer/internal/models/PrepaidPlan;->Companion:Lcom/appsflyer/internal/models/PrepaidPlan$Companion;

    check-cast v13, Lcom/appsflyer/internal/models/Deserialize;

    invoke-static {v0, v10, v13}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/appsflyer/internal/models/PrepaidPlan;

    .line 201
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v13

    shr-int/lit8 v13, v13, 0x8

    add-int/lit16 v15, v13, 0x129

    invoke-static {v2, v9}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v9

    add-int/lit8 v16, v9, 0x3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v9

    cmpl-float v4, v9, v4

    add-int/lit8 v17, v4, 0x8

    new-array v4, v11, [Ljava/lang/Object;

    const/4 v14, 0x1

    const-string v18, "\n\u0008\ufffc\uffe1\u000c\ufffb\r\ufffc\u0007"

    move-object/from16 v19, v4

    invoke-static/range {v14 .. v19}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->a(ZIIILjava/lang/String;[Ljava/lang/Object;)V

    aget-object v4, v19, v12

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    .line 195
    invoke-direct/range {v3 .. v9}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;-><init>(Lcom/appsflyer/internal/models/AutoRenewingPlan;Lcom/appsflyer/internal/models/DeferredItemReplacement;Ljava/lang/String;Lcom/appsflyer/internal/models/OfferDetails;Lcom/appsflyer/internal/models/PrepaidPlan;Ljava/lang/String;)V

    .line 203
    sget v0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->getOneTimePurchaseOfferDetails:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->getQuantity:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    div-int/2addr v0, v12

    :cond_0
    return-object v3
.end method

.method public final bridge synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 193
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->getQuantity:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->getOneTimePurchaseOfferDetails:I

    rem-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    move-result-object p1

    if-nez v1, :cond_0

    const/16 v1, 0x54

    div-int/lit8 v1, v1, 0x0

    :cond_0
    sget v1, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->getQuantity:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;->getOneTimePurchaseOfferDetails:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    const/16 v0, 0x20

    div-int/lit8 v0, v0, 0x0

    :cond_1
    return-object p1
.end method
