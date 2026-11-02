.class public final Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;"
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

.field private static InAppPurchaseEvent:I = 0x0

.field private static getOneTimePurchaseOfferDetails:[C = null

.field private static getPackageName:I = 0x1

.field private static getQuantity:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x47

    .line 65353
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->getOneTimePurchaseOfferDetails:[C

    const-wide v0, -0x2ab06e7efd61ba8fL    # -8.83813768183276E102

    sput-wide v0, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->getQuantity:J

    return-void

    nop

    :array_0
    .array-data 2
        0x2314s
        0x4509s
        -0x10fbs
        0x1114s
        -0x44fds
        -0x22e1s
        0x4710s
        -0x16e3s
        0x1330s
        -0x4aees
        -0x20ees
        0x411es
        -0x14fcs
        0xd1fs
        -0x48fbs
        -0x26c8s
        0x4315s
        0x231es
        0x4513s
        -0x10e9s
        0x1104s
        -0x44fes
        -0x22ees
        0x4710s
        -0x16fbs
        0x1314s
        -0x4aebs
        -0x20ccs
        0x4109s
        -0x14fbs
        0xd14s
        -0x48fds
        -0x26e1s
        0x4310s
        -0x1ae3s
        0xf30s
        -0x4eees
        -0x24ees
        0x7d1es
        -0x18fcs
        0x91fs
        -0x4cfbs
        -0x2ac8s
        0x7f15s
        0x43bas
        0x25b7s
        -0x704ds
        0x71a0s
        -0x245as
        -0x424as
        0x27b4s
        -0x765fs
        0x73b0s
        -0x2a4fs
        -0x4070s
        0x21ads
        -0x745fs
        0x6db0s
        -0x2859s
        -0x4645s
        0x23b4s
        -0x7a47s
        0x6f85s
        -0x2e59s
        -0x4446s
        0x1db3s
        -0x7844s
        0x69b9s
        -0x2c50s
        -0x4a64s
        0x1fb1s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;-><init>()V

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

    :goto_0
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    if-ge v4, p0, :cond_0

    .line 96
    sget v4, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->$10:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->$11:I

    rem-int/2addr v4, v0

    .line 83
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    sget-object v5, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->getOneTimePurchaseOfferDetails:[C

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

    sget-wide v11, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->getQuantity:J

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
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    if-ge v4, p0, :cond_1

    .line 93
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    iget v5, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    aget-wide v5, v2, v5

    long-to-int v5, v5

    int-to-char v5, v5

    aput-char v5, p1, v4

    .line 92
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1d;->getQuantity:I

    goto :goto_1

    .line 96
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    sget p1, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->$10:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->$11:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_2

    aput-object p0, p3, v3

    return-void

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;
    .locals 12

    const/4 v0, 0x2

    .line 178
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v2, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    const/4 v3, 0x0

    .line 174
    invoke-static {v1, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    int-to-char v7, v7

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v4, v7, v8, v10}, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->a(ICI[Ljava/lang/Object;)V

    aget-object v4, v10, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1b

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v8

    int-to-char v8, v8

    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v10

    rsub-int/lit8 v10, v10, 0x10

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v10, v11}, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->a(ICI[Ljava/lang/Object;)V

    aget-object v7, v11, v3

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v5

    add-int/lit8 v5, v5, 0x1b

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit16 v6, v6, 0x60a4

    int-to-char v6, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    rsub-int/lit8 v8, v8, 0x2c

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v8, v9}, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->a(ICI[Ljava/lang/Object;)V

    aget-object v3, v9, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-direct {v2, v4, v7, p1}, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget p1, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->getPackageName:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->InAppPurchaseEvent:I

    rem-int/2addr p1, v0

    return-object v2
.end method

.method public final bridge synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 171
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->getPackageName:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->InAppPurchaseEvent:I

    rem-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    move-result-object p1

    sget v1, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->getPackageName:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers$Companion;->InAppPurchaseEvent:I

    rem-int/2addr v1, v0

    return-object p1
.end method
