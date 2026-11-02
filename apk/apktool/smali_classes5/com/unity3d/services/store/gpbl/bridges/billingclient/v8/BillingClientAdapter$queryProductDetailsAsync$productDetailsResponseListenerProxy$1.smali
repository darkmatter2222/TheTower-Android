.class public final Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter$queryProductDetailsAsync$productDetailsResponseListenerProxy$1;
.super Ljava/lang/Object;
.source "BillingClientAdapter.kt"

# interfaces
.implements Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter;->queryProductDetailsAsync(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter$queryProductDetailsAsync$productDetailsResponseListenerProxy$1",
        "Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsResponseListener;",
        "onProductDetailsResponse",
        "",
        "billingResult",
        "Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;",
        "queryProductDetailsResults",
        "Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/QueryProductDetailsResultsBridge;",
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
.field final synthetic $listener:Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;


# direct methods
.method constructor <init>(Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter$queryProductDetailsAsync$productDetailsResponseListenerProxy$1;->$listener:Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductDetailsResponse(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/QueryProductDetailsResultsBridge;)V
    .locals 2

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryProductDetailsResults"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/QueryProductDetailsResultsBridge;->getProductDetailsList()Ljava/util/List;

    move-result-object p2

    .line 67
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    iget-object p2, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter$queryProductDetailsAsync$productDetailsResponseListenerProxy$1;->$listener:Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;

    invoke-interface {p2, p1, v1}, Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;->onProductDetailsResponse(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 73
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductDetailsBridge;

    invoke-virtual {p2}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductDetailsBridge;->getOriginalJson()Lorg/json/JSONObject;

    move-result-object p2

    .line 74
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/BillingClientAdapter$queryProductDetailsAsync$productDetailsResponseListenerProxy$1;->$listener:Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-interface {v0, p1, v1}, Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;->onProductDetailsResponse(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/lang/String;)V

    return-void
.end method
