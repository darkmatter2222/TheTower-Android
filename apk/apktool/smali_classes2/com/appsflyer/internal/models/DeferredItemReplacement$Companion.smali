.class public final Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/DeferredItemReplacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/DeferredItemReplacement;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/DeferredItemReplacement;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/DeferredItemReplacement;"
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

.field private static InAppPurchaseEvent:I = 0x461298bd

.field private static getOneTimePurchaseOfferDetails:[S = null

.field private static getPackageName:I = 0x5f459c73

.field private static getQuantity:I = -0x15224266

.field private static hashCode:I = 0x0

.field private static stopObservingTransactions:I = 0x1

.field private static toJsonMap:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 65353
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->toJsonMap:[B

    return-void

    :array_0
    .array-data 1
        0x3ft
        0x71t
        0x35t
        0xat
        0x35t
        0x11t
        0x19t
        0x26t
        -0x3ct
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;-><init>()V

    return-void
.end method

.method private static a(IIBSI[Ljava/lang/Object;)V
    .locals 13

    const/4 v0, 0x2

    .line 235
    rem-int v1, v0, v0

    .line 167
    new-instance v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;

    invoke-direct {v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;-><init>()V

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    sget v3, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->InAppPurchaseEvent:I

    int-to-long v3, v3

    const-wide v5, -0x3a6649c2b9ed673cL    # -1.9893597754177665E27

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr p1, v3

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-ne p1, v3, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_4

    .line 235
    sget p1, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->$11:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v8, p1, 0x80

    sput v8, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->$10:I

    rem-int/2addr p1, v0

    .line 174
    sget-object p1, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->toJsonMap:[B

    if-eqz p1, :cond_2

    array-length v8, p1

    new-array v9, v8, [B

    move v10, v4

    :goto_1
    if-ge v10, v8, :cond_1

    aget-byte v11, p1, v10

    int-to-long v11, v11

    xor-long/2addr v11, v5

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    move-object p1, v9

    :cond_2
    if-eqz p1, :cond_3

    .line 175
    sget-object p1, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->toJsonMap:[B

    sget v8, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->getQuantity:I

    int-to-long v8, v8

    xor-long/2addr v8, v5

    long-to-int v8, v8

    add-int v8, p4, v8

    aget-byte p1, p1, v8

    int-to-long v8, p1

    xor-long/2addr v8, v5

    long-to-int p1, v8

    int-to-byte p1, p1

    sget v8, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->InAppPurchaseEvent:I

    int-to-long v8, v8

    xor-long/2addr v8, v5

    long-to-int v8, v8

    add-int/2addr p1, v8

    int-to-byte p1, p1

    goto :goto_2

    .line 182
    :cond_3
    sget-object p1, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->getOneTimePurchaseOfferDetails:[S

    sget v8, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->getQuantity:I

    int-to-long v8, v8

    xor-long/2addr v8, v5

    long-to-int v8, v8

    add-int v8, p4, v8

    aget-short p1, p1, v8

    int-to-long v8, p1

    xor-long/2addr v8, v5

    long-to-int p1, v8

    int-to-short p1, p1

    sget v8, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->InAppPurchaseEvent:I

    int-to-long v8, v8

    xor-long/2addr v8, v5

    long-to-int v8, v8

    add-int/2addr p1, v8

    int-to-short p1, p1

    :cond_4
    :goto_2
    if-lez p1, :cond_c

    add-int v8, p4, p1

    sub-int/2addr v8, v0

    .line 193
    sget v9, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->getQuantity:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v9, v9

    add-int/2addr v8, v9

    if-eqz v3, :cond_5

    move v3, v7

    goto :goto_3

    .line 235
    :cond_5
    sget v3, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->$11:I

    add-int/lit8 v3, v3, 0x7b

    rem-int/lit16 v9, v3, 0x80

    sput v9, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->$10:I

    rem-int/2addr v3, v0

    move v3, v4

    :goto_3
    add-int/2addr v8, v3

    .line 198
    iput v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getPackageName:I

    .line 213
    sget v3, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->getPackageName:I

    int-to-long v8, v3

    xor-long/2addr v8, v5

    long-to-int v3, v8

    add-int/2addr p0, v3

    int-to-char p0, p0

    iput-char p0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->InAppPurchaseEvent:C

    .line 214
    iget-char p0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->InAppPurchaseEvent:C

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    iget-char p0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->InAppPurchaseEvent:C

    iput-char p0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getQuantity:C

    .line 218
    sget-object p0, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->toJsonMap:[B

    if-eqz p0, :cond_9

    .line 235
    sget v3, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->$11:I

    add-int/lit8 v3, v3, 0x23

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->$10:I

    rem-int/2addr v3, v0

    if-eqz v3, :cond_6

    array-length v3, p0

    new-array v8, v3, [B

    goto :goto_4

    .line 218
    :cond_6
    array-length v3, p0

    new-array v8, v3, [B

    :goto_4
    move v9, v4

    :goto_5
    if-ge v9, v3, :cond_8

    .line 235
    sget v10, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->$10:I

    add-int/lit8 v10, v10, 0x59

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->$11:I

    rem-int/2addr v10, v0

    if-nez v10, :cond_7

    aget-byte v10, p0, v9

    int-to-long v10, v10

    or-long/2addr v10, v5

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    rem-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 218
    :cond_7
    aget-byte v10, p0, v9

    int-to-long v10, v10

    xor-long/2addr v10, v5

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    move-object p0, v8

    :cond_9
    if-eqz p0, :cond_a

    move p0, v7

    goto :goto_6

    :cond_a
    move p0, v4

    .line 219
    :goto_6
    iput v7, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getOneTimePurchaseOfferDetails:I

    :goto_7
    iget v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getOneTimePurchaseOfferDetails:I

    if-ge v3, p1, :cond_c

    if-eqz p0, :cond_b

    .line 222
    sget-object v3, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->toJsonMap:[B

    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getPackageName:I

    add-int/lit8 v9, v8, -0x1

    iput v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getPackageName:I

    aget-byte v3, v3, v8

    int-to-long v8, v3

    xor-long/2addr v8, v5

    long-to-int v3, v8

    int-to-byte v3, v3

    .line 223
    iget-char v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getQuantity:C

    add-int v3, v3, p3

    int-to-byte v3, v3

    xor-int/2addr v3, p2

    add-int/2addr v8, v3

    int-to-char v3, v8

    iput-char v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->InAppPurchaseEvent:C

    goto :goto_8

    .line 226
    :cond_b
    sget-object v3, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->getOneTimePurchaseOfferDetails:[S

    iget v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getPackageName:I

    add-int/lit8 v9, v8, -0x1

    iput v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getPackageName:I

    aget-short v3, v3, v8

    int-to-long v8, v3

    xor-long/2addr v8, v5

    long-to-int v3, v8

    int-to-short v3, v3

    .line 227
    iget-char v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getQuantity:C

    add-int v3, v3, p3

    int-to-short v3, v3

    xor-int/2addr v3, p2

    add-int/2addr v8, v3

    int-to-char v3, v8

    iput-char v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->InAppPurchaseEvent:C

    .line 235
    sget v3, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->$11:I

    add-int/lit8 v3, v3, 0x13

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->$10:I

    rem-int/2addr v3, v0

    .line 230
    :goto_8
    iget-char v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->InAppPurchaseEvent:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    iget-char v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->InAppPurchaseEvent:C

    iput-char v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getQuantity:C

    .line 219
    iget v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getOneTimePurchaseOfferDetails:I

    add-int/2addr v3, v7

    iput v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2x;->getOneTimePurchaseOfferDetails:I

    goto :goto_7

    .line 235
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p5, v4

    return-void
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/DeferredItemReplacement;
    .locals 13

    const/4 v0, 0x2

    .line 291
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    new-instance v2, Lcom/appsflyer/internal/models/DeferredItemReplacement;

    const v3, -0x19570448    # -3.9900048E23f

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    sub-int v7, v3, v6

    invoke-static {v1, v4, v5, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    add-int/lit8 v8, v3, -0x6f

    invoke-static {v1, v4, v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    rsub-int/lit8 v3, v3, -0x1

    int-to-byte v9, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    int-to-short v10, v3

    invoke-static {v5}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    shr-int/lit8 v3, v3, 0x6

    const v4, 0x5330daa2

    sub-int v11, v4, v3

    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->a(IIBSI[Ljava/lang/Object;)V

    aget-object v3, v12, v5

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1}, Lcom/appsflyer/internal/models/DeferredItemReplacement;-><init>(Ljava/lang/String;)V

    .line 291
    sget p1, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->stopObservingTransactions:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->hashCode:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 288
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->hashCode:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->stopObservingTransactions:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/DeferredItemReplacement;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/DeferredItemReplacement$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/DeferredItemReplacement;

    const/4 p1, 0x0

    throw p1
.end method
