.class public final Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;
.super Ljava/lang/Object;
.source "MaxAdRevenueObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\t\u0010\u0011\u001a\u00020\u0012H\u0086\u0002J\u0006\u0010\u0013\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;",
        "",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "logger",
        "Lcom/unity3d/ads/core/log/Logger;",
        "communicatorBridge",
        "Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;",
        "revenueListener",
        "Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;",
        "communicatorProxyFactory",
        "Lcom/unity3d/ads/core/domain/events/MaxAdRevenueCommunicatorProxyFactory;",
        "<init>",
        "(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Lcom/unity3d/ads/core/domain/events/MaxAdRevenueCommunicatorProxyFactory;)V",
        "communicatorSubscriber",
        "isStarted",
        "",
        "invoke",
        "",
        "stop",
        "Companion",
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


# static fields
.field private static final COMMUNICATOR_ID:Ljava/lang/String; = "ilrd_observer"

.field public static final Companion:Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$Companion;

.field private static final MAX_REVENUE_EVENTS_TOPIC:Ljava/lang/String; = "max_revenue_events"


# instance fields
.field private final communicatorBridge:Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;

.field private final communicatorProxyFactory:Lcom/unity3d/ads/core/domain/events/MaxAdRevenueCommunicatorProxyFactory;

.field private communicatorSubscriber:Ljava/lang/Object;

.field private isStarted:Z

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final revenueListener:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->Companion:Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Lcom/unity3d/ads/core/domain/events/MaxAdRevenueCommunicatorProxyFactory;)V
    .locals 1

    const-string v0, "sessionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "communicatorBridge"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "revenueListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "communicatorProxyFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 15
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 16
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorBridge:Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;

    .line 17
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->revenueListener:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    .line 18
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorProxyFactory:Lcom/unity3d/ads/core/domain/events/MaxAdRevenueCommunicatorProxyFactory;

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 7

    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getCollectIlrData()Z

    move-result v0

    .line 31
    iget-boolean v1, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->isStarted:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "ILRD collection feature flag changed to disabled, stopping"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->stop()V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "ILRD observer already started"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "ILRD collection feature flag is disabled"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 47
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorProxyFactory:Lcom/unity3d/ads/core/domain/events/MaxAdRevenueCommunicatorProxyFactory;

    .line 48
    const-string v1, "ilrd_observer"

    .line 49
    const-string v4, "max_revenue_events"

    .line 50
    iget-object v5, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->revenueListener:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    new-instance v6, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$invoke$1$proxy$1;

    invoke-direct {v6, v5}, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$invoke$1$proxy$1;-><init>(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;)V

    check-cast v6, Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$CommunicatorMessageListener;

    .line 47
    invoke-virtual {v0, v1, v4, v6}, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueCommunicatorProxyFactory;->create(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$CommunicatorMessageListener;)Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorBridge:Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;

    const-string v4, "max_revenue_events"

    invoke-virtual {v1, v0, v4}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->subscribe(Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 55
    iput-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorSubscriber:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->isStarted:Z

    .line 57
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Successfully started ad revenue automatic collection"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_1

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Mediation SDK not available, automatic collection not started"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 66
    :try_start_3
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "Failed to start ad revenue collection"

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v2, v0}, Lcom/unity3d/ads/core/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 64
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "Communicator method not found, SDK version may be incompatible"

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v2, v0}, Lcom/unity3d/ads/core/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 62
    :catch_2
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Mediation SDK not found, skipping automatic collection"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 68
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final stop()V
    .locals 4

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-boolean v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorSubscriber:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 76
    :try_start_2
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorBridge:Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;

    const-string v3, "max_revenue_events"

    invoke-virtual {v2, v0, v3}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "Unsubscribed from revenue events"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    :try_start_3
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v3, "Failed to unsubscribe from revenue events"

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v3, v0}, Lcom/unity3d/ads/core/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :goto_0
    iput-object v1, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorSubscriber:Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->isStarted:Z

    .line 85
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
