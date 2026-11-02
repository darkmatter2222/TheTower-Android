.class public abstract Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;
.super Ljava/lang/Object;
.source "BillingClientAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH&J\u0012\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H&J\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H&J\u0008\u0010\u0016\u001a\u00020\u0006H&J\u001c\u0010\u0017\u001a\u00020\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H&J \u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001eH&J\u0008\u0010\u001f\u001a\u00020\u0015H&R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006 "
    }
    d2 = {
        "Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;",
        "",
        "<init>",
        "()V",
        "_isInitialized",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "get_isInitialized$unity_ads_defaultRelease",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "isInitialized",
        "()Z",
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
.field private final _isInitialized:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;->_isInitialized:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method


# virtual methods
.method public abstract getAdapterVersion()Ljava/lang/String;
.end method

.method public final get_isInitialized$unity_ads_defaultRelease()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;->_isInitialized:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public abstract initialize(Lcom/unity3d/services/store/gpbl/listeners/BillingInitializationListener;)V
.end method

.method public abstract isFeatureSupported(Ljava/lang/String;)Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;
.end method

.method public final isInitialized()Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/BillingClientAdapter;->_isInitialized:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public abstract isReady()Z
.end method

.method public abstract queryProductDetailsAsync(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;)V
.end method

.method public abstract queryPurchasesAsync(Ljava/lang/String;Lcom/unity3d/services/store/gpbl/listeners/PurchasesResponseListener;)V
.end method

.method public abstract startConnection(Lcom/unity3d/services/store/gpbl/listeners/BillingClientStateListener;)V
.end method
