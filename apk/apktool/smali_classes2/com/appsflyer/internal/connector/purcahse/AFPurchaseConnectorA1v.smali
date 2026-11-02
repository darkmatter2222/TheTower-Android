.class public final Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private InAppPurchaseEvent:Z

.field private final getOneTimePurchaseOfferDetails:Ljava/util/concurrent/ScheduledExecutorService;

.field private final getPackageName:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1y;

.field private getQuantity:J

.field private toJsonMap:Z


# direct methods
.method public static synthetic $r8$lambda$1Ya9T1ZE1MqODH_ukkmI5Z5NUOQ(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;->getQuantity(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;)V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1y;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;->getPackageName:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1y;

    iput-object p2, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;->getOneTimePurchaseOfferDetails:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 p1, 0x1f4

    .line 16
    iput-wide p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;->getQuantity:J

    return-void
.end method

.method private static final getQuantity(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;->InAppPurchaseEvent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;->toJsonMap:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;->InAppPurchaseEvent:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, ""

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;->toJsonMap:Z

    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;->getOneTimePurchaseOfferDetails:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;)V

    .line 41
    iget-wide v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;->getQuantity:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 43
    const-string v0, "Background task failed with a throwable: "

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-boolean p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;->InAppPurchaseEvent:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 25
    :try_start_0
    iget-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;->getPackageName:Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1y;

    invoke-interface {p1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1y;->toJsonMap()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    const-string v1, "Listener thrown an exception: "

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;->toJsonMap:Z

    .line 31
    iput-boolean v0, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1v;->InAppPurchaseEvent:Z

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
