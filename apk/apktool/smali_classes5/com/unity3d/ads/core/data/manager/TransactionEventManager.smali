.class public final Lcom/unity3d/ads/core/data/manager/TransactionEventManager;
.super Ljava/lang/Object;
.source "TransactionEventManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/manager/TransactionEventManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \"2\u00020\u0001:\u0001\"BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\t\u0010\u0018\u001a\u00020\u0019H\u0086\u0002J(\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e2\u0006\u0010 \u001a\u00020!H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/manager/TransactionEventManager;",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "billingClientAdapter",
        "Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;",
        "getTransactionData",
        "Lcom/unity3d/ads/core/domain/events/GetTransactionData;",
        "getTransactionRequest",
        "Lcom/unity3d/ads/core/domain/events/GetTransactionRequest;",
        "transactionEventRepository",
        "Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;",
        "iapTransactionStore",
        "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;",
        "isBillingClientAvailable",
        "Lcom/unity3d/ads/core/domain/billing/IsBillingClientAvailable;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "productDetailsFetcher",
        "Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;",
        "logger",
        "Lcom/unity3d/ads/core/log/Logger;",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;Lcom/unity3d/ads/core/domain/events/GetTransactionData;Lcom/unity3d/ads/core/domain/events/GetTransactionRequest;Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/domain/billing/IsBillingClientAvailable;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;Lcom/unity3d/ads/core/log/Logger;)V",
        "invoke",
        "",
        "onPurchasesReceived",
        "billingResult",
        "Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;",
        "purchases",
        "",
        "Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;",
        "transactionOrigin",
        "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;",
        "Companion",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BILLING_SERVICE_UNAVAILABLE:Ljava/lang/String; = "Billing client is not available"

.field public static final Companion:Lcom/unity3d/ads/core/data/manager/TransactionEventManager$Companion;

.field private static final INAPP:Ljava/lang/String; = "inapp"

.field private static final SUBS:Ljava/lang/String; = "subs"


# instance fields
.field private final billingClientAdapter:Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;

.field private final getTransactionData:Lcom/unity3d/ads/core/domain/events/GetTransactionData;

.field private final getTransactionRequest:Lcom/unity3d/ads/core/domain/events/GetTransactionRequest;

.field private final iapTransactionStore:Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

.field private final isBillingClientAvailable:Lcom/unity3d/ads/core/domain/billing/IsBillingClientAvailable;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final productDetailsFetcher:Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

.field private final transactionEventRepository:Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->Companion:Lcom/unity3d/ads/core/data/manager/TransactionEventManager$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;Lcom/unity3d/ads/core/domain/events/GetTransactionData;Lcom/unity3d/ads/core/domain/events/GetTransactionRequest;Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/domain/billing/IsBillingClientAvailable;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;Lcom/unity3d/ads/core/log/Logger;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getTransactionData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getTransactionRequest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionEventRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iapTransactionStore"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isBillingClientAvailable"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productDetailsFetcher"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 35
    iput-object p2, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->billingClientAdapter:Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;

    .line 36
    iput-object p3, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->getTransactionData:Lcom/unity3d/ads/core/domain/events/GetTransactionData;

    .line 37
    iput-object p4, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->getTransactionRequest:Lcom/unity3d/ads/core/domain/events/GetTransactionRequest;

    .line 38
    iput-object p5, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->transactionEventRepository:Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;

    .line 39
    iput-object p6, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->iapTransactionStore:Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    .line 40
    iput-object p7, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->isBillingClientAvailable:Lcom/unity3d/ads/core/domain/billing/IsBillingClientAvailable;

    .line 41
    iput-object p8, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 42
    iput-object p9, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->productDetailsFetcher:Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;

    .line 43
    iput-object p10, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-void
.end method

.method public static final synthetic access$getBillingClientAdapter$p(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;)Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->billingClientAdapter:Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;

    return-object p0
.end method

.method public static final synthetic access$getGetTransactionData$p(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;)Lcom/unity3d/ads/core/domain/events/GetTransactionData;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->getTransactionData:Lcom/unity3d/ads/core/domain/events/GetTransactionData;

    return-object p0
.end method

.method public static final synthetic access$getGetTransactionRequest$p(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;)Lcom/unity3d/ads/core/domain/events/GetTransactionRequest;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->getTransactionRequest:Lcom/unity3d/ads/core/domain/events/GetTransactionRequest;

    return-object p0
.end method

.method public static final synthetic access$getIapTransactionStore$p(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->iapTransactionStore:Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;)Lcom/unity3d/ads/core/log/Logger;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-object p0
.end method

.method public static final synthetic access$getProductDetailsFetcher$p(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;)Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->productDetailsFetcher:Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;

    return-object p0
.end method

.method public static final synthetic access$getSessionRepository$p(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;)Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    return-object p0
.end method

.method public static final synthetic access$getTransactionEventRepository$p(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;)Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->transactionEventRepository:Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;

    return-object p0
.end method

.method public static final synthetic access$onPurchasesReceived(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->onPurchasesReceived(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;)V

    return-void
.end method

.method private final onPurchasesReceived(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;",
            "Ljava/util/List<",
            "+",
            "Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;",
            ">;",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;->getResponseCode()Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    move-result-object p1

    sget-object v0, Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;->OK:Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    if-ne p1, v0, :cond_2

    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->billingClientAdapter:Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;

    if-nez p1, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;

    const/4 v1, 0x0

    invoke-direct {p1, p2, p0, p3, v1}, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;-><init>(Ljava/util/List;Lcom/unity3d/ads/core/data/manager/TransactionEventManager;Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 8

    .line 46
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->isBillingClientAvailable:Lcom/unity3d/ads/core/domain/billing/IsBillingClientAvailable;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/billing/IsBillingClientAvailable;->invoke()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->billingClientAdapter:Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$invoke$1;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$invoke$1;-><init>(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 47
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "Billing client is not available"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method
