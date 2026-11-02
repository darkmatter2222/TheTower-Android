.class public final synthetic Lcom/appsflyer/unity/PurchaseRevenueBridge$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/appsflyer/api/PurchaseClient$InAppPurchaseEventDataSource;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNewPurchases(Ljava/util/List;)Ljava/util/Map;
    .locals 0

    .line 0
    invoke-static {p1}, Lcom/appsflyer/unity/PurchaseRevenueBridge;->lambda$configurePurchaseClient$0(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
