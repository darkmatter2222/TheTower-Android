.class final Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic toJsonMap:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$5;->toJsonMap:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    const-string p1, "[PurchaseConnector]: Failed to query purchases history"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$5;->toJsonMap:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;

    iget-object p1, p1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getQuantity:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "inapp_purchases_history_processed"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    const-string p1, "[PurchaseConnector]: No history for non-consumed one-time purchases found"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$5;->toJsonMap:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;

    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;->getPackageName(Ljava/util/List;)V

    return-void
.end method
