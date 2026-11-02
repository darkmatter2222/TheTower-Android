.class public final Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/AutoRenewingPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/AutoRenewingPlan;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/AutoRenewingPlan;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/AutoRenewingPlan;"
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

.field private static getOneTimePurchaseOfferDetails:I = 0x0

.field private static getPackageName:I = 0x1

.field private static toJsonMap:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x22

    .line 65353
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->InAppPurchaseEvent:[C

    const-wide v0, -0x59a281f86ba3836cL    # -6.970926193028223E-124

    sput-wide v0, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->toJsonMap:J

    return-void

    nop

    :array_0
    .array-data 2
        0x2310s
        0x7ce1s
        -0x6331s
        0x3cb1s
        0x5cb7s
        -0x393s
        0x1c41s
        -0x43a9s
        -0x23d2s
        0x7c39s
        -0x6213s
        0x3dc7s
        0x5dafs
        -0x244s
        0x1d92s
        -0x4282s
        0x2301s
        0x7ce6s
        -0x632es
        0x3cbds
        0x5c80s
        -0x3b5s
        0x1c47s
        -0x43ads
        -0x23c9s
        0x7c1bs
        -0x621as
        0x3de2s
        0x5da8s
        -0x25cs
        0x1d96s
        -0x428ds
        -0x22b3s
        0x7d37s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;-><init>()V

    return-void
.end method

.method private static a(ICI[Ljava/lang/Object;)V
    .locals 13

    const/4 v0, 0x2

    .line 96
    rem-int v1, v0, v0

    .line 76
    new-instance v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;

    invoke-direct {v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;-><init>()V

    .line 79
    new-array v2, p0, [J

    const/4 v3, 0x0

    .line 82
    iput v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    .line 96
    sget v4, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->$10:I

    add-int/lit8 v4, v4, 0x13

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->$11:I

    rem-int/2addr v4, v0

    .line 82
    :goto_0
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    if-ge v4, p0, :cond_0

    .line 96
    sget v4, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->$10:I

    add-int/lit8 v4, v4, 0x6f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->$11:I

    rem-int/2addr v4, v0

    .line 83
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    sget-object v5, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->InAppPurchaseEvent:[C

    iget v6, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    add-int/2addr v6, p2

    aget-char v5, v5, v6

    int-to-long v5, v5

    const-wide v7, 0x4710a722e2312371L    # 2.1616668975227377E34

    xor-long/2addr v5, v7

    long-to-int v5, v5

    int-to-char v5, v5

    int-to-long v5, v5

    iget v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    int-to-long v9, v9

    sget-wide v11, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->toJsonMap:J

    xor-long/2addr v7, v11

    mul-long/2addr v9, v7

    xor-long/2addr v5, v9

    int-to-long v7, p1

    xor-long/2addr v5, v7

    aput-wide v5, v2, v4

    .line 82
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    goto :goto_0

    .line 91
    :cond_0
    new-array p1, p0, [C

    .line 92
    iput v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    :goto_1
    iget v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    if-ge v0, p0, :cond_1

    .line 93
    iget v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    aget-wide v4, v2, v4

    long-to-int v4, v4

    int-to-char v4, v4

    aput-char v4, p1, v0

    .line 92
    iget v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    goto :goto_1

    .line 96
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    aput-object p0, p3, v3

    return-void
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/AutoRenewingPlan;
    .locals 11

    const/4 v0, 0x2

    .line 239
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    new-instance v2, Lcom/appsflyer/internal/models/AutoRenewingPlan;

    .line 236
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    rsub-int/lit8 v3, v3, 0x11

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    int-to-char v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v7

    cmp-long v5, v7, v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v7}, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->a(ICI[Ljava/lang/Object;)V

    const/4 v3, 0x0

    aget-object v4, v7, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$getNullable(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    const/16 v5, 0x30

    .line 237
    invoke-static {v1, v5, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    add-int/lit8 v5, v5, 0x13

    invoke-static {v1, v3, v3}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v1

    int-to-char v1, v1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    rsub-int/lit8 v7, v7, 0x11

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v1, v7, v6}, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->a(ICI[Ljava/lang/Object;)V

    aget-object v1, v6, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->Companion:Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;

    check-cast v5, Lcom/appsflyer/internal/models/Deserialize;

    invoke-static {p1, v1, v5}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    .line 235
    invoke-direct {v2, v4, p1}, Lcom/appsflyer/internal/models/AutoRenewingPlan;-><init>(Ljava/lang/Boolean;Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;)V

    .line 239
    sget p1, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->getOneTimePurchaseOfferDetails:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->getPackageName:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    const/16 p1, 0x21

    div-int/2addr p1, v3

    :cond_0
    return-object v2
.end method

.method public final bridge synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 233
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->getOneTimePurchaseOfferDetails:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->getPackageName:I

    rem-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/AutoRenewingPlan;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->getPackageName:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/AutoRenewingPlan$Companion;->getOneTimePurchaseOfferDetails:I

    rem-int/2addr v1, v0

    return-object p1
.end method
