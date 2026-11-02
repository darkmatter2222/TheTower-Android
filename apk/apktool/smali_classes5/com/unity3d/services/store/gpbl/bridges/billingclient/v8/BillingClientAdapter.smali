.class public final Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;
.super Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;
.source "BillingClientAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0012\u0010\u000c\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u001c\u0010\u0015\u001a\u00020\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J \u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;",
        "Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;",
        "billingClientBuilderBridge",
        "Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBuilderBridge;",
        "<init>",
        "(Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBuilderBridge;)V",
        "billingClient",
        "Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBridge;",
        "initialize",
        "",
        "billingInitializationListener",
        "Lcom/unity3d/services/store/gpbl/listeners/BillingInitializationListener;",
        "startConnection",
        "billingClientStateListener",
        "Lcom/unity3d/services/store/gpbl/listeners/BillingClientStateListener;",
        "isFeatureSupported",
        "Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;",
        "purchaseType",
        "",
        "isReady",
        "",
        "queryPurchasesAsync",
        "purchasesResponseListener",
        "Lcom/unity3d/services/store/gpbl/listeners/PurchasesResponseListener;",
        "queryProductDetailsAsync",
        "productId",
        "productType",
        "listener",
        "Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;",
        "getAdapterVersion",
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


# instance fields
.field private billingClient:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBridge;

.field private final billingClientBuilderBridge:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBuilderBridge;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBuilderBridge;)V
    .locals 1

    const-string v0, "billingClientBuilderBridge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;->billingClientBuilderBridge:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBuilderBridge;

    return-void
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "8"

    return-object v0
.end method

.method public initialize(Lcom/unity3d/services/store/gpbl/listeners/BillingInitializationListener;)V
    .locals 3

    const-string v0, "billingInitializationListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {p1}, Lcom/unity3d/services/store/gpbl/listeners/BillingInitializationListener;->onIsAlreadyInitialized()V

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;->billingClientBuilderBridge:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBuilderBridge;

    new-instance v1, Lcom/unity3d/services/store/gpbl/proxies/PurchaseUpdatedListenerProxy;

    move-object v2, p1

    check-cast v2, Lcom/unity3d/services/store/gpbl/listeners/PurchaseUpdatedResponseListener;

    invoke-direct {v1, v2}, Lcom/unity3d/services/store/gpbl/proxies/PurchaseUpdatedListenerProxy;-><init>(Lcom/unity3d/services/store/gpbl/listeners/PurchaseUpdatedResponseListener;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBuilderBridge;->setListener(Lcom/unity3d/services/store/gpbl/proxies/PurchaseUpdatedListenerProxy;)Lcom/unity3d/services/store/gpbl/bridges/billingclient/IBillingClientBuilderBridge;

    .line 25
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;->billingClientBuilderBridge:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBuilderBridge;

    invoke-virtual {v0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBuilderBridge;->enablePendingPurchases()Lcom/unity3d/services/store/gpbl/bridges/billingclient/IBillingClientBuilderBridge;

    .line 26
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;->billingClientBuilderBridge:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBuilderBridge;

    invoke-virtual {v0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBuilderBridge;->build()Lcom/unity3d/services/store/gpbl/bridges/billingclient/common/BillingClientBridgeCommon;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.unity3d.services.store.gpbl.bridges.billingclient.v8.BillingClientBridge"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBridge;

    iput-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;->billingClient:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBridge;

    .line 27
    check-cast p1, Lcom/unity3d/services/store/gpbl/listeners/BillingClientStateListener;

    invoke-virtual {p0, p1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;->startConnection(Lcom/unity3d/services/store/gpbl/listeners/BillingClientStateListener;)V

    .line 28
    invoke-virtual {p0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;->get_isInitialized$unity_ads_defaultRelease()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public isFeatureSupported(Ljava/lang/String;)Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;->billingClient:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBridge;

    if-nez v0, :cond_0

    const-string v0, "billingClient"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBridge;->isFeatureSupported(Ljava/lang/String;)Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    move-result-object p1

    return-object p1
.end method

.method public isReady()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;->billingClient:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBridge;

    if-nez v0, :cond_0

    const-string v0, "billingClient"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBridge;->isReady()Z

    move-result v0

    return v0
.end method

.method public queryProductDetailsAsync(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;)V
    .locals 1

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBridge;->Companion:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBridge$Companion;

    invoke-virtual {v0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBridge$Companion;->newBuilder()Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;->setProductId(Ljava/lang/String;)Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;->setProductType(Ljava/lang/String;)Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;->build()Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBridge;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 58
    sget-object p2, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/QueryProductDetailsParamsBridge;->Companion:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/QueryProductDetailsParamsBridge$Companion;

    invoke-virtual {p2}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/QueryProductDetailsParamsBridge$Companion;->newBuilder()Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/QueryProductDetailsParamsBuilderBridge;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/QueryProductDetailsParamsBuilderBridge;->setProductList(Ljava/util/List;)Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/QueryProductDetailsParamsBuilderBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/QueryProductDetailsParamsBuilderBridge;->build()Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/QueryProductDetailsParamsBridge;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/unity3d/services/store/gpbl/proxies/ProductDetailsResponseListenerProxy;

    new-instance v0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter$queryProductDetailsAsync$productDetailsResponseListenerProxy$1;

    invoke-direct {v0, p3}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter$queryProductDetailsAsync$productDetailsResponseListenerProxy$1;-><init>(Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;)V

    check-cast v0, Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsResponseListener;

    invoke-direct {p2, v0}, Lcom/unity3d/services/store/gpbl/proxies/ProductDetailsResponseListenerProxy;-><init>(Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsResponseListener;)V

    .line 78
    iget-object p3, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;->billingClient:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBridge;

    if-nez p3, :cond_0

    const-string p3, "billingClient"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p3, p1, p2}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBridge;->queryProductDetailsAsync(Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/QueryProductDetailsParamsBridge;Lcom/unity3d/services/store/gpbl/proxies/ProductDetailsResponseListenerProxy;)V

    return-void
.end method

.method public queryPurchasesAsync(Ljava/lang/String;Lcom/unity3d/services/store/gpbl/listeners/PurchasesResponseListener;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;->billingClient:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBridge;

    if-nez v0, :cond_0

    const-string v0, "billingClient"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/unity3d/services/store/gpbl/proxies/PurchasesResponseListenerProxy;

    invoke-direct {v1, p2}, Lcom/unity3d/services/store/gpbl/proxies/PurchasesResponseListenerProxy;-><init>(Lcom/unity3d/services/store/gpbl/listeners/PurchasesResponseListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBridge;->queryPurchasesAsync(Ljava/lang/String;Lcom/unity3d/services/store/gpbl/proxies/PurchasesResponseListenerProxy;)V

    return-void
.end method

.method public startConnection(Lcom/unity3d/services/store/gpbl/listeners/BillingClientStateListener;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;->billingClient:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBridge;

    if-nez v0, :cond_0

    const-string v0, "billingClient"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/unity3d/services/store/gpbl/proxies/BillingClientStateListenerProxy;

    invoke-direct {v1, p1}, Lcom/unity3d/services/store/gpbl/proxies/BillingClientStateListenerProxy;-><init>(Lcom/unity3d/services/store/gpbl/listeners/BillingClientStateListener;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientBridge;->startConnection(Lcom/unity3d/services/store/gpbl/proxies/BillingClientStateListenerProxy;)V

    return-void
.end method
