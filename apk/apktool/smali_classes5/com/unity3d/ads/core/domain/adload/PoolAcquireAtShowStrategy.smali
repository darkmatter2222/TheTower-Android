.class public Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;
.super Ljava/lang/Object;
.source "PoolAcquireAtShowStrategy.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPoolAcquireAtShowStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PoolAcquireAtShowStrategy.kt\ncom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,40:1\n1#2:41\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0010\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJR\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\"\u0010 \u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020$0#\u0012\u0006\u0012\u0004\u0018\u00010%0!H\u0096@\u00a2\u0006\u0002\u0010&J\u001e\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0096@\u00a2\u0006\u0002\u0010*J\u0016\u0010+\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0096@\u00a2\u0006\u0002\u0010,J\u0016\u0010-\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0096@\u00a2\u0006\u0002\u0010,R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0006\u001a\u00020\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR \u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006."
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;",
        "Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;",
        "pool",
        "Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;",
        "poolSize",
        "",
        "containerFactory",
        "Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;",
        "<init>",
        "(Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;ILcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;)V",
        "getPool",
        "()Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;",
        "getPoolSize",
        "()I",
        "getContainerFactory",
        "()Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;",
        "claimedEntries",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/google/protobuf/ByteString;",
        "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
        "getClaimedEntries",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
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
        "onShowComplete",
        "(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onAdExpired",
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


# instance fields
.field private final claimedEntries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final containerFactory:Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;

.field private final pool:Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;

.field private final poolSize:I


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;ILcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;)V
    .locals 1

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->pool:Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;

    .line 17
    iput p2, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->poolSize:I

    .line 18
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->containerFactory:Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;

    .line 22
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->claimedEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic acquireForShow$suspendImpl(Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;

    invoke-direct {v0, p0, p3}, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;-><init>(Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 28
    iget v2, v0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;->L$2:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object p0, v0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, v0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    iget-object p3, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->pool:Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;

    iput-object p0, v0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy$acquireForShow$1;->label:I

    invoke-interface {p3, v0}, Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;->acquireForShow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 28
    :cond_3
    :goto_1
    check-cast p3, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    .line 30
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->claimedEntries:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p2}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;

    iget-object p0, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->containerFactory:Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;

    invoke-interface {p0, p3, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;->create(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V

    return-object v0
.end method

.method static synthetic onAdExpired$suspendImpl(Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->onShowComplete(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic onLoadSuccess$suspendImpl(Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;",
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

    .line 25
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->pool:Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;

    iget p0, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->poolSize:I

    invoke-interface {p1, p0, p6}, Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;->initialize(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic onShowComplete$suspendImpl(Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->claimedEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->pool:Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;

    invoke-interface {p0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;->release(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    .line 36
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public acquireForShow(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->acquireForShow$suspendImpl(Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final getClaimedEntries()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->claimedEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method protected final getContainerFactory()Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->containerFactory:Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;

    return-object v0
.end method

.method protected final getPool()Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->pool:Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;

    return-object v0
.end method

.method protected final getPoolSize()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->poolSize:I

    return v0
.end method

.method public onAdExpired(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->onAdExpired$suspendImpl(Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onLoadSuccess(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    invoke-static/range {p0 .. p6}, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->onLoadSuccess$suspendImpl(Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onShowComplete(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;->onShowComplete$suspendImpl(Lcom/unity3d/ads/core/domain/adload/PoolAcquireAtShowStrategy;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
