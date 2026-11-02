.class public final Lcom/appsflyer/api/PurchaseClient$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/api/PurchaseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/api/PurchaseClient$Builder$AFPurchaseConnectorA1y;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u0019\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u000fH\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001d\u0010\u0013\u001a\u00020\u00002\u000c\u0010\u0003\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0012H\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0015H\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0018H\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u001bH\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\nJ\u0019\u0010 \u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u001fH\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u0019\u0010#\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\"H\u0007\u00a2\u0006\u0004\u0008#\u0010$R\u0018\u0010%\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u001c\u0010\'\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00128\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010)\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010+\u001a\u00020\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0018\u0010-\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0018\u0010/\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u00102\u001a\u0002018\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u001a\u00106\u001a\u0008\u0012\u0004\u0012\u000205048\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u00108\u001a\u00020\u00088\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0014\u0010:\u001a\u00020\u00048\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0018\u0010<\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0018\u0010>\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?"
    }
    d2 = {
        "Lcom/appsflyer/api/PurchaseClient$Builder;",
        "",
        "Landroid/content/Context;",
        "p0",
        "Lcom/appsflyer/api/Store;",
        "p1",
        "<init>",
        "(Landroid/content/Context;Lcom/appsflyer/api/Store;)V",
        "",
        "autoLogInApps",
        "(Z)Lcom/appsflyer/api/PurchaseClient$Builder;",
        "Lcom/appsflyer/api/PurchaseClient;",
        "build",
        "()Lcom/appsflyer/api/PurchaseClient;",
        "logSubscriptions",
        "Lcom/appsflyer/AppsFlyerLib;",
        "setAfClient",
        "(Lcom/appsflyer/AppsFlyerLib;)Lcom/appsflyer/api/PurchaseClient$Builder;",
        "Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1w;",
        "setBillingClientFactory",
        "(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1w;)Lcom/appsflyer/api/PurchaseClient$Builder;",
        "Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r;",
        "setConnector",
        "(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r;)Lcom/appsflyer/api/PurchaseClient$Builder;",
        "Lcom/appsflyer/api/PurchaseClient$InAppPurchaseEventDataSource;",
        "setInAppPurchaseEventDataSource",
        "(Lcom/appsflyer/api/PurchaseClient$InAppPurchaseEventDataSource;)Lcom/appsflyer/api/PurchaseClient$Builder;",
        "Lcom/appsflyer/api/PurchaseClient$InAppPurchaseValidationResultListener;",
        "setInAppValidationResultListener",
        "(Lcom/appsflyer/api/PurchaseClient$InAppPurchaseValidationResultListener;)Lcom/appsflyer/api/PurchaseClient$Builder;",
        "setSandbox",
        "Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseEventDataSource;",
        "setSubscriptionPurchaseEventDataSource",
        "(Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseEventDataSource;)Lcom/appsflyer/api/PurchaseClient$Builder;",
        "Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;",
        "setSubscriptionValidationResultListener",
        "(Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;)Lcom/appsflyer/api/PurchaseClient$Builder;",
        "afClient",
        "Lcom/appsflyer/AppsFlyerLib;",
        "billingClientFactory",
        "Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1w;",
        "connector",
        "Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r;",
        "context",
        "Landroid/content/Context;",
        "inAppPurchaseEventDataSource",
        "Lcom/appsflyer/api/PurchaseClient$InAppPurchaseEventDataSource;",
        "inAppValidationResultListener",
        "Lcom/appsflyer/api/PurchaseClient$InAppPurchaseValidationResultListener;",
        "Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;",
        "purchaseDatabaseHelper",
        "Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;",
        "",
        "",
        "purchaseTypes",
        "Ljava/util/Set;",
        "sandbox",
        "Z",
        "store",
        "Lcom/appsflyer/api/Store;",
        "subscriptionPurchaseEventDataSource",
        "Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseEventDataSource;",
        "subscriptionValidationResultListener",
        "Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private afClient:Lcom/appsflyer/AppsFlyerLib;

.field private billingClientFactory:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1w<",
            "*>;"
        }
    .end annotation
.end field

.field private connector:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r;

.field private final context:Landroid/content/Context;

.field private inAppPurchaseEventDataSource:Lcom/appsflyer/api/PurchaseClient$InAppPurchaseEventDataSource;

.field private inAppValidationResultListener:Lcom/appsflyer/api/PurchaseClient$InAppPurchaseValidationResultListener;

.field private final purchaseDatabaseHelper:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;

.field private final purchaseTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sandbox:Z

.field private final store:Lcom/appsflyer/api/Store;

.field private subscriptionPurchaseEventDataSource:Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseEventDataSource;

.field private subscriptionValidationResultListener:Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appsflyer/api/Store;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->store:Lcom/appsflyer/api/Store;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->context:Landroid/content/Context;

    .line 102
    new-instance p2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;

    invoke-direct {p2, p1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->purchaseDatabaseHelper:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;

    .line 103
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->purchaseTypes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final autoLogInApps(Z)Lcom/appsflyer/api/PurchaseClient$Builder;
    .locals 1

    .line 133
    move-object v0, p0

    check-cast v0, Lcom/appsflyer/api/PurchaseClient$Builder;

    .line 134
    const-string v0, "inapp"

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->purchaseTypes:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->purchaseTypes:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Lcom/appsflyer/api/PurchaseClient;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/exceptions/SDKMissingException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 234
    const-string v0, ""

    :try_start_0
    iget-object v2, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->afClient:Lcom/appsflyer/AppsFlyerLib;

    if-nez v2, :cond_0

    .line 235
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    iput-object v2, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->afClient:Lcom/appsflyer/AppsFlyerLib;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    iget-object v2, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->store:Lcom/appsflyer/api/Store;

    sget-object v3, Lcom/appsflyer/api/PurchaseClient$Builder$AFPurchaseConnectorA1y;->InAppPurchaseEvent:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 245
    iget-object v2, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->connector:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r;

    if-nez v2, :cond_2

    .line 246
    new-instance v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;

    .line 247
    iget-object v5, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->context:Landroid/content/Context;

    .line 248
    iget-object v6, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->billingClientFactory:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1w;

    check-cast v6, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$AFPurchaseConnectorA1x;

    .line 249
    :try_start_1
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v9, -0x5132c531

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0x46

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    const v11, -0xffffba

    sub-int/2addr v11, v10

    invoke-static {v4, v4}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v10

    int-to-char v10, v10

    invoke-static {v8, v11, v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    const-string v10, "a_"

    new-array v11, v3, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v11, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sget-object v10, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v8, Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    iget-object v8, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->purchaseDatabaseHelper:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;

    .line 246
    invoke-direct {v2, v5, v6, v7, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$AFPurchaseConnectorA1x;Landroid/content/SharedPreferences;Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;)V

    check-cast v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r;

    iput-object v2, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->connector:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r;

    .line 255
    :cond_2
    iget-object v2, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->context:Landroid/content/Context;

    .line 256
    iget-boolean v5, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->sandbox:Z

    .line 257
    iget-object v6, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->connector:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 258
    iget-object v7, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->purchaseTypes:Ljava/util/Set;

    .line 259
    iget-object v8, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->subscriptionValidationResultListener:Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;

    .line 260
    iget-object v9, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->inAppValidationResultListener:Lcom/appsflyer/api/PurchaseClient$InAppPurchaseValidationResultListener;

    .line 261
    iget-object v10, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->subscriptionPurchaseEventDataSource:Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseEventDataSource;

    .line 262
    iget-object v11, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->inAppPurchaseEventDataSource:Lcom/appsflyer/api/PurchaseClient$InAppPurchaseEventDataSource;

    .line 263
    iget-object v12, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->afClient:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 264
    iget-object v13, v1, Lcom/appsflyer/api/PurchaseClient$Builder;->purchaseDatabaseHelper:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;

    const/16 v14, 0xa

    .line 254
    :try_start_2
    new-array v15, v14, [Ljava/lang/Object;

    const/16 v16, 0x9

    aput-object v13, v15, v16

    const/16 v13, 0x8

    aput-object v12, v15, v13

    const/4 v12, 0x7

    aput-object v11, v15, v12

    const/4 v11, 0x6

    aput-object v10, v15, v11

    const/4 v10, 0x5

    aput-object v9, v15, v10

    const/4 v9, 0x4

    aput-object v8, v15, v9

    const/4 v8, 0x3

    aput-object v7, v15, v8

    const/4 v7, 0x2

    aput-object v6, v15, v7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v15, v3

    aput-object v2, v15, v4

    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v5, -0x7a1d43c4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0, v0, v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    add-int/lit8 v0, v0, 0x46

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v6, v17, v19

    const v17, 0xa3de

    add-int v6, v6, v17

    int-to-char v6, v6

    invoke-static {v0, v2, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-array v2, v14, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v2, v4

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const-class v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r;

    aput-object v3, v2, v7

    const-class v3, Ljava/util/Set;

    aput-object v3, v2, v8

    const-class v3, Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;

    aput-object v3, v2, v9

    const-class v3, Lcom/appsflyer/api/PurchaseClient$InAppPurchaseValidationResultListener;

    aput-object v3, v2, v10

    const-class v3, Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseEventDataSource;

    aput-object v3, v2, v11

    const-class v3, Lcom/appsflyer/api/PurchaseClient$InAppPurchaseEventDataSource;

    aput-object v3, v2, v12

    const-class v3, Lcom/appsflyer/AppsFlyerLib;

    aput-object v3, v2, v13

    const-class v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1l;

    aput-object v3, v2, v16

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v2, Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    check-cast v0, Lcom/appsflyer/api/PurchaseClient;

    return-object v0

    :catchall_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    throw v2

    :cond_4
    throw v0

    :catch_0
    move-exception v0

    .line 239
    const-string v2, "AppsFlyer_Connector"

    const-string v3, "[PurchaseConnector]: AppsFlyer SDK required!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 241
    new-instance v0, Lcom/appsflyer/exceptions/SDKMissingException;

    invoke-direct {v0}, Lcom/appsflyer/exceptions/SDKMissingException;-><init>()V

    throw v0
.end method

.method public final logSubscriptions(Z)Lcom/appsflyer/api/PurchaseClient$Builder;
    .locals 1

    .line 119
    move-object v0, p0

    check-cast v0, Lcom/appsflyer/api/PurchaseClient$Builder;

    .line 120
    const-string v0, "subs"

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->purchaseTypes:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->purchaseTypes:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final setAfClient(Lcom/appsflyer/AppsFlyerLib;)Lcom/appsflyer/api/PurchaseClient$Builder;
    .locals 1

    .line 210
    move-object v0, p0

    check-cast v0, Lcom/appsflyer/api/PurchaseClient$Builder;

    .line 211
    iput-object p1, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->afClient:Lcom/appsflyer/AppsFlyerLib;

    return-object p0
.end method

.method public final setBillingClientFactory(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1w;)Lcom/appsflyer/api/PurchaseClient$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1w<",
            "*>;)",
            "Lcom/appsflyer/api/PurchaseClient$Builder;"
        }
    .end annotation

    .line 204
    move-object v0, p0

    check-cast v0, Lcom/appsflyer/api/PurchaseClient$Builder;

    .line 205
    iput-object p1, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->billingClientFactory:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1w;

    return-object p0
.end method

.method public final setConnector(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r;)Lcom/appsflyer/api/PurchaseClient$Builder;
    .locals 1

    .line 216
    move-object v0, p0

    check-cast v0, Lcom/appsflyer/api/PurchaseClient$Builder;

    .line 217
    iput-object p1, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->connector:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r;

    return-object p0
.end method

.method public final setInAppPurchaseEventDataSource(Lcom/appsflyer/api/PurchaseClient$InAppPurchaseEventDataSource;)Lcom/appsflyer/api/PurchaseClient$Builder;
    .locals 1

    .line 198
    move-object v0, p0

    check-cast v0, Lcom/appsflyer/api/PurchaseClient$Builder;

    .line 199
    iput-object p1, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->inAppPurchaseEventDataSource:Lcom/appsflyer/api/PurchaseClient$InAppPurchaseEventDataSource;

    return-object p0
.end method

.method public final setInAppValidationResultListener(Lcom/appsflyer/api/PurchaseClient$InAppPurchaseValidationResultListener;)Lcom/appsflyer/api/PurchaseClient$Builder;
    .locals 1

    .line 173
    move-object v0, p0

    check-cast v0, Lcom/appsflyer/api/PurchaseClient$Builder;

    .line 174
    iput-object p1, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->inAppValidationResultListener:Lcom/appsflyer/api/PurchaseClient$InAppPurchaseValidationResultListener;

    return-object p0
.end method

.method public final setSandbox(Z)Lcom/appsflyer/api/PurchaseClient$Builder;
    .locals 1

    .line 149
    move-object v0, p0

    check-cast v0, Lcom/appsflyer/api/PurchaseClient$Builder;

    .line 150
    iput-boolean p1, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->sandbox:Z

    return-object p0
.end method

.method public final setSubscriptionPurchaseEventDataSource(Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseEventDataSource;)Lcom/appsflyer/api/PurchaseClient$Builder;
    .locals 1

    .line 186
    move-object v0, p0

    check-cast v0, Lcom/appsflyer/api/PurchaseClient$Builder;

    .line 187
    iput-object p1, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->subscriptionPurchaseEventDataSource:Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseEventDataSource;

    return-object p0
.end method

.method public final setSubscriptionValidationResultListener(Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;)Lcom/appsflyer/api/PurchaseClient$Builder;
    .locals 1

    .line 161
    move-object v0, p0

    check-cast v0, Lcom/appsflyer/api/PurchaseClient$Builder;

    .line 162
    iput-object p1, p0, Lcom/appsflyer/api/PurchaseClient$Builder;->subscriptionValidationResultListener:Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;

    return-object p0
.end method
