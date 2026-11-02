.class public final Lcom/appsflyer/internal/models/Money$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/Money;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/Money;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/Money$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/Money;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/Money;"
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

.field private static getPackageName:I = 0x0

.field private static toJsonMap:J = 0x2f382d0b57b528a0L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/Money$Companion;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 13

    const/4 v0, 0x2

    .line 77
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/Money$Companion;->$11:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/Money$Companion;->$10:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_4

    if-eqz p0, :cond_0

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

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

    if-ge v4, v5, :cond_2

    .line 77
    sget v4, Lcom/appsflyer/internal/models/Money$Companion;->$10:I

    add-int/lit8 v4, v4, 0x4d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/models/Money$Companion;->$11:I

    rem-int/2addr v4, v0

    const-wide v5, 0x49d1ea6aed71ada8L    # 4.091221287231824E47

    if-nez v4, :cond_1

    .line 64
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    iget v7, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    aget-char v7, p0, v7

    int-to-long v7, v7

    iget v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    int-to-long v9, v9

    iget v11, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->getPackageName:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    mul-long/2addr v7, v9

    sget-wide v9, Lcom/appsflyer/internal/models/Money$Companion;->toJsonMap:J

    mul-long/2addr v9, v5

    mul-long/2addr v7, v9

    aput-wide v7, v2, v4

    .line 63
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    :goto_1
    iput v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    goto :goto_0

    .line 64
    :cond_1
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    iget v7, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    aget-char v7, p0, v7

    int-to-long v7, v7

    iget v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    int-to-long v9, v9

    iget v11, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->getPackageName:I

    int-to-long v11, v11

    mul-long/2addr v9, v11

    xor-long/2addr v7, v9

    sget-wide v9, Lcom/appsflyer/internal/models/Money$Companion;->toJsonMap:J

    xor-long/2addr v5, v9

    xor-long/2addr v5, v7

    aput-wide v5, v2, v4

    .line 63
    iget v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 72
    :cond_2
    new-array p1, p1, [C

    .line 73
    iput v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    :goto_2
    iget v0, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1g;->InAppPurchaseEvent:I

    array-length v4, p0

    if-ge v0, v4, :cond_3

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

    goto :goto_2

    .line 77
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    aput-object p0, p2, v3

    return-void

    :cond_4
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/Money;
    .locals 11

    const/4 v0, 0x2

    .line 278
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    new-instance v2, Lcom/appsflyer/internal/models/Money;

    .line 275
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int v3, v3, 0x17e1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "\u856b\u929c\uaab8\uc2d9\udae9\uf203\u0a2d\u2256\u3a43\u538e\u6ba6\u83c6"

    invoke-static {v6, v3, v5}, Lcom/appsflyer/internal/models/Money$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v3, 0x0

    aget-object v5, v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    const v6, 0xd91b

    add-int/2addr v1, v6

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "\u8566\u5c72\u3750\u0e36\ue117"

    invoke-static {v7, v1, v6}, Lcom/appsflyer/internal/models/Money$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v1, v6, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    shr-int/lit8 v1, v1, 0x6

    const v8, 0x900d

    add-int/2addr v1, v8

    new-array v4, v4, [Ljava/lang/Object;

    const-string v8, "\u857d\u156b\ua57b\u355b\uc54f"

    invoke-static {v8, v1, v4}, Lcom/appsflyer/internal/models/Money$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v1, v4, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    move-wide v9, v3

    move-object v3, v5

    move-wide v4, v6

    move-wide v6, v9

    .line 274
    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/models/Money;-><init>(Ljava/lang/String;JJ)V

    .line 278
    sget p1, Lcom/appsflyer/internal/models/Money$Companion;->InAppPurchaseEvent:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/models/Money$Companion;->getPackageName:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method public final bridge synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 272
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/Money$Companion;->InAppPurchaseEvent:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/Money$Companion;->getPackageName:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/Money$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/Money;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/Money$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/Money;

    const/4 p1, 0x0

    throw p1
.end method
