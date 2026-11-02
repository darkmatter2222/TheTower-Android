.class final Lcom/unity3d/ads/RewardedOffersAd$show$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardedOffersAd.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/RewardedOffersAd;->show(Landroid/content/Context;Lcom/unity3d/ads/ShowConfiguration;Lcom/unity3d/ads/RewardedOffersShowListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRewardedOffersAd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardedOffersAd.kt\ncom/unity3d/ads/RewardedOffersAd$show$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n1#2:236\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.RewardedOffersAd$show$1"
    f = "RewardedOffersAd.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $configuration:Lcom/unity3d/ads/ShowConfiguration;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $listener:Lcom/unity3d/ads/RewardedOffersShowListener;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/RewardedOffersAd;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/ShowConfiguration;Lcom/unity3d/ads/RewardedOffersAd;Landroid/content/Context;Lcom/unity3d/ads/RewardedOffersShowListener;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/ShowConfiguration;",
            "Lcom/unity3d/ads/RewardedOffersAd;",
            "Landroid/content/Context;",
            "Lcom/unity3d/ads/RewardedOffersShowListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/RewardedOffersAd$show$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->$configuration:Lcom/unity3d/ads/ShowConfiguration;

    iput-object p2, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    iput-object p3, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->$listener:Lcom/unity3d/ads/RewardedOffersShowListener;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/unity3d/ads/RewardedOffersAd$show$1;

    iget-object v1, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->$configuration:Lcom/unity3d/ads/ShowConfiguration;

    iget-object v2, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    iget-object v3, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->$listener:Lcom/unity3d/ads/RewardedOffersShowListener;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/RewardedOffersAd$show$1;-><init>(Lcom/unity3d/ads/ShowConfiguration;Lcom/unity3d/ads/RewardedOffersAd;Landroid/content/Context;Lcom/unity3d/ads/RewardedOffersShowListener;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/RewardedOffersAd$show$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/RewardedOffersAd$show$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/RewardedOffersAd$show$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/RewardedOffersAd$show$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 94
    iget v0, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    new-instance p1, Lcom/unity3d/ads/core/data/model/ShowConfigurationInternal;

    .line 96
    iget-object v0, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->$configuration:Lcom/unity3d/ads/ShowConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/ShowConfiguration;->getCustomRewardString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->$configuration:Lcom/unity3d/ads/ShowConfiguration;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/unity3d/ads/ShowConfiguration;->getExtras()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 95
    :cond_2
    invoke-direct {p1, v0, v2}, Lcom/unity3d/ads/core/data/model/ShowConfigurationInternal;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 100
    new-instance v0, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {v0}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    .line 101
    iget-object v2, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    invoke-static {v2}, Lcom/unity3d/ads/RewardedOffersAd;->access$getAdObject$p(Lcom/unity3d/ads/RewardedOffersAd;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toUUID(Lcom/google/protobuf/ByteString;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/UnityAdsShowOptions;->setObjectId(Ljava/lang/String;)V

    .line 102
    iput-object p1, v0, Lcom/unity3d/ads/UnityAdsShowOptions;->showConfiguration:Lcom/unity3d/ads/core/data/model/ShowConfigurationInternal;

    .line 104
    iget-object p1, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    invoke-static {p1}, Lcom/unity3d/ads/RewardedOffersAd;->access$getAdObject$p(Lcom/unity3d/ads/RewardedOffersAd;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object p1

    iget-object v2, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->$configuration:Lcom/unity3d/ads/ShowConfiguration;

    invoke-virtual {p1, v2}, Lcom/unity3d/ads/core/data/model/AdObject;->setShowConfiguration(Lcom/unity3d/ads/ShowConfiguration;)V

    .line 107
    iget-object p1, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    invoke-static {p1}, Lcom/unity3d/ads/RewardedOffersAd;->access$getAdObject$p(Lcom/unity3d/ads/RewardedOffersAd;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object p1

    iget-object v2, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->$configuration:Lcom/unity3d/ads/ShowConfiguration;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/unity3d/ads/ShowConfiguration;->getCustomRewardString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Lcom/unity3d/ads/core/data/model/AdObject;->setPlayerServerId(Ljava/lang/String;)V

    .line 109
    sget-object p1, Lcom/unity3d/services/core/di/ServiceProvider;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

    invoke-virtual {p1}, Lcom/unity3d/services/core/di/ServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object p1

    .line 110
    new-instance v2, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v3, Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, v1}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v2}, Lcom/unity3d/services/core/di/IServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;

    .line 111
    sget-object v2, Lcom/unity3d/services/core/di/ServiceProvider;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

    invoke-virtual {v2}, Lcom/unity3d/services/core/di/ServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object v2

    .line 112
    new-instance v3, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v5, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-direct {v3, v1, v5, v4, v1}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Lcom/unity3d/services/core/di/IServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 113
    sget-object v3, Lcom/unity3d/services/core/di/ServiceProvider;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

    invoke-virtual {v3}, Lcom/unity3d/services/core/di/ServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object v3

    .line 114
    new-instance v5, Lcom/unity3d/services/core/di/ServiceKey;

    const-class v6, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-direct {v5, v1, v6, v4, v1}, Lcom/unity3d/services/core/di/ServiceKey;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v5}, Lcom/unity3d/services/core/di/IServicesRegistry;->resolveService(Lcom/unity3d/services/core/di/ServiceKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 115
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 117
    iget-object v5, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->$configuration:Lcom/unity3d/ads/ShowConfiguration;

    invoke-static {v5, p1, v6}, Lcom/unity3d/ads/ShowActivityResolverKt;->commitExtras(Landroid/content/Context;Landroid/app/Activity;Lcom/unity3d/ads/ShowConfiguration;)V

    .line 119
    iget-object v5, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    invoke-static {v6}, Lcom/unity3d/ads/RewardedOffersAd;->access$getAdObject$p(Lcom/unity3d/ads/RewardedOffersAd;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v6

    invoke-static {v5, p1, v6, v2, v3}, Lcom/unity3d/ads/ShowActivityResolverKt;->resolveEffectiveActivity(Landroid/content/Context;Landroid/app/Activity;Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Landroid/app/Activity;

    move-result-object p1

    .line 120
    iget-object v2, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    invoke-static {v2}, Lcom/unity3d/ads/RewardedOffersAd;->access$getAdObject$p(Lcom/unity3d/ads/RewardedOffersAd;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v2

    if-eqz p1, :cond_4

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    invoke-virtual {v2, v3}, Lcom/unity3d/ads/core/data/model/AdObject;->setActivity(Ljava/lang/ref/WeakReference;)V

    .line 122
    new-instance p1, Lcom/unity3d/services/UnityAdsSDK;

    invoke-direct {p1, v1, v4, v1}, Lcom/unity3d/services/UnityAdsSDK;-><init>(Lcom/unity3d/services/core/di/IServiceProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    invoke-static {v1}, Lcom/unity3d/ads/RewardedOffersAd;->access$getAdObject$p(Lcom/unity3d/ads/RewardedOffersAd;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/AdObject;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unity3d/ads/RewardedOffersAd$show$1$2;

    iget-object v3, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->$listener:Lcom/unity3d/ads/RewardedOffersShowListener;

    iget-object v4, p0, Lcom/unity3d/ads/RewardedOffersAd$show$1;->this$0:Lcom/unity3d/ads/RewardedOffersAd;

    invoke-direct {v2, v3, v4}, Lcom/unity3d/ads/RewardedOffersAd$show$1$2;-><init>(Lcom/unity3d/ads/RewardedOffersShowListener;Lcom/unity3d/ads/RewardedOffersAd;)V

    check-cast v2, Lcom/unity3d/ads/core/data/model/Listeners;

    invoke-virtual {p1, v1, v0, v2}, Lcom/unity3d/services/UnityAdsSDK;->show(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/core/data/model/Listeners;)Lkotlinx/coroutines/Job;

    .line 174
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 94
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
