.class public final Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;
.super Ljava/lang/Object;
.source "AppForegroundDurationObserver.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/ForegroundDurationReader;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppForegroundDurationObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppForegroundDurationObserver.kt\ncom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,83:1\n47#2,4:84\n214#3,5:88\n*S KotlinDebug\n*F\n+ 1 AppForegroundDurationObserver.kt\ncom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver\n*L\n27#1:84,4\n30#1:88,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0017H\u0086\u0002J\u0018\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u0008H\u0002J\u0008\u0010\u001e\u001a\u00020\u0017H\u0002J\u0008\u0010\u001f\u001a\u00020\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;",
        "Lcom/unity3d/ads/core/data/datasource/ForegroundDurationReader;",
        "lifecycleDataSource",
        "Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;",
        "defaultDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "elapsedRealtimeProvider",
        "Lkotlin/Function0;",
        "",
        "initTimeProvider",
        "<init>",
        "(Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "isRunning",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "accumulatedBackgroundMs",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "backgroundStartMs",
        "isInBackground",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "",
        "sessionDurationInForegroundMs",
        "getSessionDurationInForegroundMs",
        "()J",
        "currentAccumulatedBackgroundMs",
        "initTime",
        "now",
        "onBackground",
        "onForeground",
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
.field private final accumulatedBackgroundMs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final backgroundStartMs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final elapsedRealtimeProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final initTimeProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isRunning:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycleDataSource:Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public static synthetic $r8$lambda$3oP7kiVqfczvecyKGNmJv-70Kp4()J
    .locals 2

    invoke-static {}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->_init_$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$5dvsuko93OlkoG470Yyt5bJgFVA()J
    .locals 2

    invoke-static {}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->_init_$lambda$1()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lifecycleDataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elapsedRealtimeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initTimeProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->lifecycleDataSource:Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;

    .line 17
    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 18
    iput-object p3, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->elapsedRealtimeProvider:Lkotlin/jvm/functions/Function0;

    .line 19
    iput-object p4, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->initTimeProvider:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->isRunning:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 23
    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p3, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->accumulatedBackgroundMs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p3, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->backgroundStartMs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 25
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance p3, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {p3, p1}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;)V

    check-cast p3, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 87
    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    .line 27
    invoke-virtual {p2, p3}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 18
    new-instance p3, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 19
    new-instance p4, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$$ExternalSyntheticLambda1;-><init>()V

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;-><init>(Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final _init_$lambda$0()J
    .locals 2

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final _init_$lambda$1()J
    .locals 2

    .line 19
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getInitializationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$onBackground(Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->onBackground()V

    return-void
.end method

.method public static final synthetic access$onForeground(Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->onForeground()V

    return-void
.end method

.method private final currentAccumulatedBackgroundMs(JJ)J
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->accumulatedBackgroundMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 59
    iget-object v2, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->backgroundStartMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    sub-long/2addr p3, p1

    .line 62
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final onBackground()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->backgroundStartMs:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->elapsedRealtimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_0
    return-void
.end method

.method private final onForeground()V
    .locals 7

    .line 72
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->initTimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v4, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->backgroundStartMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 78
    iget-object v4, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->elapsedRealtimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 79
    iget-object v6, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->accumulatedBackgroundMs:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getSessionDurationInForegroundMs()J
    .locals 8

    .line 49
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->initTimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 51
    :cond_0
    iget-object v4, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->elapsedRealtimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long v6, v4, v0

    .line 53
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->currentAccumulatedBackgroundMs(JJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    .line 54
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final invoke()V
    .locals 5

    .line 30
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->isRunning:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 89
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 90
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v3, 0x1

    .line 30
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 91
    invoke-interface {v0, v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->lifecycleDataSource:Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;->appIsForeground()Z

    move-result v0

    if-nez v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->isInBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->initTimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 38
    iget-object v2, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->backgroundStartMs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->elapsedRealtimeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->lifecycleDataSource:Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;->getAppActive()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 42
    new-instance v1, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver$invoke$2;-><init>(Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/AppForegroundDurationObserver;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method
