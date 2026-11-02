.class final Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidDeliverModuleConfigs.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->invoke(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V
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
    value = "SMAP\nAndroidDeliverModuleConfigs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidDeliverModuleConfigs.kt\ncom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,190:1\n116#2,11:191\n*S KotlinDebug\n*F\n+ 1 AndroidDeliverModuleConfigs.kt\ncom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1\n*L\n60#1:191,11\n*E\n"
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
    c = "com.unity3d.ads.core.domain.AndroidDeliverModuleConfigs$invoke$1$1"
    f = "AndroidDeliverModuleConfigs.kt"
    i = {
        0x0
    }
    l = {
        0xc4
    }
    m = "invokeSuspend"
    n = {
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $extraData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $initResponse:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

.field final synthetic $listener:Lcom/unity3d/ads/UnityAdsInitModuleListener;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;Lcom/unity3d/ads/UnityAdsInitModuleListener;Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;",
            "Lcom/unity3d/ads/UnityAdsInitModuleListener;",
            "Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->$listener:Lcom/unity3d/ads/UnityAdsInitModuleListener;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->$initResponse:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->$extraData:Ljava/util/Map;

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

    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->$listener:Lcom/unity3d/ads/UnityAdsInitModuleListener;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->$initResponse:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->$extraData:Ljava/util/Map;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;Lcom/unity3d/ads/UnityAdsInitModuleListener;Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/unity3d/ads/UnityAdsInitModuleListener;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->$listener:Lcom/unity3d/ads/UnityAdsInitModuleListener;

    invoke-static {p1, v1}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->access$lockFor(Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;Lcom/unity3d/ads/UnityAdsInitModuleListener;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v5

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->$listener:Lcom/unity3d/ads/UnityAdsInitModuleListener;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->$initResponse:Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->$extraData:Ljava/util/Map;

    .line 196
    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->L$3:Ljava/lang/Object;

    iput-object v6, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->L$4:Ljava/lang/Object;

    iput v3, p0, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs$invoke$1$1;->label:I

    invoke-interface {v5, v2, v7}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v3, p1

    move-object v0, v6

    .line 60
    :goto_0
    :try_start_0
    invoke-static {v4, v3, v1, v0}, Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;->access$deliver(Lcom/unity3d/ads/core/domain/AndroidDeliverModuleConfigs;Lcom/unity3d/ads/UnityAdsInitModuleListener;Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;Ljava/util/Map;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-interface {v5, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 61
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 200
    invoke-interface {v5, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
