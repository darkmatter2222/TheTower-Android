.class final Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PoolPreloadOnLoadStrategy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;->onLoadSuccess(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nPoolPreloadOnLoadStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PoolPreloadOnLoadStrategy.kt\ncom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"
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
    c = "com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$onLoadSuccess$2"
    f = "PoolPreloadOnLoadStrategy.kt"
    i = {}
    l = {
        0x23,
        0x27,
        0x28
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

.field final synthetic $freshEntry:Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

.field final synthetic $loadWebView:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/unity3d/ads/adplayer/WebViewContainer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/jvm/functions/Function2;Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/unity3d/ads/adplayer/WebViewContainer;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->this$0:Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->$freshEntry:Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->$loadWebView:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->$container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

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

    new-instance v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->this$0:Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->$freshEntry:Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->$loadWebView:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->$container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;-><init>(Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/jvm/functions/Function2;Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 34
    iget v1, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 35
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->$loadWebView:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->$container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iput v4, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->label:I

    invoke-interface {p1, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_0
    check-cast p1, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 39
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    :cond_5
    check-cast p1, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->getAdPlayer()Lcom/unity3d/ads/adplayer/AdPlayer;

    move-result-object p1

    if-eqz p1, :cond_6

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->label:I

    invoke-interface {p1, v1}, Lcom/unity3d/ads/adplayer/AdPlayer;->destroy(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_3

    .line 40
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->this$0:Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;

    invoke-virtual {p1}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;->getPool()Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;

    move-result-object p1

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->$freshEntry:Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;->label:I

    invoke-interface {p1, v1, v3}, Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;->enqueueRecycled(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_3
    return-object v0

    .line 41
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
