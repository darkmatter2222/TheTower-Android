.class public final Lads_mobile_sdk/e33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/gj1;
.implements Lads_mobile_sdk/g33;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/tx;

.field public final c:Lads_mobile_sdk/ex0;

.field public d:Lads_mobile_sdk/wy2;

.field public final e:Lkotlinx/coroutines/sync/Mutex;

.field public f:Lkotlinx/coroutines/Job;

.field public g:Lkotlinx/coroutines/CompletableJob;

.field public h:Lkotlinx/coroutines/CompletableJob;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;)V
    .locals 2

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lads_mobile_sdk/e33;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 366
    iput-object p2, p0, Lads_mobile_sdk/e33;->b:Lads_mobile_sdk/tx;

    .line 367
    iput-object p3, p0, Lads_mobile_sdk/e33;->c:Lads_mobile_sdk/ex0;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 371
    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 380
    invoke-static {v0, p2, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    iput-object p1, p0, Lads_mobile_sdk/e33;->g:Lkotlinx/coroutines/CompletableJob;

    .line 388
    invoke-static {v0, p2, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    iput-object p1, p0, Lads_mobile_sdk/e33;->h:Lkotlinx/coroutines/CompletableJob;

    .line 415
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/e33;->l:J

    .line 418
    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/e33;->m:J

    .line 421
    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/e33;->n:J

    .line 429
    invoke-virtual {p3}, Lads_mobile_sdk/ex0;->B()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/e33;->o:J

    .line 436
    invoke-virtual {p3}, Lads_mobile_sdk/ex0;->D()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/e33;->p:J

    return-void
.end method

.method public static final a(JLads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1918
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1919
    instance-of v4, v3, Lads_mobile_sdk/a33;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lads_mobile_sdk/a33;

    iget v5, v4, Lads_mobile_sdk/a33;->f:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lads_mobile_sdk/a33;->f:I

    goto :goto_0

    :cond_0
    new-instance v4, Lads_mobile_sdk/a33;

    invoke-direct {v4, v2, v3}, Lads_mobile_sdk/a33;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lads_mobile_sdk/a33;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 2483
    iget v6, v4, Lads_mobile_sdk/a33;->f:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v6, :cond_5

    if-eq v6, v9, :cond_4

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v4, Lads_mobile_sdk/a33;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/a33;->a:Lads_mobile_sdk/e33;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_3
    move-object v1, v0

    goto/16 :goto_2

    :cond_4
    iget-wide v0, v4, Lads_mobile_sdk/a33;->c:J

    iget-object v2, v4, Lads_mobile_sdk/a33;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v4, Lads_mobile_sdk/a33;->a:Lads_mobile_sdk/e33;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v6

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2484
    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v3}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v11

    invoke-static {v0, v1, v11, v12}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v3

    if-gtz v3, :cond_6

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2486
    :cond_6
    iget-object v3, v2, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 2678
    iput-object v2, v4, Lads_mobile_sdk/a33;->a:Lads_mobile_sdk/e33;

    iput-object v3, v4, Lads_mobile_sdk/a33;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v0, v4, Lads_mobile_sdk/a33;->c:J

    iput v9, v4, Lads_mobile_sdk/a33;->f:I

    invoke-interface {v3, v10, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_7

    goto :goto_3

    .line 2679
    :cond_7
    :goto_1
    :try_start_0
    iget-object v6, v2, Lads_mobile_sdk/e33;->h:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v6}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 2680
    invoke-static {v10, v9, v10}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v6

    iput-object v6, v2, Lads_mobile_sdk/e33;->h:Lkotlinx/coroutines/CompletableJob;

    .line 2681
    iget-object v11, v2, Lads_mobile_sdk/e33;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lads_mobile_sdk/b33;

    invoke-direct {v6, v0, v1, v2, v10}, Lads_mobile_sdk/b33;-><init>(JLads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    .line 2682
    sget-object v12, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2683
    const-string v0, "<this>"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2941
    new-instance v14, Lads_mobile_sdk/ws3;

    invoke-direct {v14, v6, v10}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2942
    invoke-interface {v3, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2943
    iget-object v0, v2, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 3138
    iput-object v2, v4, Lads_mobile_sdk/a33;->a:Lads_mobile_sdk/e33;

    iput-object v0, v4, Lads_mobile_sdk/a33;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v8, v4, Lads_mobile_sdk/a33;->f:I

    invoke-interface {v0, v10, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_3

    goto :goto_3

    .line 3139
    :goto_2
    :try_start_1
    iget-object v0, v2, Lads_mobile_sdk/e33;->h:Lkotlinx/coroutines/CompletableJob;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3338
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 3339
    iput-object v10, v4, Lads_mobile_sdk/a33;->a:Lads_mobile_sdk/e33;

    iput-object v10, v4, Lads_mobile_sdk/a33;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v7, v4, Lads_mobile_sdk/a33;->f:I

    invoke-interface {v0, v4}, Lkotlinx/coroutines/CompletableJob;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_8

    :goto_3
    return-object v5

    .line 3340
    :cond_8
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    .line 3538
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 3539
    invoke-interface {v3, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final a(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 361
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    instance-of v0, p1, Lads_mobile_sdk/k23;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/k23;

    iget v1, v0, Lads_mobile_sdk/k23;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/k23;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/k23;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/k23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/k23;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 862
    iget v2, v0, Lads_mobile_sdk/k23;->g:I

    const-string v3, "adLoader"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_1
    iget-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lads_mobile_sdk/dz2; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_1

    :pswitch_2
    iget-object p0, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/v01;

    iget-object v2, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lads_mobile_sdk/dz2; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v7, p0

    move-object p0, v2

    goto/16 :goto_8

    :pswitch_3
    iget-object p0, v0, Lads_mobile_sdk/k23;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/k23;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iget-object v7, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/v01;

    iget-object v8, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Lads_mobile_sdk/dz2; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    goto/16 :goto_a

    :catch_1
    move-exception p0

    goto/16 :goto_b

    :pswitch_4
    iget-object p0, v0, Lads_mobile_sdk/k23;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iget-object v2, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/v01;

    iget-object v8, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Lads_mobile_sdk/dz2; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v11, v2

    move-object v2, p0

    move-object p0, v11

    goto/16 :goto_6

    :pswitch_5
    iget-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    :try_start_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Lads_mobile_sdk/dz2; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_5

    :pswitch_6
    iget-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    :try_start_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catch Lads_mobile_sdk/dz2; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :pswitch_7
    iget-object p0, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    :try_start_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catch Lads_mobile_sdk/dz2; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_2

    move-object p1, p0

    move-object p0, v2

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v8, v2

    goto/16 :goto_a

    :catch_3
    move-exception p0

    move-object v8, v2

    goto/16 :goto_b

    :pswitch_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 866
    :cond_1
    :goto_1
    :try_start_7
    iget-object p1, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 1066
    iput-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/k23;->g:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7
    .catch Lads_mobile_sdk/dz2; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_4

    if-ne v2, v1, :cond_2

    goto/16 :goto_9

    .line 1067
    :cond_2
    :goto_2
    :try_start_8
    iget-wide v7, p0, Lads_mobile_sdk/e33;->o:J

    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v2}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-gtz v2, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    move v2, v5

    .line 1271
    :goto_3
    :try_start_9
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    .line 1272
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1273
    :cond_4
    new-instance p1, Lads_mobile_sdk/l23;

    invoke-direct {p1, p0, v6}, Lads_mobile_sdk/l23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object v6, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v0, Lads_mobile_sdk/k23;->g:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/e33;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto/16 :goto_9

    .line 1275
    :cond_5
    :goto_4
    iget-object p1, p0, Lads_mobile_sdk/e33;->d:Lads_mobile_sdk/wy2;

    if-nez p1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_6
    iput-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    const/4 v2, 0x3

    iput v2, v0, Lads_mobile_sdk/k23;->g:I

    .line 1276
    iget-object v2, p1, Lads_mobile_sdk/wy2;->p:Lkotlin/coroutines/CoroutineContext;

    .line 1277
    new-instance v7, Lads_mobile_sdk/iy2;

    invoke-direct {v7, p1, v6}, Lads_mobile_sdk/iy2;-><init>(Lads_mobile_sdk/wy2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v7, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto/16 :goto_9

    .line 1278
    :cond_7
    :goto_5
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/v01;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    .line 1279
    new-instance v7, Lads_mobile_sdk/m23;

    invoke-direct {v7, p0, v6}, Lads_mobile_sdk/m23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object v2, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/k23;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    const/4 v8, 0x4

    iput v8, v0, Lads_mobile_sdk/k23;->g:I

    invoke-virtual {p0, v7, v0}, Lads_mobile_sdk/e33;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_9
    .catch Lads_mobile_sdk/dz2; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_4

    if-ne v7, v1, :cond_8

    goto :goto_9

    :cond_8
    move-object v8, p0

    move-object p0, v2

    move-object v2, p1

    .line 1281
    :goto_6
    :try_start_a
    iget-object p1, v8, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 1486
    iput-object v8, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object p0, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/k23;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput-object p1, v0, Lads_mobile_sdk/k23;->d:Lkotlinx/coroutines/sync/Mutex;

    const/4 v7, 0x5

    iput v7, v0, Lads_mobile_sdk/k23;->g:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_a
    .catch Lads_mobile_sdk/dz2; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_0

    if-ne v7, v1, :cond_9

    goto :goto_9

    :cond_9
    move-object v7, p0

    move-object p0, p1

    .line 1487
    :goto_7
    :try_start_b
    iput-boolean v5, v8, Lads_mobile_sdk/e33;->k:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1696
    :try_start_c
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1697
    iget-object p0, v8, Lads_mobile_sdk/e33;->d:Lads_mobile_sdk/wy2;

    if-nez p0, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v6

    :cond_a
    iput-object v8, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object v7, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/k23;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput-object v6, v0, Lads_mobile_sdk/k23;->d:Lkotlinx/coroutines/sync/Mutex;

    const/4 p1, 0x6

    iput p1, v0, Lads_mobile_sdk/k23;->g:I

    invoke-virtual {p0, v7, v2, v0}, Lads_mobile_sdk/wy2;->a(Lads_mobile_sdk/v01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Lads_mobile_sdk/dz2; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c .. :try_end_c} :catch_0

    if-ne p0, v1, :cond_b

    goto :goto_9

    :cond_b
    move-object p0, v8

    .line 1698
    :goto_8
    :try_start_d
    instance-of p1, v7, Lads_mobile_sdk/q01;

    iput-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object v6, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    const/4 v2, 0x7

    iput v2, v0, Lads_mobile_sdk/k23;->g:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/e33;->d(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_d
    .catch Lads_mobile_sdk/dz2; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_d .. :try_end_d} :catch_4

    if-ne p1, v1, :cond_1

    :goto_9
    return-object v1

    :catchall_0
    move-exception p1

    .line 1905
    :try_start_e
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_e
    .catch Lads_mobile_sdk/dz2; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e .. :try_end_e} :catch_0

    :catchall_1
    move-exception v2

    .line 1906
    :try_start_f
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v2
    :try_end_f
    .catch Lads_mobile_sdk/dz2; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f .. :try_end_f} :catch_4

    :catch_4
    move-exception p1

    move-object v8, p0

    move-object p0, p1

    .line 1907
    :goto_a
    sget-object p1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v2, Lads_mobile_sdk/o23;

    invoke-direct {v2, v8, p0, v6}, Lads_mobile_sdk/o23;-><init>(Lads_mobile_sdk/e33;Ljava/util/concurrent/CancellationException;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object v6, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/k23;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput-object v6, v0, Lads_mobile_sdk/k23;->d:Lkotlinx/coroutines/sync/Mutex;

    const/16 p0, 0x9

    iput p0, v0, Lads_mobile_sdk/k23;->g:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    goto :goto_d

    :catch_5
    move-exception p1

    move-object v8, p0

    move-object p0, p1

    .line 1908
    :goto_b
    sget-object p1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v2, Lads_mobile_sdk/n23;

    invoke-direct {v2, v8, p0, v6}, Lads_mobile_sdk/n23;-><init>(Lads_mobile_sdk/e33;Lads_mobile_sdk/dz2;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object v6, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/k23;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput-object v6, v0, Lads_mobile_sdk/k23;->d:Lkotlinx/coroutines/sync/Mutex;

    const/16 p0, 0x8

    iput p0, v0, Lads_mobile_sdk/k23;->g:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    goto :goto_d

    .line 1916
    :cond_c
    :goto_c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_d
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/d33;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 5537
    instance-of v0, p2, Lads_mobile_sdk/t23;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/t23;

    iget v1, v0, Lads_mobile_sdk/t23;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/t23;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/t23;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/t23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/t23;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 5538
    iget v2, v0, Lads_mobile_sdk/t23;->f:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/t23;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lads_mobile_sdk/t23;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_3
    move-object v8, v2

    goto :goto_4

    :cond_4
    iget-object p1, v0, Lads_mobile_sdk/t23;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lads_mobile_sdk/t23;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object p1, v0, Lads_mobile_sdk/t23;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/t23;->b:Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lads_mobile_sdk/t23;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_2

    :cond_6
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    .line 5540
    :goto_1
    iget-object p2, v8, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 5740
    iput-object v8, v0, Lads_mobile_sdk/t23;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/t23;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, v0, Lads_mobile_sdk/t23;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v0, Lads_mobile_sdk/t23;->f:I

    invoke-interface {p2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_5

    .line 5741
    :cond_7
    :goto_2
    :try_start_0
    iget-object v2, v8, Lads_mobile_sdk/e33;->g:Lkotlinx/coroutines/CompletableJob;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5945
    invoke-interface {p2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 5946
    iput-object v8, v0, Lads_mobile_sdk/t23;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/t23;->b:Lkotlin/jvm/functions/Function1;

    iput-object v7, v0, Lads_mobile_sdk/t23;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/t23;->f:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/CompletableJob;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v2, v8

    .line 5950
    :goto_3
    iget-object p2, v2, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    iput-object v2, v0, Lads_mobile_sdk/t23;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/t23;->b:Lkotlin/jvm/functions/Function1;

    iput v4, v0, Lads_mobile_sdk/t23;->f:I

    invoke-static {p2, v7, v0, v6, v7}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->lock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    goto :goto_5

    .line 5952
    :goto_4
    :try_start_1
    iget-boolean p2, v8, Lads_mobile_sdk/e33;->i:Z

    if-nez p2, :cond_b

    iget-boolean p2, v8, Lads_mobile_sdk/e33;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_9

    goto :goto_7

    .line 5954
    :cond_9
    iget-object p2, v8, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p2, v7, v6, v7}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 5956
    iput-object v7, v0, Lads_mobile_sdk/t23;->a:Lads_mobile_sdk/e33;

    iput-object v7, v0, Lads_mobile_sdk/t23;->b:Lkotlin/jvm/functions/Function1;

    iput v3, v0, Lads_mobile_sdk/t23;->f:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    :goto_5
    return-object v1

    .line 5957
    :cond_a
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 5958
    :cond_b
    :goto_7
    iget-object p2, v8, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p2, v7, v6, v7}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, v8, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p2, v7, v6, v7}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 6154
    invoke-interface {p2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lads_mobile_sdk/ec3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 3540
    instance-of v0, p2, Lads_mobile_sdk/p23;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/p23;

    iget v1, v0, Lads_mobile_sdk/p23;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/p23;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/p23;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/p23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/p23;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 4188
    iget v2, v0, Lads_mobile_sdk/p23;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/p23;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/p23;->b:Lads_mobile_sdk/ec3;

    iget-object v0, v0, Lads_mobile_sdk/p23;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4189
    iget-object p2, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 4365
    iput-object p0, v0, Lads_mobile_sdk/p23;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/p23;->b:Lads_mobile_sdk/ec3;

    iput-object p2, v0, Lads_mobile_sdk/p23;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/p23;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 4366
    :goto_1
    :try_start_0
    iget-object p1, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object p1, p1, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    .line 4367
    iget-wide v1, p1, Lads_mobile_sdk/zy;->o:J

    .line 4368
    iput-wide v1, v0, Lads_mobile_sdk/e33;->p:J

    .line 4369
    iget-wide v1, p1, Lads_mobile_sdk/zy;->n:J

    .line 4370
    iput-wide v1, v0, Lads_mobile_sdk/e33;->o:J

    .line 4371
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4546
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 4547
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lads_mobile_sdk/wy2;Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 6155
    instance-of v2, v0, Lads_mobile_sdk/u23;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/u23;

    iget v3, v2, Lads_mobile_sdk/u23;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/u23;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/u23;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/u23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/u23;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 6593
    iget v4, v2, Lads_mobile_sdk/u23;->f:I

    const-string v5, "block"

    const-string v6, "context"

    const-string v7, "<this>"

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v10, :cond_3

    if-eq v4, v9, :cond_2

    if-ne v4, v8, :cond_1

    iget-object v3, v2, Lads_mobile_sdk/u23;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/u23;->b:Lkotlinx/coroutines/flow/SharedFlow;

    iget-object v2, v2, Lads_mobile_sdk/u23;->a:Lads_mobile_sdk/e33;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lads_mobile_sdk/u23;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v9, v2, Lads_mobile_sdk/u23;->b:Lkotlinx/coroutines/flow/SharedFlow;

    iget-object v10, v2, Lads_mobile_sdk/u23;->a:Lads_mobile_sdk/e33;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v18, v9

    move-object v9, v4

    move-object/from16 v4, v18

    goto :goto_2

    :cond_3
    iget-object v4, v2, Lads_mobile_sdk/u23;->b:Lkotlinx/coroutines/flow/SharedFlow;

    iget-object v10, v2, Lads_mobile_sdk/u23;->a:Lads_mobile_sdk/e33;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    .line 6597
    iput-object v0, v1, Lads_mobile_sdk/e33;->d:Lads_mobile_sdk/wy2;

    .line 6598
    iput-object v1, v2, Lads_mobile_sdk/u23;->a:Lads_mobile_sdk/e33;

    move-object/from16 v0, p2

    iput-object v0, v2, Lads_mobile_sdk/u23;->b:Lkotlinx/coroutines/flow/SharedFlow;

    iput v10, v2, Lads_mobile_sdk/u23;->f:I

    invoke-virtual {v1, v10, v2}, Lads_mobile_sdk/e33;->d(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_5

    goto :goto_3

    :cond_5
    move-object v10, v1

    .line 6599
    :goto_1
    iget-object v4, v10, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 6826
    iput-object v10, v2, Lads_mobile_sdk/u23;->a:Lads_mobile_sdk/e33;

    iput-object v0, v2, Lads_mobile_sdk/u23;->b:Lkotlinx/coroutines/flow/SharedFlow;

    iput-object v4, v2, Lads_mobile_sdk/u23;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v9, v2, Lads_mobile_sdk/u23;->f:I

    invoke-interface {v4, v11, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_6

    goto :goto_3

    :cond_6
    move-object v9, v4

    move-object v4, v0

    .line 6827
    :goto_2
    :try_start_0
    iget-object v12, v10, Lads_mobile_sdk/e33;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/v23;

    invoke-direct {v0, v10, v11}, Lads_mobile_sdk/v23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    .line 6828
    sget-object v13, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6829
    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7087
    new-instance v15, Lads_mobile_sdk/ws3;

    invoke-direct {v15, v0, v11}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 7088
    iput-object v0, v10, Lads_mobile_sdk/e33;->f:Lkotlinx/coroutines/Job;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7319
    invoke-interface {v9, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v4, :cond_9

    .line 7320
    iget-object v0, v10, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 7555
    iput-object v10, v2, Lads_mobile_sdk/u23;->a:Lads_mobile_sdk/e33;

    iput-object v4, v2, Lads_mobile_sdk/u23;->b:Lkotlinx/coroutines/flow/SharedFlow;

    iput-object v0, v2, Lads_mobile_sdk/u23;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v8, v2, Lads_mobile_sdk/u23;->f:I

    invoke-interface {v0, v11, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_7

    :goto_3
    return-object v3

    :cond_7
    move-object v3, v0

    move-object v2, v10

    .line 7556
    :goto_4
    :try_start_1
    iget-object v0, v2, Lads_mobile_sdk/e33;->f:Lkotlinx/coroutines/Job;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7795
    invoke-interface {v3, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez v0, :cond_8

    .line 7796
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 7797
    :cond_8
    iget-object v2, v2, Lads_mobile_sdk/e33;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/y23;

    invoke-direct {v3, v4, v0, v11}, Lads_mobile_sdk/y23;-><init>(Lkotlinx/coroutines/flow/SharedFlow;Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    .line 7798
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 7799
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8057
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v3, v11}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v3, v4

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v2

    .line 8058
    new-instance v3, Lads_mobile_sdk/w23;

    invoke-direct {v3, v2}, Lads_mobile_sdk/w23;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-interface {v0, v3}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 8287
    invoke-interface {v3, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 8288
    :cond_9
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_1
    move-exception v0

    .line 8504
    invoke-interface {v9, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 8505
    instance-of v0, p2, Lads_mobile_sdk/c33;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/c33;

    iget v1, v0, Lads_mobile_sdk/c33;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/c33;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/c33;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/c33;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/c33;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 9037
    iget v2, v0, Lads_mobile_sdk/c33;->f:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/c33;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_1
    move-object p2, v8

    goto/16 :goto_7

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_3
    move-object v8, v2

    goto :goto_5

    :cond_4
    iget-object p1, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    iget-object p1, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    .line 9039
    :goto_2
    new-instance v2, Lads_mobile_sdk/d33;

    invoke-direct {v2, p2, v7, p1}, Lads_mobile_sdk/d33;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    iput-object p2, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iput-object v7, v0, Lads_mobile_sdk/c33;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v0, Lads_mobile_sdk/c33;->f:I

    invoke-virtual {p2, v2, v0}, Lads_mobile_sdk/e33;->a(Lads_mobile_sdk/d33;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_6

    :cond_7
    move-object v2, p2

    .line 9048
    :goto_3
    iput-object v2, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iput v5, v0, Lads_mobile_sdk/c33;->f:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    goto :goto_6

    .line 9049
    :cond_8
    :goto_4
    check-cast p2, Lkotlin/time/Duration;

    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v8

    invoke-virtual {v2}, Lads_mobile_sdk/e33;->g()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p2

    if-gtz p2, :cond_c

    .line 9051
    iput-object v2, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iput v4, v0, Lads_mobile_sdk/c33;->f:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/e33;->t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    goto :goto_6

    .line 9052
    :goto_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 9053
    :cond_9
    iget-object p2, v8, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 9233
    iput-object v8, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, v0, Lads_mobile_sdk/c33;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/c33;->f:I

    invoke-interface {p2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    :goto_6
    return-object v1

    :cond_a
    move-object v2, p1

    move-object p1, p2

    goto/16 :goto_1

    .line 9234
    :goto_7
    :try_start_0
    iget-boolean v8, p2, Lads_mobile_sdk/e33;->i:Z

    if-nez v8, :cond_b

    iget-boolean v8, p2, Lads_mobile_sdk/e33;->j:Z

    if-nez v8, :cond_b

    .line 9235
    invoke-virtual {p2}, Lads_mobile_sdk/e33;->g()J

    move-result-wide v8

    iget-wide v10, p2, Lads_mobile_sdk/e33;->o:J

    invoke-static {v8, v9, v10, v11}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v8

    iput-wide v8, p2, Lads_mobile_sdk/e33;->m:J

    .line 9236
    iput-wide v8, p2, Lads_mobile_sdk/e33;->n:J

    .line 9238
    :cond_b
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9417
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 9418
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2

    :cond_c
    move-object p2, v2

    goto/16 :goto_2
.end method

.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 4548
    instance-of v0, p2, Lads_mobile_sdk/r23;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/r23;

    iget v1, v0, Lads_mobile_sdk/r23;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/r23;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/r23;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/r23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/r23;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 5148
    iget v2, v0, Lads_mobile_sdk/r23;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lads_mobile_sdk/r23;->c:Z

    iget-object v1, v0, Lads_mobile_sdk/r23;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/r23;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5149
    iget-object p2, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 5340
    iput-object p0, v0, Lads_mobile_sdk/r23;->a:Lads_mobile_sdk/e33;

    iput-object p2, v0, Lads_mobile_sdk/r23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p1, v0, Lads_mobile_sdk/r23;->c:Z

    iput v3, v0, Lads_mobile_sdk/r23;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p2

    .line 5341
    :goto_1
    :try_start_0
    iget-boolean p2, v0, Lads_mobile_sdk/e33;->i:Z

    if-nez p2, :cond_4

    iget-boolean p2, v0, Lads_mobile_sdk/e33;->j:Z

    if-nez p2, :cond_4

    .line 5342
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    iput-object p2, v0, Lads_mobile_sdk/e33;->g:Lkotlinx/coroutines/CompletableJob;

    .line 5343
    invoke-virtual {v0}, Lads_mobile_sdk/e33;->g()J

    move-result-wide v5

    iput-wide v5, v0, Lads_mobile_sdk/e33;->l:J

    :cond_4
    if-eqz p1, :cond_5

    .line 5346
    iput-boolean v3, v0, Lads_mobile_sdk/e33;->i:Z

    goto :goto_2

    .line 5348
    :cond_5
    iput-boolean v3, v0, Lads_mobile_sdk/e33;->j:Z

    .line 5350
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5535
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5536
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/q23;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/q23;

    iget v1, v0, Lads_mobile_sdk/q23;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/q23;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/q23;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/q23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/q23;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 636
    iget v2, v0, Lads_mobile_sdk/q23;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/q23;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/q23;->a:Lads_mobile_sdk/e33;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 637
    iget-object p1, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 815
    iput-object p0, v0, Lads_mobile_sdk/q23;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/q23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/q23;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    :goto_1
    const/4 p1, 0x0

    .line 816
    :try_start_0
    iput-boolean p1, v0, Lads_mobile_sdk/e33;->i:Z

    .line 817
    iput-boolean p1, v0, Lads_mobile_sdk/e33;->j:Z

    .line 818
    iput-boolean v3, v0, Lads_mobile_sdk/e33;->k:Z

    .line 819
    invoke-virtual {v0}, Lads_mobile_sdk/e33;->g()J

    move-result-wide v2

    iput-wide v2, v0, Lads_mobile_sdk/e33;->m:J

    .line 820
    iput-wide v2, v0, Lads_mobile_sdk/e33;->n:J

    .line 821
    iget-object p1, v0, Lads_mobile_sdk/e33;->g:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 822
    iget-object p1, v0, Lads_mobile_sdk/e33;->h:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 997
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 1169
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final c(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/s23;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/s23;

    iget v1, v0, Lads_mobile_sdk/s23;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/s23;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/s23;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/s23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/s23;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 615
    iget v2, v0, Lads_mobile_sdk/s23;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lads_mobile_sdk/s23;->c:Z

    iget-object v1, v0, Lads_mobile_sdk/s23;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/s23;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 616
    iget-object p2, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 804
    iput-object p0, v0, Lads_mobile_sdk/s23;->a:Lads_mobile_sdk/e33;

    iput-object p2, v0, Lads_mobile_sdk/s23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p1, v0, Lads_mobile_sdk/s23;->c:Z

    iput v3, v0, Lads_mobile_sdk/s23;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p2

    :goto_1
    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 805
    :try_start_0
    iput-boolean p2, v0, Lads_mobile_sdk/e33;->i:Z

    goto :goto_2

    .line 807
    :cond_4
    iput-boolean p2, v0, Lads_mobile_sdk/e33;->j:Z

    .line 811
    :goto_2
    iget-boolean p1, v0, Lads_mobile_sdk/e33;->i:Z

    if-nez p1, :cond_5

    iget-boolean p1, v0, Lads_mobile_sdk/e33;->j:Z

    if-nez p1, :cond_5

    iget-object p1, v0, Lads_mobile_sdk/e33;->g:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_5

    .line 814
    invoke-virtual {v0}, Lads_mobile_sdk/e33;->g()J

    move-result-wide p1

    iget-wide v2, v0, Lads_mobile_sdk/e33;->l:J

    invoke-static {p1, p2, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide p1

    .line 815
    iget-wide v2, v0, Lads_mobile_sdk/e33;->n:J

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lads_mobile_sdk/e33;->n:J

    .line 816
    iget-wide v2, v0, Lads_mobile_sdk/e33;->m:J

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lads_mobile_sdk/e33;->m:J

    .line 818
    iget-object p1, v0, Lads_mobile_sdk/e33;->g:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 820
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 996
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final d(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/j23;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/j23;

    iget v1, v0, Lads_mobile_sdk/j23;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/j23;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/j23;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/j23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/j23;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 466
    iget v2, v0, Lads_mobile_sdk/j23;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lads_mobile_sdk/j23;->c:Z

    iget-object v1, v0, Lads_mobile_sdk/j23;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/j23;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 467
    iget-object p2, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 694
    iput-object p0, v0, Lads_mobile_sdk/j23;->a:Lads_mobile_sdk/e33;

    iput-object p2, v0, Lads_mobile_sdk/j23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p1, v0, Lads_mobile_sdk/j23;->c:Z

    iput v3, v0, Lads_mobile_sdk/j23;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p2

    .line 695
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Lads_mobile_sdk/e33;->g()J

    move-result-wide v2

    .line 697
    iget-object p2, v0, Lads_mobile_sdk/e33;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    const-string v5, "gads:proactive_banner_refresh:enabled"

    .line 699
    const-string v6, "key"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p2, v5, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 716
    iget-wide v5, v0, Lads_mobile_sdk/e33;->p:J

    sget-object p2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p2}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p2

    if-lez p2, :cond_6

    if-eqz p1, :cond_4

    .line 720
    iget-wide p1, v0, Lads_mobile_sdk/e33;->p:J

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lads_mobile_sdk/e33;->m:J

    goto :goto_3

    .line 726
    :cond_4
    iget-wide p1, v0, Lads_mobile_sdk/e33;->n:J

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide p1

    .line 728
    iget-wide v5, v0, Lads_mobile_sdk/e33;->p:J

    invoke-static {p1, p2, v5, v6}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v5

    if-ltz v5, :cond_5

    goto :goto_2

    .line 731
    :cond_5
    iget-wide v5, v0, Lads_mobile_sdk/e33;->p:J

    invoke-static {v2, v3, v5, v6}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v2

    .line 732
    :goto_2
    iput-wide v2, v0, Lads_mobile_sdk/e33;->m:J

    .line 742
    :goto_3
    iget-wide p1, v0, Lads_mobile_sdk/e33;->m:J

    iget-wide v2, v0, Lads_mobile_sdk/e33;->o:J

    invoke-static {p1, p2, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p1

    iget-wide v2, v0, Lads_mobile_sdk/e33;->p:J

    invoke-static {p1, p2, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lads_mobile_sdk/e33;->n:J

    goto :goto_4

    .line 746
    :cond_6
    iget-wide p1, v0, Lads_mobile_sdk/e33;->o:J

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lads_mobile_sdk/e33;->n:J

    .line 747
    iput-wide p1, v0, Lads_mobile_sdk/e33;->m:J

    .line 749
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 950
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final g()J
    .locals 3

    .line 663
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, p0, Lads_mobile_sdk/e33;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 664
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 665
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/i23;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/i23;

    iget v1, v0, Lads_mobile_sdk/i23;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/i23;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/i23;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/i23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/i23;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 658
    iget v2, v0, Lads_mobile_sdk/i23;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/i23;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/i23;->a:Lads_mobile_sdk/e33;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 837
    iput-object p0, v0, Lads_mobile_sdk/i23;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/i23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/i23;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 838
    :goto_1
    :try_start_0
    iget-object p1, v0, Lads_mobile_sdk/e33;->f:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_4

    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 839
    :cond_4
    iput-boolean v3, v0, Lads_mobile_sdk/e33;->j:Z

    .line 840
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1021
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/z23;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/z23;

    iget v1, v0, Lads_mobile_sdk/z23;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/z23;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/z23;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/z23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/z23;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 556
    iget v2, v0, Lads_mobile_sdk/z23;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lads_mobile_sdk/z23;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/z23;->a:Lads_mobile_sdk/e33;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lads_mobile_sdk/z23;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v0, Lads_mobile_sdk/z23;->a:Lads_mobile_sdk/e33;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 557
    iget-object v2, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 738
    iput-object p0, v0, Lads_mobile_sdk/z23;->a:Lads_mobile_sdk/e33;

    iput-object v2, v0, Lads_mobile_sdk/z23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/z23;->e:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v7, p0

    .line 739
    :goto_1
    :try_start_0
    iget-boolean p1, v7, Lads_mobile_sdk/e33;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 924
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez p1, :cond_b

    .line 925
    iget-object v2, v7, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 1116
    iput-object v7, v0, Lads_mobile_sdk/z23;->a:Lads_mobile_sdk/e33;

    iput-object v2, v0, Lads_mobile_sdk/z23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/z23;->e:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v4, v7

    .line 1117
    :goto_2
    :try_start_1
    iget-boolean p1, v4, Lads_mobile_sdk/e33;->i:Z

    const/4 v7, 0x0

    if-nez p1, :cond_7

    iget-boolean p1, v4, Lads_mobile_sdk/e33;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move v5, v7

    .line 1312
    :goto_3
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v5, :cond_a

    .line 1313
    iget-object p1, v4, Lads_mobile_sdk/e33;->d:Lads_mobile_sdk/wy2;

    if-nez p1, :cond_8

    const-string p1, "adLoader"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_8
    iput-object v6, v0, Lads_mobile_sdk/z23;->a:Lads_mobile_sdk/e33;

    iput-object v6, v0, Lads_mobile_sdk/z23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/z23;->e:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/wy2;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    :goto_4
    return-object v1

    :cond_9
    return-object p1

    :cond_a
    move v5, v7

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 1507
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    .line 1508
    :cond_b
    :goto_5
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    .line 1691
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
