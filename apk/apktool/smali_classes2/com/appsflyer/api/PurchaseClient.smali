.class public interface abstract Lcom/appsflyer/api/PurchaseClient;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/api/PurchaseClient$Builder;,
        Lcom/appsflyer/api/PurchaseClient$Companion;,
        Lcom/appsflyer/api/PurchaseClient$InAppPurchaseEventDataSource;,
        Lcom/appsflyer/api/PurchaseClient$InAppPurchaseValidationResultListener;,
        Lcom/appsflyer/api/PurchaseClient$PurchaseEventDataSource;,
        Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseEventDataSource;,
        Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;,
        Lcom/appsflyer/api/PurchaseClient$ValidationResultListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008f\u0018\u0000 \u00062\u00020\u0001:\u0008\u0007\u0006\u0008\t\n\u000b\u000c\rJ\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0004"
    }
    d2 = {
        "Lcom/appsflyer/api/PurchaseClient;",
        "",
        "",
        "startObservingTransactions",
        "()V",
        "stopObservingTransactions",
        "Companion",
        "Builder",
        "InAppPurchaseEventDataSource",
        "InAppPurchaseValidationResultListener",
        "PurchaseEventDataSource",
        "SubscriptionPurchaseEventDataSource",
        "SubscriptionPurchaseValidationResultListener",
        "ValidationResultListener"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/appsflyer/api/PurchaseClient$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65353
    sget-object v0, Lcom/appsflyer/api/PurchaseClient$Companion;->$$INSTANCE:Lcom/appsflyer/api/PurchaseClient$Companion;

    sput-object v0, Lcom/appsflyer/api/PurchaseClient;->Companion:Lcom/appsflyer/api/PurchaseClient$Companion;

    return-void
.end method

.method public static getVERSION_NAME()Ljava/lang/String;
    .locals 1

    .line 65354
    sget-object v0, Lcom/appsflyer/api/PurchaseClient;->Companion:Lcom/appsflyer/api/PurchaseClient$Companion;

    invoke-virtual {v0}, Lcom/appsflyer/api/PurchaseClient$Companion;->getVERSION_NAME()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract startObservingTransactions()V
.end method

.method public abstract stopObservingTransactions()V
.end method
