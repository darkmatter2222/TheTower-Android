.class public final Lcom/unity3d/services/store/WebViewStoreEventListener;
.super Ljava/lang/Object;
.source "WebViewStoreEventListener.kt"

# interfaces
.implements Lcom/unity3d/services/store/gpbl/listeners/StoreEventListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebViewStoreEventListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewStoreEventListener.kt\ncom/unity3d/services/store/WebViewStoreEventListener\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,110:1\n37#2:111\n36#2,3:112\n37#2:115\n36#2,3:116\n*S KotlinDebug\n*F\n+ 1 WebViewStoreEventListener.kt\ncom/unity3d/services/store/WebViewStoreEventListener\n*L\n85#1:111\n85#1:112,3\n88#1:115\n88#1:116,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0003H\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\rH\u0016J \u0010\u0014\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0016J \u0010\u0018\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0016H\u0016J \u0010\u001b\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u0016H\u0016J \u0010\u001e\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u0016H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/unity3d/services/store/WebViewStoreEventListener;",
        "Lcom/unity3d/services/store/gpbl/listeners/StoreEventListener;",
        "operationId",
        "",
        "storeWebViewEventSender",
        "Lcom/unity3d/services/store/StoreWebViewEventSender;",
        "isLifecycleListener",
        "",
        "<init>",
        "(ILcom/unity3d/services/store/StoreWebViewEventSender;Z)V",
        "getOperationId",
        "()I",
        "onIsAlreadyInitialized",
        "",
        "onFeatureSupported",
        "featureSupported",
        "onBillingSetupFinished",
        "billingResult",
        "Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;",
        "onBillingServiceDisconnected",
        "onPurchaseHistoryUpdated",
        "purchaseHistoryRecordList",
        "",
        "Lcom/unity3d/services/store/gpbl/bridges/PurchaseHistoryRecordBridge;",
        "onSkuDetailsUpdated",
        "skuDetailsList",
        "Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsBridge;",
        "onPurchaseResponse",
        "purchases",
        "Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;",
        "onPurchaseUpdated",
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
.field private final isLifecycleListener:Z

.field private final operationId:I

.field private final storeWebViewEventSender:Lcom/unity3d/services/store/StoreWebViewEventSender;


# direct methods
.method public constructor <init>(ILcom/unity3d/services/store/StoreWebViewEventSender;Z)V
    .locals 1

    const-string v0, "storeWebViewEventSender"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->operationId:I

    .line 14
    iput-object p2, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->storeWebViewEventSender:Lcom/unity3d/services/store/StoreWebViewEventSender;

    .line 15
    iput-boolean p3, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->isLifecycleListener:Z

    return-void
.end method

.method public synthetic constructor <init>(ILcom/unity3d/services/store/StoreWebViewEventSender;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/store/WebViewStoreEventListener;-><init>(ILcom/unity3d/services/store/StoreWebViewEventSender;Z)V

    return-void
.end method


# virtual methods
.method public getOperationId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->operationId:I

    return v0
.end method

.method public onBillingServiceDisconnected()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->storeWebViewEventSender:Lcom/unity3d/services/store/StoreWebViewEventSender;

    sget-object v1, Lcom/unity3d/services/store/StoreEvent;->DISCONNECTED_RESULT:Lcom/unity3d/services/store/StoreEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/services/store/StoreWebViewEventSender;->send(Lcom/unity3d/services/store/StoreEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;)V
    .locals 2

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;->getResponseCode()Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;->OK:Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    if-ne v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->storeWebViewEventSender:Lcom/unity3d/services/store/StoreWebViewEventSender;

    .line 35
    sget-object v1, Lcom/unity3d/services/store/StoreEvent;->INITIALIZATION_REQUEST_RESULT:Lcom/unity3d/services/store/StoreEvent;

    .line 36
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;->getResponseCode()Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 34
    invoke-virtual {v0, v1, p1}, Lcom/unity3d/services/store/StoreWebViewEventSender;->send(Lcom/unity3d/services/store/StoreEvent;[Ljava/lang/Object;)V

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->storeWebViewEventSender:Lcom/unity3d/services/store/StoreWebViewEventSender;

    .line 40
    sget-object v1, Lcom/unity3d/services/store/StoreEvent;->INITIALIZATION_REQUEST_FAILED:Lcom/unity3d/services/store/StoreEvent;

    .line 41
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;->getResponseCode()Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 39
    invoke-virtual {v0, v1, p1}, Lcom/unity3d/services/store/StoreWebViewEventSender;->send(Lcom/unity3d/services/store/StoreEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onFeatureSupported(I)V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->storeWebViewEventSender:Lcom/unity3d/services/store/StoreWebViewEventSender;

    .line 26
    sget-object v1, Lcom/unity3d/services/store/StoreEvent;->IS_FEATURE_SUPPORTED_REQUEST_RESULT:Lcom/unity3d/services/store/StoreEvent;

    .line 27
    invoke-virtual {p0}, Lcom/unity3d/services/store/WebViewStoreEventListener;->getOperationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/unity3d/services/store/StoreWebViewEventSender;->send(Lcom/unity3d/services/store/StoreEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onIsAlreadyInitialized()V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->storeWebViewEventSender:Lcom/unity3d/services/store/StoreWebViewEventSender;

    .line 19
    sget-object v1, Lcom/unity3d/services/store/StoreEvent;->INITIALIZATION_REQUEST_RESULT:Lcom/unity3d/services/store/StoreEvent;

    .line 20
    sget-object v2, Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;->OK:Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    invoke-virtual {v2}, Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;->getResponseCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/unity3d/services/store/StoreWebViewEventSender;->send(Lcom/unity3d/services/store/StoreEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPurchaseHistoryUpdated(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;",
            "Ljava/util/List<",
            "+",
            "Lcom/unity3d/services/store/gpbl/bridges/PurchaseHistoryRecordBridge;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->storeWebViewEventSender:Lcom/unity3d/services/store/StoreWebViewEventSender;

    .line 55
    sget-object v1, Lcom/unity3d/services/store/StoreEvent;->PURCHASE_HISTORY_LIST_REQUEST_RESULT:Lcom/unity3d/services/store/StoreEvent;

    .line 56
    invoke-virtual {p0}, Lcom/unity3d/services/store/WebViewStoreEventListener;->getOperationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 57
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;->getResponseCode()Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 58
    invoke-static {p2}, Lcom/unity3d/ads/core/extensions/JsonSerializableExtensionsKt;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    filled-new-array {v2, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 54
    invoke-virtual {v0, v1, p1}, Lcom/unity3d/services/store/StoreWebViewEventSender;->send(Lcom/unity3d/services/store/StoreEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPurchaseResponse(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;",
            "Ljava/util/List<",
            "+",
            "Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {p0}, Lcom/unity3d/services/store/WebViewStoreEventListener;->getOperationId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/unity3d/services/store/WebViewStoreEventListener;->getOperationId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;->getResponseCode()Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    move-result-object v1

    sget-object v2, Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;->OK:Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    if-eqz p2, :cond_1

    .line 83
    invoke-static {p2}, Lcom/unity3d/ads/core/extensions/JsonSerializableExtensionsKt;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 84
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->storeWebViewEventSender:Lcom/unity3d/services/store/StoreWebViewEventSender;

    iget-boolean p2, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->isLifecycleListener:Z

    if-eqz p2, :cond_3

    sget-object p2, Lcom/unity3d/services/store/StoreEvent;->PURCHASES_ON_RESUME_RESULT:Lcom/unity3d/services/store/StoreEvent;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/unity3d/services/store/StoreEvent;->PURCHASES_REQUEST_RESULT:Lcom/unity3d/services/store/StoreEvent;

    :goto_0
    check-cast v0, Ljava/util/Collection;

    .line 114
    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 85
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/unity3d/services/store/StoreWebViewEventSender;->send(Lcom/unity3d/services/store/StoreEvent;[Ljava/lang/Object;)V

    return-void

    .line 87
    :cond_4
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;->getResponseCode()Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->storeWebViewEventSender:Lcom/unity3d/services/store/StoreWebViewEventSender;

    iget-boolean p2, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->isLifecycleListener:Z

    if-eqz p2, :cond_5

    sget-object p2, Lcom/unity3d/services/store/StoreEvent;->PURCHASES_ON_RESUME_ERROR:Lcom/unity3d/services/store/StoreEvent;

    goto :goto_1

    :cond_5
    sget-object p2, Lcom/unity3d/services/store/StoreEvent;->PURCHASES_REQUEST_ERROR:Lcom/unity3d/services/store/StoreEvent;

    :goto_1
    check-cast v0, Ljava/util/Collection;

    .line 118
    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 88
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/unity3d/services/store/StoreWebViewEventSender;->send(Lcom/unity3d/services/store/StoreEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPurchaseUpdated(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;",
            "Ljava/util/List<",
            "+",
            "Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;->getResponseCode()Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;->OK:Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    if-ne v0, v1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->storeWebViewEventSender:Lcom/unity3d/services/store/StoreWebViewEventSender;

    .line 98
    sget-object v0, Lcom/unity3d/services/store/StoreEvent;->PURCHASES_UPDATED_RESULT:Lcom/unity3d/services/store/StoreEvent;

    if-eqz p2, :cond_0

    .line 99
    invoke-static {p2}, Lcom/unity3d/ads/core/extensions/JsonSerializableExtensionsKt;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 97
    invoke-virtual {p1, v0, p2}, Lcom/unity3d/services/store/StoreWebViewEventSender;->send(Lcom/unity3d/services/store/StoreEvent;[Ljava/lang/Object;)V

    return-void

    .line 102
    :cond_2
    iget-object p2, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->storeWebViewEventSender:Lcom/unity3d/services/store/StoreWebViewEventSender;

    .line 103
    sget-object v0, Lcom/unity3d/services/store/StoreEvent;->PURCHASES_UPDATED_ERROR:Lcom/unity3d/services/store/StoreEvent;

    .line 104
    invoke-virtual {p1}, Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;->getResponseCode()Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 102
    invoke-virtual {p2, v0, p1}, Lcom/unity3d/services/store/StoreWebViewEventSender;->send(Lcom/unity3d/services/store/StoreEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSkuDetailsUpdated(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;",
            "Ljava/util/List<",
            "+",
            "Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsBridge;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/unity3d/services/store/WebViewStoreEventListener;->storeWebViewEventSender:Lcom/unity3d/services/store/StoreWebViewEventSender;

    .line 67
    sget-object v0, Lcom/unity3d/services/store/StoreEvent;->SKU_DETAILS_LIST_REQUEST_RESULT:Lcom/unity3d/services/store/StoreEvent;

    .line 68
    invoke-virtual {p0}, Lcom/unity3d/services/store/WebViewStoreEventListener;->getOperationId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 69
    invoke-static {p2}, Lcom/unity3d/ads/core/extensions/JsonSerializableExtensionsKt;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 66
    invoke-virtual {p1, v0, p2}, Lcom/unity3d/services/store/StoreWebViewEventSender;->send(Lcom/unity3d/services/store/StoreEvent;[Ljava/lang/Object;)V

    return-void
.end method
