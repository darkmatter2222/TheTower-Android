.class public final Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;
.super Ljava/lang/Object;
.source "CachedFIdDataSource.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/FIdDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCachedFIdDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CachedFIdDataSource.kt\ncom/unity3d/ads/core/data/datasource/CachedFIdDataSource\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,37:1\n47#2,4:38\n*S KotlinDebug\n*F\n+ 1 CachedFIdDataSource.kt\ncom/unity3d/ads/core/data/datasource/CachedFIdDataSource\n*L\n18#1:38,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000b\u0010\r\u001a\u0004\u0018\u00010\nH\u0096\u0002R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;",
        "Lcom/unity3d/ads/core/data/datasource/FIdDataSource;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "dataSource",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/datasource/FIdDataSource;)V",
        "loaded",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "value",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
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
.field private final dataSource:Lcom/unity3d/ads/core/data/datasource/FIdDataSource;

.field private loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private scope:Lkotlinx/coroutines/CoroutineScope;

.field private volatile value:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$fg5TtbpKCBlcSwqr3rOGdz7Igy8(Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;->_init_$lambda$1(Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/datasource/FIdDataSource;)V
    .locals 7

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;->dataSource:Lcom/unity3d/ads/core/data/datasource/FIdDataSource;

    .line 15
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;->loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    .line 38
    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v0, p2}, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;)V

    check-cast v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 41
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 18
    invoke-static {p1, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 21
    new-instance p1, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource$1;-><init>(Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 23
    new-instance p2, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;)V

    invoke-interface {p1, p2}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 2

    .line 24
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 25
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;->loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$getDataSource$p(Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;)Lcom/unity3d/ads/core/data/datasource/FIdDataSource;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;->dataSource:Lcom/unity3d/ads/core/data/datasource/FIdDataSource;

    return-object p0
.end method

.method public static final synthetic access$setValue$p(Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;->loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/CachedFIdDataSource;->value:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
