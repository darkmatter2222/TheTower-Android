.class public final Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter$queryProductDetailsAsync$1;
.super Ljava/lang/Object;
.source "BillingClientAdapter.kt"

# interfaces
.implements Lcom/unity3d/services/store/gpbl/listeners/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter;->queryProductDetailsAsync(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter$queryProductDetailsAsync$1",
        "Lcom/unity3d/services/store/gpbl/listeners/SkuDetailsResponseListener;",
        "onSkuDetailsUpdated",
        "",
        "billingResult",
        "Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;",
        "skuDetailsList",
        "",
        "Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsBridge;",
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

    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter$queryProductDetailsAsync$1;->$listener:Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsUpdated(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;)V
    .locals 3
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

    .line 69
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter$queryProductDetailsAsync$1;->$listener:Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;

    const/4 v2, 0x0

    .line 76
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsBridge;

    invoke-virtual {p2}, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsBridge;->getOriginalJson()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    :cond_1
    invoke-interface {v0, p1, v1}, Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;->onProductDetailsResponse(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v6/BillingClientAdapter$queryProductDetailsAsync$1;->$listener:Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;

    invoke-interface {p2, p1, v1}, Lcom/unity3d/services/store/gpbl/listeners/ProductDetailsListener;->onProductDetailsResponse(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/lang/String;)V

    return-void
.end method
