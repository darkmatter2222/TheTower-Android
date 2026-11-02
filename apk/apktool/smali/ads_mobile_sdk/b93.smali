.class public final Lads_mobile_sdk/b93;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/tx;

.field public final c:Lads_mobile_sdk/pn;

.field public final d:Lads_mobile_sdk/f0;

.field public final e:Lads_mobile_sdk/rv1;

.field public final f:Lkotlinx/coroutines/CoroutineScope;

.field public final g:Lads_mobile_sdk/g83;

.field public final h:Lads_mobile_sdk/hf;

.field public final i:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final j:Lads_mobile_sdk/m13;

.field public final k:J

.field public final l:J

.field public final m:Lkotlinx/coroutines/sync/Mutex;

.field public final n:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Landroid/content/Context;Lads_mobile_sdk/tx;Lads_mobile_sdk/pn;Lads_mobile_sdk/f0;Lads_mobile_sdk/rv1;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/m13;)V
    .locals 1

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationAdapterProxyFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterInitializer"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recursiveAdData"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lads_mobile_sdk/b93;->a:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lads_mobile_sdk/b93;->b:Lads_mobile_sdk/tx;

    .line 54
    iput-object p4, p0, Lads_mobile_sdk/b93;->c:Lads_mobile_sdk/pn;

    .line 55
    iput-object p5, p0, Lads_mobile_sdk/b93;->d:Lads_mobile_sdk/f0;

    .line 56
    iput-object p6, p0, Lads_mobile_sdk/b93;->e:Lads_mobile_sdk/rv1;

    .line 57
    iput-object p7, p0, Lads_mobile_sdk/b93;->f:Lkotlinx/coroutines/CoroutineScope;

    .line 58
    iput-object p8, p0, Lads_mobile_sdk/b93;->g:Lads_mobile_sdk/g83;

    .line 59
    iput-object p9, p0, Lads_mobile_sdk/b93;->h:Lads_mobile_sdk/hf;

    .line 60
    iput-object p10, p0, Lads_mobile_sdk/b93;->i:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 61
    iput-object p11, p0, Lads_mobile_sdk/b93;->j:Lads_mobile_sdk/m13;

    .line 65
    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->B0()J

    move-result-wide p2

    iput-wide p2, p0, Lads_mobile_sdk/b93;->k:J

    .line 73
    sget-object p2, Lads_mobile_sdk/kj3;->e:Lads_mobile_sdk/kj3;

    invoke-virtual {p2}, Lads_mobile_sdk/kj3;->d()J

    move-result-wide p2

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->C0()D

    move-result-wide p4

    invoke-static {p2, p3, p4, p5}, Lkotlin/time/Duration;->times-UwyO8pc(JD)J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/b93;->l:J

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 75
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/b93;->m:Lkotlinx/coroutines/sync/Mutex;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/b93;->n:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v4, p0

    move-object/from16 v0, p6

    .line 399
    instance-of v1, v0, Lads_mobile_sdk/y83;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/y83;

    iget v2, v1, Lads_mobile_sdk/y83;->f:I

    const/high16 v3, -0x80000000

    and-int v5, v2, v3

    if-eqz v5, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/y83;->f:I

    goto :goto_0

    :cond_0
    new-instance v1, Lads_mobile_sdk/y83;

    invoke-direct {v1, v4, v0}, Lads_mobile_sdk/y83;-><init>(Lads_mobile_sdk/b93;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v1

    iget-object v0, v8, Lads_mobile_sdk/y83;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 400
    iget v1, v8, Lads_mobile_sdk/y83;->f:I

    const/4 v10, 0x0

    const-string v11, "exception"

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v12, :cond_2

    if-ne v1, v13, :cond_1

    iget-object v1, v8, Lads_mobile_sdk/y83;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v8, Lads_mobile_sdk/y83;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/m83;

    iget-object v3, v8, Lads_mobile_sdk/y83;->a:Lads_mobile_sdk/b93;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v8, Lads_mobile_sdk/y83;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v8, Lads_mobile_sdk/y83;->a:Lads_mobile_sdk/b93;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v15, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v15, v1

    goto/16 :goto_5

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 409
    :try_start_1
    iget-wide v0, v4, Lads_mobile_sdk/b93;->k:J

    move-wide v1, v0

    new-instance v0, Lads_mobile_sdk/z83;
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v7, 0x0

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide v14, v1

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    :try_start_2
    invoke-direct/range {v0 .. v7}, Lads_mobile_sdk/z83;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lads_mobile_sdk/b93;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    :try_end_2
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iput-object v4, v8, Lads_mobile_sdk/y83;->a:Lads_mobile_sdk/b93;
    :try_end_3
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v5, p4

    :try_start_4
    iput-object v5, v8, Lads_mobile_sdk/y83;->b:Ljava/lang/Object;

    iput v12, v8, Lads_mobile_sdk/y83;->f:I

    invoke-static {v14, v15, v0, v8}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-ne v0, v9, :cond_4

    goto/16 :goto_8

    :cond_4
    move-object v2, v4

    move-object v1, v5

    :goto_1
    :try_start_5
    check-cast v0, Lads_mobile_sdk/m83;
    :try_end_5
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v3, v2

    move-object v2, v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v5, p4

    :goto_2
    move-object v2, v4

    move-object v15, v5

    .line 410
    :goto_3
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    iput-boolean v10, v3, Lads_mobile_sdk/uj2;->m:Z

    .line 415
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 416
    new-instance v14, Lads_mobile_sdk/m83;

    .line 419
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x4e

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 420
    const-string v18, "Adapter internal error."

    invoke-direct/range {v14 .. v20}, Lads_mobile_sdk/m83;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v5, p4

    :goto_4
    move-object v2, v4

    move-object v15, v5

    .line 421
    :goto_5
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    iput-boolean v10, v3, Lads_mobile_sdk/uj2;->m:Z

    .line 426
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 427
    new-instance v14, Lads_mobile_sdk/m83;

    const/4 v0, 0x3

    .line 430
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x4e

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 431
    const-string v18, "Adapter timed out."

    invoke-direct/range {v14 .. v20}, Lads_mobile_sdk/m83;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    :goto_6
    move-object v3, v2

    move-object v2, v14

    .line 445
    :goto_7
    iget-object v1, v3, Lads_mobile_sdk/b93;->m:Lkotlinx/coroutines/sync/Mutex;

    .line 586
    iput-object v3, v8, Lads_mobile_sdk/y83;->a:Lads_mobile_sdk/b93;

    iput-object v2, v8, Lads_mobile_sdk/y83;->b:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/y83;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v13, v8, Lads_mobile_sdk/y83;->f:I

    const/4 v5, 0x0

    invoke-interface {v1, v5, v8}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_5

    :goto_8
    return-object v9

    .line 587
    :cond_5
    :goto_9
    :try_start_6
    iget-object v0, v3, Lads_mobile_sdk/b93;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 732
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 733
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    .line 877
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    move-object/from16 v0, p4

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/v83;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/v83;

    iget v3, v2, Lads_mobile_sdk/v83;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/v83;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/v83;

    invoke-direct {v2, p0, v0}, Lads_mobile_sdk/v83;-><init>(Lads_mobile_sdk/b93;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v2

    iget-object v0, v6, Lads_mobile_sdk/v83;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 111
    iget v2, v6, Lads_mobile_sdk/v83;->e:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v9, :cond_2

    if-ne v2, v8, :cond_1

    iget-object v2, v6, Lads_mobile_sdk/v83;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v6, Lads_mobile_sdk/v83;->a:Lads_mobile_sdk/b93;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v6, Lads_mobile_sdk/v83;->a:Lads_mobile_sdk/b93;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 116
    sget-object v11, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-wide v12, p0, Lads_mobile_sdk/b93;->l:J

    new-instance v0, Lads_mobile_sdk/x83;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/x83;-><init>(Lads_mobile_sdk/b93;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v6, Lads_mobile_sdk/v83;->a:Lads_mobile_sdk/b93;

    iput v9, v6, Lads_mobile_sdk/v83;->e:I

    invoke-virtual {v11, v12, v13, v0, v6}, Lads_mobile_sdk/m21;->a(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 142
    :goto_1
    iget-object v0, v2, Lads_mobile_sdk/b93;->m:Lkotlinx/coroutines/sync/Mutex;

    .line 268
    iput-object v2, v6, Lads_mobile_sdk/v83;->a:Lads_mobile_sdk/b93;

    iput-object v0, v6, Lads_mobile_sdk/v83;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v8, v6, Lads_mobile_sdk/v83;->e:I

    invoke-interface {v0, v10, v6}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_5

    :goto_2
    return-object v7

    :cond_5
    move-object v3, v2

    move-object v2, v0

    .line 269
    :goto_3
    :try_start_0
    iget-object v0, v3, Lads_mobile_sdk/b93;->n:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-interface {v2, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v2, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Ljava/util/Map$Entry;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/util/Map;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 878
    instance-of v7, v6, Lads_mobile_sdk/a93;

    if-eqz v7, :cond_0

    move-object v7, v6

    check-cast v7, Lads_mobile_sdk/a93;

    iget v8, v7, Lads_mobile_sdk/a93;->k:I

    const/high16 v9, -0x80000000

    and-int v10, v8, v9

    if-eqz v10, :cond_0

    sub-int/2addr v8, v9

    iput v8, v7, Lads_mobile_sdk/a93;->k:I

    goto :goto_0

    :cond_0
    new-instance v7, Lads_mobile_sdk/a93;

    invoke-direct {v7, v1, v6}, Lads_mobile_sdk/a93;-><init>(Lads_mobile_sdk/b93;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v14, v7

    iget-object v6, v14, Lads_mobile_sdk/a93;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 1024
    iget v8, v14, Lads_mobile_sdk/a93;->k:I

    const-string v9, ") is not eligible because it was excluded by AdRequest.skipUninitializedAdapters and has not yet successfully initialized."

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const-string v15, "The adapter requested for collecting bidding signals ("

    const/4 v10, 0x0

    if-eqz v8, :cond_5

    if-eq v8, v13, :cond_4

    if-eq v8, v12, :cond_3

    if-eq v8, v11, :cond_2

    const/4 v0, 0x4

    if-ne v8, v0, :cond_1

    iget-object v0, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v10

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :cond_2
    iget-object v2, v14, Lads_mobile_sdk/a93;->h:Lads_mobile_sdk/rr3;

    iget-object v3, v14, Lads_mobile_sdk/a93;->g:Lads_mobile_sdk/rr3;

    iget-object v0, v14, Lads_mobile_sdk/a93;->f:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iget-object v4, v14, Lads_mobile_sdk/a93;->e:Lads_mobile_sdk/j53;

    iget-object v5, v14, Lads_mobile_sdk/a93;->d:Ljava/util/Map;

    iget-object v8, v14, Lads_mobile_sdk/a93;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v11, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map$Entry;

    iget-object v12, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/b93;

    :try_start_1
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v17, v5

    move-object v5, v2

    move-object v2, v8

    move-object v8, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v10

    move-object v10, v6

    move-object/from16 v6, v17

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 1026
    :cond_3
    iget-object v0, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_2
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v10

    goto/16 :goto_3

    .line 1027
    :cond_4
    iget-object v2, v14, Lads_mobile_sdk/a93;->h:Lads_mobile_sdk/rr3;

    iget-object v3, v14, Lads_mobile_sdk/a93;->g:Lads_mobile_sdk/rr3;

    iget-object v0, v14, Lads_mobile_sdk/a93;->f:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iget-object v4, v14, Lads_mobile_sdk/a93;->e:Lads_mobile_sdk/j53;

    iget-object v5, v14, Lads_mobile_sdk/a93;->d:Ljava/util/Map;

    iget-object v8, v14, Lads_mobile_sdk/a93;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v11, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map$Entry;

    iget-object v13, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/b93;

    :try_start_3
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v17, v6

    move-object v6, v2

    move-object v2, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v5

    move-object v5, v3

    move-object/from16 v3, v17

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    .line 1028
    :cond_5
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1035
    iget-object v6, v1, Lads_mobile_sdk/b93;->g:Lads_mobile_sdk/g83;

    sget-object v8, Lads_mobile_sdk/s11;->A0:Lads_mobile_sdk/s11;

    .line 1158
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-static {}, Lads_mobile_sdk/js3;->a()Lads_mobile_sdk/ks3;

    move-result-object v12

    .line 1159
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v16

    if-nez v16, :cond_12

    .line 1160
    invoke-static {v6, v8, v11, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v6

    .line 1164
    :try_start_4
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v8

    invoke-virtual {v8}, Lads_mobile_sdk/rr3;->g()Lads_mobile_sdk/ks3;

    move-result-object v8

    iget-object v8, v8, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    .line 1165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v8, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    .line 1168
    iget-object v8, v1, Lads_mobile_sdk/b93;->h:Lads_mobile_sdk/hf;

    iget-object v11, v1, Lads_mobile_sdk/b93;->i:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v1, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    iput-object v0, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    iput-object v2, v14, Lads_mobile_sdk/a93;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput-object v3, v14, Lads_mobile_sdk/a93;->d:Ljava/util/Map;

    iput-object v4, v14, Lads_mobile_sdk/a93;->e:Lads_mobile_sdk/j53;

    iput-object v5, v14, Lads_mobile_sdk/a93;->f:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iput-object v6, v14, Lads_mobile_sdk/a93;->g:Lads_mobile_sdk/rr3;

    iput-object v6, v14, Lads_mobile_sdk/a93;->h:Lads_mobile_sdk/rr3;

    iput v13, v14, Lads_mobile_sdk/a93;->k:I

    invoke-virtual {v8, v11, v12, v14}, Lads_mobile_sdk/hf;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v8, v7, :cond_6

    goto/16 :goto_8

    :cond_6
    move-object v11, v0

    move-object v13, v1

    move-object v0, v5

    move-object v5, v6

    .line 1169
    :goto_1
    :try_start_5
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1172
    new-instance v0, Lads_mobile_sdk/m01;

    .line 1173
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1176
    sget-object v3, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    .line 1177
    invoke-direct {v0, v2, v3}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    .line 1178
    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 1186
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v6, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 1189
    :cond_7
    :try_start_6
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Ljava/lang/String;

    .line 1190
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdSourceExtrasBundles()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v2, :cond_8

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1191
    :cond_8
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/ts;

    .line 1192
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    if-eqz v3, :cond_a

    .line 1193
    invoke-virtual {v3}, Lads_mobile_sdk/ts;->w()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1303
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1304
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1414
    :cond_9
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1415
    :cond_a
    invoke-virtual {v4}, Lads_mobile_sdk/j53;->d()Ljava/lang/String;

    move-result-object v3

    .line 1416
    iput-object v5, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    iput-object v6, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    iput-object v10, v14, Lads_mobile_sdk/a93;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput-object v10, v14, Lads_mobile_sdk/a93;->d:Ljava/util/Map;

    iput-object v10, v14, Lads_mobile_sdk/a93;->e:Lads_mobile_sdk/j53;

    iput-object v10, v14, Lads_mobile_sdk/a93;->f:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iput-object v10, v14, Lads_mobile_sdk/a93;->g:Lads_mobile_sdk/rr3;

    iput-object v10, v14, Lads_mobile_sdk/a93;->h:Lads_mobile_sdk/rr3;

    const/4 v4, 0x2

    iput v4, v14, Lads_mobile_sdk/a93;->k:I

    move-object v11, v0

    move-object v0, v10

    move-object v8, v13

    move-object v10, v2

    move-object v13, v3

    invoke-virtual/range {v8 .. v14}, Lads_mobile_sdk/b93;->a(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne v2, v7, :cond_b

    goto/16 :goto_8

    :cond_b
    move-object v3, v5

    move-object v2, v6

    .line 1423
    :goto_3
    :try_start_7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1525
    instance-of v5, v4, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_c

    .line 1526
    move-object v5, v4

    check-cast v5, Lads_mobile_sdk/i01;

    invoke-static {v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1527
    :cond_c
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :goto_4
    move-object v6, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v6

    move-object v6, v5

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v6

    .line 1539
    :goto_5
    :try_start_8
    invoke-virtual {v6, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1543
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_11

    .line 1545
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_d

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_d

    .line 1551
    invoke-virtual {v6, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1557
    :cond_d
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_10

    .line 1558
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_f

    .line 1559
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_e

    throw v0

    .line 1560
    :cond_e
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1561
    :cond_f
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1562
    :cond_10
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1563
    :cond_11
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    .line 1564
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_12
    move-object v6, v10

    .line 1602
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {v8, v10, v13}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v8

    .line 1608
    :try_start_a
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v10

    invoke-virtual {v10}, Lads_mobile_sdk/rr3;->g()Lads_mobile_sdk/ks3;

    move-result-object v10

    iget-object v10, v10, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    .line 1609
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v10, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    .line 1612
    iget-object v10, v1, Lads_mobile_sdk/b93;->h:Lads_mobile_sdk/hf;

    iget-object v11, v1, Lads_mobile_sdk/b93;->i:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v1, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    iput-object v0, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    iput-object v2, v14, Lads_mobile_sdk/a93;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput-object v3, v14, Lads_mobile_sdk/a93;->d:Ljava/util/Map;

    iput-object v4, v14, Lads_mobile_sdk/a93;->e:Lads_mobile_sdk/j53;

    iput-object v5, v14, Lads_mobile_sdk/a93;->f:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iput-object v8, v14, Lads_mobile_sdk/a93;->g:Lads_mobile_sdk/rr3;

    iput-object v8, v14, Lads_mobile_sdk/a93;->h:Lads_mobile_sdk/rr3;

    const/4 v13, 0x3

    iput v13, v14, Lads_mobile_sdk/a93;->k:I

    invoke-virtual {v10, v11, v12, v14}, Lads_mobile_sdk/hf;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-ne v10, v7, :cond_13

    goto/16 :goto_8

    :cond_13
    move-object v11, v0

    move-object v12, v1

    move-object v0, v5

    move-object v5, v8

    .line 1613
    :goto_6
    :try_start_b
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_14

    .line 1616
    new-instance v0, Lads_mobile_sdk/m01;

    .line 1617
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1620
    sget-object v3, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    .line 1621
    invoke-direct {v0, v2, v3}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    .line 1622
    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 1630
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 1633
    :cond_14
    :try_start_c
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1634
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdSourceExtrasBundles()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v2, :cond_15

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_15
    move-object v10, v2

    .line 1635
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/ts;

    move-object v3, v12

    move-object v12, v9

    .line 1636
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_17

    .line 1637
    invoke-virtual {v2}, Lads_mobile_sdk/ts;->w()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 1747
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1748
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v13, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1858
    :cond_16
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1859
    :cond_17
    invoke-virtual {v4}, Lads_mobile_sdk/j53;->d()Ljava/lang/String;

    move-result-object v13

    .line 1860
    iput-object v8, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    iput-object v5, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    iput-object v6, v14, Lads_mobile_sdk/a93;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput-object v6, v14, Lads_mobile_sdk/a93;->d:Ljava/util/Map;

    iput-object v6, v14, Lads_mobile_sdk/a93;->e:Lads_mobile_sdk/j53;

    iput-object v6, v14, Lads_mobile_sdk/a93;->f:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iput-object v6, v14, Lads_mobile_sdk/a93;->g:Lads_mobile_sdk/rr3;

    iput-object v6, v14, Lads_mobile_sdk/a93;->h:Lads_mobile_sdk/rr3;

    const/4 v2, 0x4

    iput v2, v14, Lads_mobile_sdk/a93;->k:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move-object v11, v8

    move-object v8, v3

    move-object v3, v11

    move-object v11, v0

    :try_start_d
    invoke-virtual/range {v8 .. v14}, Lads_mobile_sdk/b93;->a(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-ne v0, v7, :cond_18

    :goto_8
    return-object v7

    :cond_18
    move-object v2, v5

    .line 1867
    :goto_9
    :try_start_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2008
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_19

    .line 2009
    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/i01;

    invoke-static {v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 2010
    :cond_19
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_a
    move-object v5, v2

    :goto_b
    move-object v8, v3

    goto :goto_c

    :catchall_6
    move-exception v0

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object v3, v8

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object v5, v8

    .line 2020
    :goto_c
    :try_start_f
    invoke-virtual {v8, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2024
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1e

    .line 2026
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1a

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1a

    .line 2032
    invoke-virtual {v8, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2038
    :cond_1a
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1d

    .line 2039
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1c

    .line 2040
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_1b

    throw v0

    .line 2041
    :cond_1b
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2042
    :cond_1c
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2043
    :cond_1d
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2044
    :cond_1e
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    move-exception v0

    move-object v2, v0

    .line 2045
    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :catchall_a
    move-exception v0

    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
