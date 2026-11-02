.class public final Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;
.super Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;
.source "BillingClientAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u001c\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J \u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u0014H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;",
        "Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;",
        "billingClientBuilderBridge",
        "Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBuilderBridge;",
        "detectedVersion",
        "",
        "<init>",
        "(Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBuilderBridge;I)V",
        "billingClient",
        "Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBridge;",
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
.field private billingClient:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBridge;

.field private final billingClientBuilderBridge:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBuilderBridge;

.field private final detectedVersion:I


# direct methods
.method public constructor <init>(Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBuilderBridge;I)V
    .locals 1

    const-string v0, "billingClientBuilderBridge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->billingClientBuilderBridge:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBuilderBridge;

    .line 20
    iput p2, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->detectedVersion:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBuilderBridge;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x6

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;-><init>(Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBuilderBridge;I)V

    return-void
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 84
    iget v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->detectedVersion:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/unity3d/services/store/gpbl/listeners/BillingInitializationListener;)V
    .locals 3

    const-string v0, "billingInitializationListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {p1}, Lcom/unity3d/services/store/gpbl/listeners/BillingInitializationListener;->onIsAlreadyInitialized()V

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->billingClientBuilderBridge:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBuilderBridge;

    new-instance v1, Lcom/unity3d/services/store/gpbl/proxies/PurchaseUpdatedListenerProxy;

    move-object v2, p1

    check-cast v2, Lcom/unity3d/services/store/gpbl/listeners/PurchaseUpdatedResponseListener;

    invoke-direct {v1, v2}, Lcom/unity3d/services/store/gpbl/proxies/PurchaseUpdatedListenerProxy;-><init>(Lcom/unity3d/services/store/gpbl/listeners/PurchaseUpdatedResponseListener;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBuilderBridge;->setListener(Lcom/unity3d/services/store/gpbl/proxies/PurchaseUpdatedListenerProxy;)Lcom/unity3d/services/store/gpbl/bridges/billingclient/IBillingClientBuilderBridge;

    .line 31
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->billingClientBuilderBridge:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBuilderBridge;

    invoke-virtual {v0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBuilderBridge;->enablePendingPurchases()Lcom/unity3d/services/store/gpbl/bridges/billingclient/IBillingClientBuilderBridge;

    .line 32
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->billingClientBuilderBridge:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBuilderBridge;

    invoke-virtual {v0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBuilderBridge;->build()Lcom/unity3d/services/store/gpbl/bridges/billingclient/common/BillingClientBridgeCommon;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.unity3d.services.store.gpbl.bridges.billingclient.v6.BillingClientBridge"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBridge;

    iput-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->billingClient:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBridge;

    .line 33
    check-cast p1, Lcom/unity3d/services/store/gpbl/listeners/BillingClientStateListener;

    invoke-virtual {p0, p1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->startConnection(Lcom/unity3d/services/store/gpbl/listeners/BillingClientStateListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->get_isInitialized$unity_ads_defaultRelease()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public isFeatureSupported(Ljava/lang/String;)Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->billingClient:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBridge;

    if-nez v0, :cond_0

    const-string v0, "billingClient"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBridge;->isFeatureSupported(Ljava/lang/String;)Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    move-result-object p1

    return-object p1
.end method

.method public isReady()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->billingClient:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBridge;

    if-nez v0, :cond_0

    const-string v0, "billingClient"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBridge;->isReady()Z

    move-result v0

    return v0
.end method

.method public queryProductDetailsAsync(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;)V
    .locals 2

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge;->newBuilder()Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge$BuilderBridge;

    move-result-object v0

    .line 63
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge$BuilderBridge;->setSkuList(Ljava/util/List;)Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge$BuilderBridge;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge$BuilderBridge;->setType(Ljava/lang/String;)Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge$BuilderBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge$BuilderBridge;->build()Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge;

    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->billingClient:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBridge;

    if-nez p2, :cond_0

    const-string p2, "billingClient"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    new-instance v0, Lcom/unity3d/services/store/gpbl/proxies/SkuDetailsResponseListenerProxy;

    new-instance v1, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter$queryProductDetailsAsync$1;

    invoke-direct {v1, p3}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter$queryProductDetailsAsync$1;-><init>(Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;)V

    check-cast v1, Lcom/unity3d/services/store/gpbl/listeners/SkuDetailsResponseListener;

    invoke-direct {v0, v1}, Lcom/unity3d/services/store/gpbl/proxies/SkuDetailsResponseListenerProxy;-><init>(Lcom/unity3d/services/store/gpbl/listeners/SkuDetailsResponseListener;)V

    invoke-virtual {p2, p1, v0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBridge;->querySkuDetailsAsync(Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsParamsBridge;Lcom/unity3d/services/store/gpbl/proxies/SkuDetailsResponseListenerProxy;)V

    return-void
.end method

.method public queryPurchasesAsync(Ljava/lang/String;Lcom/unity3d/services/store/gpbl/listeners/PurchasesResponseListener;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->billingClient:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBridge;

    if-nez v0, :cond_0

    const-string v0, "billingClient"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/unity3d/services/store/gpbl/proxies/PurchasesResponseListenerProxy;

    invoke-direct {v1, p2}, Lcom/unity3d/services/store/gpbl/proxies/PurchasesResponseListenerProxy;-><init>(Lcom/unity3d/services/store/gpbl/listeners/PurchasesResponseListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBridge;->queryPurchasesAsync(Ljava/lang/String;Lcom/unity3d/services/store/gpbl/proxies/PurchasesResponseListenerProxy;)V

    return-void
.end method

.method public startConnection(Lcom/unity3d/services/store/gpbl/listeners/BillingClientStateListener;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->billingClient:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBridge;

    if-nez v0, :cond_0

    const-string v0, "billingClient"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/unity3d/services/store/gpbl/proxies/BillingClientStateListenerProxy;

    invoke-direct {v1, p1}, Lcom/unity3d/services/store/gpbl/proxies/BillingClientStateListenerProxy;-><init>(Lcom/unity3d/services/store/gpbl/listeners/BillingClientStateListener;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientBridge;->startConnection(Lcom/unity3d/services/store/gpbl/proxies/BillingClientStateListenerProxy;)V

    return-void
.end method
