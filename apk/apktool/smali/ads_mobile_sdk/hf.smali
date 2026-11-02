.class public final Lads_mobile_sdk/hf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/util/List;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lkotlin/coroutines/CoroutineContext;

.field public final c:Landroid/content/Context;

.field public final d:Lads_mobile_sdk/rv1;

.field public final e:Lads_mobile_sdk/kf;

.field public final f:Lads_mobile_sdk/f0;

.field public final g:Lads_mobile_sdk/pn;

.field public final h:Lads_mobile_sdk/tx;

.field public final i:Lads_mobile_sdk/ex0;

.field public final j:Lads_mobile_sdk/g83;

.field public final k:Lads_mobile_sdk/ja1;

.field public final l:Lkotlinx/coroutines/sync/Mutex;

.field public final m:Ljava/util/LinkedHashMap;

.field public final n:Ljava/util/LinkedHashMap;

.field public o:J

.field public p:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

.field public q:J

.field public r:J

.field public s:I

.field public t:J

.field public final u:Lkotlinx/coroutines/sync/Mutex;

.field public final v:Ljava/util/LinkedHashSet;

.field public final w:Ljava/util/LinkedHashSet;

.field public x:Ljava/util/Set;

.field public final y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final z:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 624
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/hf;->A:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Landroid/content/Context;Lads_mobile_sdk/rv1;Lads_mobile_sdk/kf;Lads_mobile_sdk/f0;Lads_mobile_sdk/pn;Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Lads_mobile_sdk/ja1;)V
    .locals 1

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationAdapterProxyFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterStatusMapUpdater"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lads_mobile_sdk/hf;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 81
    iput-object p2, p0, Lads_mobile_sdk/hf;->b:Lkotlin/coroutines/CoroutineContext;

    .line 82
    iput-object p3, p0, Lads_mobile_sdk/hf;->c:Landroid/content/Context;

    .line 83
    iput-object p4, p0, Lads_mobile_sdk/hf;->d:Lads_mobile_sdk/rv1;

    .line 84
    iput-object p5, p0, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 85
    iput-object p6, p0, Lads_mobile_sdk/hf;->f:Lads_mobile_sdk/f0;

    .line 86
    iput-object p7, p0, Lads_mobile_sdk/hf;->g:Lads_mobile_sdk/pn;

    .line 87
    iput-object p8, p0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    .line 88
    iput-object p9, p0, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    .line 89
    iput-object p10, p0, Lads_mobile_sdk/hf;->j:Lads_mobile_sdk/g83;

    .line 90
    iput-object p11, p0, Lads_mobile_sdk/hf;->k:Lads_mobile_sdk/ja1;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 93
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p4

    iput-object p4, p0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 97
    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p4, p0, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 104
    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p4, p0, Lads_mobile_sdk/hf;->n:Ljava/util/LinkedHashMap;

    .line 106
    sget-object p4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p4}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p5

    iput-wide p5, p0, Lads_mobile_sdk/hf;->o:J

    const/4 p5, 0x7

    .line 107
    invoke-static {p3, p3, p5}, Lads_mobile_sdk/le;->b(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object p5

    iput-object p5, p0, Lads_mobile_sdk/hf;->p:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    .line 108
    invoke-virtual {p4}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p5

    iput-wide p5, p0, Lads_mobile_sdk/hf;->q:J

    .line 110
    invoke-virtual {p4}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p5

    iput-wide p5, p0, Lads_mobile_sdk/hf;->r:J

    .line 112
    invoke-virtual {p4}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p4

    iput-wide p4, p0, Lads_mobile_sdk/hf;->t:J

    .line 119
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p4

    iput-object p4, p0, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 123
    new-instance p4, Ljava/util/LinkedHashSet;

    invoke-direct {p4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p4, p0, Lads_mobile_sdk/hf;->v:Ljava/util/LinkedHashSet;

    .line 126
    new-instance p4, Ljava/util/LinkedHashSet;

    invoke-direct {p4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p4, p0, Lads_mobile_sdk/hf;->w:Ljava/util/LinkedHashSet;

    .line 131
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p4, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lads_mobile_sdk/hf;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/hf;->z:Lkotlinx/coroutines/CompletableJob;

    return-void
.end method

.method public static a(Lads_mobile_sdk/hf;Lads_mobile_sdk/ke;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 35988
    instance-of v0, p2, Lads_mobile_sdk/ef;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ef;

    iget v1, v0, Lads_mobile_sdk/ef;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ef;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/ef;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ef;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/ef;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 35989
    iget v2, v0, Lads_mobile_sdk/ef;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/ef;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/ef;->b:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    iget-object v0, v0, Lads_mobile_sdk/ef;->a:Lads_mobile_sdk/hf;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35990
    iget-object p2, p0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 36482
    iput-object p0, v0, Lads_mobile_sdk/ef;->a:Lads_mobile_sdk/hf;

    iput-object p1, v0, Lads_mobile_sdk/ef;->b:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    iput-object p2, v0, Lads_mobile_sdk/ef;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ef;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 36483
    :cond_3
    :goto_1
    :try_start_0
    iput-object p1, p0, Lads_mobile_sdk/hf;->p:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    .line 36484
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object p1, p0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 36486
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lads_mobile_sdk/hf;->o:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/hf;->q:J

    .line 36487
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36980
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic a(Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 32000
    instance-of v0, p3, Lads_mobile_sdk/bf;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/bf;

    iget v1, v0, Lads_mobile_sdk/bf;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/bf;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/bf;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/bf;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/bf;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 32558
    iget v2, v0, Lads_mobile_sdk/bf;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/bf;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/bf;->c:Ljava/lang/String;

    iget-object p1, v0, Lads_mobile_sdk/bf;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v0, v0, Lads_mobile_sdk/bf;->a:Lads_mobile_sdk/hf;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32561
    iget-object p3, p0, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 33053
    iput-object p0, v0, Lads_mobile_sdk/bf;->a:Lads_mobile_sdk/hf;

    iput-object p1, v0, Lads_mobile_sdk/bf;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput-object p2, v0, Lads_mobile_sdk/bf;->c:Ljava/lang/String;

    iput-object p3, v0, Lads_mobile_sdk/bf;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/bf;->g:I

    invoke-interface {p3, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 33054
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getSkipUninitializedAdapters()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33549
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 33550
    :cond_4
    :try_start_1
    iget-object p1, p0, Lads_mobile_sdk/hf;->x:Ljava/util/Set;

    const/4 v0, 0x0

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34041
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 34042
    :cond_5
    :try_start_2
    iget-object v1, p0, Lads_mobile_sdk/hf;->g:Lads_mobile_sdk/pn;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object v2, p0, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v2}, Lads_mobile_sdk/pn;->a(Ljava/util/Collection;Lads_mobile_sdk/ex0;)Ljava/util/List;

    move-result-object p2

    .line 34528
    instance-of v1, p2, Ljava/util/Collection;

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 34529
    :cond_6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 34530
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 35018
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 35019
    :cond_8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 35020
    iget-object v1, p0, Lads_mobile_sdk/hf;->w:Ljava/util/LinkedHashSet;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_3

    :cond_a
    :goto_2
    move v3, v0

    .line 35502
    :goto_3
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35503
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 35504
    :cond_b
    :goto_4
    :try_start_3
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35987
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static a(Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 13339
    instance-of v4, v3, Lads_mobile_sdk/te;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lads_mobile_sdk/te;

    iget v5, v4, Lads_mobile_sdk/te;->m:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lads_mobile_sdk/te;->m:I

    goto :goto_0

    :cond_0
    new-instance v4, Lads_mobile_sdk/te;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/te;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lads_mobile_sdk/te;->k:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 13508
    iget v6, v4, Lads_mobile_sdk/te;->m:I

    const-string v7, "getExcludedAdapterClassesList(...)"

    const-string v8, "getAllowedAdapterClassesList(...)"

    const-string v9, "Timeout."

    const-string v10, "getAllowedFormatsList(...)"

    const-string v11, "getInitializedAdapterClassesList(...)"

    const-string v12, "getAllowedAdUnitsList(...)"

    const-string v14, "toBuilder(...)"

    const-string v15, "newBuilder(...)"

    const-string v16, "No AdapterInitializationConfig was provided when calling MobileAds.initialize, so all adapters were already initialized. Future calls to MobileAds.initializeAdapters will have no effect."

    const/16 p3, 0x0

    const-string v13, "build(...)"

    move-object/from16 v18, v3

    const-string v3, "builder"

    move/from16 v19, v6

    const-string v6, "values"

    move-object/from16 v20, v11

    const-string v11, "<this>"

    move-object/from16 v22, v14

    packed-switch v19, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v2, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v5, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/ie;

    iget-object v7, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iget-object v8, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/rr3;

    iget-object v10, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v12, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_0
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v3

    move-object v3, v5

    move-object/from16 v27, v6

    move-object/from16 v18, v9

    move-object/from16 v28, v11

    move-object v5, v13

    goto/16 :goto_25

    .line 13509
    :pswitch_1
    iget-object v0, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v1, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/ie;

    iget-object v7, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iget-object v8, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/rr3;

    iget-object v10, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v12, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_1
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v3

    move-object/from16 v27, v6

    move-object/from16 v18, v9

    move-object/from16 v28, v11

    move-object v3, v2

    move-object v11, v5

    move-object v5, v13

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_23

    :catchall_0
    move-exception v0

    goto/16 :goto_29

    .line 13510
    :pswitch_2
    iget-object v0, v4, Lads_mobile_sdk/te;->j:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->i:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iget-object v2, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v7, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v8, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/ie;

    iget-object v10, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v10, Ljava/io/Closeable;

    iget-object v12, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    check-cast v12, Lads_mobile_sdk/rr3;

    iget-object v15, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v14, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    move-object/from16 v16, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_2
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v18, v3

    move-object v3, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v18

    move-object/from16 v27, v6

    move-object/from16 v18, v9

    move-object/from16 v28, v11

    const/4 v9, 0x0

    move-object v11, v5

    move-object v5, v13

    goto/16 :goto_20

    :catchall_1
    move-exception v0

    goto/16 :goto_21

    .line 13511
    :pswitch_3
    iget-object v0, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v14, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    check-cast v14, Lads_mobile_sdk/rr3;

    move-object/from16 p0, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    move-object/from16 p1, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    move-object/from16 p2, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_3
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v24, v7

    move-object/from16 v18, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v11

    move-object/from16 v25, v12

    move-object/from16 v23, v13

    move-object/from16 v27, v15

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object v11, v0

    move-object v10, v6

    move-object/from16 v0, p2

    move-object v6, v2

    move-object/from16 v2, p1

    goto/16 :goto_17

    .line 13512
    :pswitch_4
    iget-object v0, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v14, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    check-cast v14, Lads_mobile_sdk/rr3;

    move-object/from16 p0, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    move-object/from16 p1, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    move-object/from16 p2, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_4
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v24, v7

    move-object/from16 v18, v9

    move-object/from16 v28, v11

    move-object/from16 v25, v12

    move-object/from16 v23, v13

    move-object v7, v14

    move-object/from16 v9, p0

    move-object v11, v0

    move-object v0, v1

    move-object v14, v10

    move-object/from16 v1, p2

    move-object v10, v6

    move-object v6, v2

    move-object/from16 v2, p1

    goto/16 :goto_16

    :catchall_2
    move-exception v0

    goto/16 :goto_2b

    .line 13513
    :pswitch_5
    iget-object v0, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v2, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v5, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/ie;

    iget-object v7, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iget-object v8, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/rr3;

    iget-object v10, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v12, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_5
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    move-object/from16 v27, v6

    move-object/from16 v18, v9

    move-object/from16 v28, v11

    move-object/from16 v23, v13

    goto/16 :goto_10

    .line 13514
    :pswitch_6
    iget-object v0, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v1, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/ie;

    iget-object v7, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iget-object v8, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/rr3;

    iget-object v10, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v12, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_6
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v27, v6

    move-object/from16 v18, v9

    move-object/from16 v28, v11

    move-object/from16 v23, v13

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_e

    :catchall_3
    move-exception v0

    goto/16 :goto_14

    .line 13515
    :pswitch_7
    iget-object v0, v4, Lads_mobile_sdk/te;->j:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->i:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iget-object v2, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v7, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v8, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/ie;

    iget-object v10, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v10, Ljava/io/Closeable;

    iget-object v12, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    check-cast v12, Lads_mobile_sdk/rr3;

    iget-object v14, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v15, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    move-object/from16 v16, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_7
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v27, v6

    move-object/from16 v18, v9

    move-object v6, v10

    move-object/from16 v28, v11

    move-object/from16 v23, v13

    const/4 v11, 0x0

    move-object v10, v0

    move-object/from16 v0, v16

    goto/16 :goto_b

    :catchall_4
    move-exception v0

    goto/16 :goto_c

    .line 13516
    :pswitch_8
    iget-object v0, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v14, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    check-cast v14, Lads_mobile_sdk/rr3;

    move-object/from16 p0, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    move-object/from16 p1, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    move-object/from16 p2, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_8
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v27, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v18, v9

    move-object/from16 v26, v10

    move-object/from16 v28, v11

    move-object/from16 v23, v13

    const/4 v9, 0x0

    move-object/from16 v7, p0

    move-object v8, v0

    move-object v6, v2

    move-object v13, v12

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    goto/16 :goto_3

    .line 13517
    :pswitch_9
    iget-object v0, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v14, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    check-cast v14, Lads_mobile_sdk/rr3;

    move-object/from16 p0, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    move-object/from16 p1, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    move-object/from16 p2, v1

    iget-object v1, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    :try_start_9
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object/from16 v27, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v18, v9

    move-object/from16 v26, v10

    move-object/from16 v28, v11

    move-object/from16 v23, v13

    move-object/from16 v7, p0

    move-object v8, v0

    move-object v0, v1

    move-object v6, v2

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object v7, v2

    :goto_1
    move-object v8, v14

    goto/16 :goto_14

    .line 13518
    :pswitch_a
    invoke-static/range {v18 .. v18}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13522
    iget-object v14, v0, Lads_mobile_sdk/hf;->j:Lads_mobile_sdk/g83;

    move-object/from16 v18, v9

    .line 13523
    sget-object v9, Lads_mobile_sdk/s11;->h:Lads_mobile_sdk/s11;

    move-object/from16 v23, v13

    .line 13524
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    move-object/from16 v24, v7

    .line 13525
    new-instance v7, Lads_mobile_sdk/ks3;

    move-object/from16 v25, v8

    .line 13526
    new-instance v8, Lads_mobile_sdk/n03;

    invoke-direct {v8}, Lads_mobile_sdk/n03;-><init>()V

    move-object/from16 v26, v10

    .line 13527
    new-instance v10, Lads_mobile_sdk/tn1;

    invoke-direct {v10}, Lads_mobile_sdk/tn1;-><init>()V

    move-object/from16 v27, v6

    .line 13528
    new-instance v6, Lads_mobile_sdk/m33;

    invoke-direct {v6}, Lads_mobile_sdk/m33;-><init>()V

    move-object/from16 v28, v11

    .line 13529
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 13530
    invoke-direct {v7, v8, v10, v6, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 13531
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v6

    if-nez v6, :cond_19

    .line 13532
    invoke-static {v14, v9, v13, v7}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v6

    .line 13533
    :try_start_a
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 13534
    iget-object v8, v0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 14032
    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v6, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v7, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v4, Lads_mobile_sdk/te;->m:I

    const/4 v9, 0x0

    invoke-interface {v8, v9, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    if-ne v10, v5, :cond_1

    goto/16 :goto_f

    :cond_1
    move-object v14, v6

    .line 14033
    :goto_2
    :try_start_b
    iget-wide v9, v0, Lads_mobile_sdk/hf;->o:J

    sget-object v11, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    move-object v13, v12

    invoke-virtual {v11}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    .line 14034
    iput-boolean v9, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 14035
    iget-object v9, v0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/tx;->b()J

    move-result-wide v9

    sget-object v11, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v9, v10, v11}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v9

    iput-wide v9, v0, Lads_mobile_sdk/hf;->o:J

    .line 14037
    :cond_2
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    const/4 v9, 0x0

    .line 14534
    :try_start_c
    invoke-interface {v8, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 14535
    iget-boolean v8, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v8, :cond_5

    .line 14536
    iget-object v8, v0, Lads_mobile_sdk/hf;->k:Lads_mobile_sdk/ja1;

    invoke-virtual {v8}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 14537
    invoke-virtual {v8}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getMediationAdapterInitializationDisabled()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 14538
    iget-object v8, v0, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 15029
    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v14, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v6, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v7, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v4, Lads_mobile_sdk/te;->m:I

    const/4 v9, 0x0

    invoke-interface {v8, v9, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-ne v10, v5, :cond_3

    goto/16 :goto_f

    :cond_3
    move-object/from16 v35, v1

    move-object v1, v0

    move-object/from16 v0, v35

    .line 15030
    :goto_3
    :try_start_d
    iget-object v10, v1, Lads_mobile_sdk/hf;->v:Ljava/util/LinkedHashSet;

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 15525
    :try_start_e
    invoke-interface {v8, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v10, :cond_4

    .line 15527
    invoke-static/range {v16 .. v16}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    :cond_4
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :cond_5
    move-object v8, v14

    move-object v14, v2

    move-object v2, v7

    move-object v7, v6

    goto :goto_4

    :catchall_6
    move-exception v0

    const/4 v9, 0x0

    .line 16020
    invoke-interface {v8, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    move-exception v0

    move-object v7, v6

    goto/16 :goto_1

    .line 16022
    :goto_4
    :try_start_f
    invoke-static {}, Lads_mobile_sdk/ie;->v()Lads_mobile_sdk/he;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16023
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    .line 16024
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getInitializationTimeoutMs()J

    move-result-wide v9

    .line 16025
    invoke-virtual {v6, v9, v10}, Lads_mobile_sdk/he;->a(J)V

    .line 16026
    new-instance v9, Lads_mobile_sdk/lo0;

    .line 16027
    invoke-virtual {v6}, Lads_mobile_sdk/he;->h()Ljava/util/List;

    move-result-object v10

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16028
    invoke-direct {v9, v10}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 16029
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getAllowedAdUnitIds()Ljava/util/Set;

    move-result-object v10

    move-object/from16 v11, v28

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, v27

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16030
    invoke-virtual {v6, v10}, Lads_mobile_sdk/he;->a(Ljava/util/Set;)V

    .line 16031
    new-instance v9, Lads_mobile_sdk/lo0;

    .line 16032
    invoke-virtual {v6}, Lads_mobile_sdk/he;->j()Ljava/util/List;

    move-result-object v10

    move-object/from16 v13, v26

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16033
    invoke-direct {v9, v10}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 16034
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getAllowedAdFormats()Ljava/util/Set;

    move-result-object v10

    .line 16520
    new-instance v13, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v10, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 16521
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 16522
    check-cast v15, Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;

    .line 16523
    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16524
    sget-object v16, Lads_mobile_sdk/je;->a:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v15, v16, v15

    packed-switch v15, :pswitch_data_1

    .line 16534
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    goto :goto_7

    :pswitch_b
    sget-object v15, Lads_mobile_sdk/t11;->j:Lads_mobile_sdk/t11;

    goto :goto_6

    .line 16535
    :pswitch_c
    sget-object v15, Lads_mobile_sdk/t11;->f:Lads_mobile_sdk/t11;

    goto :goto_6

    .line 16536
    :pswitch_d
    sget-object v15, Lads_mobile_sdk/t11;->e:Lads_mobile_sdk/t11;

    goto :goto_6

    .line 16537
    :pswitch_e
    sget-object v15, Lads_mobile_sdk/t11;->h:Lads_mobile_sdk/t11;

    goto :goto_6

    .line 16538
    :pswitch_f
    sget-object v15, Lads_mobile_sdk/t11;->d:Lads_mobile_sdk/t11;

    goto :goto_6

    .line 16539
    :pswitch_10
    sget-object v15, Lads_mobile_sdk/t11;->i:Lads_mobile_sdk/t11;

    goto :goto_6

    .line 16540
    :pswitch_11
    sget-object v15, Lads_mobile_sdk/t11;->c:Lads_mobile_sdk/t11;

    goto :goto_6

    .line 16541
    :pswitch_12
    sget-object v15, Lads_mobile_sdk/t11;->g:Lads_mobile_sdk/t11;

    .line 16542
    :goto_6
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 16534
    :goto_7
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 16543
    :cond_6
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16544
    invoke-virtual {v6, v13}, Lads_mobile_sdk/he;->a(Ljava/util/ArrayList;)V

    .line 16545
    new-instance v9, Lads_mobile_sdk/lo0;

    .line 16546
    invoke-virtual {v6}, Lads_mobile_sdk/he;->i()Ljava/util/List;

    move-result-object v10

    move-object/from16 v13, v25

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16547
    invoke-direct {v9, v10}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 16548
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getAllowedAdapterClasses()Ljava/util/Set;

    move-result-object v10

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16549
    invoke-virtual {v6, v10}, Lads_mobile_sdk/he;->b(Ljava/util/Set;)V

    .line 16550
    new-instance v9, Lads_mobile_sdk/lo0;

    .line 16551
    invoke-virtual {v6}, Lads_mobile_sdk/he;->k()Ljava/util/List;

    move-result-object v10

    move-object/from16 v13, v24

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16552
    invoke-direct {v9, v10}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 16553
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getExcludedAdapterClasses()Ljava/util/Set;

    move-result-object v10

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16554
    invoke-virtual {v6, v10}, Lads_mobile_sdk/he;->c(Ljava/util/Set;)V

    .line 16555
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_8

    :cond_7
    move-object/from16 v12, v27

    move-object/from16 v11, v28

    .line 16556
    :goto_8
    invoke-virtual {v6}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v6

    move-object/from16 v10, v23

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lads_mobile_sdk/ie;

    .line 16557
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v9

    invoke-virtual {v9}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v9

    iput-object v6, v9, Lads_mobile_sdk/uj2;->K:Lads_mobile_sdk/ie;

    .line 16565
    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16567
    iget-boolean v2, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_8

    .line 16568
    iget-object v2, v0, Lads_mobile_sdk/hf;->k:Lads_mobile_sdk/ja1;

    invoke-virtual {v2}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 16569
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getMediationAdapterInitializationDisabled()Z

    move-result v2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_8

    move-object/from16 v23, v10

    move-object/from16 v28, v11

    move-object/from16 v27, v12

    goto/16 :goto_12

    .line 16577
    :cond_8
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    if-eqz v1, :cond_9

    .line 16578
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->a()J

    move-result-wide v15

    :goto_9
    move-object/from16 v27, v12

    move-wide v12, v15

    goto :goto_a

    .line 16579
    :cond_9
    iget-object v13, v0, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v13}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v15

    goto :goto_9

    .line 16580
    :goto_a
    iput-wide v12, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 16582
    sget-object v15, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    move-object/from16 v23, v10

    move-object/from16 v28, v11

    invoke-virtual {v15}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v10

    invoke-static {v12, v13, v10, v11}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v10

    if-gtz v10, :cond_a

    .line 16583
    iget-object v10, v0, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v10}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v10

    iput-wide v10, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :cond_a
    if-eqz v1, :cond_c

    .line 16591
    iget-object v10, v0, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 17050
    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v14, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v7, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    iput-object v9, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/te;->i:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iput-object v10, v4, Lads_mobile_sdk/te;->j:Lkotlinx/coroutines/sync/Mutex;

    const/4 v11, 0x3

    iput v11, v4, Lads_mobile_sdk/te;->m:I

    const/4 v11, 0x0

    invoke-interface {v10, v11, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-ne v12, v5, :cond_b

    goto/16 :goto_f

    :cond_b
    move-object v15, v1

    move-object v12, v8

    move-object v1, v0

    move-object v0, v15

    move-object v8, v6

    move-object v6, v7

    move-object v7, v2

    move-object v2, v9

    .line 17051
    :goto_b
    :try_start_10
    iget-object v9, v1, Lads_mobile_sdk/hf;->v:Ljava/util/LinkedHashSet;

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 17514
    :try_start_11
    invoke-interface {v10, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 17515
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-object v0, v1

    move-object v9, v2

    move-object v2, v7

    move-object v1, v15

    move-object v7, v6

    move-object v6, v8

    move-object v8, v12

    goto :goto_d

    :catchall_8
    move-exception v0

    const/4 v9, 0x0

    .line 17978
    invoke-interface {v10, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :catchall_9
    move-exception v0

    move-object v10, v6

    :goto_c
    move-object v7, v10

    move-object v6, v12

    goto/16 :goto_15

    .line 17979
    :cond_c
    :goto_d
    :try_start_12
    sget-object v10, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-wide v11, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v13, Lads_mobile_sdk/ve;

    const/4 v15, 0x0

    invoke-direct {v13, v0, v1, v9, v15}, Lads_mobile_sdk/ve;-><init>(Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Ljava/util/Set;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v14, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v7, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v6, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v9, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    iput-object v15, v4, Lads_mobile_sdk/te;->i:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iput-object v15, v4, Lads_mobile_sdk/te;->j:Lkotlinx/coroutines/sync/Mutex;

    const/4 v1, 0x4

    iput v1, v4, Lads_mobile_sdk/te;->m:I

    invoke-virtual {v10, v11, v12, v13, v4}, Lads_mobile_sdk/m21;->a(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_d

    goto :goto_f

    :cond_d
    move-object v12, v0

    move-object v1, v9

    move-object v10, v14

    .line 17992
    :goto_e
    iget-object v0, v12, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 18446
    iput-object v12, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v10, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v7, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v6, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    const/4 v9, 0x5

    iput v9, v4, Lads_mobile_sdk/te;->m:I

    const/4 v9, 0x0

    invoke-interface {v0, v9, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-ne v11, v5, :cond_e

    :goto_f
    move-object v11, v5

    goto/16 :goto_24

    :cond_e
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    move-object v5, v6

    .line 18447
    :goto_10
    :try_start_13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 18448
    iget-object v11, v12, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lads_mobile_sdk/yd;

    if-nez v11, :cond_10

    goto :goto_11

    :cond_10
    const/4 v13, 0x2

    .line 18450
    new-array v14, v13, [Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    sget-object v13, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->NOT_STARTED:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    aput-object v13, v14, p3

    sget-object v13, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->INITIALIZING:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    const/16 v21, 0x1

    aput-object v13, v14, v21

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 18451
    iget-object v14, v11, Lads_mobile_sdk/yd;->a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    .line 18452
    invoke-interface {v14}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 18454
    iget-object v13, v12, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 18455
    iget-object v14, v12, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 18456
    iget-object v11, v11, Lads_mobile_sdk/yd;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    .line 18457
    sget-object v15, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->TIMED_OUT:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-object/from16 p0, v5

    move-object/from16 p1, v6

    .line 18459
    iget-wide v5, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v5, v6}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v5

    long-to-int v5, v5

    move-object/from16 v6, v18

    .line 18460
    invoke-static {v15, v6, v5}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v32

    .line 18465
    invoke-virtual {v12}, Lads_mobile_sdk/hf;->a()J

    move-result-wide v33

    .line 18466
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v30, v9

    move-object/from16 v31, v11

    move-object/from16 v29, v14

    invoke-static/range {v29 .. v34}, Lads_mobile_sdk/kf;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;Lads_mobile_sdk/ke;J)V

    move-object/from16 v5, p0

    move-object/from16 v18, v6

    move-object/from16 v6, p1

    goto :goto_11

    :cond_11
    move-object/from16 p0, v5

    .line 18479
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    const/4 v9, 0x0

    .line 18918
    :try_start_14
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object/from16 v6, p0

    move-object v9, v0

    move-object v14, v10

    move-object v0, v12

    .line 18919
    :goto_12
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    .line 19357
    invoke-virtual {v6}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v2

    move-object/from16 v10, v22

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/he;

    .line 19358
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19359
    new-instance v3, Lads_mobile_sdk/lo0;

    .line 19360
    invoke-virtual {v2}, Lads_mobile_sdk/he;->l()Ljava/util/List;

    move-result-object v5

    move-object/from16 v11, v20

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19361
    invoke-direct {v3, v5}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    move-object/from16 v12, v28

    .line 19362
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v27

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19363
    invoke-virtual {v2, v9}, Lads_mobile_sdk/he;->d(Ljava/util/Set;)V

    .line 19364
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19365
    invoke-virtual {v2}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v2

    move-object/from16 v5, v23

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/ie;

    .line 19366
    iput-object v2, v1, Lads_mobile_sdk/uj2;->K:Lads_mobile_sdk/ie;

    if-eqz v14, :cond_12

    .line 19371
    sget-object v1, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 19806
    sget-object v1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 19807
    sget-object v2, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 19808
    sget-object v2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 19809
    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 19810
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v20

    .line 19816
    new-instance v1, Lads_mobile_sdk/we;

    const/4 v15, 0x0

    invoke-direct {v1, v15, v14, v0, v9}, Lads_mobile_sdk/we;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;Lads_mobile_sdk/hf;Ljava/util/Set;)V

    const/16 v24, 0x3

    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v1

    invoke-static/range {v20 .. v25}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 19818
    :goto_13
    instance-of v0, v3, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_13

    .line 19819
    move-object v0, v3

    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :cond_13
    const/4 v9, 0x0

    .line 19820
    invoke-static {v7, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    :catchall_a
    move-exception v0

    const/4 v9, 0x0

    .line 19871
    :try_start_15
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :catchall_b
    move-exception v0

    const/4 v9, 0x0

    .line 19872
    :try_start_16
    invoke-interface {v8, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :goto_14
    move-object v6, v8

    goto :goto_15

    :catchall_c
    move-exception v0

    move-object v7, v6

    .line 19932
    :goto_15
    :try_start_17
    invoke-virtual {v6, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 19936
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_18

    .line 19938
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_14

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_14

    .line 19944
    invoke-virtual {v6, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 19950
    :cond_14
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_17

    .line 19951
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_16

    .line 19952
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_15

    throw v0

    .line 19953
    :cond_15
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 19954
    :cond_16
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 19955
    :cond_17
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 19956
    :cond_18
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    :catchall_d
    move-exception v0

    move-object v1, v0

    .line 19957
    :try_start_18
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    :catchall_e
    move-exception v0

    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_19
    move-object v13, v12

    move-object/from16 v11, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v14, v26

    move-object/from16 v10, v27

    move-object/from16 v12, v28

    .line 20055
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v11, 0x1

    invoke-static {v9, v6, v11}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v6

    .line 20056
    :try_start_19
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 20057
    iget-object v11, v0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 20555
    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v6, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v9, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v11, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, v4, Lads_mobile_sdk/te;->m:I

    const/4 v1, 0x0

    invoke-interface {v11, v1, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    if-ne v2, v5, :cond_1a

    goto/16 :goto_f

    :cond_1a
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v24, v7

    move-object/from16 v28, v12

    move-object/from16 v25, v13

    move-object v7, v6

    .line 20556
    :goto_16
    :try_start_1a
    iget-wide v12, v0, Lads_mobile_sdk/hf;->o:J

    sget-object v26, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    move-object/from16 v29, v14

    move-object/from16 v27, v15

    invoke-virtual/range {v26 .. v26}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v12

    if-eqz v12, :cond_1b

    const/4 v13, 0x1

    .line 20557
    iput-boolean v13, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 20558
    iget-object v12, v0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/tx;->b()J

    move-result-wide v12

    sget-object v14, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v12, v13, v14}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    iput-wide v12, v0, Lads_mobile_sdk/hf;->o:J

    .line 20560
    :cond_1b
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_17

    const/4 v15, 0x0

    .line 21057
    :try_start_1b
    invoke-interface {v11, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 21058
    iget-boolean v11, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v11, :cond_1e

    .line 21059
    iget-object v11, v0, Lads_mobile_sdk/hf;->k:Lads_mobile_sdk/ja1;

    invoke-virtual {v11}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v11

    if-eqz v11, :cond_1e

    .line 21060
    invoke-virtual {v11}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getMediationAdapterInitializationDisabled()Z

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_1e

    .line 21061
    iget-object v11, v0, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_18

    .line 21642
    :try_start_1c
    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    :try_start_1d
    iput-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_18

    :try_start_1e
    iput-object v7, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    :try_start_1f
    iput-object v6, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v9, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v11, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    const/4 v12, 0x7

    iput v12, v4, Lads_mobile_sdk/te;->m:I

    const/4 v15, 0x0

    invoke-interface {v11, v15, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_18

    if-ne v12, v5, :cond_1c

    goto/16 :goto_f

    :cond_1c
    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    move-object v14, v7

    .line 21643
    :goto_17
    :try_start_20
    iget-object v7, v1, Lads_mobile_sdk/hf;->v:Ljava/util/LinkedHashSet;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    .line 22228
    :try_start_21
    invoke-interface {v11, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v7, :cond_1d

    .line 22230
    invoke-static/range {v16 .. v16}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    :cond_1d
    move-object v15, v1

    move-object v1, v0

    move-object v0, v15

    :goto_18
    move-object v15, v2

    goto :goto_19

    :catchall_f
    move-exception v0

    const/4 v9, 0x0

    .line 22813
    invoke-interface {v11, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    :catchall_10
    move-exception v0

    goto/16 :goto_2a

    :catchall_11
    move-exception v0

    move-object v2, v6

    move-object v6, v7

    goto/16 :goto_2c

    :cond_1e
    move-object v14, v7

    goto :goto_18

    .line 22814
    :goto_19
    :try_start_22
    invoke-static {}, Lads_mobile_sdk/ie;->v()Lads_mobile_sdk/he;

    move-result-object v2

    move-object/from16 v7, v27

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22815
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_20

    .line 22816
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getInitializationTimeoutMs()J

    move-result-wide v11

    .line 22817
    invoke-virtual {v2, v11, v12}, Lads_mobile_sdk/he;->a(J)V

    .line 22818
    new-instance v7, Lads_mobile_sdk/lo0;

    .line 22819
    invoke-virtual {v2}, Lads_mobile_sdk/he;->h()Ljava/util/List;

    move-result-object v11

    move-object/from16 v13, v25

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22820
    invoke-direct {v7, v11}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 22821
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getAllowedAdUnitIds()Ljava/util/Set;

    move-result-object v11

    move-object/from16 v12, v28

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22822
    invoke-virtual {v2, v11}, Lads_mobile_sdk/he;->a(Ljava/util/Set;)V

    .line 22823
    new-instance v7, Lads_mobile_sdk/lo0;

    .line 22824
    invoke-virtual {v2}, Lads_mobile_sdk/he;->j()Ljava/util/List;

    move-result-object v11

    move-object/from16 v13, v29

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22825
    invoke-direct {v7, v11}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 22826
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getAllowedAdFormats()Ljava/util/Set;

    move-result-object v11

    .line 23312
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v16, v3

    move-object/from16 v25, v5

    const/16 v3, 0xa

    invoke-static {v11, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 23313
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 23314
    check-cast v5, Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;

    .line 23315
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23316
    sget-object v11, Lads_mobile_sdk/je;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v11, v5

    packed-switch v5, :pswitch_data_2

    .line 23326
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    goto :goto_1c

    :pswitch_13
    sget-object v5, Lads_mobile_sdk/t11;->j:Lads_mobile_sdk/t11;

    goto :goto_1b

    .line 23327
    :pswitch_14
    sget-object v5, Lads_mobile_sdk/t11;->f:Lads_mobile_sdk/t11;

    goto :goto_1b

    .line 23328
    :pswitch_15
    sget-object v5, Lads_mobile_sdk/t11;->e:Lads_mobile_sdk/t11;

    goto :goto_1b

    .line 23329
    :pswitch_16
    sget-object v5, Lads_mobile_sdk/t11;->h:Lads_mobile_sdk/t11;

    goto :goto_1b

    .line 23330
    :pswitch_17
    sget-object v5, Lads_mobile_sdk/t11;->d:Lads_mobile_sdk/t11;

    goto :goto_1b

    .line 23331
    :pswitch_18
    sget-object v5, Lads_mobile_sdk/t11;->i:Lads_mobile_sdk/t11;

    goto :goto_1b

    .line 23332
    :pswitch_19
    sget-object v5, Lads_mobile_sdk/t11;->c:Lads_mobile_sdk/t11;

    goto :goto_1b

    .line 23333
    :pswitch_1a
    sget-object v5, Lads_mobile_sdk/t11;->g:Lads_mobile_sdk/t11;

    .line 23334
    :goto_1b
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 23326
    :goto_1c
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 23335
    :cond_1f
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23336
    invoke-virtual {v2, v13}, Lads_mobile_sdk/he;->a(Ljava/util/ArrayList;)V

    .line 23337
    new-instance v3, Lads_mobile_sdk/lo0;

    .line 23338
    invoke-virtual {v2}, Lads_mobile_sdk/he;->i()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23339
    invoke-direct {v3, v5}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 23340
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getAllowedAdapterClasses()Ljava/util/Set;

    move-result-object v5

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23341
    invoke-virtual {v2, v5}, Lads_mobile_sdk/he;->b(Ljava/util/Set;)V

    .line 23342
    new-instance v3, Lads_mobile_sdk/lo0;

    .line 23343
    invoke-virtual {v2}, Lads_mobile_sdk/he;->k()Ljava/util/List;

    move-result-object v5

    move-object/from16 v13, v24

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23344
    invoke-direct {v3, v5}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 23345
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->getExcludedAdapterClasses()Ljava/util/Set;

    move-result-object v5

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23346
    invoke-virtual {v2, v5}, Lads_mobile_sdk/he;->c(Ljava/util/Set;)V

    .line 23347
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1d

    :cond_20
    move-object/from16 v16, v3

    move-object/from16 v25, v5

    move-object/from16 v12, v28

    .line 23348
    :goto_1d
    invoke-virtual {v2}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v2

    move-object/from16 v5, v23

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v2

    check-cast v8, Lads_mobile_sdk/ie;

    .line 23349
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    iput-object v8, v2, Lads_mobile_sdk/uj2;->K:Lads_mobile_sdk/ie;

    .line 23357
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 23359
    iget-boolean v3, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v3, :cond_21

    .line 23360
    iget-object v3, v0, Lads_mobile_sdk/hf;->k:Lads_mobile_sdk/ja1;

    invoke-virtual {v3}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 23361
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getMediationAdapterInitializationDisabled()Z

    move-result v3

    const/4 v13, 0x1

    if-ne v3, v13, :cond_21

    move-object/from16 v17, v4

    move-object v7, v6

    move-object/from16 v27, v10

    move-object/from16 v28, v12

    goto/16 :goto_27

    .line 23369
    :cond_21
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    if-eqz v1, :cond_22

    .line 23370
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->a()J

    move-result-wide v23

    :goto_1e
    move-object/from16 v27, v10

    move-wide/from16 v9, v23

    goto :goto_1f

    .line 23371
    :cond_22
    iget-object v3, v0, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v23

    goto :goto_1e

    .line 23372
    :goto_1f
    iput-wide v9, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 23374
    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    move-object/from16 v28, v12

    invoke-virtual {v3}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v3

    if-gtz v3, :cond_23

    .line 23375
    iget-object v3, v0, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v9

    iput-wide v9, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :cond_23
    if-eqz v1, :cond_25

    .line 23383
    iget-object v3, v0, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 23926
    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v1, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v15, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v14, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v6, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v7, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/te;->i:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iput-object v3, v4, Lads_mobile_sdk/te;->j:Lkotlinx/coroutines/sync/Mutex;

    const/16 v9, 0x8

    iput v9, v4, Lads_mobile_sdk/te;->m:I

    const/4 v9, 0x0

    invoke-interface {v3, v9, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_16

    move-object/from16 v11, v25

    if-ne v10, v11, :cond_24

    goto/16 :goto_24

    :cond_24
    move-object v10, v6

    move-object v12, v14

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    .line 23927
    :goto_20
    :try_start_23
    iget-object v6, v1, Lads_mobile_sdk/hf;->v:Ljava/util/LinkedHashSet;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_12

    .line 24474
    :try_start_24
    invoke-interface {v3, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 24475
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-object v0, v1

    move-object v3, v8

    move-object v6, v10

    move-object v8, v12

    move-object v1, v14

    goto :goto_22

    :catchall_12
    move-exception v0

    const/4 v9, 0x0

    .line 25022
    invoke-interface {v3, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    :goto_21
    move-object v2, v10

    move-object v6, v12

    goto/16 :goto_2c

    :cond_25
    move-object/from16 v11, v25

    move-object v3, v8

    move-object v8, v14

    .line 25023
    :goto_22
    :try_start_25
    sget-object v9, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-wide v12, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v10, Lads_mobile_sdk/ve;

    const/4 v14, 0x0

    invoke-direct {v10, v0, v1, v2, v14}, Lads_mobile_sdk/ve;-><init>(Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Ljava/util/Set;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v15, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v6, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v3, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v7, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    const/4 v14, 0x0

    iput-object v14, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    iput-object v14, v4, Lads_mobile_sdk/te;->i:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iput-object v14, v4, Lads_mobile_sdk/te;->j:Lkotlinx/coroutines/sync/Mutex;

    const/16 v1, 0x9

    iput v1, v4, Lads_mobile_sdk/te;->m:I

    invoke-virtual {v9, v12, v13, v10, v4}, Lads_mobile_sdk/m21;->a(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_15

    if-ne v1, v11, :cond_26

    goto :goto_24

    :cond_26
    move-object v12, v0

    move-object v1, v2

    move-object v2, v7

    move-object v10, v15

    move-object v7, v6

    .line 25036
    :goto_23
    :try_start_26
    iget-object v0, v12, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 25574
    iput-object v12, v4, Lads_mobile_sdk/te;->a:Lads_mobile_sdk/hf;

    iput-object v10, v4, Lads_mobile_sdk/te;->b:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/te;->c:Ljava/lang/Object;

    iput-object v7, v4, Lads_mobile_sdk/te;->d:Ljava/io/Closeable;

    iput-object v3, v4, Lads_mobile_sdk/te;->e:Ljava/lang/Object;

    iput-object v2, v4, Lads_mobile_sdk/te;->f:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/te;->g:Ljava/lang/Object;

    iput-object v0, v4, Lads_mobile_sdk/te;->h:Ljava/lang/Object;

    const/16 v15, 0xa

    iput v15, v4, Lads_mobile_sdk/te;->m:I

    const/4 v9, 0x0

    invoke-interface {v0, v9, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    if-ne v6, v11, :cond_27

    :goto_24
    return-object v11

    :cond_27
    move-object/from16 v35, v1

    move-object v1, v0

    move-object/from16 v0, v35

    .line 25575
    :goto_25
    :try_start_27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 25576
    iget-object v11, v12, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lads_mobile_sdk/yd;

    if-nez v11, :cond_28

    goto :goto_26

    :cond_28
    const/4 v13, 0x2

    .line 25578
    new-array v14, v13, [Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    sget-object v15, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->NOT_STARTED:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    aput-object v15, v14, p3

    sget-object v15, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->INITIALIZING:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    const/16 v21, 0x1

    aput-object v15, v14, v21

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 25579
    iget-object v15, v11, Lads_mobile_sdk/yd;->a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    .line 25580
    invoke-interface {v15}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_29

    .line 25582
    iget-object v14, v12, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 25583
    iget-object v15, v12, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 25584
    iget-object v11, v11, Lads_mobile_sdk/yd;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    .line 25585
    sget-object v13, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->TIMED_OUT:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-object/from16 p0, v3

    move-object/from16 v17, v4

    .line 25587
    iget-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v3, v4}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    move-object/from16 v4, v18

    .line 25588
    invoke-static {v13, v4, v3}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v32

    .line 25593
    invoke-virtual {v12}, Lads_mobile_sdk/hf;->a()J

    move-result-wide v33

    .line 25594
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v30, v9

    move-object/from16 v31, v11

    move-object/from16 v29, v15

    invoke-static/range {v29 .. v34}, Lads_mobile_sdk/kf;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;Lads_mobile_sdk/ke;J)V

    move-object/from16 v3, p0

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    goto :goto_26

    :cond_29
    move-object/from16 v17, v4

    goto :goto_26

    :cond_2a
    move-object/from16 p0, v3

    move-object/from16 v17, v4

    .line 25607
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_14

    const/4 v9, 0x0

    .line 26130
    :try_start_28
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    move-object v2, v0

    move-object v14, v8

    move-object v15, v10

    move-object v0, v12

    move-object/from16 v8, p0

    .line 26131
    :goto_27
    :try_start_29
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    .line 26569
    invoke-virtual {v8}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v3

    move-object/from16 v10, v22

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lads_mobile_sdk/he;

    move-object/from16 v4, v16

    .line 26570
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26571
    new-instance v4, Lads_mobile_sdk/lo0;

    .line 26572
    invoke-virtual {v3}, Lads_mobile_sdk/he;->l()Ljava/util/List;

    move-result-object v6

    move-object/from16 v11, v20

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26573
    invoke-direct {v4, v6}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    move-object/from16 v12, v28

    .line 26574
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, v27

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26575
    invoke-virtual {v3, v2}, Lads_mobile_sdk/he;->d(Ljava/util/Set;)V

    .line 26576
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26577
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lads_mobile_sdk/ie;

    .line 26578
    iput-object v3, v1, Lads_mobile_sdk/uj2;->K:Lads_mobile_sdk/ie;

    if-eqz v15, :cond_2b

    .line 26583
    sget-object v1, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 27023
    sget-object v1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-virtual/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 27024
    sget-object v3, Lads_mobile_sdk/rs3;->b:Lads_mobile_sdk/qs3;

    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 27025
    sget-object v3, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 27026
    sget-object v3, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 27027
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    .line 27033
    new-instance v11, Lads_mobile_sdk/we;

    const/4 v9, 0x0

    invoke-direct {v11, v9, v15, v0, v2}, Lads_mobile_sdk/we;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;Lads_mobile_sdk/hf;Ljava/util/Set;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_28

    :cond_2b
    const/4 v4, 0x0

    .line 27105
    :goto_28
    instance-of v0, v4, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_2c

    .line 27106
    move-object v0, v4

    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_13

    :cond_2c
    const/4 v9, 0x0

    .line 27107
    invoke-static {v7, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :catchall_13
    move-exception v0

    move-object v8, v14

    goto :goto_29

    :catchall_14
    move-exception v0

    const/4 v9, 0x0

    .line 27141
    :try_start_2a
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    :catchall_15
    move-exception v0

    move-object v7, v6

    :goto_29
    move-object v2, v7

    move-object v6, v8

    goto :goto_2c

    :catchall_16
    move-exception v0

    :goto_2a
    move-object v2, v6

    goto :goto_2b

    :catchall_17
    move-exception v0

    const/4 v9, 0x0

    .line 27142
    :try_start_2b
    invoke-interface {v11, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_18

    :catchall_18
    move-exception v0

    move-object v2, v6

    move-object v14, v7

    :goto_2b
    move-object v6, v14

    goto :goto_2c

    :catchall_19
    move-exception v0

    move-object v2, v6

    .line 27272
    :goto_2c
    :try_start_2c
    invoke-virtual {v6, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 27276
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_31

    .line 27278
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2d

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2d

    .line 27284
    invoke-virtual {v6, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 27290
    :cond_2d
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_30

    .line 27291
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2f

    .line 27292
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_2e

    throw v0

    .line 27293
    :cond_2e
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 27294
    :cond_2f
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 27295
    :cond_30
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 27296
    :cond_31
    throw v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1a

    :catchall_1a
    move-exception v0

    move-object v1, v0

    .line 27297
    :try_start_2d
    throw v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1b

    :catchall_1b
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public static final a(Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 5426
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5427
    instance-of v2, v1, Lads_mobile_sdk/xe;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/xe;

    iget v3, v2, Lads_mobile_sdk/xe;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/xe;->j:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/xe;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/xe;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/xe;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 5722
    iget v4, v2, Lads_mobile_sdk/xe;->j:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_6

    if-eq v4, v9, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v2, Lads_mobile_sdk/xe;->g:Ljava/util/Collection;

    iget-object v4, v2, Lads_mobile_sdk/xe;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v2, Lads_mobile_sdk/xe;->e:Ljava/util/Map$Entry;

    iget-object v8, v2, Lads_mobile_sdk/xe;->d:Ljava/util/Iterator;

    iget-object v9, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    iget-object v11, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v12, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget-object v0, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/Set;

    iget-object v4, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iget-object v7, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-object v0, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/Set;

    iget-object v4, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iget-object v8, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v0, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/Set;

    iget-object v4, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    iget-object v9, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v0, v9

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5726
    iget-object v1, v0, Lads_mobile_sdk/hf;->z:Lkotlinx/coroutines/CompletableJob;

    iput-object v0, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    move-object/from16 v4, p1

    iput-object v4, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    move-object/from16 v11, p2

    iput-object v11, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    iput v9, v2, Lads_mobile_sdk/xe;->j:I

    invoke-interface {v1, v2}, Lkotlinx/coroutines/CompletableJob;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    goto/16 :goto_8

    .line 5736
    :cond_7
    :goto_1
    iget-object v1, v0, Lads_mobile_sdk/hf;->g:Lads_mobile_sdk/pn;

    iput-object v0, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    iput-object v4, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    iput v8, v2, Lads_mobile_sdk/xe;->j:I

    invoke-virtual {v1, v4, v2}, Lads_mobile_sdk/pn;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    goto/16 :goto_8

    :cond_8
    move-object v8, v0

    move-object v0, v11

    .line 5737
    :goto_2
    check-cast v1, Ljava/util/Set;

    .line 5752
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5754
    iget-object v0, v8, Lads_mobile_sdk/hf;->g:Lads_mobile_sdk/pn;

    iput-object v8, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    iput-object v4, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    iput-object v1, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    iput v7, v2, Lads_mobile_sdk/xe;->j:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5755
    invoke-static {v0, v2}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    goto/16 :goto_8

    :cond_9
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move-object v7, v8

    .line 5756
    :goto_3
    check-cast v1, Lads_mobile_sdk/jm;

    invoke-virtual {v1}, Lads_mobile_sdk/jm;->z()Ljava/util/Map;

    move-result-object v1

    const-string v8, "getAdapterInitializationConfigsMap(...)"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6281
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6282
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 6283
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 6810
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 6811
    :cond_b
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    if-eqz v4, :cond_c

    .line 6812
    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;->a()J

    move-result-wide v11

    goto :goto_5

    :cond_c
    iget-object v1, v7, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v11

    .line 6813
    :goto_5
    iput-wide v11, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 6815
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v1

    if-gtz v1, :cond_d

    .line 6816
    iget-object v1, v7, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v11

    iput-wide v11, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 7341
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7342
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v11, v0

    move-object v0, v1

    move-object v8, v4

    move-object v12, v7

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/Map$Entry;

    .line 7343
    iget-object v4, v12, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 7871
    iput-object v12, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    iput-object v11, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    iput-object v8, v2, Lads_mobile_sdk/xe;->d:Ljava/util/Iterator;

    iput-object v7, v2, Lads_mobile_sdk/xe;->e:Ljava/util/Map$Entry;

    iput-object v4, v2, Lads_mobile_sdk/xe;->f:Lkotlinx/coroutines/sync/Mutex;

    iput-object v0, v2, Lads_mobile_sdk/xe;->g:Ljava/util/Collection;

    iput v6, v2, Lads_mobile_sdk/xe;->j:I

    invoke-interface {v4, v10, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_e

    goto :goto_8

    :cond_e
    move-object v9, v0

    .line 7872
    :goto_7
    :try_start_0
    iget-object v1, v12, Lads_mobile_sdk/hf;->n:Ljava/util/LinkedHashMap;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-nez v1, :cond_f

    .line 7874
    iget-object v13, v12, Lads_mobile_sdk/hf;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/ye;

    invoke-direct {v1, v12, v7, v11, v10}, Lads_mobile_sdk/ye;-><init>(Lads_mobile_sdk/hf;Ljava/util/Map$Entry;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    .line 7875
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 7876
    const-string v15, "<this>"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "context"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "block"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8134
    new-instance v15, Lads_mobile_sdk/ws3;

    invoke-direct {v15, v1, v10}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 8135
    iget-object v13, v12, Lads_mobile_sdk/hf;->n:Ljava/util/LinkedHashMap;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    const-string v14, "<get-key>(...)"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8657
    :cond_f
    invoke-interface {v4, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 8658
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 8668
    invoke-interface {v4, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 8670
    :cond_10
    check-cast v0, Ljava/util/List;

    .line 8671
    iput-object v10, v2, Lads_mobile_sdk/xe;->a:Lads_mobile_sdk/hf;

    iput-object v10, v2, Lads_mobile_sdk/xe;->b:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/xe;->c:Ljava/util/Collection;

    iput-object v10, v2, Lads_mobile_sdk/xe;->d:Ljava/util/Iterator;

    iput-object v10, v2, Lads_mobile_sdk/xe;->e:Ljava/util/Map$Entry;

    iput-object v10, v2, Lads_mobile_sdk/xe;->f:Lkotlinx/coroutines/sync/Mutex;

    iput-object v10, v2, Lads_mobile_sdk/xe;->g:Ljava/util/Collection;

    iput v5, v2, Lads_mobile_sdk/xe;->j:I

    invoke-static {v0, v2}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_11

    :goto_8
    return-object v3

    .line 8672
    :cond_11
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final a(Lads_mobile_sdk/hf;Ljava/lang/String;Lads_mobile_sdk/be;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 1672
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1673
    instance-of v6, v5, Lads_mobile_sdk/qe;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lads_mobile_sdk/qe;

    iget v7, v6, Lads_mobile_sdk/qe;->i:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_0

    sub-int/2addr v7, v8

    iput v7, v6, Lads_mobile_sdk/qe;->i:I

    goto :goto_0

    :cond_0
    new-instance v6, Lads_mobile_sdk/qe;

    invoke-direct {v6, v0, v5}, Lads_mobile_sdk/qe;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v5, v6, Lads_mobile_sdk/qe;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 2017
    iget v8, v6, Lads_mobile_sdk/qe;->i:I

    const-string v9, "Timeout."

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v14, 0x1

    if-eqz v8, :cond_5

    if-eq v8, v14, :cond_4

    if-eq v8, v12, :cond_3

    if-eq v8, v11, :cond_2

    if-ne v8, v10, :cond_1

    iget-object v0, v6, Lads_mobile_sdk/qe;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v6, Lads_mobile_sdk/qe;->e:Lads_mobile_sdk/v01;

    iget-object v2, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    iget-object v3, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iget-object v6, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    :try_start_0
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    iget-object v3, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iget-object v1, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    :try_start_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v22, v1

    move-object v1, v0

    move-object/from16 v0, v22

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_3
    iget-object v0, v6, Lads_mobile_sdk/qe;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v6, Lads_mobile_sdk/qe;->e:Lads_mobile_sdk/v01;

    iget-object v2, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    iget-object v3, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iget-object v6, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    :try_start_2
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v0

    goto/16 :goto_2

    :cond_4
    iget-object v2, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    iget-object v3, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iget-object v1, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    :try_start_3
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v22, v1

    move-object v1, v0

    move-object/from16 v0, v22

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :cond_5
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2022
    iget-object v5, v0, Lads_mobile_sdk/hf;->j:Lads_mobile_sdk/g83;

    sget-object v8, Lads_mobile_sdk/s11;->i:Lads_mobile_sdk/s11;

    .line 2536
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 2537
    new-instance v11, Lads_mobile_sdk/ks3;

    .line 2538
    new-instance v12, Lads_mobile_sdk/n03;

    invoke-direct {v12}, Lads_mobile_sdk/n03;-><init>()V

    .line 2539
    new-instance v13, Lads_mobile_sdk/tn1;

    invoke-direct {v13}, Lads_mobile_sdk/tn1;-><init>()V

    .line 2540
    new-instance v14, Lads_mobile_sdk/m33;

    invoke-direct {v14}, Lads_mobile_sdk/m33;-><init>()V

    .line 2541
    new-instance v15, Lads_mobile_sdk/zb;

    invoke-direct {v15}, Lads_mobile_sdk/zb;-><init>()V

    .line 2542
    invoke-direct {v11, v12, v13, v14, v15}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 2543
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v12

    .line 2544
    iget-object v12, v12, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v13, "block"

    const-string v14, "context"

    const-string v15, "<this>"

    if-nez v12, :cond_11

    .line 2545
    invoke-static {v5, v8, v10, v11}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v5

    .line 2549
    :try_start_4
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v8

    .line 2550
    iget-object v8, v8, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 2551
    iget-object v8, v8, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    .line 2552
    iput-object v1, v8, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    .line 2560
    iget-object v8, v0, Lads_mobile_sdk/hf;->a:Lkotlinx/coroutines/CoroutineScope;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11, v10, v11}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v12

    new-instance v10, Lads_mobile_sdk/se;

    invoke-direct {v10, v0, v1, v2, v11}, Lads_mobile_sdk/se;-><init>(Lads_mobile_sdk/hf;Ljava/lang/String;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)V

    .line 2561
    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2809
    new-instance v2, Lads_mobile_sdk/vs3;

    invoke-direct {v2, v10, v11}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v16, v8

    move-object/from16 v17, v12

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v2

    .line 2810
    sget-object v8, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    new-instance v10, Lads_mobile_sdk/re;

    invoke-direct {v10, v2, v11}, Lads_mobile_sdk/re;-><init>(Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    iput-object v1, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iput-object v5, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iput-object v5, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    const/4 v2, 0x1

    iput v2, v6, Lads_mobile_sdk/qe;->i:I

    invoke-virtual {v8, v3, v4, v10, v6}, Lads_mobile_sdk/m21;->a(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v2, v7, :cond_6

    goto/16 :goto_8

    :cond_6
    move-object v3, v5

    move-object v5, v2

    move-object v2, v3

    .line 2811
    :goto_1
    :try_start_5
    move-object v4, v5

    check-cast v4, Lads_mobile_sdk/v01;

    .line 2830
    instance-of v5, v4, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_7

    .line 2831
    move-object v5, v4

    check-cast v5, Lads_mobile_sdk/i01;

    const/4 v8, 0x0

    .line 2832
    invoke-static {v5, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 2833
    :cond_7
    instance-of v5, v4, Lads_mobile_sdk/r01;

    if-eqz v5, :cond_a

    .line 2834
    iget-object v5, v0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 3337
    iput-object v0, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    iput-object v1, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iput-object v3, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    iput-object v4, v6, Lads_mobile_sdk/qe;->e:Lads_mobile_sdk/v01;

    iput-object v5, v6, Lads_mobile_sdk/qe;->f:Lkotlinx/coroutines/sync/Mutex;

    const/4 v8, 0x2

    iput v8, v6, Lads_mobile_sdk/qe;->i:I

    const/4 v11, 0x0

    invoke-interface {v5, v11, v6}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne v6, v7, :cond_8

    goto/16 :goto_8

    :cond_8
    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    move-object v6, v0

    .line 3338
    :goto_2
    :try_start_6
    iget-object v0, v6, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/yd;

    if-eqz v0, :cond_9

    .line 3339
    iget-object v0, v0, Lads_mobile_sdk/yd;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    .line 3340
    :goto_3
    iget-object v7, v6, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 3341
    iget-object v8, v6, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 3345
    sget-object v10, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->TIMED_OUT:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    .line 3347
    iget-object v11, v6, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v11}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v11

    invoke-static {v11, v12}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v11

    long-to-int v11, v11

    .line 3348
    invoke-static {v10, v9, v11}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v9

    .line 3353
    invoke-virtual {v6}, Lads_mobile_sdk/hf;->a()J

    move-result-wide v10

    .line 3354
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p2, v0

    move-object/from16 p1, v4

    move-object/from16 p0, v8

    move-object/from16 p3, v9

    move-wide/from16 p4, v10

    invoke-static/range {p0 .. p5}, Lads_mobile_sdk/kf;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;Lads_mobile_sdk/ke;J)V

    .line 3365
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v11, 0x0

    .line 3859
    :try_start_7
    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    const/4 v11, 0x0

    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 3861
    :cond_a
    :goto_4
    instance-of v0, v4, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_b

    .line 3862
    move-object v0, v4

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v8, 0x0

    .line 3863
    invoke-static {v0, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_b
    const/4 v11, 0x0

    .line 3864
    invoke-static {v2, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :goto_5
    move-object v5, v3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v5

    .line 3885
    :goto_6
    :try_start_8
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3889
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_10

    .line 3891
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_c

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_c

    .line 3897
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 3903
    :cond_c
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_f

    .line 3904
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_e

    .line 3905
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_d

    throw v0

    .line 3906
    :cond_d
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3907
    :cond_e
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 3908
    :cond_f
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 3909
    :cond_10
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    move-object v1, v0

    .line 3910
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 3957
    :cond_11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v10, 0x1

    invoke-static {v8, v5, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 3963
    :try_start_a
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v8

    .line 3964
    iget-object v8, v8, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 3965
    iget-object v8, v8, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    .line 3966
    iput-object v1, v8, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    .line 3974
    iget-object v8, v0, Lads_mobile_sdk/hf;->a:Lkotlinx/coroutines/CoroutineScope;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11, v10, v11}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v10

    new-instance v12, Lads_mobile_sdk/se;

    invoke-direct {v12, v0, v1, v2, v11}, Lads_mobile_sdk/se;-><init>(Lads_mobile_sdk/hf;Ljava/lang/String;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)V

    .line 3975
    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4223
    new-instance v2, Lads_mobile_sdk/vs3;

    invoke-direct {v2, v12, v11}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v16, v8

    move-object/from16 v17, v10

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v2

    .line 4224
    sget-object v8, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    new-instance v10, Lads_mobile_sdk/re;

    invoke-direct {v10, v2, v11}, Lads_mobile_sdk/re;-><init>(Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    iput-object v1, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iput-object v5, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iput-object v5, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    const/4 v2, 0x3

    iput v2, v6, Lads_mobile_sdk/qe;->i:I

    invoke-virtual {v8, v3, v4, v10, v6}, Lads_mobile_sdk/m21;->a(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-ne v2, v7, :cond_12

    goto :goto_8

    :cond_12
    move-object v3, v5

    move-object v5, v2

    move-object v2, v3

    .line 4225
    :goto_7
    :try_start_b
    move-object v4, v5

    check-cast v4, Lads_mobile_sdk/v01;

    .line 4244
    instance-of v5, v4, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_13

    .line 4245
    move-object v5, v4

    check-cast v5, Lads_mobile_sdk/i01;

    const/4 v8, 0x0

    .line 4246
    invoke-static {v5, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 4247
    :cond_13
    instance-of v5, v4, Lads_mobile_sdk/r01;

    if-eqz v5, :cond_16

    .line 4248
    iget-object v5, v0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 4751
    iput-object v0, v6, Lads_mobile_sdk/qe;->a:Lads_mobile_sdk/hf;

    iput-object v1, v6, Lads_mobile_sdk/qe;->b:Ljava/lang/String;

    iput-object v3, v6, Lads_mobile_sdk/qe;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v6, Lads_mobile_sdk/qe;->d:Ljava/io/Closeable;

    iput-object v4, v6, Lads_mobile_sdk/qe;->e:Lads_mobile_sdk/v01;

    iput-object v5, v6, Lads_mobile_sdk/qe;->f:Lkotlinx/coroutines/sync/Mutex;

    const/4 v8, 0x4

    iput v8, v6, Lads_mobile_sdk/qe;->i:I

    const/4 v11, 0x0

    invoke-interface {v5, v11, v6}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-ne v6, v7, :cond_14

    :goto_8
    return-object v7

    :cond_14
    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    move-object v6, v0

    .line 4752
    :goto_9
    :try_start_c
    iget-object v0, v6, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/yd;

    if-eqz v0, :cond_15

    .line 4753
    iget-object v0, v0, Lads_mobile_sdk/yd;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    goto :goto_a

    :cond_15
    const/4 v0, 0x0

    .line 4754
    :goto_a
    iget-object v7, v6, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 4755
    iget-object v8, v6, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 4759
    sget-object v10, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->TIMED_OUT:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    .line 4761
    iget-object v11, v6, Lads_mobile_sdk/hf;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {v11}, Lads_mobile_sdk/ex0;->p()J

    move-result-wide v11

    invoke-static {v11, v12}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v11

    long-to-int v11, v11

    .line 4762
    invoke-static {v10, v9, v11}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v9

    .line 4767
    invoke-virtual {v6}, Lads_mobile_sdk/hf;->a()J

    move-result-wide v10

    .line 4768
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p2, v0

    move-object/from16 p1, v4

    move-object/from16 p0, v8

    move-object/from16 p3, v9

    move-wide/from16 p4, v10

    invoke-static/range {p0 .. p5}, Lads_mobile_sdk/kf;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;Lads_mobile_sdk/ke;J)V

    .line 4779
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    const/4 v11, 0x0

    .line 5273
    :try_start_d
    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_b

    :catchall_6
    move-exception v0

    const/4 v11, 0x0

    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 5314
    :cond_16
    :goto_b
    instance-of v0, v4, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_17

    .line 5315
    move-object v0, v4

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v8, 0x0

    .line 5316
    invoke-static {v0, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_17
    const/4 v11, 0x0

    .line 5317
    invoke-static {v2, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :goto_c
    move-object v5, v3

    goto :goto_d

    :catchall_7
    move-exception v0

    move-object v2, v5

    .line 5327
    :goto_d
    :try_start_e
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 5331
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_1c

    .line 5333
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_18

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_18

    .line 5339
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5345
    :cond_18
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1b

    .line 5346
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1a

    .line 5347
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_19

    throw v0

    .line 5348
    :cond_19
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 5349
    :cond_1a
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 5350
    :cond_1b
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 5351
    :cond_1c
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :catchall_8
    move-exception v0

    move-object v1, v0

    .line 5352
    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final a(Lads_mobile_sdk/hf;Ljava/lang/String;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    instance-of v3, v2, Lads_mobile_sdk/me;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/me;

    iget v4, v3, Lads_mobile_sdk/me;->f:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/me;->f:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/me;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/me;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lads_mobile_sdk/me;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 467
    iget v5, v3, Lads_mobile_sdk/me;->f:I

    const-string v6, "The adapter was unable to be instantiated via reflection."

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eqz v5, :cond_6

    if-eq v5, v9, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v10, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v0, v3, Lads_mobile_sdk/me;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v3, Lads_mobile_sdk/me;->b:Ljava/lang/String;

    iget-object v5, v3, Lads_mobile_sdk/me;->a:Lads_mobile_sdk/hf;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v1

    move-object v1, v0

    goto :goto_2

    :cond_4
    iget-object v0, v3, Lads_mobile_sdk/me;->c:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/be;

    iget-object v1, v3, Lads_mobile_sdk/me;->b:Ljava/lang/String;

    iget-object v5, v3, Lads_mobile_sdk/me;->a:Lads_mobile_sdk/hf;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v0, v5

    :cond_5
    move-object v13, v1

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 475
    sget-object v2, Lads_mobile_sdk/hf;->A:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lads_mobile_sdk/q01;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 477
    :cond_7
    iput-object v0, v3, Lads_mobile_sdk/me;->a:Lads_mobile_sdk/hf;

    iput-object v1, v3, Lads_mobile_sdk/me;->b:Ljava/lang/String;

    move-object/from16 v2, p2

    iput-object v2, v3, Lads_mobile_sdk/me;->c:Ljava/lang/Object;

    iput v9, v3, Lads_mobile_sdk/me;->f:I

    invoke-virtual {v0, v3}, Lads_mobile_sdk/hf;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_5

    goto :goto_4

    .line 480
    :goto_1
    iget-object v12, v0, Lads_mobile_sdk/hf;->d:Lads_mobile_sdk/rv1;

    const/16 v16, 0x0

    const/16 v17, 0xa

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static/range {v12 .. v17}, Lads_mobile_sdk/rv1;->a(Lads_mobile_sdk/rv1;Ljava/lang/String;ZZLads_mobile_sdk/j53;I)Lads_mobile_sdk/jf;

    move-result-object v1

    if-nez v1, :cond_a

    .line 482
    iget-object v1, v0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 1032
    iput-object v0, v3, Lads_mobile_sdk/me;->a:Lads_mobile_sdk/hf;

    iput-object v13, v3, Lads_mobile_sdk/me;->b:Ljava/lang/String;

    iput-object v1, v3, Lads_mobile_sdk/me;->c:Ljava/lang/Object;

    iput v8, v3, Lads_mobile_sdk/me;->f:I

    invoke-interface {v1, v11, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_8

    goto :goto_4

    :cond_8
    move-object v5, v0

    .line 1033
    :goto_2
    :try_start_0
    iget-object v0, v5, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 1034
    iget-object v12, v5, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 1037
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->FAILED:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    invoke-static {v2, v6, v10}, Lads_mobile_sdk/le;->b(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v15

    .line 1038
    invoke-virtual {v5}, Lads_mobile_sdk/hf;->a()J

    move-result-wide v16

    .line 1039
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lads_mobile_sdk/kf;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;Lads_mobile_sdk/ke;J)V

    .line 1046
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1592
    invoke-interface {v1, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1593
    iput-object v11, v3, Lads_mobile_sdk/me;->a:Lads_mobile_sdk/hf;

    iput-object v11, v3, Lads_mobile_sdk/me;->b:Ljava/lang/String;

    iput-object v11, v3, Lads_mobile_sdk/me;->c:Ljava/lang/Object;

    iput v7, v3, Lads_mobile_sdk/me;->f:I

    invoke-virtual {v5, v3}, Lads_mobile_sdk/hf;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_9

    goto :goto_4

    .line 1594
    :cond_9
    :goto_3
    new-instance v0, Lads_mobile_sdk/m01;

    .line 1595
    sget-object v1, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 1596
    invoke-direct {v0, v6, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 1597
    invoke-interface {v1, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 1598
    :cond_a
    iput-object v11, v3, Lads_mobile_sdk/me;->a:Lads_mobile_sdk/hf;

    iput-object v11, v3, Lads_mobile_sdk/me;->b:Ljava/lang/String;

    iput-object v11, v3, Lads_mobile_sdk/me;->c:Ljava/lang/Object;

    iput v10, v3, Lads_mobile_sdk/me;->f:I

    invoke-virtual {v0, v1, v13, v2, v3}, Lads_mobile_sdk/hf;->a(Lads_mobile_sdk/jf;Ljava/lang/String;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_b

    :goto_4
    return-object v4

    :cond_b
    return-object v0
.end method

.method public static a(Lads_mobile_sdk/hf;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 10765
    const-string v0, "max(...)"

    const-string v1, "com.google.android.libraries.ads.mobile.sdk.MobileAds"

    instance-of v2, p2, Lads_mobile_sdk/oe;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lads_mobile_sdk/oe;

    iget v3, v2, Lads_mobile_sdk/oe;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/oe;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/oe;

    invoke-direct {v2, p0, p2}, Lads_mobile_sdk/oe;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v2, Lads_mobile_sdk/oe;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 11253
    iget v4, v2, Lads_mobile_sdk/oe;->f:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object p0, v2, Lads_mobile_sdk/oe;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v2, Lads_mobile_sdk/oe;->b:Ljava/util/Set;

    iget-object v2, v2, Lads_mobile_sdk/oe;->a:Lads_mobile_sdk/hf;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11255
    iget-object p2, p0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 11780
    iput-object p0, v2, Lads_mobile_sdk/oe;->a:Lads_mobile_sdk/hf;

    iput-object p1, v2, Lads_mobile_sdk/oe;->b:Ljava/util/Set;

    iput-object p2, v2, Lads_mobile_sdk/oe;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v2, Lads_mobile_sdk/oe;->f:I

    invoke-interface {p2, v6, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_3

    return-object v3

    .line 11781
    :cond_3
    :goto_1
    :try_start_0
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iget-wide v3, p0, Lads_mobile_sdk/hf;->q:J

    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 11783
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p1, p0, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 11784
    :cond_4
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 11785
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 11788
    iget-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v4, v5}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v4

    .line 11789
    iget-object v5, p0, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/yd;

    if-eqz v5, :cond_6

    .line 11790
    iget-wide v7, v5, Lads_mobile_sdk/yd;->c:J

    goto :goto_3

    .line 11791
    :cond_6
    sget-object v5, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v5}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v7

    :goto_3
    invoke-static {v7, v8}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v5

    .line 11792
    invoke-static {v4, v5}, Lcom/google/common/collect/Comparators;->max(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lkotlin/time/Duration;

    invoke-virtual {v4}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v4

    .line 11793
    iput-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 11802
    iget-object v4, p0, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/yd;

    if-eqz v3, :cond_7

    .line 11803
    iget-object v3, v3, Lads_mobile_sdk/yd;->a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    if-eqz v3, :cond_7

    .line 11804
    invoke-interface {v3}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-result-object v3

    goto :goto_4

    :cond_7
    move-object v3, v6

    .line 11805
    :goto_4
    sget-object v4, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->TIMED_OUT:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    if-ne v3, v4, :cond_5

    .line 11808
    iget-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v3, v4}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v3

    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Lads_mobile_sdk/hf;->a()J

    move-result-wide v4

    sget-object v7, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, v5, v7}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/collect/Comparators;->max(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/time/Duration;

    invoke-virtual {v3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v3

    .line 11809
    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_2

    .line 11815
    :cond_8
    iget-object p1, p0, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    const/16 v0, 0xa

    .line 12317
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 12318
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 12319
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 12320
    move-object v4, v0

    check-cast v4, Ljava/util/Map$Entry;

    .line 12321
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12826
    check-cast v0, Ljava/util/Map$Entry;

    .line 12827
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/yd;

    .line 12828
    iget-object v0, v0, Lads_mobile_sdk/yd;->a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    .line 12829
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 12830
    :cond_9
    invoke-static {v3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 12831
    iget-object p0, p0, Lads_mobile_sdk/hf;->p:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12832
    new-instance p0, Lads_mobile_sdk/pe;

    invoke-direct {p0, v2, p1}, Lads_mobile_sdk/pe;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13338
    invoke-interface {p2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic a(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 8673
    instance-of v0, p1, Lads_mobile_sdk/ne;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ne;

    iget v1, v0, Lads_mobile_sdk/ne;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ne;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/ne;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ne;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/ne;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 9156
    iget v2, v0, Lads_mobile_sdk/ne;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/ne;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ne;->a:Lads_mobile_sdk/hf;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 9677
    iput-object p0, v0, Lads_mobile_sdk/ne;->a:Lads_mobile_sdk/hf;

    iput-object p1, v0, Lads_mobile_sdk/ne;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ne;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 9678
    :cond_3
    :goto_1
    :try_start_0
    iget-object p0, p0, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10202
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 10203
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static b(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/cf;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/cf;

    iget v1, v0, Lads_mobile_sdk/cf;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/cf;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/cf;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/cf;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/cf;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 151
    iget v2, v0, Lads_mobile_sdk/cf;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/cf;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/cf;->a:Lads_mobile_sdk/hf;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/cf;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/cf;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v4, v0, Lads_mobile_sdk/cf;->a:Lads_mobile_sdk/hf;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lads_mobile_sdk/cf;->a:Lads_mobile_sdk/hf;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lads_mobile_sdk/hf;->g:Lads_mobile_sdk/pn;

    iput-object p0, v0, Lads_mobile_sdk/cf;->a:Lads_mobile_sdk/hf;

    iput v5, v0, Lads_mobile_sdk/cf;->f:I

    invoke-virtual {p1, v6, v0}, Lads_mobile_sdk/pn;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    .line 153
    :cond_5
    :goto_1
    move-object v2, p1

    check-cast v2, Ljava/util/Set;

    .line 155
    iget-object p1, p0, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 646
    iput-object p0, v0, Lads_mobile_sdk/cf;->a:Lads_mobile_sdk/hf;

    iput-object v2, v0, Lads_mobile_sdk/cf;->b:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/cf;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/cf;->f:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, p0

    move-object p0, p1

    .line 647
    :goto_2
    :try_start_0
    iget-object p1, v4, Lads_mobile_sdk/hf;->x:Ljava/util/Set;

    if-nez p1, :cond_7

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 648
    :cond_7
    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 649
    iput-object p1, v4, Lads_mobile_sdk/hf;->x:Ljava/util/Set;

    .line 650
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1141
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1142
    iget-object p0, v4, Lads_mobile_sdk/hf;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-nez p0, :cond_8

    .line 1143
    iget-object p0, v4, Lads_mobile_sdk/hf;->z:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 1146
    :cond_8
    iget-object p0, v4, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 1638
    iput-object v4, v0, Lads_mobile_sdk/cf;->a:Lads_mobile_sdk/hf;

    iput-object p0, v0, Lads_mobile_sdk/cf;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/cf;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/cf;->f:I

    invoke-interface {p0, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    :goto_3
    return-object v1

    :cond_9
    move-object v0, v4

    .line 1639
    :goto_4
    :try_start_1
    iget-object p1, v0, Lads_mobile_sdk/hf;->v:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;

    .line 1640
    iget-object v7, v0, Lads_mobile_sdk/hf;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/df;

    invoke-direct {v2, v0, v1, v6}, Lads_mobile_sdk/df;-><init>(Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterInitializationConfig;Lkotlin/coroutines/Continuation;)V

    .line 1641
    sget-object v8, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1642
    const-string v1, "<this>"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1900
    new-instance v10, Lads_mobile_sdk/ws3;

    invoke-direct {v10, v2, v6}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_5

    .line 1901
    :cond_a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2393
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 2394
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 2395
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public final a()J
    .locals 6

    .line 10754
    iget v0, p0, Lads_mobile_sdk/hf;->s:I

    if-nez v0, :cond_0

    .line 10755
    iget-wide v0, p0, Lads_mobile_sdk/hf;->r:J

    goto :goto_0

    .line 10757
    :cond_0
    iget-wide v0, p0, Lads_mobile_sdk/hf;->r:J

    .line 10758
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v2, p0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10759
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 10760
    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, v4}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    iget-wide v4, p0, Lads_mobile_sdk/hf;->t:J

    invoke-static {v2, v3, v4, v5}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v2

    .line 10761
    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v0

    .line 10764
    :goto_0
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lads_mobile_sdk/jf;Ljava/lang/String;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    .line 27298
    instance-of v3, v2, Lads_mobile_sdk/ze;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/ze;

    iget v4, v3, Lads_mobile_sdk/ze;->k:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/ze;->k:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/ze;

    invoke-direct {v3, v1, v2}, Lads_mobile_sdk/ze;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lads_mobile_sdk/ze;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 27723
    iget v5, v3, Lads_mobile_sdk/ze;->k:I

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eqz v5, :cond_6

    if-eq v5, v9, :cond_5

    if-eq v5, v8, :cond_4

    if-eq v5, v7, :cond_3

    if-eq v5, v10, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v0, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/v01;

    iget-object v5, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v3, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_1
    move-object v2, v0

    goto/16 :goto_d

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    iget-object v5, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/v01;

    iget-object v7, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v5

    move-object v5, v7

    move-object v6, v8

    goto/16 :goto_b

    :cond_3
    iget-wide v7, v3, Lads_mobile_sdk/ze;->h:J

    iget-object v0, v3, Lads_mobile_sdk/ze;->g:Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v3, Lads_mobile_sdk/ze;->f:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v9, v3, Lads_mobile_sdk/ze;->e:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    iget-object v12, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/v01;

    iget-object v13, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    iget-object v14, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v0, v9

    :goto_2
    move-object v6, v15

    move-object v15, v13

    goto/16 :goto_a

    :cond_4
    iget-wide v8, v3, Lads_mobile_sdk/ze;->h:J

    iget-object v0, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/tx;

    iget-object v5, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    iget-object v12, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v12

    move-object v15, v13

    :goto_3
    move-object v13, v5

    goto/16 :goto_8

    :cond_5
    iget-object v0, v3, Lads_mobile_sdk/ze;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v3, Lads_mobile_sdk/ze;->e:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    iget-object v9, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/be;

    iget-object v12, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/jf;

    iget-object v14, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v0, v14

    :goto_4
    move-object/from16 v16, v5

    move-object v15, v12

    goto :goto_6

    :cond_6
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27730
    instance-of v2, v0, Lads_mobile_sdk/tc1;

    if-eqz v2, :cond_7

    .line 27731
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/tc1;

    .line 27732
    iget-object v5, v2, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 27733
    invoke-virtual {v5}, Lcom/google/android/gms/ads/mediation/Adapter;->getVersionInfo()Lcom/google/android/gms/ads/VersionInfo;

    move-result-object v5

    .line 27734
    iget-object v2, v2, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 27735
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/Adapter;->getSDKVersionInfo()Lcom/google/android/gms/ads/VersionInfo;

    move-result-object v2

    .line 27736
    new-instance v12, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/ads/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v5, v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v12

    goto :goto_5

    :cond_7
    move-object v5, v11

    .line 27740
    :goto_5
    iget-object v2, v1, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 28269
    iput-object v1, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    iput-object v0, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    move-object/from16 v12, p2

    iput-object v12, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    move-object/from16 v13, p3

    iput-object v13, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/ze;->e:Ljava/lang/Object;

    iput-object v2, v3, Lads_mobile_sdk/ze;->f:Ljava/lang/Object;

    iput v9, v3, Lads_mobile_sdk/ze;->k:I

    invoke-interface {v2, v11, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v4, :cond_8

    goto/16 :goto_c

    :cond_8
    move-object v9, v13

    move-object v13, v0

    move-object v0, v1

    goto :goto_4

    .line 28270
    :goto_6
    :try_start_0
    iget-object v5, v0, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 28271
    iget-object v14, v0, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 28274
    sget-object v12, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->INITIALIZING:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    const-string v6, "The adapter is still initializing."

    invoke-static {v12, v6, v10}, Lads_mobile_sdk/le;->b(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v17

    .line 28275
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v18, 0x0

    invoke-static/range {v14 .. v19}, Lads_mobile_sdk/kf;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;Lads_mobile_sdk/ke;J)V

    move-object/from16 v5, v16

    .line 28276
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 28802
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 28803
    iget-object v2, v0, Lads_mobile_sdk/hf;->f:Lads_mobile_sdk/f0;

    invoke-virtual {v2}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    iget-object v2, v0, Lads_mobile_sdk/hf;->c:Landroid/content/Context;

    .line 28805
    :goto_7
    sget-object v6, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object v6, v0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    .line 29329
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 29331
    iget-object v12, v0, Lads_mobile_sdk/hf;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v14, Lads_mobile_sdk/af;

    invoke-direct {v14, v13, v2, v9, v11}, Lads_mobile_sdk/af;-><init>(Lads_mobile_sdk/jf;Landroid/content/Context;Lads_mobile_sdk/be;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    iput-object v15, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    iput-object v6, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    iput-object v11, v3, Lads_mobile_sdk/ze;->e:Ljava/lang/Object;

    iput-object v11, v3, Lads_mobile_sdk/ze;->f:Ljava/lang/Object;

    iput-wide v7, v3, Lads_mobile_sdk/ze;->h:J

    const/4 v2, 0x2

    iput v2, v3, Lads_mobile_sdk/ze;->k:I

    invoke-static {v12, v14, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_a

    goto/16 :goto_c

    :cond_a
    move-wide v8, v7

    move-object v14, v15

    move-object v15, v0

    move-object v0, v6

    goto/16 :goto_3

    .line 29332
    :goto_8
    check-cast v2, Lads_mobile_sdk/v01;

    .line 29857
    new-instance v5, Lkotlin/Pair;

    sget-object v6, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29858
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v8

    .line 29859
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v7, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v0

    invoke-direct {v5, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29860
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lads_mobile_sdk/v01;

    .line 29861
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    .line 29866
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29867
    instance-of v0, v12, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_b

    new-instance v0, Lkotlin/Pair;

    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->COMPLETE:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    const-string v5, ""

    invoke-direct {v0, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 29868
    :cond_b
    instance-of v0, v12, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_10

    new-instance v0, Lkotlin/Pair;

    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->FAILED:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-object v5, v12

    check-cast v5, Lads_mobile_sdk/i01;

    invoke-static {v5}, Lads_mobile_sdk/h01;->a(Lads_mobile_sdk/i01;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29869
    :goto_9
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 29870
    iget-object v0, v15, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 30397
    iput-object v15, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    iput-object v14, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    iput-object v13, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    iput-object v12, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    iput-object v2, v3, Lads_mobile_sdk/ze;->e:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/ze;->f:Ljava/lang/Object;

    iput-object v0, v3, Lads_mobile_sdk/ze;->g:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v7, v3, Lads_mobile_sdk/ze;->h:J

    const/4 v6, 0x3

    iput v6, v3, Lads_mobile_sdk/ze;->k:I

    invoke-interface {v0, v11, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_c

    goto :goto_c

    :cond_c
    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto/16 :goto_2

    .line 30398
    :goto_a
    :try_start_1
    iget-object v9, v6, Lads_mobile_sdk/hf;->e:Lads_mobile_sdk/kf;

    .line 30399
    iget-object v13, v6, Lads_mobile_sdk/hf;->m:Ljava/util/LinkedHashMap;

    .line 30402
    invoke-static {v7, v8}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v0, v5, v7}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v16

    .line 30403
    invoke-virtual {v6}, Lads_mobile_sdk/hf;->a()J

    move-result-wide v17

    .line 30404
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v13 .. v18}, Lads_mobile_sdk/kf;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;Lads_mobile_sdk/ke;J)V

    .line 30411
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30934
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 30935
    iput-object v6, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    iput-object v14, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    iput-object v12, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    iput-object v0, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    iput-object v11, v3, Lads_mobile_sdk/ze;->e:Ljava/lang/Object;

    iput-object v11, v3, Lads_mobile_sdk/ze;->f:Ljava/lang/Object;

    iput-object v11, v3, Lads_mobile_sdk/ze;->g:Lkotlinx/coroutines/sync/Mutex;

    iput v10, v3, Lads_mobile_sdk/ze;->k:I

    invoke-virtual {v6, v3}, Lads_mobile_sdk/hf;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_d

    goto :goto_c

    :cond_d
    move-object v5, v14

    .line 30937
    :goto_b
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->COMPLETE:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    if-ne v0, v2, :cond_f

    .line 30938
    iget-object v0, v6, Lads_mobile_sdk/hf;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 31463
    iput-object v6, v3, Lads_mobile_sdk/ze;->a:Lads_mobile_sdk/hf;

    iput-object v5, v3, Lads_mobile_sdk/ze;->b:Ljava/lang/Object;

    iput-object v12, v3, Lads_mobile_sdk/ze;->c:Ljava/lang/Object;

    iput-object v0, v3, Lads_mobile_sdk/ze;->d:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v3, Lads_mobile_sdk/ze;->k:I

    invoke-interface {v0, v11, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_e

    :goto_c
    return-object v4

    :cond_e
    move-object v3, v6

    move-object v4, v12

    goto/16 :goto_1

    .line 31464
    :goto_d
    :try_start_2
    iget-object v0, v3, Lads_mobile_sdk/hf;->w:Ljava/util/LinkedHashSet;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31993
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v4

    :catchall_0
    move-exception v0

    .line 31994
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :cond_f
    return-object v12

    :catchall_1
    move-exception v0

    .line 31995
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 31996
    :cond_10
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :catchall_2
    move-exception v0

    .line 31997
    invoke-interface {v2, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 0

    .line 31999
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/hf;->a(Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 36981
    instance-of v0, p1, Lads_mobile_sdk/ff;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ff;

    iget v1, v0, Lads_mobile_sdk/ff;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ff;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/ff;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ff;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/ff;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 37506
    iget v2, v0, Lads_mobile_sdk/ff;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/ff;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ff;->a:Lads_mobile_sdk/hf;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37507
    iget-object p1, p0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 38012
    iput-object p0, v0, Lads_mobile_sdk/ff;->a:Lads_mobile_sdk/hf;

    iput-object p1, v0, Lads_mobile_sdk/ff;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ff;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 38013
    :goto_1
    :try_start_0
    iget p1, v0, Lads_mobile_sdk/hf;->s:I

    if-nez p1, :cond_5

    .line 38014
    iget-wide v5, v0, Lads_mobile_sdk/hf;->t:J

    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 38015
    iget-wide v5, v0, Lads_mobile_sdk/hf;->o:J

    iput-wide v5, v0, Lads_mobile_sdk/hf;->t:J

    goto :goto_2

    .line 38017
    :cond_4
    iget-object p1, v0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38018
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 38019
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iput-wide v5, v0, Lads_mobile_sdk/hf;->t:J

    .line 38022
    :cond_5
    :goto_2
    iget p1, v0, Lads_mobile_sdk/hf;->s:I

    add-int/2addr p1, v3

    iput p1, v0, Lads_mobile_sdk/hf;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38523
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 38524
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 39023
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 2396
    instance-of v0, p1, Lads_mobile_sdk/gf;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/gf;

    iget v1, v0, Lads_mobile_sdk/gf;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/gf;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/gf;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/gf;-><init>(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/gf;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2934
    iget v2, v0, Lads_mobile_sdk/gf;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/gf;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/gf;->a:Lads_mobile_sdk/hf;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2935
    iget-object p1, p0, Lads_mobile_sdk/hf;->l:Lkotlinx/coroutines/sync/Mutex;

    .line 3438
    iput-object p0, v0, Lads_mobile_sdk/gf;->a:Lads_mobile_sdk/hf;

    iput-object p1, v0, Lads_mobile_sdk/gf;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/gf;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 3439
    :goto_1
    :try_start_0
    iget p1, v0, Lads_mobile_sdk/hf;->s:I

    if-ne p1, v3, :cond_4

    .line 3440
    iget-wide v2, v0, Lads_mobile_sdk/hf;->r:J

    .line 3441
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object p1, v0, Lads_mobile_sdk/hf;->h:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3442
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3443
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iget-wide v7, v0, Lads_mobile_sdk/hf;->t:J

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v5

    .line 3444
    invoke-static {v2, v3, v5, v6}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lads_mobile_sdk/hf;->r:J

    .line 3447
    :cond_4
    iget p1, v0, Lads_mobile_sdk/hf;->s:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lads_mobile_sdk/hf;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3949
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 3950
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 4450
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
