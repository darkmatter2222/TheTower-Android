.class Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$10;
.super Ljava/lang/Object;
.source "AppsFlyerAndroidWrapper.java"

# interfaces
.implements Lcom/appsflyer/api/PurchaseClient$InAppPurchaseValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->setPurchaseRevenueValidationListeners(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResponse$0(Ljava/lang/String;Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;)V
    .locals 3

    .line 795
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 796
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 798
    const-string v2, "token"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    invoke-virtual {p1}, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;->getSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string v2, "success"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    invoke-virtual {p1}, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;->getSuccess()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 801
    invoke-virtual {p1}, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;->getProductPurchase()Lcom/appsflyer/internal/models/ProductPurchase;

    move-result-object p0

    .line 803
    const-string p1, "productId"

    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ProductPurchase;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ProductPurchase;->getPurchaseState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "purchaseState"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string p1, "kind"

    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ProductPurchase;->getKind()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string p1, "purchaseTimeMillis"

    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ProductPurchase;->getPurchaseTimeMillis()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ProductPurchase;->getConsumptionState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "consumptionState"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string p1, "developerPayload"

    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ProductPurchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const-string p1, "orderId"

    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ProductPurchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ProductPurchase;->getPurchaseType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "purchaseType"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ProductPurchase;->getAcknowledgementState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "acknowledgementState"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string p1, "purchaseToken"

    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ProductPurchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ProductPurchase;->getQuantity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "quantity"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string p1, "obfuscatedExternalAccountId"

    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ProductPurchase;->getObfuscatedExternalAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const-string p1, "obfuscatedExternalProfileId"

    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ProductPurchase;->getObfuscatedExternalProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string p1, "regionCode"

    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ProductPurchase;->getRegionCode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const-string p0, "productPurchase"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 821
    :cond_1
    invoke-virtual {p1}, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;->getFailureData()Lcom/appsflyer/internal/models/ValidationFailureData;

    move-result-object p0

    .line 822
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 823
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ValidationFailureData;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string v1, "description"

    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ValidationFailureData;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string p0, "failureData"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :goto_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 829
    invoke-static {}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "didReceivePurchaseRevenueValidationInfo"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 836
    invoke-static {}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->access$000()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 837
    invoke-static {}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "didReceivePurchaseRevenueError"

    invoke-static {p2, v0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 785
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$10;->onResponse(Ljava/util/Map;)V

    return-void
.end method

.method public onResponse(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;",
            ">;)V"
        }
    .end annotation

    .line 790
    invoke-static {}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 794
    :cond_0
    new-instance v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$10$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$10$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_1
    :goto_0
    return-void
.end method
