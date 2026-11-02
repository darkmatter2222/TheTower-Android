.class public final Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;
.super Ljava/lang/Object;
.source "EagerPreloadOnLoadStrategy.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEagerPreloadOnLoadStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EagerPreloadOnLoadStrategy.kt\ncom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n1#2:147\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJR\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\"\u0010\u0019\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u001b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001aH\u0096@\u00a2\u0006\u0002\u0010\u001fJ\u001e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u0012H\u0096@\u00a2\u0006\u0002\u0010#J\u0016\u0010$\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0096@\u00a2\u0006\u0002\u0010%J\u0016\u0010&\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0096@\u00a2\u0006\u0002\u0010%J4\u0010\'\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00142\u0006\u0010+\u001a\u00020\u00142\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010-H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;",
        "Lcom/unity3d/ads/core/domain/adload/PreShowWebViewStrategy;",
        "getWebViewContainer",
        "Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "logger",
        "Lcom/unity3d/ads/core/log/Logger;",
        "<init>",
        "(Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;)V",
        "deferreds",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/google/protobuf/ByteString;",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;",
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
        "reportPreloadFailure",
        "startMark",
        "Lkotlin/time/TimeMark;",
        "reason",
        "debug",
        "cause",
        "",
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
.field private final deferreds:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/protobuf/ByteString;",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;",
            ">;>;"
        }
    .end annotation
.end field

.field private final getWebViewContainer:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;)V
    .locals 1

    const-string v0, "getWebViewContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->getWebViewContainer:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    .line 35
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 36
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 42
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->deferreds:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private final reportPreloadFailure(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/time/TimeMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 137
    iget-object v3, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Eager WebView preload failed ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p5

    invoke-interface {v3, v4, v5}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    iget-object v5, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 140
    invoke-static/range {p2 .. p2}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v3, 0x2

    .line 141
    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "reason"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "reason_debug"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    const/16 v14, 0xe8

    const/4 v15, 0x0

    .line 138
    const-string v6, "native_eager_preshow_preload_failure_time"

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v5 .. v15}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic reportPreloadFailure$default(Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/time/TimeMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 130
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->reportPreloadFailure(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/time/TimeMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public acquireForShow(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;

    invoke-direct {v0, p0, p3}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;-><init>(Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 105
    iget v2, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CompletableDeferred;

    iget-object p2, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v2, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_5

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    iget-object p3, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->deferreds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/CompletableDeferred;

    if-nez p3, :cond_6

    .line 107
    iget-object p3, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->getWebViewContainer:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    iput v5, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    invoke-virtual {p3, p1, p2, v0}, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->invoke(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p3, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    new-instance p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;

    invoke-direct {p1, p3}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V

    return-object p1

    .line 109
    :cond_6
    :try_start_1
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    invoke-interface {p3, v0}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v1, :cond_7

    goto :goto_3

    :cond_7
    move-object v7, v2

    move-object v2, p1

    move-object p1, p3

    move-object p3, v7

    .line 105
    :goto_2
    :try_start_2
    check-cast p3, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    invoke-interface {p1, v6}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    if-eqz p3, :cond_8

    .line 117
    check-cast p3, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;

    return-object p3

    :cond_8
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->getWebViewContainer:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    iput-object v6, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$acquireForShow$1;->label:I

    invoke-virtual {p1, v2, p2, v0}, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->invoke(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    :goto_3
    return-object v1

    :cond_9
    :goto_4
    check-cast p3, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    new-instance p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;

    invoke-direct {p1, p3}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V

    check-cast p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;

    return-object p1

    :catchall_1
    move-exception p2

    move-object p1, p3

    .line 112
    :goto_5
    invoke-interface {p1, v6}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    throw p2
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

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->onShowComplete(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public onLoadSuccess(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24
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

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p6

    instance-of v3, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;

    iget v4, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v0, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    sub-int/2addr v0, v5

    iput v0, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;

    invoke-direct {v3, v1, v0}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;-><init>(Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 44
    iget v5, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v9, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v4, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->J$0:J

    iget-object v2, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_3
    iget-wide v8, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->J$0:J

    iget-object v2, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    iget-object v5, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v11, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/unity3d/ads/core/data/model/AdObject;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_4
    iget-wide v11, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->J$0:J

    iget-object v2, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v5, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v9, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/unity3d/ads/core/data/model/AdObject;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v13, v5

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v13, v5

    :goto_1
    move-object v5, v2

    move-object v2, v9

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    invoke-static {v10, v9, v10}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v5

    .line 52
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->deferreds:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v11

    invoke-interface {v0, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v11

    .line 59
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;

    iget-object v0, v1, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->getWebViewContainer:Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    iput-object v2, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v13, p5

    :try_start_3
    iput-object v13, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    iput-wide v11, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->J$0:J

    iput v9, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    move-object/from16 v9, p4

    invoke-virtual {v0, v9, v2, v3}, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;->invoke(Lkotlinx/coroutines/CoroutineScope;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v0, v4, :cond_6

    goto/16 :goto_9

    :cond_6
    move-object v9, v2

    move-object v2, v5

    :goto_2
    :try_start_4
    check-cast v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v5, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v13, p5

    :goto_3
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v2

    .line 60
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 65
    iget-object v0, v1, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->deferreds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-interface {v5, v10}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 67
    instance-of v0, v2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_8

    .line 68
    invoke-static {v11, v12}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7
    const-string v4, "create_container"

    move-object/from16 p3, v0

    move-object/from16 p1, v1

    move-object/from16 p6, v2

    move-object/from16 p5, v3

    move-object/from16 p4, v4

    move-object/from16 p2, v9

    invoke-direct/range {p1 .. p6}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->reportPreloadFailure(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/time/TimeMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_8
    move-object v0, v2

    .line 67
    throw v0

    .line 71
    :cond_9
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    check-cast v2, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    .line 73
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v0, p0

    check-cast v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;

    iput-object v9, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    iput-wide v11, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->J$0:J

    iput v8, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    invoke-interface {v13, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-ne v0, v4, :cond_a

    goto/16 :goto_9

    :cond_a
    move-wide/from16 v22, v11

    move-object v11, v9

    move-wide/from16 v8, v22

    :goto_5
    :try_start_6
    check-cast v0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :catchall_5
    move-exception v0

    move-wide/from16 v22, v11

    move-object v11, v9

    move-wide/from16 v8, v22

    :goto_6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 78
    invoke-interface {v5, v10}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$3$1;

    invoke-direct {v5, v2, v10}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$3$1;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v11, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    iput-object v10, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    iput-wide v8, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->J$0:J

    iput v7, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    invoke-static {v0, v5, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_b

    goto :goto_9

    :cond_b
    move-object v2, v1

    move-wide v4, v8

    move-object v3, v11

    .line 80
    :goto_8
    instance-of v0, v2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_d

    .line 81
    invoke-static {v4, v5}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c
    const-string v4, "load_webview"

    move-object/from16 p1, p0

    move-object/from16 p3, v0

    move-object/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p2, v3

    move-object/from16 p4, v4

    invoke-direct/range {p1 .. p6}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->reportPreloadFailure(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/time/TimeMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_d
    move-object v1, v2

    .line 80
    throw v1

    .line 86
    :cond_e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->component1()Lcom/unity3d/ads/adplayer/AdPlayer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->component2()Lcom/unity3d/ads/adplayer/WebViewBridge;

    move-result-object v7

    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->component3()Lcom/unity3d/ads/adplayer/model/LoadEvent;

    move-result-object v0

    .line 87
    new-instance v12, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    invoke-direct {v12, v2, v1, v7, v0}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)V

    invoke-interface {v5, v12}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 89
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;

    invoke-direct {v1, v2, v10}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$4;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    iput-object v10, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$0:Ljava/lang/Object;

    iput-object v10, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$1:Ljava/lang/Object;

    iput-object v10, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->L$2:Ljava/lang/Object;

    iput v6, v3, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onLoadSuccess$1;->label:I

    invoke-static {v0, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_f

    :goto_9
    return-object v4

    .line 90
    :cond_f
    :goto_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 96
    :cond_10
    instance-of v1, v0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    if-eqz v1, :cond_11

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;

    invoke-virtual {v0}, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unity3d/ads/adplayer/model/LoadEvent$Error;->getErrorCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-static {v8, v9}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v3

    const/16 v7, 0x10

    const/4 v8, 0x0

    const-string v4, "load_event_error"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-static/range {v1 .. v8}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->reportPreloadFailure$default(Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/time/TimeMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_b

    :cond_11
    move-object/from16 v1, p0

    move-object/from16 v16, v11

    .line 100
    sget-object v2, Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;->INSTANCE:Lcom/unity3d/ads/adplayer/model/LoadEvent$Completed;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 101
    iget-object v11, v1, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-static {v8, v9}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->box-impl(J)Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;->elapsedMillis(Lkotlin/time/TimeMark;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v13

    const/16 v20, 0xec

    const/16 v21, 0x0

    const-string v12, "native_eager_preshow_preload_success_time"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v11 .. v21}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    .line 103
    :goto_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 95
    :cond_12
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public onShowComplete(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;-><init>(Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 120
    iget v2, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 121
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy;->deferreds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/CompletableDeferred;

    if-nez p1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_4
    const/4 p2, 0x0

    .line 123
    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 124
    iput v4, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p2, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->getContainer()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    move-result-object p1

    if-eqz p1, :cond_7

    iput v3, v0, Lcom/unity3d/ads/core/domain/adload/EagerPreloadOnLoadStrategy$onShowComplete$1;->label:I

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->destroy(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    .line 126
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
