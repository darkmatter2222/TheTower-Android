.class public Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;
.super Ljava/lang/Object;
.source "AndroidWebViewPool.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u0000 +2\u00020\u0001:\u0001+B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0013H\u0096@\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u000eH\u0096@\u00a2\u0006\u0002\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u000eH\u0096@\u00a2\u0006\u0002\u0010\u0019J\u0016\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0096@\u00a2\u0006\u0002\u0010\u001dJ\u0016\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u000eH\u0096@\u00a2\u0006\u0002\u0010\u001dJ\u0016\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u000eH\u0096@\u00a2\u0006\u0002\u0010\u001dJ\u0016\u0010 \u001a\u00020!2\u0006\u0010\u001c\u001a\u00020\u000eH\u0082@\u00a2\u0006\u0002\u0010\u001dJ\u0016\u0010\"\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u000eH\u0082@\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010#\u001a\u00020\u000eH\u0090@\u00a2\u0006\u0004\u0008$\u0010\u0019J\u0008\u0010%\u001a\u00020&H\u0002J\u0016\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020&H\u0083@\u00a2\u0006\u0002\u0010*R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;",
        "Lcom/unity3d/ads/adplayer/webviewpool/WebViewPool;",
        "context",
        "Landroid/content/Context;",
        "mainDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "getCachedAsset",
        "Lcom/unity3d/ads/core/domain/GetCachedAsset;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "<init>",
        "(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetCachedAsset;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V",
        "freshViews",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
        "recycledViews",
        "isInitialized",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "poolSize",
        "",
        "initialize",
        "",
        "size",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "acquireFreshEntry",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "acquireForShow",
        "resetEntry",
        "entry",
        "(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "enqueueRecycled",
        "release",
        "isHealthy",
        "",
        "destroyEntry",
        "createFreshEntry",
        "createFreshEntry$unity_ads_defaultRelease",
        "createClient",
        "Lcom/unity3d/ads/adplayer/AndroidWebViewClient;",
        "createWebView",
        "Landroid/webkit/WebView;",
        "client",
        "(Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private static final ACQUIRE_TIMEOUT_MS:J = 0x7d0L

.field public static final Companion:Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$Companion;

.field private static final HEALTH_CHECK_TIMEOUT_MS:J = 0x1f4L


# instance fields
.field private final context:Landroid/content/Context;

.field private final freshViews:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final getCachedAsset:Lcom/unity3d/ads/core/domain/GetCachedAsset;

.field private final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private volatile poolSize:I

.field private final recycledViews:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->Companion:Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetCachedAsset;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getCachedAsset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 23
    iput-object p3, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->getCachedAsset:Lcom/unity3d/ads/core/domain/GetCachedAsset;

    .line 24
    iput-object p4, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 32
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->freshViews:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 33
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->recycledViews:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 34
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$createWebView(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->createWebView(Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$destroyEntry(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->destroyEntry(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getFreshViews$p(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->freshViews:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static final synthetic access$getMainDispatcher$p(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getRecycledViews$p(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->recycledViews:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static final synthetic access$isHealthy(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->isHealthy(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic acquireForShow$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$1;

    iget v1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$1;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 57
    iget v2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    new-instance p1, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;

    invoke-direct {p1, p0, v3}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$2;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$1;->label:I

    const-wide/16 v5, 0x7d0

    invoke-static {v5, v6, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    if-nez p1, :cond_6

    .line 69
    iput-object v3, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireForShow$1;->label:I

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->createFreshEntry$unity_ads_defaultRelease(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p0

    :cond_6
    return-object p1
.end method

.method static synthetic acquireFreshEntry$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireFreshEntry$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$acquireFreshEntry$2;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2, v0, p1}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final createClient()Lcom/unity3d/ads/adplayer/AndroidWebViewClient;
    .locals 3

    .line 141
    new-instance v0, Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->getCachedAsset:Lcom/unity3d/ads/core/domain/GetCachedAsset;

    iget-object v2, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/adplayer/AndroidWebViewClient;-><init>(Lcom/unity3d/ads/core/domain/GetCachedAsset;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V

    return-object v0
.end method

.method static synthetic createFreshEntry$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$createFreshEntry$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$createFreshEntry$1;

    iget v1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$createFreshEntry$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$createFreshEntry$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$createFreshEntry$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$createFreshEntry$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$createFreshEntry$1;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$createFreshEntry$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 134
    iget v2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$createFreshEntry$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$createFreshEntry$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->createClient()Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    move-result-object p1

    .line 136
    iput-object p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$createFreshEntry$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$createFreshEntry$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->createWebView(Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    .line 134
    :goto_1
    check-cast p1, Landroid/webkit/WebView;

    .line 137
    new-instance v0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    invoke-direct {v0, p1, p0}, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;-><init>(Landroid/webkit/WebView;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;)V

    return-object v0
.end method

.method private final createWebView(Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/AndroidWebViewClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/webkit/WebView;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$createWebView$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$createWebView$2;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final destroyEntry(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$destroyEntry$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$destroyEntry$2;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static synthetic enqueueRecycled$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->recycledViews:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->poolSize:I

    if-ge v0, v1, :cond_0

    .line 106
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->recycledViews:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 110
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 108
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->destroyEntry(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic initialize$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;

    iget v1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 37
    iget v2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;->I$1:I

    iget p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;->I$0:I

    iget-object v2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v0

    move v0, p1

    move-object p1, v4

    :goto_1
    move-object v4, v2

    move-object v2, v5

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iput p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->poolSize:I

    .line 39
    iget-object p2, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    move p2, p1

    move-object p1, p0

    move p0, v2

    :goto_2
    if-ge p0, p2, :cond_5

    .line 41
    iget-object v2, p1, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->freshViews:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;->I$0:I

    iput p0, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;->I$1:I

    iput v3, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$initialize$1;->label:I

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->createFreshEntry$unity_ads_defaultRelease(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, v0

    move v0, p2

    move-object p2, v4

    goto :goto_1

    :goto_3
    invoke-virtual {v4, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    add-int/2addr p0, v3

    move p2, v0

    move-object v0, v2

    goto :goto_2

    .line 43
    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final isHealthy(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$isHealthy$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$isHealthy$1;

    iget v1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$isHealthy$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$isHealthy$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$isHealthy$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$isHealthy$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$isHealthy$1;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$isHealthy$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 116
    iget v2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$isHealthy$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    new-instance p2, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$isHealthy$2;

    const/4 v2, 0x0

    invoke-direct {p2, p0, p1, v2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$isHealthy$2;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$isHealthy$1;->label:I

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3, p2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 125
    :goto_2
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method static synthetic release$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$release$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$release$1;

    iget v1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$release$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$release$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$release$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$release$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$release$1;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$release$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 112
    iget v2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$release$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$release$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    iput-object p0, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$release$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$release$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->resetEntry(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p2, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$release$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$release$1;->label:I

    invoke-virtual {p0, p2, v0}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->enqueueRecycled(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    .line 114
    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic resetEntry$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;

    iget v1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 72
    iget v2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    iget-object p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    iget-object p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CompletableDeferred;

    iget-object p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    iget-object v2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    invoke-static {v6, v5, v6}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p2

    .line 78
    new-instance v2, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$resetClient$1;

    invoke-direct {v2, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$resetClient$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    .line 83
    iget-object v7, p0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;

    invoke-direct {v8, p1, v2, v6}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$2;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$resetClient$1;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->label:I

    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, p0

    move-object p0, p2

    .line 95
    :goto_1
    new-instance p2, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$3;

    invoke-direct {p2, p0, v6}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$3;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iput-object v2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->label:I

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5, p2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object p0, p1

    move-object p1, v2

    .line 96
    :goto_2
    invoke-direct {p1}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->createClient()Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    move-result-object p2

    .line 97
    iget-object p1, p1, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$4;

    invoke-direct {v2, p0, p2, v6}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$4;-><init>(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool$resetEntry$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    move-object p1, p0

    move-object p0, p2

    .line 100
    :goto_4
    new-instance p2, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    invoke-virtual {p1}, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;-><init>(Landroid/webkit/WebView;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;)V

    return-object p2
.end method


# virtual methods
.method public acquireForShow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->acquireForShow$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public acquireFreshEntry(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->acquireFreshEntry$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createFreshEntry$unity_ads_defaultRelease(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->createFreshEntry$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public enqueueRecycled(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->enqueueRecycled$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public initialize(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->initialize$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public release(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->release$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public resetEntry(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;->resetEntry$suspendImpl(Lcom/unity3d/ads/adplayer/webviewpool/AndroidWebViewPool;Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
