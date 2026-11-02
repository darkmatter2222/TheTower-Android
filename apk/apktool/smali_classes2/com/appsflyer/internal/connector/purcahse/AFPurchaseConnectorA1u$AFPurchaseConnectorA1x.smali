.class public final Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$AFPurchaseConnectorA1x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AFPurchaseConnectorA1x"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1w<",
        "Lcom/android/billingclient/api/BillingClient;",
        ">;"
    }
.end annotation


# instance fields
.field final getOneTimePurchaseOfferDetails:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field final synthetic toJsonMap:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$AFPurchaseConnectorA1x;->toJsonMap:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1u$AFPurchaseConnectorA1x;->getOneTimePurchaseOfferDetails:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-void
.end method
