.class public final Lads_mobile_sdk/cm1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Lkotlinx/coroutines/CompletableJob;

.field public final B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public C:J

.field public final a:Landroid/content/Context;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lkotlin/coroutines/CoroutineContext;

.field public final d:Ljava/util/Set;

.field public final e:Lads_mobile_sdk/ks1;

.field public final f:Ljava/util/Set;

.field public final g:Lads_mobile_sdk/g83;

.field public final h:Lads_mobile_sdk/sz;

.field public final i:Lads_mobile_sdk/hf;

.field public final j:Lads_mobile_sdk/ur3;

.field public final k:Lads_mobile_sdk/e01;

.field public final l:Lads_mobile_sdk/ex0;

.field public final m:Lads_mobile_sdk/tx;

.field public final n:Lads_mobile_sdk/ks1;

.field public final o:Lads_mobile_sdk/f0;

.field public final p:Lads_mobile_sdk/l43;

.field public final q:Lads_mobile_sdk/ks1;

.field public final r:Lads_mobile_sdk/cb3;

.field public final s:Lads_mobile_sdk/ja1;

.field public final t:Lads_mobile_sdk/ks1;

.field public final u:Lads_mobile_sdk/pn;

.field public final v:Lads_mobile_sdk/cw2;

.field public final w:Lads_mobile_sdk/ks1;

.field public final x:Lkotlinx/coroutines/sync/Mutex;

.field public y:Lads_mobile_sdk/kl1;

.field public final z:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Ljava/util/Set;Lads_mobile_sdk/ks1;Ljava/util/Set;Lads_mobile_sdk/g83;Lads_mobile_sdk/sz;Lads_mobile_sdk/hf;Lads_mobile_sdk/ur3;Lads_mobile_sdk/e01;Lads_mobile_sdk/ex0;Lads_mobile_sdk/tx;Lads_mobile_sdk/ks1;Lads_mobile_sdk/f0;Lads_mobile_sdk/l43;Lads_mobile_sdk/ks1;Lads_mobile_sdk/cb3;Lads_mobile_sdk/ja1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/pn;Lads_mobile_sdk/dw2;Lads_mobile_sdk/ks1;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    .line 1
    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundContext"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationTasks"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dependencyInjectors"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postInitializationTasks"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "concurrencyObjects"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterInitializer"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugDialogManager"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationWrapper"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorManager"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkCoreDataStore"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkCoreEngine"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singletonEngineProvider"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anrWatchdog"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 7
    iput-object v1, v0, Lads_mobile_sdk/cm1;->a:Landroid/content/Context;

    .line 8
    iput-object v2, v0, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    iput-object v3, v0, Lads_mobile_sdk/cm1;->c:Lkotlin/coroutines/CoroutineContext;

    .line 10
    iput-object v4, v0, Lads_mobile_sdk/cm1;->d:Ljava/util/Set;

    .line 11
    iput-object v5, v0, Lads_mobile_sdk/cm1;->e:Lads_mobile_sdk/ks1;

    .line 12
    iput-object v6, v0, Lads_mobile_sdk/cm1;->f:Ljava/util/Set;

    .line 13
    iput-object v7, v0, Lads_mobile_sdk/cm1;->g:Lads_mobile_sdk/g83;

    .line 14
    iput-object v8, v0, Lads_mobile_sdk/cm1;->h:Lads_mobile_sdk/sz;

    .line 15
    iput-object v9, v0, Lads_mobile_sdk/cm1;->i:Lads_mobile_sdk/hf;

    .line 16
    iput-object v10, v0, Lads_mobile_sdk/cm1;->j:Lads_mobile_sdk/ur3;

    .line 17
    iput-object v11, v0, Lads_mobile_sdk/cm1;->k:Lads_mobile_sdk/e01;

    .line 18
    iput-object v12, v0, Lads_mobile_sdk/cm1;->l:Lads_mobile_sdk/ex0;

    .line 19
    iput-object v13, v0, Lads_mobile_sdk/cm1;->m:Lads_mobile_sdk/tx;

    .line 20
    iput-object v14, v0, Lads_mobile_sdk/cm1;->n:Lads_mobile_sdk/ks1;

    move-object/from16 v1, p15

    .line 21
    iput-object v1, v0, Lads_mobile_sdk/cm1;->o:Lads_mobile_sdk/f0;

    move-object/from16 v1, p16

    .line 22
    iput-object v1, v0, Lads_mobile_sdk/cm1;->p:Lads_mobile_sdk/l43;

    move-object/from16 v1, p17

    .line 23
    iput-object v1, v0, Lads_mobile_sdk/cm1;->q:Lads_mobile_sdk/ks1;

    move-object/from16 v1, p18

    .line 24
    iput-object v1, v0, Lads_mobile_sdk/cm1;->r:Lads_mobile_sdk/cb3;

    move-object/from16 v1, p19

    .line 25
    iput-object v1, v0, Lads_mobile_sdk/cm1;->s:Lads_mobile_sdk/ja1;

    move-object/from16 v1, p20

    .line 26
    iput-object v1, v0, Lads_mobile_sdk/cm1;->t:Lads_mobile_sdk/ks1;

    move-object/from16 v1, p21

    .line 27
    iput-object v1, v0, Lads_mobile_sdk/cm1;->u:Lads_mobile_sdk/pn;

    move-object/from16 v1, p22

    .line 28
    iput-object v1, v0, Lads_mobile_sdk/cm1;->v:Lads_mobile_sdk/cw2;

    .line 29
    iput-object v15, v0, Lads_mobile_sdk/cm1;->w:Lads_mobile_sdk/ks1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 38
    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v4

    iput-object v4, v0, Lads_mobile_sdk/cm1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 41
    sget-object v4, Lads_mobile_sdk/kl1;->a:Lads_mobile_sdk/kl1;

    iput-object v4, v0, Lads_mobile_sdk/cm1;->y:Lads_mobile_sdk/kl1;

    .line 42
    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v4

    iput-object v4, v0, Lads_mobile_sdk/cm1;->z:Lkotlinx/coroutines/CompletableJob;

    .line 43
    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    iput-object v2, v0, Lads_mobile_sdk/cm1;->A:Lkotlinx/coroutines/CompletableJob;

    .line 44
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lads_mobile_sdk/cm1;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v1

    iput-wide v1, v0, Lads_mobile_sdk/cm1;->C:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 499
    instance-of v2, v0, Lads_mobile_sdk/ml1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/ml1;

    iget v3, v2, Lads_mobile_sdk/ml1;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ml1;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/ml1;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/ml1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/ml1;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 635
    iget v4, v2, Lads_mobile_sdk/ml1;->g:I

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_6

    if-eq v4, v10, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v9, :cond_2

    if-ne v4, v6, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v2, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 636
    :cond_3
    iget-object v3, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v2, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    .line 637
    :cond_4
    iget-object v4, v2, Lads_mobile_sdk/ml1;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v2, Lads_mobile_sdk/ml1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v12, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v13, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/cm1;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    goto :goto_2

    .line 638
    :cond_5
    iget-object v4, v2, Lads_mobile_sdk/ml1;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v12, v2, Lads_mobile_sdk/ml1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v13, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v14, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/cm1;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v12

    goto :goto_1

    :cond_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 639
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 640
    iget-object v4, v1, Lads_mobile_sdk/cm1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 930
    iput-object v1, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    move-object/from16 v12, p1

    iput-object v12, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/ml1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v4, v2, Lads_mobile_sdk/ml1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v10, v2, Lads_mobile_sdk/ml1;->g:I

    invoke-interface {v4, v11, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_7

    goto/16 :goto_c

    :cond_7
    move-object v14, v1

    move-object v13, v12

    .line 931
    :goto_1
    :try_start_3
    iget-object v12, v14, Lads_mobile_sdk/cm1;->y:Lads_mobile_sdk/kl1;

    sget-object v15, Lads_mobile_sdk/kl1;->b:Lads_mobile_sdk/kl1;

    if-eq v12, v15, :cond_a

    .line 932
    sget-object v15, Lads_mobile_sdk/kl1;->c:Lads_mobile_sdk/kl1;

    if-ne v12, v15, :cond_8

    goto :goto_3

    .line 936
    :cond_8
    iput-boolean v10, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 941
    iget-object v12, v14, Lads_mobile_sdk/cm1;->i:Lads_mobile_sdk/hf;

    .line 942
    sget-object v15, Lads_mobile_sdk/hf;->A:Ljava/util/List;

    sget-object v15, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->INITIALIZING:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    const-string v6, "The Google Mobile Ads SDK is still initializing."

    invoke-static {v15, v6, v9}, Lads_mobile_sdk/le;->b(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v6

    .line 943
    iput-object v14, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    iput-object v13, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/ml1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v4, v2, Lads_mobile_sdk/ml1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v8, v2, Lads_mobile_sdk/ml1;->g:I

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 944
    invoke-static {v12, v6, v2}, Lads_mobile_sdk/hf;->a(Lads_mobile_sdk/hf;Lads_mobile_sdk/ke;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_9

    goto/16 :goto_c

    :cond_9
    move-object v8, v0

    move-object v12, v13

    move-object v13, v14

    .line 945
    :goto_2
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, v13, Lads_mobile_sdk/cm1;->m:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 946
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 947
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v14, v15, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v14

    iput-wide v14, v13, Lads_mobile_sdk/cm1;->C:J

    .line 948
    iget-object v0, v13, Lads_mobile_sdk/cm1;->m:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 949
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 950
    sput-wide v14, Lads_mobile_sdk/xl;->a:J

    .line 951
    sget-object v0, Lads_mobile_sdk/kl1;->b:Lads_mobile_sdk/kl1;

    iput-object v0, v13, Lads_mobile_sdk/cm1;->y:Lads_mobile_sdk/kl1;

    move-object v0, v8

    move-object v14, v13

    move-object v13, v12

    goto :goto_4

    .line 952
    :cond_a
    :goto_3
    sget-object v6, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    const-string v6, "MobileAds.initialize was called already, any different settings will be ignored."

    .line 953
    invoke-static {v6, v11}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 954
    :goto_4
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 1230
    invoke-interface {v4, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1231
    iget-object v15, v14, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/nl1;

    invoke-direct {v4, v14, v13, v11}, Lads_mobile_sdk/nl1;-><init>(Lads_mobile_sdk/cm1;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;Lkotlin/coroutines/Continuation;)V

    .line 1232
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1233
    const-string v8, "<this>"

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "context"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "block"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1491
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, v4, v11}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v6

    move-object/from16 v18, v8

    invoke-static/range {v15 .. v20}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1492
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_1a

    .line 1493
    iget-object v0, v14, Lads_mobile_sdk/cm1;->g:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->c:Lads_mobile_sdk/s11;

    .line 1764
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 1765
    new-instance v8, Lads_mobile_sdk/ks3;

    .line 1766
    new-instance v12, Lads_mobile_sdk/n03;

    invoke-direct {v12}, Lads_mobile_sdk/n03;-><init>()V

    .line 1767
    new-instance v13, Lads_mobile_sdk/tn1;

    invoke-direct {v13}, Lads_mobile_sdk/tn1;-><init>()V

    .line 1768
    new-instance v15, Lads_mobile_sdk/m33;

    invoke-direct {v15}, Lads_mobile_sdk/m33;-><init>()V

    .line 1769
    new-instance v9, Lads_mobile_sdk/zb;

    invoke-direct {v9}, Lads_mobile_sdk/zb;-><init>()V

    .line 1770
    invoke-direct {v8, v12, v13, v15, v9}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 1771
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v9

    .line 1772
    iget-object v9, v9, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v9, :cond_12

    .line 1773
    invoke-static {v0, v4, v6, v8}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 1774
    :try_start_4
    iput-object v4, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ml1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v11, v2, Lads_mobile_sdk/ml1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v7, v2, Lads_mobile_sdk/ml1;->g:I

    invoke-virtual {v14, v2}, Lads_mobile_sdk/cm1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v0, v3, :cond_b

    goto/16 :goto_c

    :cond_b
    move-object v2, v4

    move-object v3, v2

    .line 1775
    :goto_5
    :try_start_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2052
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_c

    .line 2053
    check-cast v0, Lads_mobile_sdk/i01;

    .line 2054
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2055
    :cond_c
    invoke-static {v3, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :goto_6
    move-object v4, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v3, v4

    .line 2063
    :goto_7
    :try_start_6
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2067
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_11

    .line 2069
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_d

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_d

    .line 2075
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2081
    :cond_d
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_10

    .line 2082
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_f

    .line 2083
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_e

    throw v0

    .line 2084
    :cond_e
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2085
    :cond_f
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2086
    :cond_10
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2087
    :cond_11
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 2088
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 2122
    :cond_12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 2123
    :try_start_8
    iput-object v4, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ml1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v11, v2, Lads_mobile_sdk/ml1;->d:Lkotlinx/coroutines/sync/Mutex;

    const/4 v0, 0x4

    iput v0, v2, Lads_mobile_sdk/ml1;->g:I

    invoke-virtual {v14, v2}, Lads_mobile_sdk/cm1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-ne v0, v3, :cond_13

    goto :goto_c

    :cond_13
    move-object v2, v4

    move-object v3, v2

    .line 2124
    :goto_8
    :try_start_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2438
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_14

    .line 2439
    check-cast v0, Lads_mobile_sdk/i01;

    .line 2440
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2441
    :cond_14
    invoke-static {v3, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 2442
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_a
    move-object v4, v2

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v3, v4

    .line 2755
    :goto_b
    :try_start_a
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2759
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_19

    .line 2761
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_15

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_15

    .line 2767
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2773
    :cond_15
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_18

    .line 2774
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_17

    .line 2775
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_16

    throw v0

    .line 2776
    :cond_16
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2777
    :cond_17
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2778
    :cond_18
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2779
    :cond_19
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 2780
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 2781
    :cond_1a
    iget-object v0, v14, Lads_mobile_sdk/cm1;->z:Lkotlinx/coroutines/CompletableJob;

    iput-object v11, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ml1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v11, v2, Lads_mobile_sdk/ml1;->d:Lkotlinx/coroutines/sync/Mutex;

    const/4 v4, 0x5

    iput v4, v2, Lads_mobile_sdk/ml1;->g:I

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CompletableJob;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1b

    :goto_c
    return-object v3

    .line 2783
    :cond_1b
    :goto_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_8
    move-exception v0

    .line 3042
    invoke-interface {v4, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3043
    instance-of v2, v1, Lads_mobile_sdk/ol1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ol1;

    iget v3, v2, Lads_mobile_sdk/ol1;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ol1;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/ol1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ol1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/ol1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 3218
    iget v4, v2, Lads_mobile_sdk/ol1;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1
    iget-object v4, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v17, v8

    goto/16 :goto_f

    :pswitch_2
    iget-object v4, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v7, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v17, v8

    const/16 v18, 0x5

    goto/16 :goto_d

    :pswitch_3
    iget-object v4, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    iget-object v4, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v10, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3221
    iget-object v1, v0, Lads_mobile_sdk/cm1;->e:Lads_mobile_sdk/ks1;

    invoke-interface {v1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v10, v0

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/lm0;

    .line 3222
    iput-object v10, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    iput-object v4, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    iput v6, v2, Lads_mobile_sdk/ol1;->e:I

    invoke-interface {v1}, Lads_mobile_sdk/lm0;->a()Lkotlin/Unit;

    move-result-object v1

    if-ne v1, v3, :cond_1

    goto/16 :goto_14

    .line 3227
    :cond_2
    iget-object v1, v10, Lads_mobile_sdk/cm1;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3228
    iget-object v1, v10, Lads_mobile_sdk/cm1;->A:Lkotlinx/coroutines/CompletableJob;

    iput-object v10, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    iput-object v9, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    iput v7, v2, Lads_mobile_sdk/ol1;->e:I

    invoke-interface {v1, v2}, Lkotlinx/coroutines/CompletableJob;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    goto/16 :goto_14

    .line 3230
    :cond_3
    iput-object v10, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    iput-object v9, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, v2, Lads_mobile_sdk/ol1;->e:I

    invoke-virtual {v10, v2}, Lads_mobile_sdk/cm1;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    goto/16 :goto_14

    :cond_4
    move-object v4, v10

    .line 3235
    :goto_2
    iget-object v1, v4, Lads_mobile_sdk/cm1;->h:Lads_mobile_sdk/sz;

    iget-object v10, v4, Lads_mobile_sdk/cm1;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3236
    const-string v11, "flags"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3272
    iget-object v11, v1, Lads_mobile_sdk/sz;->a:Lads_mobile_sdk/ja1;

    invoke-virtual {v11}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 3273
    invoke-virtual {v11}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 3274
    const-string v12, "background_worker_threads"

    invoke-virtual {v11, v12, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    goto :goto_3

    :cond_5
    move v11, v8

    .line 3276
    :goto_3
    iget-object v12, v1, Lads_mobile_sdk/sz;->a:Lads_mobile_sdk/ja1;

    invoke-virtual {v12}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_6

    const-string v13, "loader_worker_threads"

    invoke-virtual {v12, v13, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    goto :goto_4

    :cond_6
    move v12, v8

    .line 3280
    :goto_4
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3282
    const-string v13, "gad:enable_custom_thread_pool_configuration"

    const-string v14, "key"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3298
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v10, v13, v15, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move/from16 v17, v8

    const-string v8, "gad:min_background_worker_threads"

    const/16 v18, 0x5

    const/16 v5, 0xa

    if-eqz v16, :cond_7

    if-lez v11, :cond_7

    goto :goto_5

    .line 3299
    :cond_7
    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3300
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v9, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v10, v8, v11, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 3302
    :goto_5
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3318
    invoke-virtual {v10, v13, v15, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    if-lez v12, :cond_8

    goto :goto_6

    .line 3319
    :cond_8
    const-string v6, "gad:min_loader_worker_threads"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3320
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v12, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v10, v6, v9, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 3321
    :goto_6
    iget-object v6, v1, Lads_mobile_sdk/sz;->e:Lads_mobile_sdk/uq0;

    .line 3322
    iget-object v6, v6, Lads_mobile_sdk/uq0;->a:Ljava/util/concurrent/AbstractExecutorService;

    .line 3323
    instance-of v9, v6, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v9, :cond_9

    check-cast v6, Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_a

    .line 3327
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 3329
    sget v12, Lads_mobile_sdk/sz;->k:I

    invoke-static {v6, v9, v10}, Lads_mobile_sdk/qz;->a(Ljava/util/concurrent/ThreadPoolExecutor;ILads_mobile_sdk/ex0;)V

    .line 3332
    :cond_a
    iget-object v6, v1, Lads_mobile_sdk/sz;->b:Lads_mobile_sdk/uq0;

    .line 3333
    iget-object v6, v6, Lads_mobile_sdk/uq0;->a:Ljava/util/concurrent/AbstractExecutorService;

    .line 3334
    instance-of v9, v6, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v9, :cond_b

    check-cast v6, Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    :goto_8
    if-eqz v6, :cond_c

    .line 3338
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 3340
    sget v11, Lads_mobile_sdk/sz;->k:I

    invoke-static {v6, v9, v10}, Lads_mobile_sdk/qz;->a(Ljava/util/concurrent/ThreadPoolExecutor;ILads_mobile_sdk/ex0;)V

    .line 3343
    :cond_c
    iget-object v6, v1, Lads_mobile_sdk/sz;->g:Lads_mobile_sdk/uq0;

    .line 3344
    iget-object v6, v6, Lads_mobile_sdk/uq0;->a:Ljava/util/concurrent/AbstractExecutorService;

    .line 3345
    instance-of v9, v6, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v9, :cond_d

    check-cast v6, Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_e

    .line 3346
    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3347
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v10, v8, v9, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 3348
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 3350
    sget v8, Lads_mobile_sdk/sz;->k:I

    invoke-static {v6, v7, v10}, Lads_mobile_sdk/qz;->a(Ljava/util/concurrent/ThreadPoolExecutor;ILads_mobile_sdk/ex0;)V

    .line 3352
    iget-object v1, v1, Lads_mobile_sdk/sz;->g:Lads_mobile_sdk/uq0;

    .line 3353
    iget-object v1, v1, Lads_mobile_sdk/uq0;->b:Lads_mobile_sdk/fr3;

    .line 3354
    const-string v6, "gads:webview_initialization_thread_priority_offset"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3355
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v6, v7, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 3356
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3357
    iput-object v6, v1, Lads_mobile_sdk/fr3;->b:Ljava/lang/Integer;

    .line 3358
    :cond_e
    iget-object v1, v4, Lads_mobile_sdk/cm1;->d:Ljava/util/Set;

    .line 3675
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3676
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3677
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 3678
    move-object v9, v8

    check-cast v9, Lads_mobile_sdk/oc1;

    .line 3679
    iget-boolean v9, v9, Lads_mobile_sdk/oc1;->b:Z

    if-eqz v9, :cond_f

    .line 3680
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 3682
    :cond_f
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 3685
    :cond_10
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3686
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4013
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 4014
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 4015
    check-cast v8, Lads_mobile_sdk/oc1;

    .line 4016
    iget-object v9, v4, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v12, Lads_mobile_sdk/rl1;

    const/4 v10, 0x0

    invoke-direct {v12, v8, v10}, Lads_mobile_sdk/rl1;-><init>(Lads_mobile_sdk/oc1;Lkotlin/coroutines/Continuation;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v8

    .line 4344
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 4346
    :cond_11
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 4347
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 4348
    check-cast v5, Lads_mobile_sdk/oc1;

    .line 4349
    iget-object v8, v4, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v11, Lads_mobile_sdk/ql1;

    const/4 v10, 0x0

    invoke-direct {v11, v5, v10}, Lads_mobile_sdk/ql1;-><init>(Lads_mobile_sdk/oc1;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v5

    .line 4680
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 4681
    :cond_12
    iput-object v4, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    iput-object v6, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v2, Lads_mobile_sdk/ol1;->e:I

    invoke-static {v7, v2}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_13

    goto/16 :goto_14

    :cond_13
    move-object v7, v4

    move-object v4, v6

    .line 4682
    :goto_d
    check-cast v1, Ljava/lang/Iterable;

    .line 5037
    instance-of v5, v1, Ljava/util/Collection;

    if-eqz v5, :cond_14

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_e

    .line 5038
    :cond_14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/v01;

    .line 5039
    instance-of v5, v5, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_15

    goto :goto_10

    .line 5040
    :cond_16
    :goto_e
    iput-object v7, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    const/4 v10, 0x0

    iput-object v10, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    move/from16 v1, v18

    iput v1, v2, Lads_mobile_sdk/ol1;->e:I

    invoke-static {v4, v2}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_17

    goto/16 :goto_14

    :cond_17
    move-object v4, v7

    .line 5041
    :goto_f
    check-cast v1, Ljava/lang/Iterable;

    .line 5399
    instance-of v5, v1, Ljava/util/Collection;

    if-eqz v5, :cond_18

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_11

    .line 5400
    :cond_18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/v01;

    .line 5401
    instance-of v5, v5, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_19

    move-object v7, v4

    :goto_10
    move-object v4, v7

    move/from16 v6, v17

    goto :goto_12

    :cond_1a
    :goto_11
    const/4 v6, 0x1

    .line 5405
    :goto_12
    iget-object v1, v4, Lads_mobile_sdk/cm1;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/gp2;

    .line 5406
    iget-object v7, v4, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Lads_mobile_sdk/pl1;

    const/4 v13, 0x0

    invoke-direct {v8, v5, v13}, Lads_mobile_sdk/pl1;-><init>(Lads_mobile_sdk/gp2;Lkotlin/coroutines/Continuation;)V

    .line 5407
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 5408
    const-string v9, "<this>"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "context"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "block"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5666
    new-instance v10, Lads_mobile_sdk/ws3;

    invoke-direct {v10, v8, v13}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v8, v5

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_13

    :cond_1b
    const/4 v13, 0x0

    .line 5667
    iput-object v13, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    iput-object v13, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, v2, Lads_mobile_sdk/ol1;->e:I

    invoke-virtual {v4, v6, v2}, Lads_mobile_sdk/cm1;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1c

    :goto_14
    return-object v3

    .line 5668
    :cond_1c
    :goto_15
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 6018
    instance-of v0, p2, Lads_mobile_sdk/vl1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/vl1;

    iget v1, v0, Lads_mobile_sdk/vl1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/vl1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/vl1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/vl1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/vl1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 6231
    iget v2, v0, Lads_mobile_sdk/vl1;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/vl1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/vl1;->a:Lads_mobile_sdk/cm1;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto/16 :goto_5

    .line 6232
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p1, v0, Lads_mobile_sdk/vl1;->c:Z

    iget-object v2, v0, Lads_mobile_sdk/vl1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/vl1;->a:Lads_mobile_sdk/cm1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6233
    iget-object p2, p0, Lads_mobile_sdk/cm1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 6560
    iput-object p0, v0, Lads_mobile_sdk/vl1;->a:Lads_mobile_sdk/cm1;

    iput-object p2, v0, Lads_mobile_sdk/vl1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p1, v0, Lads_mobile_sdk/vl1;->c:Z

    iput v4, v0, Lads_mobile_sdk/vl1;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, p0

    .line 6561
    :goto_1
    :try_start_1
    sget-object v2, Lads_mobile_sdk/kl1;->c:Lads_mobile_sdk/kl1;

    iput-object v2, v4, Lads_mobile_sdk/cm1;->y:Lads_mobile_sdk/kl1;

    .line 6563
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v2, v4, Lads_mobile_sdk/cm1;->m:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6564
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 6565
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v7, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v6

    iget-wide v8, v4, Lads_mobile_sdk/cm1;->C:J

    invoke-static {v6, v7, v8, v9}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v6

    .line 6566
    iget-object v2, v4, Lads_mobile_sdk/cm1;->z:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v2}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 6568
    invoke-static {v6, v7}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v6

    long-to-int v2, v6

    .line 6569
    iget-object v6, v4, Lads_mobile_sdk/cm1;->i:Lads_mobile_sdk/hf;

    if-eqz p1, :cond_5

    .line 6571
    sget-object p1, Lads_mobile_sdk/hf;->A:Ljava/util/List;

    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->COMPLETE:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    const-string v7, "The Google Mobile Ads SDK has successfully initialized."

    invoke-static {p1, v7, v2}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object p1

    goto :goto_2

    .line 6573
    :cond_5
    sget-object p1, Lads_mobile_sdk/hf;->A:Ljava/util/List;

    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->FAILED:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    const-string v7, "The Google Mobile Ads SDK has failed to initialize. Ad loading may be impacted."

    invoke-static {p1, v7, v2}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object p1

    .line 6574
    :goto_2
    iput-object v4, v0, Lads_mobile_sdk/vl1;->a:Lads_mobile_sdk/cm1;

    iput-object p2, v0, Lads_mobile_sdk/vl1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/vl1;->f:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6575
    invoke-static {v6, p1, v0}, Lads_mobile_sdk/hf;->a(Lads_mobile_sdk/hf;Lads_mobile_sdk/ke;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_6

    :goto_3
    return-object v1

    :cond_6
    move-object p1, p2

    move-object v0, v4

    .line 6576
    :goto_4
    :try_start_2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6893
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 6894
    iget-object v6, v0, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/wl1;

    invoke-direct {p1, v0, v5}, Lads_mobile_sdk/wl1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    .line 6895
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6896
    const-string v1, "<this>"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7154
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, p1, v5}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 7155
    iget-object p1, v0, Lads_mobile_sdk/cm1;->m:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7157
    sput-wide v0, Lads_mobile_sdk/xl;->b:J

    return-object p2

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    .line 7471
    :goto_5
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a()V
    .locals 5

    .line 6012
    iget-object v0, p0, Lads_mobile_sdk/cm1;->p:Lads_mobile_sdk/l43;

    invoke-virtual {v0}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/cm1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6013
    const-string v0, "This RequestConfiguration is configured as a test device."

    invoke-static {v0, v2, v2, v1}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    return-void

    .line 6015
    :cond_0
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    .line 6016
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object v0, p0, Lads_mobile_sdk/cm1;->a:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/m21;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\")) to get test ads on this device."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6017
    invoke-static {v0, v2, v2, v1}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 7

    .line 7472
    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7598
    iget-object v1, p0, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/am1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lads_mobile_sdk/am1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object p1, v2

    .line 7599
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 7600
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7858
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, p1, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Z)V
    .locals 7

    .line 237
    iget-object v0, p0, Lads_mobile_sdk/cm1;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v1, p0, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/ll1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lads_mobile_sdk/ll1;-><init>(Lads_mobile_sdk/cm1;ZLkotlin/coroutines/Continuation;)V

    move-object p1, v2

    .line 239
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 240
    const-string v3, "<this>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, p1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/sl1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/sl1;

    iget v3, v2, Lads_mobile_sdk/sl1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/sl1;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/sl1;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/sl1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/sl1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 258
    iget v4, v2, Lads_mobile_sdk/sl1;->f:I

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_6

    if-eq v4, v10, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v3, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iget-object v4, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_2
    iget-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iget-object v7, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iget-object v8, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v3, v4

    move-object v4, v7

    move-object v2, v8

    goto/16 :goto_8

    .line 260
    :cond_3
    iget-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iget-object v8, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iget-object v9, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v4

    move-object v4, v8

    move-object v2, v9

    goto/16 :goto_8

    .line 261
    :cond_4
    iget-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iget-object v9, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iget-object v10, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    goto/16 :goto_3

    .line 262
    :cond_5
    iget-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iget-object v10, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iget-object v12, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    :try_start_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v3, v4

    move-object v4, v10

    move-object v2, v12

    goto/16 :goto_8

    .line 263
    :cond_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 265
    :try_start_5
    sget-object v0, Lads_mobile_sdk/s11;->d:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 558
    invoke-static {v0, v4, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 559
    :try_start_6
    iget-object v0, v1, Lads_mobile_sdk/cm1;->l:Lads_mobile_sdk/ex0;

    iget-object v12, v1, Lads_mobile_sdk/cm1;->c:Lkotlin/coroutines/CoroutineContext;

    iget-object v13, v1, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object v1, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    iput-object v4, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iput v10, v2, Lads_mobile_sdk/sl1;->f:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    invoke-static {v0, v12, v13, v2}, Lads_mobile_sdk/ex0;->a(Lads_mobile_sdk/ex0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne v0, v3, :cond_7

    goto/16 :goto_6

    :cond_7
    move-object v12, v1

    move-object v10, v4

    .line 561
    :goto_1
    :try_start_7
    iput-object v12, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    iput-object v10, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iput v9, v2, Lads_mobile_sdk/sl1;->f:I

    invoke-virtual {v12, v2}, Lads_mobile_sdk/cm1;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-ne v0, v3, :cond_8

    goto/16 :goto_6

    :cond_8
    move-object v9, v10

    move-object v10, v12

    .line 563
    :goto_2
    :try_start_8
    iget-object v0, v10, Lads_mobile_sdk/cm1;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->O()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 564
    iget-object v0, v10, Lads_mobile_sdk/cm1;->u:Lads_mobile_sdk/pn;

    iput-object v10, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    iput-object v9, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iput v8, v2, Lads_mobile_sdk/sl1;->f:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    invoke-static {v0, v5, v2}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-ne v0, v3, :cond_9

    goto :goto_6

    :goto_3
    move-object v3, v4

    move-object v4, v9

    move-object v2, v10

    goto/16 :goto_8

    :cond_9
    move-object v8, v9

    move-object v9, v10

    .line 566
    :goto_4
    :try_start_9
    iget-object v12, v9, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/tl1;

    invoke-direct {v0, v9, v11}, Lads_mobile_sdk/tl1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    .line 567
    sget-object v13, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 568
    const-string v10, "<this>"

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "context"

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "block"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    new-instance v15, Lads_mobile_sdk/ws3;

    invoke-direct {v15, v0, v11}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 827
    sget-object v0, Lcom/google/android/gms/ads/MediationUtils;->INSTANCE:Lcom/google/android/gms/ads/MediationUtils;

    iget-object v10, v9, Lads_mobile_sdk/cm1;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/google/android/gms/ads/MediationUtils;->a(Lads_mobile_sdk/ex0;)V

    .line 828
    iget-object v0, v9, Lads_mobile_sdk/cm1;->k:Lads_mobile_sdk/e01;

    iput-object v9, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    iput-object v8, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iput v7, v2, Lads_mobile_sdk/sl1;->f:I

    invoke-interface {v0, v2}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/sl1;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-ne v0, v3, :cond_a

    goto :goto_6

    :cond_a
    move-object v7, v8

    move-object v8, v9

    .line 829
    :goto_5
    :try_start_a
    iget-object v0, v8, Lads_mobile_sdk/cm1;->j:Lads_mobile_sdk/ur3;

    iget-object v9, v8, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    check-cast v0, Lads_mobile_sdk/as3;

    invoke-virtual {v0, v9}, Lads_mobile_sdk/as3;->a(Lkotlinx/coroutines/CoroutineScope;)V

    .line 830
    iget-object v0, v8, Lads_mobile_sdk/cm1;->w:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/sj;

    iput-object v8, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    iput-object v7, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iput v6, v2, Lads_mobile_sdk/sl1;->f:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/nc1;->t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-ne v0, v3, :cond_b

    :goto_6
    return-object v3

    :cond_b
    move-object v3, v4

    move-object v4, v7

    move-object v2, v8

    .line 831
    :goto_7
    :try_start_b
    check-cast v0, Lads_mobile_sdk/v01;

    .line 1111
    instance-of v6, v0, Lads_mobile_sdk/i01;

    if-eqz v6, :cond_c

    .line 1112
    check-cast v0, Lads_mobile_sdk/i01;

    .line 1113
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1114
    :cond_c
    :try_start_c
    invoke-static {v3, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 1115
    iget-object v0, v2, Lads_mobile_sdk/cm1;->A:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 1117
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_5
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    .line 1397
    :goto_8
    :try_start_d
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1401
    instance-of v5, v0, Lads_mobile_sdk/v24;

    if-nez v5, :cond_11

    .line 1403
    instance-of v5, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v5, :cond_d

    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    if-nez v5, :cond_d

    .line 1409
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1415
    :cond_d
    instance-of v4, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v4, :cond_10

    .line 1416
    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_f

    .line 1417
    instance-of v4, v0, Lads_mobile_sdk/w01;

    if-eqz v4, :cond_e

    throw v0

    .line 1418
    :cond_e
    new-instance v4, Lads_mobile_sdk/b01;

    invoke-direct {v4, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1419
    :cond_f
    new-instance v4, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v4, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v4

    .line 1420
    :cond_10
    new-instance v4, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v4, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v4

    .line 1421
    :cond_11
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception v0

    move-object v4, v0

    .line 1422
    :try_start_e
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    move-exception v0

    :try_start_f
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_9

    :catchall_9
    move-exception v0

    move-object v2, v1

    .line 1423
    :goto_9
    iget-object v2, v2, Lads_mobile_sdk/cm1;->A:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v2}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    throw v0
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/zl1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/zl1;

    iget v1, v0, Lads_mobile_sdk/zl1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/zl1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/zl1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/zl1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/zl1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 315
    iget v2, v0, Lads_mobile_sdk/zl1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lads_mobile_sdk/zl1;->a:Lads_mobile_sdk/cm1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 318
    iget-object p1, p0, Lads_mobile_sdk/cm1;->u:Lads_mobile_sdk/pn;

    iput-object p0, v0, Lads_mobile_sdk/zl1;->a:Lads_mobile_sdk/cm1;

    iput v4, v0, Lads_mobile_sdk/zl1;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    invoke-static {p1, v0}, Lads_mobile_sdk/pn;->c(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 320
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    .line 321
    iget-object p1, v2, Lads_mobile_sdk/cm1;->v:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mk3;

    .line 322
    iput-boolean v4, p1, Lads_mobile_sdk/rp0;->b:Z

    .line 323
    iget-object p1, v2, Lads_mobile_sdk/cm1;->t:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/jb3;

    check-cast p1, Lads_mobile_sdk/rp0;

    .line 324
    iput-boolean v4, p1, Lads_mobile_sdk/rp0;->b:Z

    .line 325
    :cond_5
    iget-object p1, v2, Lads_mobile_sdk/cm1;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->O()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 326
    iget-object p1, v2, Lads_mobile_sdk/cm1;->u:Lads_mobile_sdk/pn;

    const/4 v2, 0x0

    iput-object v2, v0, Lads_mobile_sdk/zl1;->a:Lads_mobile_sdk/cm1;

    iput v3, v0, Lads_mobile_sdk/zl1;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    invoke-static {p1, v4, v0}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    .line 328
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
