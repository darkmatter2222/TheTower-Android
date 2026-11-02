.class public final synthetic Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$10$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;

    invoke-static {p1, p2}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$10;->lambda$onResponse$0(Ljava/lang/String;Lcom/appsflyer/internal/models/InAppPurchaseValidationResult;)V

    return-void
.end method
