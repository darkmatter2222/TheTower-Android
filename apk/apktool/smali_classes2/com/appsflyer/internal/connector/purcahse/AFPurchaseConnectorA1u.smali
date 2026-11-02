.class public Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r;
.implements Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$AFPurchaseConnectorA1x;
    }
.end annotation


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static PurchaseClientBuilder:I = 0x0

.field private static logSubscriptions:I = 0x1

.field private static setSandbox:J = 0x1a8e4105644727bbL


# instance fields
.field private InAppPurchaseEvent:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1x;

.field private final PurchaseClient:Lcom/android/billingclient/api/PurchasesResponseListener;

.field private autoLogInApps:Z

.field private equals:Ljava/util/concurrent/ScheduledExecutorService;

.field private final getOneTimePurchaseOfferDetails:Lcom/android/billingclient/api/BillingClient;

.field private final getPackageName:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;

.field final getQuantity:Landroid/content/SharedPreferences;

.field private final hashCode:Lcom/android/billingclient/api/PurchasesResponseListener;

.field private final startObservingTransactions:Lcom/android/billingclient/api/PurchasesResponseListener;

.field private final stopObservingTransactions:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;

.field final toJsonMap:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$9DQuNafjw7HAPyAWh_bZx86CGfo(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->toJsonMap(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$AFPurchaseConnectorA1x;Landroid/content/SharedPreferences;Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$5;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$5;-><init>(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;)V

    iput-object v0, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->startObservingTransactions:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 69
    new-instance v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$1;-><init>(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;)V

    iput-object v0, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClient:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 89
    new-instance v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;)V

    iput-object v0, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->hashCode:Lcom/android/billingclient/api/PurchasesResponseListener;

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->autoLogInApps:Z

    if-nez p2, :cond_0

    .line 103
    new-instance p2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$AFPurchaseConnectorA1x;

    invoke-direct {p2, p0, p0}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$AFPurchaseConnectorA1x;-><init>(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->toJsonMap:Landroid/content/Context;

    .line 106
    iput-object p3, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getQuantity:Landroid/content/SharedPreferences;

    .line 1317
    iget-object p1, p2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$AFPurchaseConnectorA1x;->toJsonMap:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;

    iget-object p1, p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->toJsonMap:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    iget-object p2, p2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$AFPurchaseConnectorA1x;->getOneTimePurchaseOfferDetails:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 1318
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 1319
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 1320
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    .line 107
    iput-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getOneTimePurchaseOfferDetails:Lcom/android/billingclient/api/BillingClient;

    .line 108
    iput-object p4, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getPackageName:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;

    .line 109
    new-instance p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;

    invoke-virtual {p0}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getQuantity()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;-><init>(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1y;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->stopObservingTransactions:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;

    return-void
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x2

    .line 65
    rem-int v1, v0, v0

    if-eqz p0, :cond_1

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->$11:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->$10:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0

    .line 0
    :cond_1
    :goto_0
    check-cast p0, [C

    .line 51
    new-instance v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;

    invoke-direct {v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;-><init>()V

    .line 54
    sget-wide v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->setSandbox:J

    const-wide v4, 0x6cec79b9f79ca3b1L    # 4.9081538215191364E216

    xor-long/2addr v2, v4

    .line 55
    invoke-static {v2, v3, p0, p1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getOneTimePurchaseOfferDetails(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    .line 59
    iput p1, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    :goto_1
    iget v2, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 65
    sget v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->$11:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->$10:I

    rem-int/2addr v2, v0

    .line 60
    iget v2, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    sub-int/2addr v2, p1

    iput v2, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getOneTimePurchaseOfferDetails:I

    .line 61
    iget v2, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    iget v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    aget-char v3, p0, v3

    iget v6, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    rem-int/2addr v6, p1

    aget-char v6, p0, v6

    xor-int/2addr v3, v6

    int-to-long v6, v3

    iget v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getOneTimePurchaseOfferDetails:I

    int-to-long v8, v3

    sget-wide v10, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->setSandbox:J

    xor-long/2addr v10, v4

    mul-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v3, v6

    int-to-char v3, v3

    aput-char v3, p0, v2

    .line 59
    iget v2, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    .line 65
    sget v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->$10:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->$11:I

    rem-int/2addr v2, v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    const/4 p0, 0x0

    aput-object v0, p2, p0

    return-void
.end method

.method private equals()V
    .locals 10

    const/4 v0, 0x2

    .line 191
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v1, v0

    const/4 v1, 0x0

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getQuantity:Landroid/content/SharedPreferences;

    const-string v3, "inapp_purchases_history_processed"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getOneTimePurchaseOfferDetails:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v3

    const-string v4, "inapp"

    .line 183
    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v3

    iget-object v4, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->startObservingTransactions:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 182
    invoke-virtual {v2, v3, v4}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v1, v0

    return-void

    :catchall_0
    move-exception v0

    .line 188
    :try_start_1
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v4, -0x4606b5e7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/telephony/cdma/CdmaCellLocation;->convertQuartSecToDecDegrees(I)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    rsub-int/lit8 v3, v3, 0x46

    const-string v6, ""

    invoke-static {v6}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x45

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v3, v6, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string v6, "getQuantity"

    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Throwable;

    aput-object v8, v7, v1

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sget-object v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v3, Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    const-string v1, "[PurchaseConnector]: Failed to log purchases history"

    invoke-static {v1, v0, v5}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void

    :catchall_1
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    throw v1

    :cond_2
    throw v0
.end method

.method private getOneTimePurchaseOfferDetails(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x2

    .line 259
    rem-int v2, v1, v1

    .line 247
    sget v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 v2, v2, 0xb

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr v2, v1

    const-string v3, "subs"

    const/4 v4, 0x0

    if-nez v2, :cond_8

    .line 233
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "inapp"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[PurchaseConnector]: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " SKU type is illegal"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    .line 238
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "[PurchaseConnector]: Querying Sku details:\n\ttype: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n\tSkus: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    .line 239
    :try_start_0
    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v3

    const/4 v5, 0x0

    aput-object p2, v6, v5

    sget-object v7, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v8, -0x483c1cef

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v7

    add-int/lit8 v7, v7, 0x46

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    add-int/lit8 v9, v9, 0x46

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v7, v9, v0}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v7, "getPackageName"

    new-array v9, v1, [Ljava/lang/Class;

    const-class v10, Ljava/util/List;

    aput-object v10, v9, v5

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v9, v3

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v7, Ljava/lang/reflect/Method;

    invoke-virtual {v7, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 233
    sget v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v2, v1

    .line 242
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 259
    sget v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v2, v2, 0x23

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_3

    .line 242
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    .line 244
    invoke-virtual {v3, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    .line 245
    invoke-virtual {v2, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v2

    .line 243
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 259
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p3

    .line 244
    invoke-virtual {p3, p2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p2

    .line 245
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object p1

    .line 243
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    throw v4

    .line 249
    :cond_4
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p2

    .line 250
    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p2

    .line 251
    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p2

    .line 252
    iget-object v0, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->InAppPurchaseEvent:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1x;

    if-nez v0, :cond_5

    .line 253
    const-string p1, "[PurchaseConnector]: Skipping queryProductDetailsAsync because BillingUpdatesListener is null"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    .line 257
    :cond_5
    iget-object v0, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getOneTimePurchaseOfferDetails:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1n;

    iget-object v3, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->InAppPurchaseEvent:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1x;

    invoke-direct {v2, p1, v3, p3, p4}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1n;-><init>(Ljava/lang/String;Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1x;Ljava/util/List;Z)V

    invoke-virtual {v0, p2, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 259
    sget p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_6

    return-void

    :cond_6
    throw v4

    :catchall_0
    move-exception p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_7

    throw p2

    :cond_7
    throw p1

    .line 233
    :cond_8
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    throw v4
.end method

.method private stopObservingTransactions()V
    .locals 10

    const/4 v0, 0x2

    .line 174
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v1, v0

    const-string v2, "\u641c\u647d\u70bd\uf4c5\u418f\uaacc\u49e8\u268d\u7453\ue4e0\u59dc\u36ed\u4420\ud482\u69b4\u06ca\u540d\uc44c\u7977\u1635\u24ce\ub46e\u0964\u6601\u34b1\ua401\u1927"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getQuantity:Landroid/content/SharedPreferences;

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v5

    add-int/lit8 v5, v5, 0x53

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v2, v6, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getQuantity:Landroid/content/SharedPreferences;

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v2, v6, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 174
    :goto_0
    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    div-int/2addr v0, v4

    :cond_1
    return-void

    .line 164
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getOneTimePurchaseOfferDetails:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "subs"

    .line 165
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClient:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 170
    :goto_1
    :try_start_2
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v5, -0x4606b5e7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, ""

    const/16 v6, 0x30

    invoke-static {v2, v6, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x45

    invoke-static {v4}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    rsub-int/lit8 v6, v6, 0x46

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x1

    int-to-char v7, v7

    invoke-static {v2, v6, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const-string v6, "getQuantity"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Throwable;

    aput-object v8, v7, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    check-cast v2, Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    const-string v1, "[PurchaseConnector]: Failed to log purchases history"

    invoke-static {v1, v0, v3}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void

    :catchall_1
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    throw v1

    :cond_4
    throw v0
.end method

.method private synthetic toJsonMap(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x2

    .line 95
    rem-int v1, v0, v0

    .line 90
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    sget p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr p1, v0

    const-string p2, "[PurchaseConnector]: Failed to query purchases history"

    if-eqz p1, :cond_0

    .line 91
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1

    :cond_1
    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, p1, p2, v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getPackageName(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Z)V

    .line 92
    sget p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_2

    const/16 p1, 0x42

    div-int/2addr p1, v1

    :cond_2
    return-void
.end method


# virtual methods
.method public InAppPurchaseEvent()V
    .locals 5

    const/4 v0, 0x2

    .line 135
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v1, v0

    .line 128
    iget-boolean v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->autoLogInApps:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 129
    iput-boolean v2, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->autoLogInApps:Z

    .line 130
    iget-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getOneTimePurchaseOfferDetails:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1, p0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 131
    iget-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->toJsonMap:Landroid/content/Context;

    instance-of v3, v1, Landroid/app/Application;

    if-eqz v3, :cond_1

    .line 135
    sget v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 v3, v3, 0x27

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr v3, v0

    if-nez v3, :cond_0

    .line 132
    check-cast v1, Landroid/app/Application;

    iget-object v3, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->stopObservingTransactions:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;

    invoke-virtual {v1, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_0
    check-cast v1, Landroid/app/Application;

    iget-object v0, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->stopObservingTransactions:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0

    :cond_1
    :goto_0
    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_2

    const/16 v0, 0x2e

    div-int/2addr v0, v2

    :cond_2
    return-void
.end method

.method public getOneTimePurchaseOfferDetails()Z
    .locals 4

    const/4 v0, 0x2

    .line 147
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 v2, v1, 0x49

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr v2, v0

    iget-boolean v2, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->autoLogInApps:Z

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public getPackageName()V
    .locals 3

    const/4 v0, 0x2

    .line 143
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v1, v0

    .line 139
    iget-boolean v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->autoLogInApps:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 140
    iput-boolean v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->autoLogInApps:Z

    .line 141
    iget-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getOneTimePurchaseOfferDetails:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 143
    :goto_0
    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    throw v0
.end method

.method getPackageName(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    const-string v2, "getQuantity"

    const/4 v3, 0x2

    .line 228
    rem-int v4, v3, v3

    .line 212
    sget v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 v4, v4, 0x1f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr v4, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 195
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v7

    if-nez v7, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 200
    :cond_0
    iget-object v7, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getOneTimePurchaseOfferDetails:Lcom/android/billingclient/api/BillingClient;

    if-nez v7, :cond_1

    .line 201
    const-string v0, "[PurchaseConnector]: Got Ars billing callback but billing client is missing!"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    .line 205
    :cond_1
    iget-object v7, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getPackageName:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;

    invoke-virtual {v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;->getQuantity()Ljava/util/Set;

    move-result-object v7

    .line 206
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tokens: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v9, v6, [Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 207
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v11, :cond_8

    .line 228
    sget v11, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v11, v11, 0x6b

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v11, v3

    const v12, -0x331e3aa4

    if-nez v11, :cond_4

    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 211
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x46

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    shr-int/lit8 v8, v8, 0x16

    add-int/lit8 v8, v8, 0x46

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    const/high16 v10, 0x1000000

    add-int/2addr v9, v10

    int-to-char v9, v9

    invoke-static {v3, v8, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-virtual {v3, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sget-object v8, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    :try_start_3
    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    throw v5

    :catchall_0
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3

    throw v3

    :cond_3
    throw v0

    .line 210
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/billingclient/api/Purchase;

    .line 211
    invoke-virtual {v11}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_5

    move/from16 v17, v3

    goto :goto_2

    :cond_5
    const-string v14, ""

    invoke-static {v14}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x46

    invoke-static {v6}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    add-int/lit8 v15, v15, 0x46

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v16

    move/from16 v17, v3

    shr-int/lit8 v3, v16, 0x8

    int-to-char v3, v3

    invoke-static {v14, v15, v3}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    new-array v14, v4, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v6

    invoke-virtual {v3, v2, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    sget-object v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    check-cast v14, Ljava/lang/reflect/Method;

    invoke-virtual {v14, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 212
    :try_start_5
    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 213
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v11}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 212
    sget v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v3, v3, 0x65

    rem-int/lit16 v11, v3, 0x80

    sput v11, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/lit8 v3, v3, 0x2

    :cond_6
    move/from16 v3, v17

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 211
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_7

    throw v3

    :cond_7
    throw v0

    :cond_8
    move/from16 v17, v3

    .line 217
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    .line 221
    :cond_9
    const-string v3, "subs"

    invoke-direct {v1, v3, v8, v9, v0}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getOneTimePurchaseOfferDetails(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 222
    const-string v3, "inapp"

    invoke-direct {v1, v3, v8, v9, v0}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getOneTimePurchaseOfferDetails(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 212
    sget v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :cond_a
    :goto_3
    move/from16 v17, v3

    .line 196
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[PurchaseConnector]: Failed to setup Ars Play billing service: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 212
    sget v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    const/16 v0, 0x49

    div-int/2addr v0, v6

    :cond_b
    :goto_4
    return-void

    :catchall_2
    move-exception v0

    .line 225
    :try_start_8
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    sget-object v7, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v8, -0x4606b5e7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {v6}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    shr-int/lit8 v7, v7, 0x6

    add-int/lit8 v7, v7, 0x46

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    rsub-int/lit8 v9, v9, 0x46

    invoke-static {v6, v6}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v10

    int-to-char v10, v10

    invoke-static {v7, v9, v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Throwable;

    aput-object v10, v9, v6

    invoke-virtual {v7, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    check-cast v7, Ljava/lang/reflect/Method;

    invoke-virtual {v7, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 226
    const-string v2, "[PurchaseConnector]: Failed to query new purchase details"

    invoke-static {v2, v0, v4}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void

    :catchall_3
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_d

    throw v2

    :cond_d
    throw v0
.end method

.method getPackageName(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 119
    rem-int v1, v0, v0

    .line 113
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    sget v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 v2, v2, 0x49

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr v2, v0

    .line 114
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 115
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v2, v0

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getPackageName:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;

    invoke-virtual {p1, v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;->toJsonMap(Ljava/util/Set;)V

    .line 118
    iget-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getQuantity:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "inapp_purchases_history_processed"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public declared-synchronized getQuantity()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    .line 154
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->equals:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v2, 0x14

    :try_start_1
    div-int/lit8 v2, v2, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 154
    :try_start_2
    throw v0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->equals:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_1

    .line 2011
    :goto_0
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->equals:Ljava/util/concurrent/ScheduledExecutorService;

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->equals:Ljava/util/concurrent/ScheduledExecutorService;

    .line 151
    sget v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 v2, v2, 0x5

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_2

    const/16 v0, 0x44

    :try_start_3
    div-int/lit8 v0, v0, 0x0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 154
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public onBillingServiceDisconnected()V
    .locals 3

    const/4 v0, 0x2

    .line 277
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr v1, v0

    .line 276
    const-string v1, "[PurchaseConnector]: onBillingServiceDisconnected"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 277
    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    const/4 v0, 0x2

    .line 272
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr v1, v0

    .line 266
    const-string v1, "[PurchaseConnector]: onBillingSetupFinished"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->stopObservingTransactions()V

    .line 271
    invoke-direct {p0}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->equals()V

    .line 272
    sget p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    const/16 p1, 0x53

    div-int/lit8 p1, p1, 0x0

    :cond_1
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 283
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr v1, v0

    .line 281
    const-string v1, "[PurchaseConnector]: onPurchasesUpdated"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 282
    invoke-virtual {p0, p1, p2, v1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getPackageName(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Z)V

    .line 283
    sget p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method public toJsonMap()V
    .locals 6

    const/4 v0, 0x2

    .line 303
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v1, v0

    .line 288
    iget-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getQuantity:Landroid/content/SharedPreferences;

    const-string v2, ""

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "\u641c\u647d\u70bd\uf4c5\u418f\uaacc\u49e8\u268d\u7453\ue4e0\u59dc\u36ed\u4420\ud482\u69b4\u06ca\u540d\uc44c\u7977\u1635\u24ce\ub46e\u0964\u6601\u34b1\ua401\u1927"

    invoke-static {v5, v2, v3}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v2, v3, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v1, v0

    const-string v2, "subs"

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getOneTimePurchaseOfferDetails:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v3

    .line 290
    invoke-virtual {v3, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v2

    .line 291
    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->hashCode:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 289
    invoke-virtual {v1, v2, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 303
    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr v1, v0

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getOneTimePurchaseOfferDetails:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    .line 290
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->hashCode:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 289
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    const/4 v0, 0x0

    .line 295
    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getQuantity:Landroid/content/SharedPreferences;

    const-string v2, "inapp_purchases_history_processed"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getOneTimePurchaseOfferDetails:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v2

    const-string v3, "inapp"

    .line 298
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v2

    .line 299
    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->hashCode:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 297
    invoke-virtual {v1, v2, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 303
    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v1, v0

    :cond_2
    return-void
.end method

.method public toJsonMap(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1x;)V
    .locals 3

    const/4 v0, 0x2

    .line 124
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->logSubscriptions:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 123
    iput-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->InAppPurchaseEvent:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1x;

    const/16 p1, 0x4c

    .line 124
    div-int/lit8 p1, p1, 0x0

    goto :goto_0

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->InAppPurchaseEvent:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1x;

    :goto_0
    add-int/lit8 v2, v2, 0x37

    .line 124
    rem-int/lit16 p1, v2, 0x80

    sput p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->PurchaseClientBuilder:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method
