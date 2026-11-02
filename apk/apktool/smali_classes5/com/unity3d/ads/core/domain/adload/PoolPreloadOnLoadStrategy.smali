.class public final Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;
.super Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;
.source "PoolPreloadOnLoadStrategy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJR\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\"\u0010\u0014\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0015H\u0096@\u00a2\u0006\u0002\u0010\u001aJ\u001e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\rH\u0096@\u00a2\u0006\u0002\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;",
        "Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;",
        "pool",
        "Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;",
        "poolSize",
        "",
        "containerFactory",
        "Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;",
        "<init>",
        "(Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;ILcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;)V",
        "onLoadSuccess",
        "",
        "adObject",
        "Lcom/unity3d/ads/core/data/model/AdObject;",
        "url",
        "",
        "response",
        "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
        "adScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "loadWebView",
        "Lkotlin/Function2;",
        "Lcom/unity3d/ads/adplayer/WebViewContainer;",
        "Lkotlin/coroutines/Continuation;",
        "Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;",
        "",
        "(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "acquireForShow",
        "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;",
        "adPlayerScope",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;ILcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;)V
    .locals 1

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;ILcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;)V

    return-void
.end method


# virtual methods
.method public acquireForShow(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;

    invoke-direct {v0, p0, p3}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;-><init>(Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 44
    iget v2, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object p2, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object p1, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;->getPool()Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;

    move-result-object p3

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->label:I

    invoke-interface {p3, v0}, Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;->acquireForShow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    .line 44
    :cond_4
    :goto_1
    check-cast p3, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    .line 46
    invoke-virtual {p0}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;->getPool()Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;

    move-result-object v2

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$acquireForShow$1;->label:I

    invoke-interface {v2, p3, v0}, Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;->resetEntry(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    .line 44
    :goto_3
    check-cast p3, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    .line 47
    invoke-virtual {p0}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;->getClaimedEntries()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;

    invoke-virtual {p0}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;->getContainerFactory()Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;

    move-result-object v1

    invoke-interface {v1, p3, p2, p1}, Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;->create(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V

    return-object v0
.end method

.method public onLoadSuccess(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
            "Lkotlinx/coroutines/CoroutineScope;",
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
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p6

    instance-of v1, v0, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;

    iget v2, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;

    invoke-direct {v1, p0, p6}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;-><init>(Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 22
    iget v4, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iget-object v4, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iget-object v6, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v4

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;->getPool()Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;->getPoolSize()I

    move-result v4

    iput-object p1, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    iput-object p4, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    iput-object p5, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    iput v6, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    invoke-interface {v0, v4, v1}, Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;->initialize(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v7, p1

    move-object v6, p4

    move-object v8, p5

    .line 31
    :goto_1
    invoke-virtual {p0}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;->getPool()Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;

    move-result-object v0

    iput-object v7, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    iput v5, v1, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    invoke-interface {v0, v1}, Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;->acquireFreshEntry(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_5

    :goto_2
    return-object v3

    :cond_5
    move-object v4, v6

    move-object v1, v7

    move-object v3, v8

    :goto_3
    check-cast v0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    if-nez v0, :cond_6

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 32
    :cond_6
    invoke-virtual {p0}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;->getContainerFactory()Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;

    move-result-object v5

    invoke-interface {v5, v0, v4, v1}, Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;->create(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    move-result-object v1

    .line 34
    new-instance v5, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;

    const/4 v6, 0x0

    move-object p2, p0

    move-object p3, v0

    move-object p5, v1

    move-object p4, v3

    move-object p1, v5

    move-object p6, v6

    invoke-direct/range {p1 .. p6}, Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy$onLoadSuccess$2;-><init>(Lcom/unity3d/ads/core/domain/adload/PoolPreloadOnLoadStrategy;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/jvm/functions/Function2;Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lkotlin/coroutines/Continuation;)V

    move-object v0, p1

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move p5, v0

    move-object p6, v1

    move-object p2, v2

    move-object p3, v3

    move-object p1, v4

    move-object p4, v5

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 42
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
