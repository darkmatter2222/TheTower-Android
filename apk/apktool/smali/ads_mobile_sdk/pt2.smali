.class public final Lads_mobile_sdk/pt2;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/tq2;
.implements Lads_mobile_sdk/ox0;
.implements Lads_mobile_sdk/n92;


# instance fields
.field public final A:Ljava/util/LinkedHashMap;

.field public final B:Ljava/util/LinkedHashMap;

.field public final C:Ljava/util/LinkedHashMap;

.field public final D:Ljava/util/LinkedHashMap;

.field public final E:Ljava/util/LinkedHashMap;

.field public F:Z

.field public final G:Ljava/util/LinkedHashMap;

.field public H:Z

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lads_mobile_sdk/ur3;

.field public final e:Lads_mobile_sdk/g83;

.field public final f:Lads_mobile_sdk/tx;

.field public final g:Lads_mobile_sdk/ex0;

.field public final h:Lads_mobile_sdk/f13;

.field public final i:Lads_mobile_sdk/cw2;

.field public final j:Lads_mobile_sdk/cw2;

.field public final k:Lads_mobile_sdk/cw2;

.field public final l:Lads_mobile_sdk/cw2;

.field public final m:Lads_mobile_sdk/cw2;

.field public final n:Lads_mobile_sdk/cw2;

.field public final o:Lads_mobile_sdk/zd3;

.field public final p:Lads_mobile_sdk/k6;

.field public final q:Lkotlinx/coroutines/sync/Mutex;

.field public r:Lkotlinx/coroutines/Job;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:J

.field public x:Z

.field public y:J

.field public final z:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ur3;Lads_mobile_sdk/g83;Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;Lads_mobile_sdk/f13;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/zd3;Lads_mobile_sdk/k6;)V
    .locals 16

    move-object/from16 v0, p0

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

    .line 1
    const-string v15, "backgroundScope"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "traceLogger"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "rootTraceCreator"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "clock"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "flags"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "randomGenerator"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "appOpenComponentProvider"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "bannerComponentProvider"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "interstitialComponentProvider"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "nativeComponentProvider"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "rewardedComponentProvider"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "swipeableInterstitialComponentProvider"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "sharedSettingsDataStore"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "adPreloadingValidator"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x3

    const/4 v14, 0x0

    .line 2
    invoke-direct {v0, v14, v15}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    .line 3
    iput-object v1, v0, Lads_mobile_sdk/pt2;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iput-object v2, v0, Lads_mobile_sdk/pt2;->d:Lads_mobile_sdk/ur3;

    .line 5
    iput-object v3, v0, Lads_mobile_sdk/pt2;->e:Lads_mobile_sdk/g83;

    .line 6
    iput-object v4, v0, Lads_mobile_sdk/pt2;->f:Lads_mobile_sdk/tx;

    .line 7
    iput-object v5, v0, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    .line 8
    iput-object v6, v0, Lads_mobile_sdk/pt2;->h:Lads_mobile_sdk/f13;

    .line 9
    iput-object v7, v0, Lads_mobile_sdk/pt2;->i:Lads_mobile_sdk/cw2;

    .line 10
    iput-object v8, v0, Lads_mobile_sdk/pt2;->j:Lads_mobile_sdk/cw2;

    .line 11
    iput-object v9, v0, Lads_mobile_sdk/pt2;->k:Lads_mobile_sdk/cw2;

    .line 13
    iput-object v10, v0, Lads_mobile_sdk/pt2;->l:Lads_mobile_sdk/cw2;

    .line 14
    iput-object v11, v0, Lads_mobile_sdk/pt2;->m:Lads_mobile_sdk/cw2;

    .line 15
    iput-object v12, v0, Lads_mobile_sdk/pt2;->n:Lads_mobile_sdk/cw2;

    .line 17
    iput-object v13, v0, Lads_mobile_sdk/pt2;->o:Lads_mobile_sdk/zd3;

    move-object/from16 v1, p14

    .line 18
    iput-object v1, v0, Lads_mobile_sdk/pt2;->p:Lads_mobile_sdk/k6;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 25
    invoke-static {v1, v2, v14}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v1

    iput-object v1, v0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 26
    invoke-static {v14, v2, v14}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    iput-object v1, v0, Lads_mobile_sdk/pt2;->r:Lkotlinx/coroutines/Job;

    .line 28
    iput-boolean v2, v0, Lads_mobile_sdk/pt2;->s:Z

    .line 29
    iput-boolean v2, v0, Lads_mobile_sdk/pt2;->t:Z

    .line 30
    iput-boolean v2, v0, Lads_mobile_sdk/pt2;->u:Z

    .line 34
    iput-boolean v2, v0, Lads_mobile_sdk/pt2;->v:Z

    .line 35
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v3

    iput-wide v3, v0, Lads_mobile_sdk/pt2;->w:J

    .line 37
    iput-boolean v2, v0, Lads_mobile_sdk/pt2;->x:Z

    .line 38
    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v1

    iput-wide v1, v0, Lads_mobile_sdk/pt2;->y:J

    .line 41
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lads_mobile_sdk/pt2;->z:Ljava/util/LinkedHashMap;

    .line 43
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lads_mobile_sdk/pt2;->A:Ljava/util/LinkedHashMap;

    .line 45
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lads_mobile_sdk/pt2;->B:Ljava/util/LinkedHashMap;

    .line 47
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lads_mobile_sdk/pt2;->C:Ljava/util/LinkedHashMap;

    .line 49
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lads_mobile_sdk/pt2;->D:Ljava/util/LinkedHashMap;

    .line 52
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lads_mobile_sdk/pt2;->E:Ljava/util/LinkedHashMap;

    .line 56
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lads_mobile_sdk/pt2;->G:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/pt2;)Lads_mobile_sdk/k6;
    .locals 0

    .line 70
    iget-object p0, p0, Lads_mobile_sdk/pt2;->p:Lads_mobile_sdk/k6;

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/pt2;Lads_mobile_sdk/as;Ljava/lang/String;Lads_mobile_sdk/j53;)Lads_mobile_sdk/zh1;
    .locals 11

    if-eqz p1, :cond_3

    .line 74
    iget-object v0, p0, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    const-string v1, "gads:preload_validator_held_too_long_after_poll_check:enabled"

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v1, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v1, 0x5

    sget-object v3, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 96
    const-string v4, "gads:preload_validator_poll_to_show_timeout:millis"

    invoke-static {v1, v3, v4, v2}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v1

    .line 97
    sget-object v2, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v0, v4, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v2

    .line 98
    invoke-static {v2, v3}, Lkotlin/time/Duration;->isPositive-impl(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Lads_mobile_sdk/ci1;->l()Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 102
    :cond_1
    iget-object v0, p0, Lads_mobile_sdk/pt2;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/kr2;

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lads_mobile_sdk/kr2;-><init>(JLads_mobile_sdk/pt2;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object v5, v0

    move-object v8, v1

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-virtual {p1, p0}, Lads_mobile_sdk/ci1;->a(Lkotlinx/coroutines/Job;)V

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    move-object v4, p0

    .line 103
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public static a(Lads_mobile_sdk/pt2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 21015
    instance-of v0, p3, Lads_mobile_sdk/mr2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/mr2;

    iget v1, v0, Lads_mobile_sdk/mr2;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/mr2;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/mr2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/mr2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/mr2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 21813
    iget v2, v0, Lads_mobile_sdk/mr2;->g:I

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
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide p0, v0, Lads_mobile_sdk/mr2;->d:J

    iget-object p2, v0, Lads_mobile_sdk/mr2;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Lads_mobile_sdk/mr2;->a:Lads_mobile_sdk/pt2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-wide p1, v0, Lads_mobile_sdk/mr2;->d:J

    iget-object p0, v0, Lads_mobile_sdk/mr2;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/mr2;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v5, v0, Lads_mobile_sdk/mr2;->a:Lads_mobile_sdk/pt2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v5

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21814
    iget-boolean p3, p0, Lads_mobile_sdk/pt2;->t:Z

    if-nez p3, :cond_5

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 21816
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21817
    iget-object p3, p0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 22341
    iput-object p0, v0, Lads_mobile_sdk/mr2;->a:Lads_mobile_sdk/pt2;

    iput-object v2, v0, Lads_mobile_sdk/mr2;->b:Ljava/lang/Object;

    iput-object p3, v0, Lads_mobile_sdk/mr2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-wide p1, v0, Lads_mobile_sdk/mr2;->d:J

    iput v5, v0, Lads_mobile_sdk/mr2;->g:I

    invoke-interface {p3, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_6

    goto :goto_3

    .line 22342
    :cond_6
    :goto_1
    :try_start_0
    iget-wide v7, p0, Lads_mobile_sdk/pt2;->w:J

    invoke-static {p1, p2, v7, v8}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v5

    if-lez v5, :cond_c

    iget-boolean v5, p0, Lads_mobile_sdk/pt2;->v:Z

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    .line 22344
    iput-boolean v5, p0, Lads_mobile_sdk/pt2;->v:Z

    .line 22345
    iput-wide p1, p0, Lads_mobile_sdk/pt2;->w:J

    .line 22348
    new-instance v5, Lads_mobile_sdk/nr2;

    invoke-direct {v5, p0}, Lads_mobile_sdk/nr2;-><init>(Lads_mobile_sdk/pt2;)V

    invoke-virtual {p0, v5}, Lads_mobile_sdk/pt2;->a(Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    move-result-object v5

    .line 22349
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22871
    invoke-interface {p3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 22872
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_b

    .line 23389
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v2, p0

    move-wide p0, p1

    move-object p2, p3

    :cond_8
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/h6;

    .line 23390
    iput-object v2, v0, Lads_mobile_sdk/mr2;->a:Lads_mobile_sdk/pt2;

    iput-object p2, v0, Lads_mobile_sdk/mr2;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/mr2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-wide p0, v0, Lads_mobile_sdk/mr2;->d:J

    iput v4, v0, Lads_mobile_sdk/mr2;->g:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23391
    invoke-static {p3, v0}, Lads_mobile_sdk/h6;->g(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    goto :goto_3

    .line 23392
    :cond_9
    iput-object v6, v0, Lads_mobile_sdk/mr2;->a:Lads_mobile_sdk/pt2;

    iput-object v6, v0, Lads_mobile_sdk/mr2;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/mr2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/mr2;->g:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/pt2;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    :goto_3
    return-object v1

    .line 23394
    :cond_a
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 23395
    :cond_c
    :goto_5
    :try_start_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23922
    invoke-interface {p3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final a(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    move-object/from16 v1, p4

    .line 4677
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4678
    instance-of v2, v1, Lads_mobile_sdk/hs2;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/hs2;

    iget v3, v2, Lads_mobile_sdk/hs2;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/hs2;->j:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/hs2;

    invoke-direct {v2, p0, v1}, Lads_mobile_sdk/hs2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/hs2;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 5130
    iget v4, v2, Lads_mobile_sdk/hs2;->j:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v2, Lads_mobile_sdk/hs2;->g:Ljava/lang/String;

    iget-object v0, v2, Lads_mobile_sdk/hs2;->f:Lads_mobile_sdk/pt2;

    iget-object v4, v2, Lads_mobile_sdk/hs2;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v2, Lads_mobile_sdk/hs2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v8, v2, Lads_mobile_sdk/hs2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v9, v2, Lads_mobile_sdk/hs2;->b:Ljava/lang/String;

    iget-object v10, v2, Lads_mobile_sdk/hs2;->a:Lads_mobile_sdk/pt2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v0, p0

    move-object p0, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v11

    move-object v12, v6

    move-object v11, v8

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5135
    iget-object v4, p0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 5914
    iput-object p0, v2, Lads_mobile_sdk/hs2;->a:Lads_mobile_sdk/pt2;

    iput-object p1, v2, Lads_mobile_sdk/hs2;->b:Ljava/lang/String;

    move-object/from16 v1, p2

    iput-object v1, v2, Lads_mobile_sdk/hs2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    move-object/from16 v8, p3

    iput-object v8, v2, Lads_mobile_sdk/hs2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v4, v2, Lads_mobile_sdk/hs2;->e:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v2, Lads_mobile_sdk/hs2;->f:Lads_mobile_sdk/pt2;

    iput-object p1, v2, Lads_mobile_sdk/hs2;->g:Ljava/lang/String;

    iput v6, v2, Lads_mobile_sdk/hs2;->j:I

    invoke-interface {v4, v7, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v9, p0

    move-object v0, p1

    move-object v10, v0

    move-object v11, v1

    move-object v12, v8

    .line 5915
    :goto_1
    :try_start_0
    iget-object v1, v9, Lads_mobile_sdk/pt2;->z:Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6698
    invoke-interface {v4, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 6699
    new-instance v8, Lads_mobile_sdk/ks2;

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lads_mobile_sdk/ks2;-><init>(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)V

    iput-object v7, v2, Lads_mobile_sdk/hs2;->a:Lads_mobile_sdk/pt2;

    iput-object v7, v2, Lads_mobile_sdk/hs2;->b:Ljava/lang/String;

    iput-object v7, v2, Lads_mobile_sdk/hs2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iput-object v7, v2, Lads_mobile_sdk/hs2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v7, v2, Lads_mobile_sdk/hs2;->e:Lkotlinx/coroutines/sync/Mutex;

    iput-object v7, v2, Lads_mobile_sdk/hs2;->f:Lads_mobile_sdk/pt2;

    iput-object v7, v2, Lads_mobile_sdk/hs2;->g:Ljava/lang/String;

    iput v5, v2, Lads_mobile_sdk/hs2;->j:I

    invoke-virtual {p0, v0, v1, v8, v2}, Lads_mobile_sdk/pt2;->a(Ljava/lang/String;Ljava/util/LinkedHashMap;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_5

    :goto_2
    return-object v3

    :cond_5
    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 7482
    invoke-interface {v4, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final a(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p1

    .line 173
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    instance-of v1, v0, Lads_mobile_sdk/cs2;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/cs2;

    iget v2, v1, Lads_mobile_sdk/cs2;->h:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/cs2;->h:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lads_mobile_sdk/cs2;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lads_mobile_sdk/cs2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lads_mobile_sdk/cs2;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1091
    iget v4, v1, Lads_mobile_sdk/cs2;->h:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v2, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/pt2;

    goto/16 :goto_2

    :pswitch_1
    iget-object v2, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/pt2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_2
    iget-object v2, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/pt2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v16, v4

    move-object v4, v2

    move-object/from16 v2, v16

    goto/16 :goto_7

    :pswitch_3
    iget-object v2, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/pt2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v2, v1, Lads_mobile_sdk/cs2;->c:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/uj2;

    iget-object v3, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v1, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :pswitch_5
    iget-object v2, v1, Lads_mobile_sdk/cs2;->c:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/uj2;

    iget-object v3, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v1, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :pswitch_6
    iget v2, v1, Lads_mobile_sdk/cs2;->e:I

    iget v4, v1, Lads_mobile_sdk/cs2;->d:I

    iget-object v8, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/pt2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v11, v4

    :goto_1
    move-object v14, v1

    move-object v10, v8

    move-object v8, v9

    goto/16 :goto_b

    :pswitch_7
    iget-object v2, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/pt2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v2

    move-object v9, v4

    goto/16 :goto_a

    :pswitch_8
    iget-object v2, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/pt2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_9
    iget-object v2, v1, Lads_mobile_sdk/cs2;->c:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v8, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/pt2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_4

    :pswitch_a
    iget-object v2, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/pt2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v4

    goto :goto_3

    :goto_2
    :pswitch_b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1092
    :cond_2
    invoke-virtual {v1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1093
    iget-object v0, v2, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 1550
    iput-object v2, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    iput-object v0, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    iput v6, v1, Lads_mobile_sdk/cs2;->h:I

    invoke-interface {v0, v7, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_3

    goto/16 :goto_e

    :cond_3
    move-object v8, v2

    move-object v2, v0

    .line 1551
    :goto_3
    :try_start_2
    invoke-virtual {v8}, Lads_mobile_sdk/pt2;->g()Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 2012
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2013
    iget-object v2, v8, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 2479
    iput-object v8, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    iput-object v0, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/cs2;->c:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v1, Lads_mobile_sdk/cs2;->h:I

    invoke-interface {v2, v7, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_4

    goto/16 :goto_e

    .line 2480
    :cond_4
    :goto_4
    :try_start_3
    iget-boolean v4, v8, Lads_mobile_sdk/pt2;->F:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 2950
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez v4, :cond_a

    .line 2951
    iput-object v8, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    iput-object v0, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/cs2;->c:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v1, Lads_mobile_sdk/cs2;->h:I

    .line 2952
    invoke-virtual {v8, v0, v7, v1}, Lads_mobile_sdk/pt2;->b(Ljava/util/List;Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_5

    goto/16 :goto_e

    :cond_5
    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    move-object v4, v8

    .line 2953
    :goto_5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v2

    move-object v8, v4

    goto :goto_9

    .line 2964
    :cond_6
    iput-object v4, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    const/16 v0, 0x8

    iput v0, v1, Lads_mobile_sdk/cs2;->h:I

    invoke-virtual {v4, v2, v1}, Lads_mobile_sdk/pt2;->b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    goto/16 :goto_e

    .line 2965
    :cond_7
    :goto_6
    check-cast v0, Lads_mobile_sdk/h6;

    .line 2982
    iput-object v4, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    const/16 v8, 0x9

    iput v8, v1, Lads_mobile_sdk/cs2;->h:I

    invoke-virtual {v4, v2, v0, v1}, Lads_mobile_sdk/pt2;->b(Ljava/util/List;Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1

    goto/16 :goto_e

    :goto_7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_11

    .line 2986
    :cond_8
    iput-object v2, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    const/16 v0, 0xa

    iput v0, v1, Lads_mobile_sdk/cs2;->h:I

    .line 2987
    invoke-virtual {v2, v4, v7, v1}, Lads_mobile_sdk/pt2;->c(Ljava/util/List;Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    goto/16 :goto_e

    .line 2988
    :cond_9
    :goto_8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2989
    iget-object v0, v2, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2990
    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 2991
    const-string v8, "key"

    const/16 v9, 0x1388

    const-string v10, "gads:centralized_preload_manager:next_ad_delay"

    invoke-static {v9, v4, v10, v8}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v4

    .line 2992
    sget-object v8, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v0, v10, v4, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v8

    .line 2993
    iput-object v2, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    const/16 v0, 0xb

    iput v0, v1, Lads_mobile_sdk/cs2;->h:I

    invoke-static {v8, v9, v1}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2

    goto/16 :goto_e

    .line 2994
    :cond_a
    :goto_9
    iput-object v8, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    iput-object v0, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/cs2;->c:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v1, Lads_mobile_sdk/cs2;->h:I

    invoke-virtual {v8, v0, v1}, Lads_mobile_sdk/pt2;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_b

    goto/16 :goto_e

    :cond_b
    move-object v9, v8

    move-object v8, v0

    move-object v0, v2

    :goto_a
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 2995
    iput-object v9, v1, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    iput-object v8, v1, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    iput v2, v1, Lads_mobile_sdk/cs2;->d:I

    iput v2, v1, Lads_mobile_sdk/cs2;->e:I

    const/4 v0, 0x5

    iput v0, v1, Lads_mobile_sdk/cs2;->h:I

    invoke-virtual {v9, v1}, Lads_mobile_sdk/pt2;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    goto/16 :goto_e

    :cond_c
    move v11, v2

    goto/16 :goto_1

    :goto_b
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lt v2, v0, :cond_1c

    .line 2996
    iget-object v0, v8, Lads_mobile_sdk/pt2;->e:Lads_mobile_sdk/g83;

    sget-object v1, Lads_mobile_sdk/s11;->r1:Lads_mobile_sdk/s11;

    .line 3469
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 3470
    new-instance v4, Lads_mobile_sdk/ks3;

    .line 3471
    new-instance v9, Lads_mobile_sdk/n03;

    invoke-direct {v9}, Lads_mobile_sdk/n03;-><init>()V

    .line 3472
    new-instance v12, Lads_mobile_sdk/tn1;

    invoke-direct {v12}, Lads_mobile_sdk/tn1;-><init>()V

    .line 3473
    new-instance v13, Lads_mobile_sdk/m33;

    invoke-direct {v13}, Lads_mobile_sdk/m33;-><init>()V

    .line 3474
    new-instance v15, Lads_mobile_sdk/zb;

    invoke-direct {v15}, Lads_mobile_sdk/zb;-><init>()V

    .line 3475
    invoke-direct {v4, v9, v12, v13, v15}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 3476
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v9

    .line 3477
    iget-object v9, v9, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v9, :cond_14

    .line 3478
    invoke-static {v0, v1, v2, v4}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 3479
    :try_start_4
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 3480
    iput-object v1, v14, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    iput-object v1, v14, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    iput-object v2, v14, Lads_mobile_sdk/cs2;->c:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, v14, Lads_mobile_sdk/cs2;->h:I

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 3481
    invoke-virtual/range {v8 .. v14}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/h6;Ljava/util/List;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v0, v3, :cond_d

    goto/16 :goto_e

    :cond_d
    move-object v3, v1

    .line 3482
    :goto_c
    :try_start_5
    check-cast v0, Lads_mobile_sdk/hv;

    .line 3490
    iput-object v0, v2, Lads_mobile_sdk/uj2;->L:Lads_mobile_sdk/hv;

    .line 3492
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3968
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_e

    .line 3969
    check-cast v0, Lads_mobile_sdk/i01;

    .line 3970
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3971
    :cond_e
    invoke-static {v3, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    move-object v3, v1

    .line 3979
    :goto_d
    :try_start_6
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3983
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_13

    .line 3985
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_f

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_f

    .line 3991
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 3997
    :cond_f
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_12

    .line 3998
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_11

    .line 3999
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_10

    throw v0

    .line 4000
    :cond_10
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4001
    :cond_11
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 4002
    :cond_12
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 4003
    :cond_13
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 4004
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 4038
    :cond_14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 4039
    :try_start_8
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 4040
    iput-object v1, v14, Lads_mobile_sdk/cs2;->a:Ljava/lang/Object;

    iput-object v1, v14, Lads_mobile_sdk/cs2;->b:Ljava/lang/Object;

    iput-object v2, v14, Lads_mobile_sdk/cs2;->c:Ljava/lang/Object;

    const/4 v0, 0x7

    iput v0, v14, Lads_mobile_sdk/cs2;->h:I

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 4041
    invoke-virtual/range {v8 .. v14}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/h6;Ljava/util/List;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-ne v0, v3, :cond_15

    :goto_e
    return-object v3

    :cond_15
    move-object v3, v1

    .line 4042
    :goto_f
    :try_start_9
    check-cast v0, Lads_mobile_sdk/hv;

    .line 4050
    iput-object v0, v2, Lads_mobile_sdk/uj2;->L:Lads_mobile_sdk/hv;

    .line 4052
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4565
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_16

    .line 4566
    check-cast v0, Lads_mobile_sdk/i01;

    .line 4567
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4568
    :cond_16
    invoke-static {v3, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_11

    :catchall_5
    move-exception v0

    move-object v3, v1

    .line 4576
    :goto_10
    :try_start_a
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 4580
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1b

    .line 4582
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_17

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_17

    .line 4588
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 4594
    :cond_17
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1a

    .line 4595
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_19

    .line 4596
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_18

    throw v0

    .line 4597
    :cond_18
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4598
    :cond_19
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 4599
    :cond_1a
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 4600
    :cond_1b
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 4601
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_8
    move-exception v0

    .line 4602
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_9
    move-exception v0

    .line 4603
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 4604
    :cond_1c
    :goto_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
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
.end method

.method public static final a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lads_mobile_sdk/pt2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 7484
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7485
    instance-of v3, v2, Lads_mobile_sdk/ls2;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/ls2;

    iget v4, v3, Lads_mobile_sdk/ls2;->k:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/ls2;->k:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/ls2;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/ls2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lads_mobile_sdk/ls2;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 7981
    iget v5, v3, Lads_mobile_sdk/ls2;->k:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v3, Lads_mobile_sdk/ls2;->h:Ljava/lang/String;

    iget-object v1, v3, Lads_mobile_sdk/ls2;->g:Lads_mobile_sdk/pt2;

    iget-object v5, v3, Lads_mobile_sdk/ls2;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v3, Lads_mobile_sdk/ls2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v9, v3, Lads_mobile_sdk/ls2;->d:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    iget-object v10, v3, Lads_mobile_sdk/ls2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v11, v3, Lads_mobile_sdk/ls2;->b:Ljava/lang/String;

    iget-object v12, v3, Lads_mobile_sdk/ls2;->a:Lads_mobile_sdk/pt2;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    move-object v14, v11

    move-object v13, v12

    move-object v11, v7

    move-object v12, v10

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7987
    iget-object v5, v0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 8732
    iput-object v0, v3, Lads_mobile_sdk/ls2;->a:Lads_mobile_sdk/pt2;

    iput-object v1, v3, Lads_mobile_sdk/ls2;->b:Ljava/lang/String;

    move-object/from16 v2, p2

    iput-object v2, v3, Lads_mobile_sdk/ls2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    move-object/from16 v9, p0

    iput-object v9, v3, Lads_mobile_sdk/ls2;->d:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    move-object/from16 v10, p1

    iput-object v10, v3, Lads_mobile_sdk/ls2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v5, v3, Lads_mobile_sdk/ls2;->f:Lkotlinx/coroutines/sync/Mutex;

    iput-object v0, v3, Lads_mobile_sdk/ls2;->g:Lads_mobile_sdk/pt2;

    iput-object v1, v3, Lads_mobile_sdk/ls2;->h:Ljava/lang/String;

    iput v7, v3, Lads_mobile_sdk/ls2;->k:I

    invoke-interface {v5, v8, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v13, v0

    move-object v14, v1

    move-object v12, v2

    move-object v11, v10

    :goto_1
    move-object v10, v9

    .line 8733
    :try_start_0
    iget-object v2, v13, Lads_mobile_sdk/pt2;->A:Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9482
    invoke-interface {v5, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 9483
    new-instance v9, Lads_mobile_sdk/os2;

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Lads_mobile_sdk/os2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lads_mobile_sdk/pt2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object v8, v3, Lads_mobile_sdk/ls2;->a:Lads_mobile_sdk/pt2;

    iput-object v8, v3, Lads_mobile_sdk/ls2;->b:Ljava/lang/String;

    iput-object v8, v3, Lads_mobile_sdk/ls2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iput-object v8, v3, Lads_mobile_sdk/ls2;->d:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    iput-object v8, v3, Lads_mobile_sdk/ls2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v8, v3, Lads_mobile_sdk/ls2;->f:Lkotlinx/coroutines/sync/Mutex;

    iput-object v8, v3, Lads_mobile_sdk/ls2;->g:Lads_mobile_sdk/pt2;

    iput-object v8, v3, Lads_mobile_sdk/ls2;->h:Ljava/lang/String;

    iput v6, v3, Lads_mobile_sdk/ls2;->k:I

    invoke-virtual {v0, v1, v2, v9, v3}, Lads_mobile_sdk/pt2;->a(Ljava/lang/String;Ljava/util/LinkedHashMap;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_5

    :goto_2
    return-object v4

    :cond_5
    return-object v0

    :catchall_0
    move-exception v0

    .line 10232
    invoke-interface {v5, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final a(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lads_mobile_sdk/pt2;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 10234
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10235
    instance-of v3, v2, Lads_mobile_sdk/ts2;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/ts2;

    iget v4, v3, Lads_mobile_sdk/ts2;->k:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/ts2;->k:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/ts2;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/ts2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lads_mobile_sdk/ts2;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 10823
    iget v5, v3, Lads_mobile_sdk/ts2;->k:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v3, Lads_mobile_sdk/ts2;->h:Ljava/lang/String;

    iget-object v1, v3, Lads_mobile_sdk/ts2;->g:Lads_mobile_sdk/pt2;

    iget-object v5, v3, Lads_mobile_sdk/ts2;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v3, Lads_mobile_sdk/ts2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v9, v3, Lads_mobile_sdk/ts2;->d:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    iget-object v10, v3, Lads_mobile_sdk/ts2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v11, v3, Lads_mobile_sdk/ts2;->b:Ljava/lang/String;

    iget-object v12, v3, Lads_mobile_sdk/ts2;->a:Lads_mobile_sdk/pt2;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    move-object v14, v11

    move-object v11, v10

    move-object v10, v7

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 10829
    iget-object v5, v0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 11504
    iput-object v0, v3, Lads_mobile_sdk/ts2;->a:Lads_mobile_sdk/pt2;

    iput-object v1, v3, Lads_mobile_sdk/ts2;->b:Ljava/lang/String;

    move-object/from16 v2, p1

    iput-object v2, v3, Lads_mobile_sdk/ts2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    move-object/from16 v9, p3

    iput-object v9, v3, Lads_mobile_sdk/ts2;->d:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    move-object/from16 v10, p0

    iput-object v10, v3, Lads_mobile_sdk/ts2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v5, v3, Lads_mobile_sdk/ts2;->f:Lkotlinx/coroutines/sync/Mutex;

    iput-object v0, v3, Lads_mobile_sdk/ts2;->g:Lads_mobile_sdk/pt2;

    iput-object v1, v3, Lads_mobile_sdk/ts2;->h:Ljava/lang/String;

    iput v7, v3, Lads_mobile_sdk/ts2;->k:I

    invoke-interface {v5, v8, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v12, v0

    move-object v14, v1

    move-object v11, v2

    :goto_1
    move-object v13, v9

    .line 11505
    :try_start_0
    iget-object v2, v12, Lads_mobile_sdk/pt2;->C:Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12184
    invoke-interface {v5, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 12185
    new-instance v9, Lads_mobile_sdk/ws2;

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Lads_mobile_sdk/ws2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lads_mobile_sdk/pt2;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object v8, v3, Lads_mobile_sdk/ts2;->a:Lads_mobile_sdk/pt2;

    iput-object v8, v3, Lads_mobile_sdk/ts2;->b:Ljava/lang/String;

    iput-object v8, v3, Lads_mobile_sdk/ts2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iput-object v8, v3, Lads_mobile_sdk/ts2;->d:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    iput-object v8, v3, Lads_mobile_sdk/ts2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v8, v3, Lads_mobile_sdk/ts2;->f:Lkotlinx/coroutines/sync/Mutex;

    iput-object v8, v3, Lads_mobile_sdk/ts2;->g:Lads_mobile_sdk/pt2;

    iput-object v8, v3, Lads_mobile_sdk/ts2;->h:Ljava/lang/String;

    iput v6, v3, Lads_mobile_sdk/ts2;->k:I

    invoke-virtual {v0, v1, v2, v9, v3}, Lads_mobile_sdk/pt2;->a(Ljava/lang/String;Ljava/util/LinkedHashMap;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_5

    :goto_2
    return-object v4

    :cond_5
    return-object v0

    :catchall_0
    move-exception v0

    .line 12864
    invoke-interface {v5, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final a(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lads_mobile_sdk/pt2;Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 12866
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12867
    instance-of v3, v2, Lads_mobile_sdk/ht2;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/ht2;

    iget v4, v3, Lads_mobile_sdk/ht2;->k:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/ht2;->k:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/ht2;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/ht2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lads_mobile_sdk/ht2;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 13593
    iget v5, v3, Lads_mobile_sdk/ht2;->k:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v3, Lads_mobile_sdk/ht2;->h:Ljava/lang/String;

    iget-object v1, v3, Lads_mobile_sdk/ht2;->g:Lads_mobile_sdk/pt2;

    iget-object v5, v3, Lads_mobile_sdk/ht2;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v3, Lads_mobile_sdk/ht2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v9, v3, Lads_mobile_sdk/ht2;->d:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

    iget-object v10, v3, Lads_mobile_sdk/ht2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v11, v3, Lads_mobile_sdk/ht2;->b:Ljava/lang/String;

    iget-object v12, v3, Lads_mobile_sdk/ht2;->a:Lads_mobile_sdk/pt2;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    move-object v14, v11

    move-object v11, v10

    move-object v10, v7

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13599
    iget-object v5, v0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 14169
    iput-object v0, v3, Lads_mobile_sdk/ht2;->a:Lads_mobile_sdk/pt2;

    iput-object v1, v3, Lads_mobile_sdk/ht2;->b:Ljava/lang/String;

    move-object/from16 v2, p1

    iput-object v2, v3, Lads_mobile_sdk/ht2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    move-object/from16 v9, p3

    iput-object v9, v3, Lads_mobile_sdk/ht2;->d:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

    move-object/from16 v10, p0

    iput-object v10, v3, Lads_mobile_sdk/ht2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v5, v3, Lads_mobile_sdk/ht2;->f:Lkotlinx/coroutines/sync/Mutex;

    iput-object v0, v3, Lads_mobile_sdk/ht2;->g:Lads_mobile_sdk/pt2;

    iput-object v1, v3, Lads_mobile_sdk/ht2;->h:Ljava/lang/String;

    iput v7, v3, Lads_mobile_sdk/ht2;->k:I

    invoke-interface {v5, v8, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v12, v0

    move-object v14, v1

    move-object v11, v2

    :goto_1
    move-object v13, v9

    .line 14170
    :try_start_0
    iget-object v2, v12, Lads_mobile_sdk/pt2;->G:Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14744
    invoke-interface {v5, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 14745
    new-instance v9, Lads_mobile_sdk/kt2;

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Lads_mobile_sdk/kt2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lads_mobile_sdk/pt2;Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object v8, v3, Lads_mobile_sdk/ht2;->a:Lads_mobile_sdk/pt2;

    iput-object v8, v3, Lads_mobile_sdk/ht2;->b:Ljava/lang/String;

    iput-object v8, v3, Lads_mobile_sdk/ht2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iput-object v8, v3, Lads_mobile_sdk/ht2;->d:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

    iput-object v8, v3, Lads_mobile_sdk/ht2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v8, v3, Lads_mobile_sdk/ht2;->f:Lkotlinx/coroutines/sync/Mutex;

    iput-object v8, v3, Lads_mobile_sdk/ht2;->g:Lads_mobile_sdk/pt2;

    iput-object v8, v3, Lads_mobile_sdk/ht2;->h:Ljava/lang/String;

    iput v6, v3, Lads_mobile_sdk/ht2;->k:I

    invoke-virtual {v0, v1, v2, v9, v3}, Lads_mobile_sdk/pt2;->a(Ljava/lang/String;Ljava/util/LinkedHashMap;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_5

    :goto_2
    return-object v4

    :cond_5
    return-object v0

    :catchall_0
    move-exception v0

    .line 15319
    invoke-interface {v5, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final synthetic a(Lads_mobile_sdk/pt2;Lads_mobile_sdk/j53;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/j53;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lads_mobile_sdk/pt2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 3819
    instance-of v0, p3, Lads_mobile_sdk/or2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/or2;

    iget v1, v0, Lads_mobile_sdk/or2;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/or2;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/or2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/or2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/or2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 4594
    iget v2, v0, Lads_mobile_sdk/or2;->g:I

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
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide p0, v0, Lads_mobile_sdk/or2;->d:J

    iget-object p2, v0, Lads_mobile_sdk/or2;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Lads_mobile_sdk/or2;->a:Lads_mobile_sdk/pt2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-wide p1, v0, Lads_mobile_sdk/or2;->d:J

    iget-object p0, v0, Lads_mobile_sdk/or2;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/or2;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v7, v0, Lads_mobile_sdk/or2;->a:Lads_mobile_sdk/pt2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v7

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4595
    iget-boolean p3, p0, Lads_mobile_sdk/pt2;->t:Z

    if-nez p3, :cond_5

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 4597
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4598
    iget-object p3, p0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 5132
    iput-object p0, v0, Lads_mobile_sdk/or2;->a:Lads_mobile_sdk/pt2;

    iput-object v2, v0, Lads_mobile_sdk/or2;->b:Ljava/lang/Object;

    iput-object p3, v0, Lads_mobile_sdk/or2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-wide p1, v0, Lads_mobile_sdk/or2;->d:J

    iput v5, v0, Lads_mobile_sdk/or2;->g:I

    invoke-interface {p3, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_6

    goto :goto_3

    .line 5133
    :cond_6
    :goto_1
    :try_start_0
    iget-wide v7, p0, Lads_mobile_sdk/pt2;->w:J

    invoke-static {p1, p2, v7, v8}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v7

    if-lez v7, :cond_c

    iget-boolean v7, p0, Lads_mobile_sdk/pt2;->v:Z

    if-eqz v7, :cond_7

    goto :goto_5

    .line 5135
    :cond_7
    iput-boolean v5, p0, Lads_mobile_sdk/pt2;->v:Z

    .line 5136
    iput-wide p1, p0, Lads_mobile_sdk/pt2;->w:J

    .line 5139
    new-instance v5, Lads_mobile_sdk/pr2;

    invoke-direct {v5, p0}, Lads_mobile_sdk/pr2;-><init>(Lads_mobile_sdk/pt2;)V

    invoke-virtual {p0, v5}, Lads_mobile_sdk/pt2;->a(Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    move-result-object v5

    .line 5140
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5672
    invoke-interface {p3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 5673
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_b

    .line 6200
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v2, p0

    move-wide p0, p1

    move-object p2, p3

    :cond_8
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/h6;

    .line 6201
    iput-object v2, v0, Lads_mobile_sdk/or2;->a:Lads_mobile_sdk/pt2;

    iput-object p2, v0, Lads_mobile_sdk/or2;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/or2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-wide p0, v0, Lads_mobile_sdk/or2;->d:J

    iput v4, v0, Lads_mobile_sdk/or2;->g:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6202
    invoke-static {p3, v0}, Lads_mobile_sdk/h6;->h(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    goto :goto_3

    .line 6203
    :cond_9
    iput-object v6, v0, Lads_mobile_sdk/or2;->a:Lads_mobile_sdk/pt2;

    iput-object v6, v0, Lads_mobile_sdk/or2;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/or2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/or2;->g:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/pt2;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    :goto_3
    return-object v1

    .line 6205
    :cond_a
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 6206
    :cond_c
    :goto_5
    :try_start_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6743
    invoke-interface {p3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final b(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    move-object/from16 v1, p4

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    instance-of v2, v1, Lads_mobile_sdk/ps2;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ps2;

    iget v3, v2, Lads_mobile_sdk/ps2;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ps2;->j:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/ps2;

    invoke-direct {v2, p0, v1}, Lads_mobile_sdk/ps2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/ps2;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 685
    iget v4, v2, Lads_mobile_sdk/ps2;->j:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v2, Lads_mobile_sdk/ps2;->g:Ljava/lang/String;

    iget-object v0, v2, Lads_mobile_sdk/ps2;->f:Lads_mobile_sdk/pt2;

    iget-object v4, v2, Lads_mobile_sdk/ps2;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v2, Lads_mobile_sdk/ps2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v8, v2, Lads_mobile_sdk/ps2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v9, v2, Lads_mobile_sdk/ps2;->b:Ljava/lang/String;

    iget-object v10, v2, Lads_mobile_sdk/ps2;->a:Lads_mobile_sdk/pt2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v0, p0

    move-object p0, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v11

    move-object v12, v6

    move-object v11, v8

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 690
    iget-object v4, p0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 1399
    iput-object p0, v2, Lads_mobile_sdk/ps2;->a:Lads_mobile_sdk/pt2;

    iput-object p1, v2, Lads_mobile_sdk/ps2;->b:Ljava/lang/String;

    move-object/from16 v1, p2

    iput-object v1, v2, Lads_mobile_sdk/ps2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    move-object/from16 v8, p3

    iput-object v8, v2, Lads_mobile_sdk/ps2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v4, v2, Lads_mobile_sdk/ps2;->e:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v2, Lads_mobile_sdk/ps2;->f:Lads_mobile_sdk/pt2;

    iput-object p1, v2, Lads_mobile_sdk/ps2;->g:Ljava/lang/String;

    iput v6, v2, Lads_mobile_sdk/ps2;->j:I

    invoke-interface {v4, v7, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v9, p0

    move-object v0, p1

    move-object v10, v0

    move-object v11, v1

    move-object v12, v8

    .line 1400
    :goto_1
    :try_start_0
    iget-object v1, v9, Lads_mobile_sdk/pt2;->B:Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2113
    invoke-interface {v4, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2114
    new-instance v8, Lads_mobile_sdk/ss2;

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lads_mobile_sdk/ss2;-><init>(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)V

    iput-object v7, v2, Lads_mobile_sdk/ps2;->a:Lads_mobile_sdk/pt2;

    iput-object v7, v2, Lads_mobile_sdk/ps2;->b:Ljava/lang/String;

    iput-object v7, v2, Lads_mobile_sdk/ps2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iput-object v7, v2, Lads_mobile_sdk/ps2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v7, v2, Lads_mobile_sdk/ps2;->e:Lkotlinx/coroutines/sync/Mutex;

    iput-object v7, v2, Lads_mobile_sdk/ps2;->f:Lads_mobile_sdk/pt2;

    iput-object v7, v2, Lads_mobile_sdk/ps2;->g:Ljava/lang/String;

    iput v5, v2, Lads_mobile_sdk/ps2;->j:I

    invoke-virtual {p0, v0, v1, v8, v2}, Lads_mobile_sdk/pt2;->a(Ljava/lang/String;Ljava/util/LinkedHashMap;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_5

    :goto_2
    return-object v3

    :cond_5
    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2827
    invoke-interface {v4, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static b(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 9463
    instance-of v0, p1, Lads_mobile_sdk/fs2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/fs2;

    iget v1, v0, Lads_mobile_sdk/fs2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/fs2;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/fs2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/fs2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/fs2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 9601
    iget v2, v0, Lads_mobile_sdk/fs2;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/fs2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/fs2;->a:Lads_mobile_sdk/pt2;

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

    .line 9602
    iget-object p1, p0, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9604
    const-string v2, "gads:preload:bind_to_online:enabled"

    const-string v5, "key"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9620
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v2, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 9621
    iput-boolean p1, p0, Lads_mobile_sdk/pt2;->s:Z

    .line 9622
    iget-object p1, p0, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9624
    const-string v2, "gads:preload:bind_on_foreground"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9640
    invoke-virtual {p1, v2, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 9641
    iput-boolean p1, p0, Lads_mobile_sdk/pt2;->t:Z

    .line 9642
    iget-object p1, p0, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9644
    const-string v2, "gads:preload_app_open_in_background"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9660
    invoke-virtual {p1, v2, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 9661
    iput-boolean p1, p0, Lads_mobile_sdk/pt2;->u:Z

    .line 9662
    iget-object p1, p0, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9664
    const-string v2, "gads:centralized_preload_manager:enabled"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9680
    invoke-virtual {p1, v2, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 9681
    iput-boolean p1, p0, Lads_mobile_sdk/pt2;->H:Z

    .line 9683
    iget-object p1, p0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 10575
    iput-object p0, v0, Lads_mobile_sdk/fs2;->a:Lads_mobile_sdk/pt2;

    iput-object p1, v0, Lads_mobile_sdk/fs2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/fs2;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 10576
    :cond_3
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lads_mobile_sdk/pt2;->s:Z

    if-nez v0, :cond_4

    .line 10577
    iput-boolean v3, p0, Lads_mobile_sdk/pt2;->x:Z

    .line 10579
    :cond_4
    iget-boolean v0, p0, Lads_mobile_sdk/pt2;->t:Z

    if-nez v0, :cond_5

    .line 10580
    iput-boolean v3, p0, Lads_mobile_sdk/pt2;->v:Z

    .line 10582
    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11471
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 11472
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, p0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 12359
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final synthetic b(Lads_mobile_sdk/pt2;)Ljava/util/List;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lads_mobile_sdk/pt2;->g()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lads_mobile_sdk/pt2;)Lads_mobile_sdk/ex0;
    .locals 0

    .line 70
    iget-object p0, p0, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    return-object p0
.end method

.method public static c(Lads_mobile_sdk/pt2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 5404
    instance-of v0, p3, Lads_mobile_sdk/qr2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/qr2;

    iget v1, v0, Lads_mobile_sdk/qr2;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/qr2;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/qr2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/qr2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/qr2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 6225
    iget v2, v0, Lads_mobile_sdk/qr2;->g:I

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
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide p0, v0, Lads_mobile_sdk/qr2;->d:J

    iget-object p2, v0, Lads_mobile_sdk/qr2;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Lads_mobile_sdk/qr2;->a:Lads_mobile_sdk/pt2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-wide p1, v0, Lads_mobile_sdk/qr2;->d:J

    iget-object p0, v0, Lads_mobile_sdk/qr2;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/qr2;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v7, v0, Lads_mobile_sdk/qr2;->a:Lads_mobile_sdk/pt2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v7

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6226
    iget-boolean p3, p0, Lads_mobile_sdk/pt2;->s:Z

    if-nez p3, :cond_5

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 6228
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6229
    iget-object p3, p0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 6743
    iput-object p0, v0, Lads_mobile_sdk/qr2;->a:Lads_mobile_sdk/pt2;

    iput-object v2, v0, Lads_mobile_sdk/qr2;->b:Ljava/lang/Object;

    iput-object p3, v0, Lads_mobile_sdk/qr2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-wide p1, v0, Lads_mobile_sdk/qr2;->d:J

    iput v5, v0, Lads_mobile_sdk/qr2;->g:I

    invoke-interface {p3, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_6

    goto :goto_3

    .line 6744
    :cond_6
    :goto_1
    :try_start_0
    iget-wide v7, p0, Lads_mobile_sdk/pt2;->y:J

    invoke-static {p1, p2, v7, v8}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v7

    if-lez v7, :cond_c

    iget-boolean v7, p0, Lads_mobile_sdk/pt2;->x:Z

    if-eqz v7, :cond_7

    goto :goto_5

    .line 6746
    :cond_7
    iput-boolean v5, p0, Lads_mobile_sdk/pt2;->x:Z

    .line 6747
    iput-wide p1, p0, Lads_mobile_sdk/pt2;->y:J

    .line 6748
    invoke-virtual {p0, v6}, Lads_mobile_sdk/pt2;->a(Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    move-result-object v5

    .line 6749
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7261
    invoke-interface {p3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 7262
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_b

    .line 7773
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v2, p0

    move-wide p0, p1

    move-object p2, p3

    :cond_8
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/h6;

    .line 7774
    iput-object v2, v0, Lads_mobile_sdk/qr2;->a:Lads_mobile_sdk/pt2;

    iput-object p2, v0, Lads_mobile_sdk/qr2;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/qr2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-wide p0, v0, Lads_mobile_sdk/qr2;->d:J

    iput v4, v0, Lads_mobile_sdk/qr2;->g:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7775
    invoke-static {p3, v0}, Lads_mobile_sdk/h6;->i(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    goto :goto_3

    .line 7776
    :cond_9
    iput-object v6, v0, Lads_mobile_sdk/qr2;->a:Lads_mobile_sdk/pt2;

    iput-object v6, v0, Lads_mobile_sdk/qr2;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/qr2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/qr2;->g:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/pt2;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    :goto_3
    return-object v1

    .line 7778
    :cond_a
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 7779
    :cond_c
    :goto_5
    :try_start_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8296
    invoke-interface {p3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final c(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    move-object/from16 v1, p4

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    instance-of v2, v1, Lads_mobile_sdk/zs2;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/zs2;

    iget v3, v2, Lads_mobile_sdk/zs2;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/zs2;->j:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/zs2;

    invoke-direct {v2, p0, v1}, Lads_mobile_sdk/zs2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/zs2;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 821
    iget v4, v2, Lads_mobile_sdk/zs2;->j:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v2, Lads_mobile_sdk/zs2;->g:Ljava/lang/String;

    iget-object v0, v2, Lads_mobile_sdk/zs2;->f:Lads_mobile_sdk/pt2;

    iget-object v4, v2, Lads_mobile_sdk/zs2;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v2, Lads_mobile_sdk/zs2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v8, v2, Lads_mobile_sdk/zs2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v9, v2, Lads_mobile_sdk/zs2;->b:Ljava/lang/String;

    iget-object v10, v2, Lads_mobile_sdk/zs2;->a:Lads_mobile_sdk/pt2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v0, p0

    move-object p0, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v11

    move-object v12, v6

    move-object v11, v8

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 826
    iget-object v4, p0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 1432
    iput-object p0, v2, Lads_mobile_sdk/zs2;->a:Lads_mobile_sdk/pt2;

    iput-object p1, v2, Lads_mobile_sdk/zs2;->b:Ljava/lang/String;

    move-object/from16 v1, p2

    iput-object v1, v2, Lads_mobile_sdk/zs2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    move-object/from16 v8, p3

    iput-object v8, v2, Lads_mobile_sdk/zs2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v4, v2, Lads_mobile_sdk/zs2;->e:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v2, Lads_mobile_sdk/zs2;->f:Lads_mobile_sdk/pt2;

    iput-object p1, v2, Lads_mobile_sdk/zs2;->g:Ljava/lang/String;

    iput v6, v2, Lads_mobile_sdk/zs2;->j:I

    invoke-interface {v4, v7, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v9, p0

    move-object v0, p1

    move-object v10, v0

    move-object v11, v1

    move-object v12, v8

    .line 1433
    :goto_1
    :try_start_0
    iget-object v1, v9, Lads_mobile_sdk/pt2;->E:Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2043
    invoke-interface {v4, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2044
    new-instance v8, Lads_mobile_sdk/ct2;

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lads_mobile_sdk/ct2;-><init>(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)V

    iput-object v7, v2, Lads_mobile_sdk/zs2;->a:Lads_mobile_sdk/pt2;

    iput-object v7, v2, Lads_mobile_sdk/zs2;->b:Ljava/lang/String;

    iput-object v7, v2, Lads_mobile_sdk/zs2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iput-object v7, v2, Lads_mobile_sdk/zs2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v7, v2, Lads_mobile_sdk/zs2;->e:Lkotlinx/coroutines/sync/Mutex;

    iput-object v7, v2, Lads_mobile_sdk/zs2;->f:Lads_mobile_sdk/pt2;

    iput-object v7, v2, Lads_mobile_sdk/zs2;->g:Ljava/lang/String;

    iput v5, v2, Lads_mobile_sdk/zs2;->j:I

    invoke-virtual {p0, v0, v1, v8, v2}, Lads_mobile_sdk/pt2;->a(Ljava/lang/String;Ljava/util/LinkedHashMap;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_5

    :goto_2
    return-object v3

    :cond_5
    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2654
    invoke-interface {v4, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static d(Lads_mobile_sdk/pt2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 2711
    instance-of v0, p3, Lads_mobile_sdk/rr2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/rr2;

    iget v1, v0, Lads_mobile_sdk/rr2;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/rr2;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/rr2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/rr2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/rr2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3551
    iget v2, v0, Lads_mobile_sdk/rr2;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p0, v0, Lads_mobile_sdk/rr2;->d:J

    iget-object p2, v0, Lads_mobile_sdk/rr2;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide p1, v0, Lads_mobile_sdk/rr2;->d:J

    iget-object p0, v0, Lads_mobile_sdk/rr2;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/rr2;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Lads_mobile_sdk/rr2;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/pt2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v4

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3552
    iget-boolean p3, p0, Lads_mobile_sdk/pt2;->s:Z

    if-nez p3, :cond_4

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 3554
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3555
    iget-object p3, p0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 4063
    iput-object p0, v0, Lads_mobile_sdk/rr2;->a:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/rr2;->b:Ljava/util/ArrayList;

    iput-object p3, v0, Lads_mobile_sdk/rr2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-wide p1, v0, Lads_mobile_sdk/rr2;->d:J

    iput v4, v0, Lads_mobile_sdk/rr2;->g:I

    invoke-interface {p3, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_5

    goto :goto_3

    .line 4064
    :cond_5
    :goto_1
    :try_start_0
    iget-wide v6, p0, Lads_mobile_sdk/pt2;->y:J

    invoke-static {p1, p2, v6, v7}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v4

    if-lez v4, :cond_9

    iget-boolean v4, p0, Lads_mobile_sdk/pt2;->x:Z

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    .line 4066
    iput-boolean v4, p0, Lads_mobile_sdk/pt2;->x:Z

    .line 4067
    iput-wide p1, p0, Lads_mobile_sdk/pt2;->y:J

    .line 4068
    invoke-virtual {p0, v5}, Lads_mobile_sdk/pt2;->a(Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    move-result-object p0

    .line 4069
    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4575
    invoke-interface {p3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 4576
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    .line 5081
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v8, p1

    move-object p2, p0

    move-wide p0, v8

    :cond_7
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/h6;

    .line 5082
    iput-object p2, v0, Lads_mobile_sdk/rr2;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/rr2;->b:Ljava/util/ArrayList;

    iput-object v5, v0, Lads_mobile_sdk/rr2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-wide p0, v0, Lads_mobile_sdk/rr2;->d:J

    iput v3, v0, Lads_mobile_sdk/rr2;->g:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5083
    invoke-static {p3, v0}, Lads_mobile_sdk/h6;->j(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    :goto_3
    return-object v1

    .line 5084
    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 5085
    :cond_9
    :goto_4
    :try_start_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5596
    invoke-interface {p3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final d(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    move-object/from16 v1, p4

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    instance-of v2, v1, Lads_mobile_sdk/dt2;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/dt2;

    iget v3, v2, Lads_mobile_sdk/dt2;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/dt2;->j:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/dt2;

    invoke-direct {v2, p0, v1}, Lads_mobile_sdk/dt2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/dt2;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 777
    iget v4, v2, Lads_mobile_sdk/dt2;->j:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v2, Lads_mobile_sdk/dt2;->g:Ljava/lang/String;

    iget-object v0, v2, Lads_mobile_sdk/dt2;->f:Lads_mobile_sdk/pt2;

    iget-object v4, v2, Lads_mobile_sdk/dt2;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v2, Lads_mobile_sdk/dt2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v8, v2, Lads_mobile_sdk/dt2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v9, v2, Lads_mobile_sdk/dt2;->b:Ljava/lang/String;

    iget-object v10, v2, Lads_mobile_sdk/dt2;->a:Lads_mobile_sdk/pt2;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v0, p0

    move-object p0, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v11

    move-object v12, v6

    move-object v11, v8

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 782
    iget-object v4, p0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 1421
    iput-object p0, v2, Lads_mobile_sdk/dt2;->a:Lads_mobile_sdk/pt2;

    iput-object p1, v2, Lads_mobile_sdk/dt2;->b:Ljava/lang/String;

    move-object/from16 v1, p2

    iput-object v1, v2, Lads_mobile_sdk/dt2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    move-object/from16 v8, p3

    iput-object v8, v2, Lads_mobile_sdk/dt2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v4, v2, Lads_mobile_sdk/dt2;->e:Lkotlinx/coroutines/sync/Mutex;

    iput-object p0, v2, Lads_mobile_sdk/dt2;->f:Lads_mobile_sdk/pt2;

    iput-object p1, v2, Lads_mobile_sdk/dt2;->g:Ljava/lang/String;

    iput v6, v2, Lads_mobile_sdk/dt2;->j:I

    invoke-interface {v4, v7, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v9, p0

    move-object v0, p1

    move-object v10, v0

    move-object v11, v1

    move-object v12, v8

    .line 1422
    :goto_1
    :try_start_0
    iget-object v1, v9, Lads_mobile_sdk/pt2;->D:Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2065
    invoke-interface {v4, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2066
    new-instance v8, Lads_mobile_sdk/gt2;

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lads_mobile_sdk/gt2;-><init>(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)V

    iput-object v7, v2, Lads_mobile_sdk/dt2;->a:Lads_mobile_sdk/pt2;

    iput-object v7, v2, Lads_mobile_sdk/dt2;->b:Ljava/lang/String;

    iput-object v7, v2, Lads_mobile_sdk/dt2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iput-object v7, v2, Lads_mobile_sdk/dt2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v7, v2, Lads_mobile_sdk/dt2;->e:Lkotlinx/coroutines/sync/Mutex;

    iput-object v7, v2, Lads_mobile_sdk/dt2;->f:Lads_mobile_sdk/pt2;

    iput-object v7, v2, Lads_mobile_sdk/dt2;->g:Ljava/lang/String;

    iput v5, v2, Lads_mobile_sdk/dt2;->j:I

    invoke-virtual {p0, v0, v1, v8, v2}, Lads_mobile_sdk/pt2;->a(Ljava/lang/String;Ljava/util/LinkedHashMap;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_5

    :goto_2
    return-object v3

    :cond_5
    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2709
    invoke-interface {v4, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final synthetic d(Lads_mobile_sdk/pt2;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 70
    iget-object p0, p0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic e(Lads_mobile_sdk/pt2;)Lads_mobile_sdk/ur3;
    .locals 0

    .line 70
    iget-object p0, p0, Lads_mobile_sdk/pt2;->d:Lads_mobile_sdk/ur3;

    return-object p0
.end method


# virtual methods
.method public final a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23923
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/pt2;->c(Lads_mobile_sdk/pt2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/h6;Ljava/util/List;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 18074
    instance-of v0, p6, Lads_mobile_sdk/dr2;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lads_mobile_sdk/dr2;

    iget v1, v0, Lads_mobile_sdk/dr2;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/dr2;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/dr2;

    invoke-direct {v0, p0, p6}, Lads_mobile_sdk/dr2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p6, v0, Lads_mobile_sdk/dr2;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 19084
    iget v2, v0, Lads_mobile_sdk/dr2;->k:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/dr2;->b:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/iv;

    iget-object p2, v0, Lads_mobile_sdk/dr2;->a:Ljava/lang/Object;

    check-cast p2, Lads_mobile_sdk/iv;

    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/dr2;->e:Lads_mobile_sdk/iv;

    iget-object p2, v0, Lads_mobile_sdk/dr2;->d:Ljava/lang/Object;

    check-cast p2, Lads_mobile_sdk/h6;

    iget-object p3, v0, Lads_mobile_sdk/dr2;->c:Ljava/lang/Object;

    check-cast p3, Lads_mobile_sdk/iv;

    iget-object p4, v0, Lads_mobile_sdk/dr2;->b:Ljava/lang/Object;

    check-cast p4, Lads_mobile_sdk/iv;

    iget-object p5, v0, Lads_mobile_sdk/dr2;->a:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Boolean;

    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget p3, v0, Lads_mobile_sdk/dr2;->h:I

    iget-object p1, v0, Lads_mobile_sdk/dr2;->g:Lads_mobile_sdk/iv;

    iget-object p2, v0, Lads_mobile_sdk/dr2;->f:Lads_mobile_sdk/iv;

    iget-object p4, v0, Lads_mobile_sdk/dr2;->e:Lads_mobile_sdk/iv;

    iget-object p5, v0, Lads_mobile_sdk/dr2;->d:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Boolean;

    iget-object v2, v0, Lads_mobile_sdk/dr2;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v5, v0, Lads_mobile_sdk/dr2;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v7, v0, Lads_mobile_sdk/dr2;->a:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/h6;

    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v2

    move-object v2, p1

    move-object p1, v7

    move-object v7, p6

    move-object p6, p5

    move-object p5, v8

    goto :goto_1

    :cond_4
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19665
    invoke-static {}, Lads_mobile_sdk/hv;->v()Lads_mobile_sdk/gv;

    move-result-object p6

    const-string v2, "newBuilder(...)"

    invoke-static {p6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19666
    const-string v2, "builder"

    invoke-static {p6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19696
    new-instance v2, Lads_mobile_sdk/iv;

    .line 19697
    invoke-direct {v2, p6}, Lads_mobile_sdk/iv;-><init>(Lads_mobile_sdk/gv;)V

    .line 19698
    iput-object p1, v0, Lads_mobile_sdk/dr2;->a:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/dr2;->b:Ljava/lang/Object;

    iput-object p4, v0, Lads_mobile_sdk/dr2;->c:Ljava/lang/Object;

    iput-object p5, v0, Lads_mobile_sdk/dr2;->d:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/dr2;->e:Lads_mobile_sdk/iv;

    iput-object v2, v0, Lads_mobile_sdk/dr2;->f:Lads_mobile_sdk/iv;

    iput-object v2, v0, Lads_mobile_sdk/dr2;->g:Lads_mobile_sdk/iv;

    iput p3, v0, Lads_mobile_sdk/dr2;->h:I

    iput v5, v0, Lads_mobile_sdk/dr2;->k:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/pt2;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_5

    goto/16 :goto_5

    :cond_5
    move-object v5, p2

    move-object v7, p6

    move-object p2, v2

    move-object p6, p5

    move-object p5, p4

    move-object p4, p2

    .line 19699
    :goto_1
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 19700
    iget-object v2, v2, Lads_mobile_sdk/iv;->a:Lads_mobile_sdk/gv;

    .line 19701
    invoke-virtual {v2, v7}, Lads_mobile_sdk/gv;->e(I)V

    .line 19702
    iget-object v2, p2, Lads_mobile_sdk/iv;->a:Lads_mobile_sdk/gv;

    .line 19703
    invoke-virtual {v2, p3}, Lads_mobile_sdk/gv;->a(I)V

    .line 19704
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p3

    .line 19705
    iget-object v2, p2, Lads_mobile_sdk/iv;->a:Lads_mobile_sdk/gv;

    invoke-virtual {v2, p3}, Lads_mobile_sdk/gv;->b(I)V

    if-eqz p1, :cond_a

    .line 19706
    iget-object p3, p1, Lads_mobile_sdk/h6;->k:Lads_mobile_sdk/j53;

    .line 19707
    const-string v2, "<this>"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19756
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    .line 19765
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p3, Lads_mobile_sdk/t11;->j:Lads_mobile_sdk/t11;

    goto :goto_2

    .line 19766
    :pswitch_1
    sget-object p3, Lads_mobile_sdk/t11;->f:Lads_mobile_sdk/t11;

    goto :goto_2

    .line 19767
    :pswitch_2
    sget-object p3, Lads_mobile_sdk/t11;->e:Lads_mobile_sdk/t11;

    goto :goto_2

    .line 19768
    :pswitch_3
    sget-object p3, Lads_mobile_sdk/t11;->h:Lads_mobile_sdk/t11;

    goto :goto_2

    .line 19769
    :pswitch_4
    sget-object p3, Lads_mobile_sdk/t11;->d:Lads_mobile_sdk/t11;

    goto :goto_2

    .line 19770
    :pswitch_5
    sget-object p3, Lads_mobile_sdk/t11;->i:Lads_mobile_sdk/t11;

    goto :goto_2

    .line 19771
    :pswitch_6
    sget-object p3, Lads_mobile_sdk/t11;->c:Lads_mobile_sdk/t11;

    goto :goto_2

    .line 19772
    :pswitch_7
    sget-object p3, Lads_mobile_sdk/t11;->g:Lads_mobile_sdk/t11;

    goto :goto_2

    .line 19773
    :pswitch_8
    sget-object p3, Lads_mobile_sdk/t11;->b:Lads_mobile_sdk/t11;

    .line 19774
    :goto_2
    const-string v2, "value"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19870
    iget-object v5, p2, Lads_mobile_sdk/iv;->a:Lads_mobile_sdk/gv;

    invoke-virtual {v5, p3}, Lads_mobile_sdk/gv;->a(Lads_mobile_sdk/t11;)V

    .line 19871
    iget-object p3, p1, Lads_mobile_sdk/h6;->b:Ljava/lang/String;

    .line 19872
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19992
    iget-object v2, p2, Lads_mobile_sdk/iv;->a:Lads_mobile_sdk/gv;

    invoke-virtual {v2, p3}, Lads_mobile_sdk/gv;->a(Ljava/lang/String;)V

    .line 19993
    iget p3, p1, Lads_mobile_sdk/h6;->p:I

    .line 19994
    iget-object v2, p2, Lads_mobile_sdk/iv;->a:Lads_mobile_sdk/gv;

    invoke-virtual {v2, p3}, Lads_mobile_sdk/gv;->c(I)V

    if-eqz p5, :cond_6

    .line 19995
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    move-object p5, p6

    move p6, p3

    move-object p3, p2

    goto :goto_4

    :cond_6
    iput-object p6, v0, Lads_mobile_sdk/dr2;->a:Ljava/lang/Object;

    iput-object p4, v0, Lads_mobile_sdk/dr2;->b:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/dr2;->c:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/dr2;->d:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/dr2;->e:Lads_mobile_sdk/iv;

    iput-object v6, v0, Lads_mobile_sdk/dr2;->f:Lads_mobile_sdk/iv;

    iput-object v6, v0, Lads_mobile_sdk/dr2;->g:Lads_mobile_sdk/iv;

    iput v4, v0, Lads_mobile_sdk/dr2;->k:I

    .line 19996
    invoke-static {p1, v0}, Lads_mobile_sdk/h6;->f(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    goto :goto_5

    :cond_7
    move-object p5, p6

    move-object p6, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p3

    .line 19997
    :goto_3
    check-cast p6, Ljava/lang/Number;

    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    move-result p6

    move-object v8, p3

    move-object p3, p1

    move-object p1, p2

    move-object p2, v8

    .line 19998
    :goto_4
    iget-object p3, p3, Lads_mobile_sdk/iv;->a:Lads_mobile_sdk/gv;

    .line 19999
    invoke-virtual {p3, p6}, Lads_mobile_sdk/gv;->d(I)V

    if-eqz p5, :cond_8

    .line 20000
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_7

    :cond_8
    iput-object p4, v0, Lads_mobile_sdk/dr2;->a:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/dr2;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/dr2;->c:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/dr2;->d:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/dr2;->e:Lads_mobile_sdk/iv;

    iput-object v6, v0, Lads_mobile_sdk/dr2;->f:Lads_mobile_sdk/iv;

    iput-object v6, v0, Lads_mobile_sdk/dr2;->g:Lads_mobile_sdk/iv;

    iput v3, v0, Lads_mobile_sdk/dr2;->k:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20001
    invoke-static {p1, v0}, Lads_mobile_sdk/h6;->e(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_9

    :goto_5
    return-object v1

    :cond_9
    move-object p1, p2

    move-object p2, p4

    .line 20002
    :goto_6
    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    move-object p4, p2

    move-object p2, p1

    move p1, p3

    .line 20003
    :goto_7
    iget-object p2, p2, Lads_mobile_sdk/iv;->a:Lads_mobile_sdk/gv;

    .line 20004
    invoke-virtual {p2, p1}, Lads_mobile_sdk/gv;->a(Z)V

    .line 20005
    :cond_a
    iget-object p1, p4, Lads_mobile_sdk/iv;->a:Lads_mobile_sdk/gv;

    .line 20006
    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/hv;

    return-object p1

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
    .end packed-switch
.end method

.method public final a(Lads_mobile_sdk/s11;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 23924
    instance-of v2, v0, Lads_mobile_sdk/es2;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/es2;

    iget v3, v2, Lads_mobile_sdk/es2;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/es2;->j:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/es2;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/es2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v2

    iget-object v0, v9, Lads_mobile_sdk/es2;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 24097
    iget v3, v9, Lads_mobile_sdk/es2;->j:I

    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    iget-object v3, v9, Lads_mobile_sdk/es2;->e:Lads_mobile_sdk/uj2;

    iget-object v4, v9, Lads_mobile_sdk/es2;->d:Ljava/io/Closeable;

    iget-object v5, v9, Lads_mobile_sdk/es2;->c:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v6, v9, Lads_mobile_sdk/es2;->b:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v9, Lads_mobile_sdk/es2;->a:Lads_mobile_sdk/pt2;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    .line 24098
    :pswitch_2
    iget-object v3, v9, Lads_mobile_sdk/es2;->g:Lads_mobile_sdk/pt2;

    iget-object v4, v9, Lads_mobile_sdk/es2;->f:Ljava/util/List;

    iget-object v5, v9, Lads_mobile_sdk/es2;->e:Lads_mobile_sdk/uj2;

    iget-object v6, v9, Lads_mobile_sdk/es2;->d:Ljava/io/Closeable;

    iget-object v7, v9, Lads_mobile_sdk/es2;->c:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/rr3;

    iget-object v8, v9, Lads_mobile_sdk/es2;->b:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    iget-object v12, v9, Lads_mobile_sdk/es2;->a:Lads_mobile_sdk/pt2;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v13, v5

    move-object v5, v4

    move-object v4, v12

    move-object v12, v13

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    goto/16 :goto_b

    .line 24099
    :pswitch_3
    iget-object v3, v9, Lads_mobile_sdk/es2;->e:Lads_mobile_sdk/uj2;

    iget-object v4, v9, Lads_mobile_sdk/es2;->d:Ljava/io/Closeable;

    iget-object v5, v9, Lads_mobile_sdk/es2;->c:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v6, v9, Lads_mobile_sdk/es2;->b:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v9, Lads_mobile_sdk/es2;->a:Lads_mobile_sdk/pt2;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_5

    .line 24100
    :pswitch_4
    iget-object v3, v9, Lads_mobile_sdk/es2;->g:Lads_mobile_sdk/pt2;

    iget-object v4, v9, Lads_mobile_sdk/es2;->f:Ljava/util/List;

    iget-object v5, v9, Lads_mobile_sdk/es2;->e:Lads_mobile_sdk/uj2;

    iget-object v6, v9, Lads_mobile_sdk/es2;->d:Ljava/io/Closeable;

    iget-object v7, v9, Lads_mobile_sdk/es2;->c:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/rr3;

    iget-object v8, v9, Lads_mobile_sdk/es2;->b:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    iget-object v12, v9, Lads_mobile_sdk/es2;->a:Lads_mobile_sdk/pt2;

    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v13, v5

    move-object v5, v4

    move-object v4, v12

    move-object v12, v13

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    goto/16 :goto_5

    .line 24101
    :pswitch_5
    iget-object v3, v9, Lads_mobile_sdk/es2;->c:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v9, Lads_mobile_sdk/es2;->b:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/s11;

    iget-object v6, v9, Lads_mobile_sdk/es2;->a:Lads_mobile_sdk/pt2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v5

    move-object v5, v3

    move-object/from16 v3, v16

    goto :goto_1

    :pswitch_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24102
    iget-object v0, v1, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 25064
    iput-object v1, v9, Lads_mobile_sdk/es2;->a:Lads_mobile_sdk/pt2;

    move-object/from16 v3, p1

    iput-object v3, v9, Lads_mobile_sdk/es2;->b:Ljava/lang/Object;

    iput-object v0, v9, Lads_mobile_sdk/es2;->c:Ljava/lang/Object;

    iput v4, v9, Lads_mobile_sdk/es2;->j:I

    invoke-interface {v0, v11, v9}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1

    goto/16 :goto_9

    :cond_1
    move-object v5, v0

    move-object v6, v1

    .line 25065
    :goto_1
    :try_start_4
    iget-boolean v0, v6, Lads_mobile_sdk/pt2;->F:Z

    if-nez v0, :cond_2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    .line 26030
    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 26031
    :cond_2
    :try_start_5
    iput-boolean v10, v6, Lads_mobile_sdk/pt2;->F:Z

    .line 26033
    invoke-virtual {v6}, Lads_mobile_sdk/pt2;->g()Ljava/util/List;

    move-result-object v0

    .line 26034
    iget-object v7, v6, Lads_mobile_sdk/pt2;->e:Lads_mobile_sdk/g83;

    .line 27000
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 27001
    new-instance v12, Lads_mobile_sdk/ks3;

    .line 27002
    new-instance v13, Lads_mobile_sdk/n03;

    invoke-direct {v13}, Lads_mobile_sdk/n03;-><init>()V

    .line 27003
    new-instance v14, Lads_mobile_sdk/tn1;

    invoke-direct {v14}, Lads_mobile_sdk/tn1;-><init>()V

    .line 27004
    new-instance v15, Lads_mobile_sdk/m33;

    invoke-direct {v15}, Lads_mobile_sdk/m33;-><init>()V

    .line 27005
    new-instance v4, Lads_mobile_sdk/zb;

    invoke-direct {v4}, Lads_mobile_sdk/zb;-><init>()V

    .line 27006
    invoke-direct {v12, v13, v14, v15, v4}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 27007
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 27008
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v4, :cond_b

    .line 27009
    invoke-static {v7, v3, v8, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    .line 27010
    :try_start_6
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    invoke-virtual {v3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    .line 27011
    iput-object v6, v9, Lads_mobile_sdk/es2;->a:Lads_mobile_sdk/pt2;

    iput-object v5, v9, Lads_mobile_sdk/es2;->b:Ljava/lang/Object;

    iput-object v4, v9, Lads_mobile_sdk/es2;->c:Ljava/lang/Object;

    iput-object v4, v9, Lads_mobile_sdk/es2;->d:Ljava/io/Closeable;

    iput-object v3, v9, Lads_mobile_sdk/es2;->e:Lads_mobile_sdk/uj2;

    iput-object v0, v9, Lads_mobile_sdk/es2;->f:Ljava/util/List;

    iput-object v6, v9, Lads_mobile_sdk/es2;->g:Lads_mobile_sdk/pt2;

    const/4 v7, 0x2

    iput v7, v9, Lads_mobile_sdk/es2;->j:I

    invoke-virtual {v6, v0, v9}, Lads_mobile_sdk/pt2;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-ne v7, v2, :cond_3

    goto/16 :goto_9

    :cond_3
    move-object v12, v3

    move-object v13, v4

    move-object v14, v13

    move-object v15, v5

    move-object v3, v6

    move-object v4, v3

    move-object v5, v0

    move-object v0, v7

    .line 27012
    :goto_2
    :try_start_7
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput-object v4, v9, Lads_mobile_sdk/es2;->a:Lads_mobile_sdk/pt2;

    iput-object v15, v9, Lads_mobile_sdk/es2;->b:Ljava/lang/Object;

    iput-object v14, v9, Lads_mobile_sdk/es2;->c:Ljava/lang/Object;

    iput-object v13, v9, Lads_mobile_sdk/es2;->d:Ljava/io/Closeable;

    iput-object v12, v9, Lads_mobile_sdk/es2;->e:Lads_mobile_sdk/uj2;

    iput-object v11, v9, Lads_mobile_sdk/es2;->f:Ljava/util/List;

    iput-object v11, v9, Lads_mobile_sdk/es2;->g:Lads_mobile_sdk/pt2;

    const/4 v0, 0x3

    iput v0, v9, Lads_mobile_sdk/es2;->j:I

    move-object v0, v4

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 27013
    invoke-virtual/range {v3 .. v9}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/h6;Ljava/util/List;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-ne v3, v2, :cond_4

    goto/16 :goto_9

    :cond_4
    move-object v7, v0

    move-object v0, v3

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    .line 27014
    :goto_3
    :try_start_8
    check-cast v0, Lads_mobile_sdk/hv;

    .line 27021
    iput-object v0, v3, Lads_mobile_sdk/uj2;->L:Lads_mobile_sdk/hv;

    .line 27023
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27992
    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_5

    .line 27993
    check-cast v0, Lads_mobile_sdk/i01;

    .line 27994
    invoke-static {v0, v10}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 27995
    :cond_5
    :try_start_9
    invoke-static {v4, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_4
    move-object v5, v6

    goto/16 :goto_8

    :catchall_4
    move-exception v0

    goto/16 :goto_d

    :catchall_5
    move-exception v0

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object v6, v5

    move-object v5, v4

    .line 28003
    :goto_5
    :try_start_a
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 28007
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_a

    .line 28009
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_6

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_6

    .line 28015
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 28021
    :cond_6
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_9

    .line 28022
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8

    .line 28023
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_7

    throw v0

    .line 28024
    :cond_7
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 28025
    :cond_8
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 28026
    :cond_9
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 28027
    :cond_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    .line 28028
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_8
    move-exception v0

    :try_start_c
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :catchall_9
    move-exception v0

    move-object v5, v6

    goto/16 :goto_c

    .line 28062
    :cond_b
    :try_start_d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x1

    invoke-static {v3, v4, v7}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    .line 28063
    :try_start_e
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    invoke-virtual {v3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    .line 28064
    iput-object v6, v9, Lads_mobile_sdk/es2;->a:Lads_mobile_sdk/pt2;

    iput-object v5, v9, Lads_mobile_sdk/es2;->b:Ljava/lang/Object;

    iput-object v4, v9, Lads_mobile_sdk/es2;->c:Ljava/lang/Object;

    iput-object v4, v9, Lads_mobile_sdk/es2;->d:Ljava/io/Closeable;

    iput-object v3, v9, Lads_mobile_sdk/es2;->e:Lads_mobile_sdk/uj2;

    iput-object v0, v9, Lads_mobile_sdk/es2;->f:Ljava/util/List;

    iput-object v6, v9, Lads_mobile_sdk/es2;->g:Lads_mobile_sdk/pt2;

    const/4 v7, 0x4

    iput v7, v9, Lads_mobile_sdk/es2;->j:I

    invoke-virtual {v6, v0, v9}, Lads_mobile_sdk/pt2;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    if-ne v7, v2, :cond_c

    goto/16 :goto_9

    :cond_c
    move-object v12, v3

    move-object v13, v4

    move-object v14, v13

    move-object v15, v5

    move-object v3, v6

    move-object v4, v3

    move-object v5, v0

    move-object v0, v7

    .line 28065
    :goto_6
    :try_start_f
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput-object v4, v9, Lads_mobile_sdk/es2;->a:Lads_mobile_sdk/pt2;

    iput-object v15, v9, Lads_mobile_sdk/es2;->b:Ljava/lang/Object;

    iput-object v14, v9, Lads_mobile_sdk/es2;->c:Ljava/lang/Object;

    iput-object v13, v9, Lads_mobile_sdk/es2;->d:Ljava/io/Closeable;

    iput-object v12, v9, Lads_mobile_sdk/es2;->e:Lads_mobile_sdk/uj2;

    iput-object v11, v9, Lads_mobile_sdk/es2;->f:Ljava/util/List;

    iput-object v11, v9, Lads_mobile_sdk/es2;->g:Lads_mobile_sdk/pt2;

    const/4 v0, 0x5

    iput v0, v9, Lads_mobile_sdk/es2;->j:I

    move-object v0, v4

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 28066
    invoke-virtual/range {v3 .. v9}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/h6;Ljava/util/List;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-ne v3, v2, :cond_d

    goto :goto_9

    :cond_d
    move-object v7, v0

    move-object v0, v3

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    .line 28067
    :goto_7
    :try_start_10
    check-cast v0, Lads_mobile_sdk/hv;

    .line 28074
    iput-object v0, v3, Lads_mobile_sdk/uj2;->L:Lads_mobile_sdk/hv;

    .line 28076
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29082
    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_e

    .line 29083
    check-cast v0, Lads_mobile_sdk/i01;

    .line 29084
    invoke-static {v0, v10}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 29085
    :cond_e
    :try_start_11
    invoke-static {v4, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto/16 :goto_4

    .line 29086
    :goto_8
    :try_start_12
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    .line 30043
    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 30044
    iput-object v11, v9, Lads_mobile_sdk/es2;->a:Lads_mobile_sdk/pt2;

    iput-object v11, v9, Lads_mobile_sdk/es2;->b:Ljava/lang/Object;

    iput-object v11, v9, Lads_mobile_sdk/es2;->c:Ljava/lang/Object;

    iput-object v11, v9, Lads_mobile_sdk/es2;->d:Ljava/io/Closeable;

    iput-object v11, v9, Lads_mobile_sdk/es2;->e:Lads_mobile_sdk/uj2;

    const/4 v0, 0x6

    iput v0, v9, Lads_mobile_sdk/es2;->j:I

    invoke-virtual {v7, v9}, Lads_mobile_sdk/pt2;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_f

    :goto_9
    return-object v2

    .line 30045
    :cond_f
    :goto_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_a
    move-exception v0

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    goto :goto_b

    :catchall_b
    move-exception v0

    move-object v6, v5

    move-object v5, v4

    .line 31053
    :goto_b
    :try_start_13
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 31057
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_14

    .line 31059
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_10

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_10

    .line 31065
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 31071
    :cond_10
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_13

    .line 31072
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_12

    .line 31073
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_11

    throw v0

    .line 31074
    :cond_11
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 31075
    :cond_12
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 31076
    :cond_13
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 31077
    :cond_14
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    :catchall_c
    move-exception v0

    move-object v2, v0

    .line 31078
    :try_start_14
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    :catchall_d
    move-exception v0

    :try_start_15
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :catchall_e
    move-exception v0

    :goto_c
    move-object v6, v5

    .line 31079
    :goto_d
    invoke-interface {v6, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/util/LinkedHashMap;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    const-string v0, "There is already a PreloadConfiguration for preload ID "

    .line 31080
    instance-of v1, p4, Lads_mobile_sdk/ys2;

    if-eqz v1, :cond_0

    move-object v1, p4

    check-cast v1, Lads_mobile_sdk/ys2;

    iget v2, v1, Lads_mobile_sdk/ys2;->h:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/ys2;->h:I

    goto :goto_0

    :cond_0
    new-instance v1, Lads_mobile_sdk/ys2;

    invoke-direct {v1, p0, p4}, Lads_mobile_sdk/ys2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v1, Lads_mobile_sdk/ys2;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 31081
    iget v3, v1, Lads_mobile_sdk/ys2;->h:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v1, Lads_mobile_sdk/ys2;->c:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v1, Lads_mobile_sdk/ys2;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    iget-object p3, v1, Lads_mobile_sdk/ys2;->a:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    :cond_3
    iget-object p1, v1, Lads_mobile_sdk/ys2;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object p3, v1, Lads_mobile_sdk/ys2;->d:Lkotlin/jvm/functions/Function3;

    iget-object p2, v1, Lads_mobile_sdk/ys2;->c:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    iget-object v3, v1, Lads_mobile_sdk/ys2;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, v1, Lads_mobile_sdk/ys2;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/pt2;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p4, p1

    move-object p1, v3

    goto :goto_1

    :cond_4
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31087
    iget-object p4, p0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 31872
    iput-object p0, v1, Lads_mobile_sdk/ys2;->a:Ljava/lang/Object;

    iput-object p1, v1, Lads_mobile_sdk/ys2;->b:Ljava/lang/Object;

    iput-object p2, v1, Lads_mobile_sdk/ys2;->c:Ljava/lang/Object;

    iput-object p3, v1, Lads_mobile_sdk/ys2;->d:Lkotlin/jvm/functions/Function3;

    iput-object p4, v1, Lads_mobile_sdk/ys2;->e:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v1, Lads_mobile_sdk/ys2;->h:I

    invoke-interface {p4, v7, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_5

    goto :goto_4

    :cond_5
    move-object v6, p0

    .line 31873
    :goto_1
    :try_start_1
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 31874
    sget-object p2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    move-object p1, p4

    move-object p4, v7

    goto :goto_3

    .line 31877
    :cond_6
    iget-boolean v0, v6, Lads_mobile_sdk/pt2;->x:Z

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v3, v6, Lads_mobile_sdk/pt2;->v:Z

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object p1, v1, Lads_mobile_sdk/ys2;->a:Ljava/lang/Object;

    iput-object p2, v1, Lads_mobile_sdk/ys2;->b:Ljava/lang/Object;

    iput-object p4, v1, Lads_mobile_sdk/ys2;->c:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/ys2;->d:Lkotlin/jvm/functions/Function3;

    iput-object v7, v1, Lads_mobile_sdk/ys2;->e:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v1, Lads_mobile_sdk/ys2;->h:I

    invoke-interface {p3, v0, v3, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p3, v2, :cond_7

    goto :goto_4

    :cond_7
    move-object v8, p3

    move-object p3, p1

    move-object p1, p4

    move-object p4, v8

    :goto_2
    :try_start_2
    check-cast p4, Lads_mobile_sdk/h6;

    .line 31878
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32661
    :goto_3
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez p4, :cond_8

    const/4 p1, 0x0

    .line 32662
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 32663
    :cond_8
    iput-object v7, v1, Lads_mobile_sdk/ys2;->a:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/ys2;->b:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/ys2;->c:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/ys2;->d:Lkotlin/jvm/functions/Function3;

    iput-object v7, v1, Lads_mobile_sdk/ys2;->e:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v1, Lads_mobile_sdk/ys2;->h:I

    invoke-virtual {p4, v1}, Lads_mobile_sdk/h6;->y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_9

    :goto_4
    return-object v2

    :cond_9
    return-object p1

    :goto_5
    move-object p4, p1

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object p2, p1

    .line 33443
    :goto_6
    invoke-interface {p4, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Ljava/util/List;Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 15320
    instance-of v0, p3, Lads_mobile_sdk/br2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/br2;

    iget v1, v0, Lads_mobile_sdk/br2;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/br2;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/br2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/br2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/br2;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16325
    iget v2, v0, Lads_mobile_sdk/br2;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/br2;->a:Ljava/util/Iterator;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16905
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 16906
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lads_mobile_sdk/h6;

    .line 16907
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 17485
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17487
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 17488
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/h6;

    .line 17489
    iput-object p1, v0, Lads_mobile_sdk/br2;->a:Ljava/util/Iterator;

    iput v3, v0, Lads_mobile_sdk/br2;->d:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17490
    invoke-static {p2, v0}, Lads_mobile_sdk/h6;->d(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    return-object v1

    .line 17491
    :cond_7
    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v3, 0x0

    .line 18073
    :goto_4
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 20022
    instance-of v0, p2, Lads_mobile_sdk/hr2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/hr2;

    iget v1, v0, Lads_mobile_sdk/hr2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/hr2;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/hr2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/hr2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/hr2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 21010
    iget v2, v0, Lads_mobile_sdk/hr2;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lads_mobile_sdk/hr2;->b:I

    iget-object v2, v0, Lads_mobile_sdk/hr2;->a:Ljava/util/Iterator;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21011
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move-object v2, p1

    move p1, p2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/h6;

    .line 21012
    iput-object v2, v0, Lads_mobile_sdk/hr2;->a:Ljava/util/Iterator;

    iput p1, v0, Lads_mobile_sdk/hr2;->b:I

    iput v3, v0, Lads_mobile_sdk/hr2;->e:I

    invoke-virtual {p2, v0}, Lads_mobile_sdk/h6;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 21013
    :cond_3
    :goto_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_1

    .line 21014
    :cond_4
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;
    .locals 4

    .line 33444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33445
    sget-object v1, Lads_mobile_sdk/j53;->n:Lkotlin/enums/EnumEntries;

    .line 33446
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/j53;

    if-eqz p1, :cond_1

    .line 33447
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 33448
    :cond_1
    invoke-virtual {p0, v2}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/j53;)Ljava/util/LinkedHashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final a(Lads_mobile_sdk/j53;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 20008
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 20015
    :pswitch_1
    iget-object p1, p0, Lads_mobile_sdk/pt2;->G:Ljava/util/LinkedHashMap;

    return-object p1

    .line 20016
    :pswitch_2
    iget-object p1, p0, Lads_mobile_sdk/pt2;->E:Ljava/util/LinkedHashMap;

    return-object p1

    .line 20017
    :pswitch_3
    iget-object p1, p0, Lads_mobile_sdk/pt2;->D:Ljava/util/LinkedHashMap;

    return-object p1

    .line 20018
    :pswitch_4
    iget-object p1, p0, Lads_mobile_sdk/pt2;->C:Ljava/util/LinkedHashMap;

    return-object p1

    .line 20019
    :pswitch_5
    iget-object p1, p0, Lads_mobile_sdk/pt2;->B:Ljava/util/LinkedHashMap;

    return-object p1

    .line 20020
    :pswitch_6
    iget-object p1, p0, Lads_mobile_sdk/pt2;->A:Ljava/util/LinkedHashMap;

    return-object p1

    .line 20021
    :pswitch_7
    iget-object p1, p0, Lads_mobile_sdk/pt2;->z:Ljava/util/LinkedHashMap;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 3818
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/pt2;->b(Lads_mobile_sdk/pt2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/List;Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 2828
    instance-of v0, p3, Lads_mobile_sdk/cr2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/cr2;

    iget v1, v0, Lads_mobile_sdk/cr2;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/cr2;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/cr2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/cr2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/cr2;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3806
    iget v2, v0, Lads_mobile_sdk/cr2;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lads_mobile_sdk/cr2;->e:I

    iget-object p2, v0, Lads_mobile_sdk/cr2;->c:Lads_mobile_sdk/h6;

    iget-object v2, v0, Lads_mobile_sdk/cr2;->b:Ljava/util/List;

    iget-object v5, v0, Lads_mobile_sdk/cr2;->a:Lads_mobile_sdk/pt2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget p1, v0, Lads_mobile_sdk/cr2;->e:I

    iget-object p2, v0, Lads_mobile_sdk/cr2;->c:Lads_mobile_sdk/h6;

    iget-object v2, v0, Lads_mobile_sdk/cr2;->b:Ljava/util/List;

    iget-object v6, v0, Lads_mobile_sdk/cr2;->a:Lads_mobile_sdk/pt2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget p1, v0, Lads_mobile_sdk/cr2;->e:I

    iget-object p2, v0, Lads_mobile_sdk/cr2;->d:Ljava/util/Iterator;

    iget-object v2, v0, Lads_mobile_sdk/cr2;->c:Lads_mobile_sdk/h6;

    iget-object v9, v0, Lads_mobile_sdk/cr2;->b:Ljava/util/List;

    iget-object v10, v0, Lads_mobile_sdk/cr2;->a:Lads_mobile_sdk/pt2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_2

    :cond_5
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3810
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v10, p0

    move-object v2, v0

    move-object v0, p2

    move p2, v3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lads_mobile_sdk/h6;

    iput-object v10, v2, Lads_mobile_sdk/cr2;->a:Lads_mobile_sdk/pt2;

    iput-object p1, v2, Lads_mobile_sdk/cr2;->b:Ljava/util/List;

    iput-object v0, v2, Lads_mobile_sdk/cr2;->c:Lads_mobile_sdk/h6;

    iput-object p3, v2, Lads_mobile_sdk/cr2;->d:Ljava/util/Iterator;

    iput p2, v2, Lads_mobile_sdk/cr2;->e:I

    iput v7, v2, Lads_mobile_sdk/cr2;->h:I

    invoke-virtual {v9, v2}, Lads_mobile_sdk/h6;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_6

    goto/16 :goto_5

    :cond_6
    move-object v11, v9

    move-object v9, p1

    move p1, p2

    move-object p2, p3

    move-object p3, v11

    .line 3811
    :goto_2
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    add-int/2addr p1, p3

    move-object p3, p2

    move p2, p1

    move-object p1, v9

    goto :goto_1

    .line 3812
    :cond_7
    iput-object v10, v2, Lads_mobile_sdk/cr2;->a:Lads_mobile_sdk/pt2;

    iput-object p1, v2, Lads_mobile_sdk/cr2;->b:Ljava/util/List;

    iput-object v0, v2, Lads_mobile_sdk/cr2;->c:Lads_mobile_sdk/h6;

    iput-object v8, v2, Lads_mobile_sdk/cr2;->d:Ljava/util/Iterator;

    iput p2, v2, Lads_mobile_sdk/cr2;->e:I

    iput v6, v2, Lads_mobile_sdk/cr2;->h:I

    invoke-virtual {v10, p1, v0, v2}, Lads_mobile_sdk/pt2;->c(Ljava/util/List;Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v6, v2

    move-object v2, p1

    move p1, p2

    move-object p2, v0

    move-object v0, v6

    move-object v6, v10

    .line 3813
    :goto_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_b

    .line 3814
    iput-object v6, v0, Lads_mobile_sdk/cr2;->a:Lads_mobile_sdk/pt2;

    iput-object v2, v0, Lads_mobile_sdk/cr2;->b:Ljava/util/List;

    iput-object p2, v0, Lads_mobile_sdk/cr2;->c:Lads_mobile_sdk/h6;

    iput p1, v0, Lads_mobile_sdk/cr2;->e:I

    iput v5, v0, Lads_mobile_sdk/cr2;->h:I

    invoke-virtual {v6, v0}, Lads_mobile_sdk/pt2;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    goto :goto_5

    :cond_9
    move-object v5, v6

    .line 3815
    :goto_4
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-ge p1, p3, :cond_c

    .line 3816
    iput-object v8, v0, Lads_mobile_sdk/cr2;->a:Lads_mobile_sdk/pt2;

    iput-object v8, v0, Lads_mobile_sdk/cr2;->b:Ljava/util/List;

    iput-object v8, v0, Lads_mobile_sdk/cr2;->c:Lads_mobile_sdk/h6;

    iput v4, v0, Lads_mobile_sdk/cr2;->h:I

    invoke-virtual {v5, v2, p2, v0}, Lads_mobile_sdk/pt2;->a(Ljava/util/List;Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    :goto_5
    return-object v1

    :cond_a
    return-object p1

    :cond_b
    move v3, v7

    .line 3817
    :cond_c
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 6744
    instance-of v3, v2, Lads_mobile_sdk/ds2;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/ds2;

    iget v4, v3, Lads_mobile_sdk/ds2;->j:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/ds2;->j:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/ds2;

    invoke-direct {v3, v1, v2}, Lads_mobile_sdk/ds2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v10, v3

    iget-object v2, v10, Lads_mobile_sdk/ds2;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 7693
    iget v4, v10, Lads_mobile_sdk/ds2;->j:I

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v12, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v3, v10, Lads_mobile_sdk/ds2;->c:Ljava/io/Closeable;

    iget-object v0, v10, Lads_mobile_sdk/ds2;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v0, v10, Lads_mobile_sdk/ds2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/h6;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    .line 7694
    :pswitch_1
    iget-object v0, v10, Lads_mobile_sdk/ds2;->d:Lads_mobile_sdk/uj2;

    iget-object v4, v10, Lads_mobile_sdk/ds2;->c:Ljava/io/Closeable;

    iget-object v5, v10, Lads_mobile_sdk/ds2;->b:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v6, v10, Lads_mobile_sdk/ds2;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/h6;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v13, v4

    move-object v4, v2

    move-object v2, v0

    move-object v0, v6

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    .line 7695
    :pswitch_2
    iget-object v0, v10, Lads_mobile_sdk/ds2;->g:Lads_mobile_sdk/pt2;

    iget-object v4, v10, Lads_mobile_sdk/ds2;->f:Lads_mobile_sdk/h6;

    iget-object v5, v10, Lads_mobile_sdk/ds2;->e:Ljava/util/List;

    iget-object v6, v10, Lads_mobile_sdk/ds2;->d:Lads_mobile_sdk/uj2;

    iget-object v7, v10, Lads_mobile_sdk/ds2;->c:Ljava/io/Closeable;

    iget-object v8, v10, Lads_mobile_sdk/ds2;->b:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/rr3;

    iget-object v9, v10, Lads_mobile_sdk/ds2;->a:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/h6;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v13, v4

    move-object v4, v0

    move-object v0, v6

    move-object v6, v5

    move-object v5, v13

    move-object v13, v7

    move-object v14, v8

    move-object v15, v9

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v7

    move-object v5, v8

    goto/16 :goto_c

    .line 7696
    :pswitch_3
    iget-object v3, v10, Lads_mobile_sdk/ds2;->c:Ljava/io/Closeable;

    iget-object v0, v10, Lads_mobile_sdk/ds2;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v0, v10, Lads_mobile_sdk/ds2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/h6;

    :try_start_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    goto/16 :goto_5

    .line 7697
    :pswitch_4
    iget-object v0, v10, Lads_mobile_sdk/ds2;->d:Lads_mobile_sdk/uj2;

    iget-object v4, v10, Lads_mobile_sdk/ds2;->c:Ljava/io/Closeable;

    iget-object v5, v10, Lads_mobile_sdk/ds2;->b:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v6, v10, Lads_mobile_sdk/ds2;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/h6;

    :try_start_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v13, v4

    move-object v4, v2

    move-object v2, v0

    move-object v0, v6

    goto/16 :goto_3

    :catchall_4
    move-exception v0

    goto/16 :goto_6

    .line 7698
    :pswitch_5
    iget-object v0, v10, Lads_mobile_sdk/ds2;->g:Lads_mobile_sdk/pt2;

    iget-object v4, v10, Lads_mobile_sdk/ds2;->f:Lads_mobile_sdk/h6;

    iget-object v5, v10, Lads_mobile_sdk/ds2;->e:Ljava/util/List;

    iget-object v6, v10, Lads_mobile_sdk/ds2;->d:Lads_mobile_sdk/uj2;

    iget-object v7, v10, Lads_mobile_sdk/ds2;->c:Ljava/io/Closeable;

    iget-object v8, v10, Lads_mobile_sdk/ds2;->b:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/rr3;

    iget-object v9, v10, Lads_mobile_sdk/ds2;->a:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/h6;

    :try_start_5
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v13, v4

    move-object v4, v0

    move-object v0, v6

    move-object v6, v5

    move-object v5, v13

    move-object v13, v7

    move-object v14, v8

    move-object v15, v9

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    move-object v4, v7

    move-object v5, v8

    goto/16 :goto_6

    .line 7699
    :pswitch_6
    iget-object v0, v10, Lads_mobile_sdk/ds2;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v4, v10, Lads_mobile_sdk/ds2;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/pt2;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7700
    iput-object v1, v10, Lads_mobile_sdk/ds2;->a:Ljava/lang/Object;

    iput-object v0, v10, Lads_mobile_sdk/ds2;->b:Ljava/lang/Object;

    iput v5, v10, Lads_mobile_sdk/ds2;->j:I

    invoke-virtual {v1, v0, v10}, Lads_mobile_sdk/pt2;->c(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_1

    goto/16 :goto_9

    :cond_1
    move-object v4, v1

    .line 7701
    :goto_1
    check-cast v2, Lads_mobile_sdk/h6;

    if-nez v2, :cond_2

    return-object v12

    .line 7703
    :cond_2
    iget-object v6, v4, Lads_mobile_sdk/pt2;->e:Lads_mobile_sdk/g83;

    sget-object v7, Lads_mobile_sdk/s11;->p1:Lads_mobile_sdk/s11;

    .line 8226
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 8227
    new-instance v9, Lads_mobile_sdk/ks3;

    .line 8228
    new-instance v13, Lads_mobile_sdk/n03;

    invoke-direct {v13}, Lads_mobile_sdk/n03;-><init>()V

    .line 8229
    new-instance v14, Lads_mobile_sdk/tn1;

    invoke-direct {v14}, Lads_mobile_sdk/tn1;-><init>()V

    .line 8230
    new-instance v15, Lads_mobile_sdk/m33;

    invoke-direct {v15}, Lads_mobile_sdk/m33;-><init>()V

    .line 8231
    new-instance v5, Lads_mobile_sdk/zb;

    invoke-direct {v5}, Lads_mobile_sdk/zb;-><init>()V

    .line 8232
    invoke-direct {v9, v13, v14, v15, v5}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 8233
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 8234
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v5, :cond_c

    .line 8235
    invoke-static {v6, v7, v8, v9}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v5

    .line 8236
    :try_start_6
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v6

    invoke-virtual {v6}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v6

    .line 8240
    iput-object v2, v10, Lads_mobile_sdk/ds2;->a:Ljava/lang/Object;

    iput-object v5, v10, Lads_mobile_sdk/ds2;->b:Ljava/lang/Object;

    iput-object v5, v10, Lads_mobile_sdk/ds2;->c:Ljava/io/Closeable;

    iput-object v6, v10, Lads_mobile_sdk/ds2;->d:Lads_mobile_sdk/uj2;

    iput-object v0, v10, Lads_mobile_sdk/ds2;->e:Ljava/util/List;

    iput-object v2, v10, Lads_mobile_sdk/ds2;->f:Lads_mobile_sdk/h6;

    iput-object v4, v10, Lads_mobile_sdk/ds2;->g:Lads_mobile_sdk/pt2;

    const/4 v7, 0x2

    iput v7, v10, Lads_mobile_sdk/ds2;->j:I

    invoke-virtual {v4, v0, v10}, Lads_mobile_sdk/pt2;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    if-ne v7, v3, :cond_3

    goto/16 :goto_9

    :cond_3
    move-object v13, v6

    move-object v6, v0

    move-object v0, v13

    move-object v15, v2

    move-object v13, v5

    move-object v14, v13

    move-object v5, v15

    move-object v2, v7

    .line 8241
    :goto_2
    :try_start_7
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 8242
    iput-object v15, v10, Lads_mobile_sdk/ds2;->a:Ljava/lang/Object;

    iput-object v14, v10, Lads_mobile_sdk/ds2;->b:Ljava/lang/Object;

    iput-object v13, v10, Lads_mobile_sdk/ds2;->c:Ljava/io/Closeable;

    iput-object v0, v10, Lads_mobile_sdk/ds2;->d:Lads_mobile_sdk/uj2;

    iput-object v12, v10, Lads_mobile_sdk/ds2;->e:Ljava/util/List;

    iput-object v12, v10, Lads_mobile_sdk/ds2;->f:Lads_mobile_sdk/h6;

    iput-object v12, v10, Lads_mobile_sdk/ds2;->g:Lads_mobile_sdk/pt2;

    const/4 v2, 0x3

    iput v2, v10, Lads_mobile_sdk/ds2;->j:I

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 8243
    invoke-virtual/range {v4 .. v10}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/h6;Ljava/util/List;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-ne v2, v3, :cond_4

    goto/16 :goto_9

    :cond_4
    move-object v4, v2

    move-object v5, v14

    move-object v2, v0

    move-object v0, v15

    .line 8244
    :goto_3
    :try_start_8
    check-cast v4, Lads_mobile_sdk/hv;

    .line 8248
    iput-object v4, v2, Lads_mobile_sdk/uj2;->L:Lads_mobile_sdk/hv;

    .line 8255
    iput-object v0, v10, Lads_mobile_sdk/ds2;->a:Ljava/lang/Object;

    iput-object v5, v10, Lads_mobile_sdk/ds2;->b:Ljava/lang/Object;

    iput-object v13, v10, Lads_mobile_sdk/ds2;->c:Ljava/io/Closeable;

    iput-object v12, v10, Lads_mobile_sdk/ds2;->d:Lads_mobile_sdk/uj2;

    const/4 v2, 0x4

    iput v2, v10, Lads_mobile_sdk/ds2;->j:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8256
    invoke-static {v0, v10}, Lads_mobile_sdk/h6;->c(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-ne v2, v3, :cond_5

    goto/16 :goto_9

    :cond_5
    move-object v4, v5

    move-object v3, v13

    .line 8257
    :goto_4
    :try_start_9
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8777
    instance-of v5, v2, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_6

    .line 8778
    check-cast v2, Lads_mobile_sdk/i01;

    .line 8779
    invoke-static {v2, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 8780
    :cond_6
    invoke-static {v3, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_5
    move-object v5, v4

    move-object v4, v3

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v4, v13

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object v4, v13

    move-object v5, v14

    goto :goto_6

    :catchall_8
    move-exception v0

    move-object v4, v5

    .line 8788
    :goto_6
    :try_start_a
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 8792
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_b

    .line 8794
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_7

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_7

    .line 8800
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 8806
    :cond_7
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_a

    .line 8807
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_9

    .line 8808
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_8

    throw v0

    .line 8809
    :cond_8
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 8810
    :cond_9
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 8811
    :cond_a
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 8812
    :cond_b
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    :catchall_9
    move-exception v0

    move-object v2, v0

    .line 8813
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    :catchall_a
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 8847
    :cond_c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v7, v5, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 8848
    :try_start_c
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v6

    invoke-virtual {v6}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v6

    .line 8852
    iput-object v2, v10, Lads_mobile_sdk/ds2;->a:Ljava/lang/Object;

    iput-object v5, v10, Lads_mobile_sdk/ds2;->b:Ljava/lang/Object;

    iput-object v5, v10, Lads_mobile_sdk/ds2;->c:Ljava/io/Closeable;

    iput-object v6, v10, Lads_mobile_sdk/ds2;->d:Lads_mobile_sdk/uj2;

    iput-object v0, v10, Lads_mobile_sdk/ds2;->e:Ljava/util/List;

    iput-object v2, v10, Lads_mobile_sdk/ds2;->f:Lads_mobile_sdk/h6;

    iput-object v4, v10, Lads_mobile_sdk/ds2;->g:Lads_mobile_sdk/pt2;

    const/4 v7, 0x5

    iput v7, v10, Lads_mobile_sdk/ds2;->j:I

    invoke-virtual {v4, v0, v10}, Lads_mobile_sdk/pt2;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    if-ne v7, v3, :cond_d

    goto :goto_9

    :cond_d
    move-object v13, v6

    move-object v6, v0

    move-object v0, v13

    move-object v15, v2

    move-object v13, v5

    move-object v14, v13

    move-object v5, v15

    move-object v2, v7

    .line 8853
    :goto_7
    :try_start_d
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 8854
    iput-object v15, v10, Lads_mobile_sdk/ds2;->a:Ljava/lang/Object;

    iput-object v14, v10, Lads_mobile_sdk/ds2;->b:Ljava/lang/Object;

    iput-object v13, v10, Lads_mobile_sdk/ds2;->c:Ljava/io/Closeable;

    iput-object v0, v10, Lads_mobile_sdk/ds2;->d:Lads_mobile_sdk/uj2;

    iput-object v12, v10, Lads_mobile_sdk/ds2;->e:Ljava/util/List;

    iput-object v12, v10, Lads_mobile_sdk/ds2;->f:Lads_mobile_sdk/h6;

    iput-object v12, v10, Lads_mobile_sdk/ds2;->g:Lads_mobile_sdk/pt2;

    const/4 v2, 0x6

    iput v2, v10, Lads_mobile_sdk/ds2;->j:I

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 8855
    invoke-virtual/range {v4 .. v10}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/h6;Ljava/util/List;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    if-ne v2, v3, :cond_e

    goto :goto_9

    :cond_e
    move-object v4, v2

    move-object v5, v14

    move-object v2, v0

    move-object v0, v15

    .line 8856
    :goto_8
    :try_start_e
    check-cast v4, Lads_mobile_sdk/hv;

    .line 8860
    iput-object v4, v2, Lads_mobile_sdk/uj2;->L:Lads_mobile_sdk/hv;

    .line 8867
    iput-object v0, v10, Lads_mobile_sdk/ds2;->a:Ljava/lang/Object;

    iput-object v5, v10, Lads_mobile_sdk/ds2;->b:Ljava/lang/Object;

    iput-object v13, v10, Lads_mobile_sdk/ds2;->c:Ljava/io/Closeable;

    iput-object v12, v10, Lads_mobile_sdk/ds2;->d:Lads_mobile_sdk/uj2;

    const/4 v2, 0x7

    iput v2, v10, Lads_mobile_sdk/ds2;->j:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8868
    invoke-static {v0, v10}, Lads_mobile_sdk/h6;->c(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    if-ne v2, v3, :cond_f

    :goto_9
    return-object v3

    :cond_f
    move-object v4, v5

    move-object v3, v13

    .line 8869
    :goto_a
    :try_start_f
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9426
    instance-of v5, v2, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_10

    .line 9427
    check-cast v2, Lads_mobile_sdk/i01;

    .line 9428
    invoke-static {v2, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 9429
    :cond_10
    invoke-static {v3, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_b
    move-object v5, v4

    move-object v4, v3

    goto :goto_c

    :catchall_b
    move-exception v0

    move-object v4, v13

    goto :goto_c

    :catchall_c
    move-exception v0

    move-object v4, v13

    move-object v5, v14

    goto :goto_c

    :catchall_d
    move-exception v0

    move-object v4, v5

    .line 9437
    :goto_c
    :try_start_10
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 9441
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_15

    .line 9443
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_11

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_11

    .line 9449
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 9455
    :cond_11
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_14

    .line 9456
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_13

    .line 9457
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_12

    throw v0

    .line 9458
    :cond_12
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 9459
    :cond_13
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 9460
    :cond_14
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 9461
    :cond_15
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    :catchall_e
    move-exception v0

    move-object v2, v0

    .line 9462
    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    :catchall_f
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 8297
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/pt2;->d(Lads_mobile_sdk/pt2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/List;Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 2655
    instance-of v0, p3, Lads_mobile_sdk/ir2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/ir2;

    iget v1, v0, Lads_mobile_sdk/ir2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ir2;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/ir2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/ir2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/ir2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3652
    iget v2, v0, Lads_mobile_sdk/ir2;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/ir2;->a:Ljava/util/Iterator;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/ir2;->b:Lads_mobile_sdk/h6;

    iget-object p2, v0, Lads_mobile_sdk/ir2;->a:Ljava/util/Iterator;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4234
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4235
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lads_mobile_sdk/h6;

    .line 4236
    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 4814
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4816
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_6

    .line 4817
    :cond_6
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/h6;

    .line 4818
    iput-object p1, v0, Lads_mobile_sdk/ir2;->a:Ljava/util/Iterator;

    iput-object p2, v0, Lads_mobile_sdk/ir2;->b:Lads_mobile_sdk/h6;

    iput v5, v0, Lads_mobile_sdk/ir2;->e:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4819
    invoke-static {p2, v0}, Lads_mobile_sdk/h6;->f(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    goto :goto_3

    :cond_8
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 4820
    :goto_2
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-nez p3, :cond_b

    iput-object p2, v0, Lads_mobile_sdk/ir2;->a:Ljava/util/Iterator;

    const/4 p3, 0x0

    iput-object p3, v0, Lads_mobile_sdk/ir2;->b:Lads_mobile_sdk/h6;

    iput v4, v0, Lads_mobile_sdk/ir2;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4821
    invoke-static {p1, v0}, Lads_mobile_sdk/h6;->d(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    :goto_3
    return-object v1

    :cond_9
    move-object p1, p2

    .line 4822
    :goto_4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    move p2, v5

    goto :goto_5

    :cond_a
    move-object p2, p1

    :cond_b
    move-object p1, p2

    move p2, v3

    :goto_5
    if-eqz p2, :cond_7

    move v3, v5

    .line 5403
    :cond_c
    :goto_6
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 8298
    instance-of v0, p2, Lads_mobile_sdk/gs2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/gs2;

    iget v1, v0, Lads_mobile_sdk/gs2;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/gs2;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/gs2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/gs2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/gs2;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 9267
    iget v2, v0, Lads_mobile_sdk/gs2;->h:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lads_mobile_sdk/gs2;->e:I

    iget-object v2, v0, Lads_mobile_sdk/gs2;->d:Ljava/lang/Object;

    iget-object v4, v0, Lads_mobile_sdk/gs2;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Comparable;

    iget-object v5, v0, Lads_mobile_sdk/gs2;->b:Ljava/lang/Object;

    iget-object v6, v0, Lads_mobile_sdk/gs2;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lads_mobile_sdk/gs2;->e:I

    iget-object v2, v0, Lads_mobile_sdk/gs2;->b:Ljava/lang/Object;

    iget-object v4, v0, Lads_mobile_sdk/gs2;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object p1, v0, Lads_mobile_sdk/gs2;->c:Ljava/lang/Object;

    iget-object v2, v0, Lads_mobile_sdk/gs2;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v0, Lads_mobile_sdk/gs2;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9847
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9848
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p1

    move-object v6, p2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lads_mobile_sdk/h6;

    .line 9849
    iput-object v6, v0, Lads_mobile_sdk/gs2;->a:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/gs2;->b:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/gs2;->c:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/gs2;->h:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9850
    invoke-static {p2, v0}, Lads_mobile_sdk/h6;->d(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto/16 :goto_4

    .line 9851
    :cond_6
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 10430
    invoke-interface {v6, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10431
    :cond_7
    check-cast v6, Ljava/util/List;

    .line 10432
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 10433
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_8

    return-object v2

    .line 10434
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 10435
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9

    return-object p2

    .line 10436
    :cond_9
    move-object v5, p2

    check-cast v5, Lads_mobile_sdk/h6;

    .line 10437
    iget v6, v5, Lads_mobile_sdk/h6;->p:I

    .line 10438
    iput-object p1, v0, Lads_mobile_sdk/gs2;->a:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/gs2;->b:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/gs2;->c:Ljava/lang/Object;

    iput v6, v0, Lads_mobile_sdk/gs2;->e:I

    iput v4, v0, Lads_mobile_sdk/gs2;->h:I

    .line 10439
    invoke-static {v5, v0}, Lads_mobile_sdk/h6;->f(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    goto :goto_4

    :cond_a
    move-object v4, v2

    move-object v2, p2

    move-object p2, v4

    move-object v4, p1

    move p1, v6

    .line 10440
    :goto_3
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    int-to-double v5, p2

    int-to-double p1, p1

    div-double/2addr v5, p1

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object p1

    move-object v5, v2

    move-object v6, v4

    move-object v4, p1

    .line 11024
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 11025
    move-object p1, v2

    check-cast p1, Lads_mobile_sdk/h6;

    .line 11026
    iget p2, p1, Lads_mobile_sdk/h6;->p:I

    .line 11027
    iput-object v6, v0, Lads_mobile_sdk/gs2;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/gs2;->b:Ljava/lang/Object;

    iput-object v4, v0, Lads_mobile_sdk/gs2;->c:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/gs2;->d:Ljava/lang/Object;

    iput p2, v0, Lads_mobile_sdk/gs2;->e:I

    iput v3, v0, Lads_mobile_sdk/gs2;->h:I

    .line 11028
    invoke-static {p1, v0}, Lads_mobile_sdk/h6;->f(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    :goto_4
    return-object v1

    :cond_c
    move v9, p2

    move-object p2, p1

    move p1, v9

    .line 11029
    :goto_5
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    int-to-double v7, p2

    int-to-double p1, p1

    div-double/2addr v7, p1

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object p1

    .line 11615
    invoke-interface {v4, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_d

    move-object v4, p1

    move-object v5, v2

    .line 11619
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_b

    return-object v5
.end method

.method public final d(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 2710
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/pt2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/util/List;
    .locals 3

    .line 1
    sget-object v0, Lads_mobile_sdk/j53;->n:Lkotlin/enums/EnumEntries;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    check-cast v2, Lads_mobile_sdk/j53;

    .line 13
    invoke-virtual {p0, v2}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/j53;)Ljava/util/LinkedHashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 592
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 593
    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/pt2;->b(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/gr2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/gr2;

    iget v1, v0, Lads_mobile_sdk/gr2;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/gr2;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/gr2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/gr2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/gr2;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 130
    iget v2, v0, Lads_mobile_sdk/gr2;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lads_mobile_sdk/gr2;->a:Lads_mobile_sdk/pt2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 131
    iget-object p1, p0, Lads_mobile_sdk/pt2;->o:Lads_mobile_sdk/zd3;

    iput-object p0, v0, Lads_mobile_sdk/gr2;->a:Lads_mobile_sdk/pt2;

    iput v3, v0, Lads_mobile_sdk/gr2;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    invoke-static {p1, v0}, Lads_mobile_sdk/zd3;->d(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 133
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 134
    iget-object v1, v0, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    const-string v2, "gads:use_server_provided_total_ad_limit:enabled"

    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v2, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    if-lez p1, :cond_4

    goto :goto_2

    .line 153
    :cond_4
    iget-object p1, v0, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    const/16 v0, 0xf

    .line 155
    const-string v1, "gads:preloaded_ads:upper_bound"

    invoke-static {p1, v1, v3, v0}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    .line 156
    sget-object v2, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {p1, v1, v0, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 157
    :goto_2
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/tr2;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/tr2;

    iget v3, v2, Lads_mobile_sdk/tr2;->i:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/tr2;->i:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/tr2;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/tr2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v2

    iget-object v0, v9, Lads_mobile_sdk/tr2;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 161
    iget v3, v9, Lads_mobile_sdk/tr2;->i:I

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_6

    if-eq v3, v8, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v2, v9, Lads_mobile_sdk/tr2;->d:Lads_mobile_sdk/uj2;

    iget-object v3, v9, Lads_mobile_sdk/tr2;->c:Ljava/io/Closeable;

    iget-object v4, v9, Lads_mobile_sdk/tr2;->b:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v5, v9, Lads_mobile_sdk/tr2;->a:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_2
    iget-object v3, v9, Lads_mobile_sdk/tr2;->f:Lads_mobile_sdk/pt2;

    iget-object v5, v9, Lads_mobile_sdk/tr2;->e:Ljava/util/List;

    iget-object v6, v9, Lads_mobile_sdk/tr2;->d:Lads_mobile_sdk/uj2;

    iget-object v7, v9, Lads_mobile_sdk/tr2;->c:Ljava/io/Closeable;

    iget-object v8, v9, Lads_mobile_sdk/tr2;->b:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/rr3;

    iget-object v12, v9, Lads_mobile_sdk/tr2;->a:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/sync/Mutex;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v6

    move-object v13, v8

    move-object v14, v12

    move-object v12, v7

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object v3, v7

    move-object v4, v8

    :goto_1
    move-object v5, v12

    goto/16 :goto_d

    .line 163
    :cond_3
    iget-object v2, v9, Lads_mobile_sdk/tr2;->d:Lads_mobile_sdk/uj2;

    iget-object v3, v9, Lads_mobile_sdk/tr2;->c:Ljava/io/Closeable;

    iget-object v4, v9, Lads_mobile_sdk/tr2;->b:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v5, v9, Lads_mobile_sdk/tr2;->a:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    goto/16 :goto_8

    .line 164
    :cond_4
    iget-object v3, v9, Lads_mobile_sdk/tr2;->f:Lads_mobile_sdk/pt2;

    iget-object v4, v9, Lads_mobile_sdk/tr2;->e:Ljava/util/List;

    iget-object v5, v9, Lads_mobile_sdk/tr2;->d:Lads_mobile_sdk/uj2;

    iget-object v7, v9, Lads_mobile_sdk/tr2;->c:Ljava/io/Closeable;

    iget-object v8, v9, Lads_mobile_sdk/tr2;->b:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/rr3;

    iget-object v12, v9, Lads_mobile_sdk/tr2;->a:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/sync/Mutex;

    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v10, v5

    move-object v13, v8

    move-object v14, v12

    move-object v5, v4

    move-object v12, v7

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v7

    move-object v4, v8

    goto/16 :goto_7

    .line 165
    :cond_5
    iget-object v3, v9, Lads_mobile_sdk/tr2;->b:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    iget-object v12, v9, Lads_mobile_sdk/tr2;->a:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/pt2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v12

    move-object v12, v3

    move-object/from16 v3, v16

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 166
    iget-object v0, v1, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 1052
    iput-object v1, v9, Lads_mobile_sdk/tr2;->a:Ljava/lang/Object;

    iput-object v0, v9, Lads_mobile_sdk/tr2;->b:Ljava/lang/Object;

    iput v8, v9, Lads_mobile_sdk/tr2;->i:I

    invoke-interface {v0, v11, v9}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_7

    goto/16 :goto_a

    :cond_7
    move-object v12, v0

    move-object v3, v1

    .line 1053
    :goto_2
    :try_start_4
    iget-boolean v0, v3, Lads_mobile_sdk/pt2;->F:Z

    if-eqz v0, :cond_8

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    .line 1942
    invoke-interface {v12, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 1943
    :cond_8
    :try_start_5
    iput-boolean v8, v3, Lads_mobile_sdk/pt2;->F:Z

    .line 1945
    invoke-virtual {v3}, Lads_mobile_sdk/pt2;->g()Ljava/util/List;

    move-result-object v0

    .line 1946
    iget-object v13, v3, Lads_mobile_sdk/pt2;->e:Lads_mobile_sdk/g83;

    sget-object v14, Lads_mobile_sdk/s11;->s1:Lads_mobile_sdk/s11;

    .line 2836
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 2837
    new-instance v4, Lads_mobile_sdk/ks3;

    .line 2838
    new-instance v5, Lads_mobile_sdk/n03;

    invoke-direct {v5}, Lads_mobile_sdk/n03;-><init>()V

    .line 2839
    new-instance v8, Lads_mobile_sdk/tn1;

    invoke-direct {v8}, Lads_mobile_sdk/tn1;-><init>()V

    .line 2840
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 2841
    new-instance v6, Lads_mobile_sdk/zb;

    invoke-direct {v6}, Lads_mobile_sdk/zb;-><init>()V

    .line 2842
    invoke-direct {v4, v5, v8, v10, v6}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 2843
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 2844
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v5, :cond_11

    .line 2845
    invoke-static {v13, v14, v15, v4}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    .line 2846
    :try_start_6
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v5

    invoke-virtual {v5}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v5

    .line 2847
    iput-object v12, v9, Lads_mobile_sdk/tr2;->a:Ljava/lang/Object;

    iput-object v4, v9, Lads_mobile_sdk/tr2;->b:Ljava/lang/Object;

    iput-object v4, v9, Lads_mobile_sdk/tr2;->c:Ljava/io/Closeable;

    iput-object v5, v9, Lads_mobile_sdk/tr2;->d:Lads_mobile_sdk/uj2;

    iput-object v0, v9, Lads_mobile_sdk/tr2;->e:Ljava/util/List;

    iput-object v3, v9, Lads_mobile_sdk/tr2;->f:Lads_mobile_sdk/pt2;

    iput v7, v9, Lads_mobile_sdk/tr2;->i:I

    invoke-virtual {v3, v0, v9}, Lads_mobile_sdk/pt2;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-ne v6, v2, :cond_9

    goto/16 :goto_a

    :cond_9
    move-object v13, v4

    move-object v10, v5

    move-object v14, v12

    move-object v5, v0

    move-object v12, v13

    move-object v0, v6

    .line 2848
    :goto_3
    :try_start_7
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput-object v14, v9, Lads_mobile_sdk/tr2;->a:Ljava/lang/Object;

    iput-object v13, v9, Lads_mobile_sdk/tr2;->b:Ljava/lang/Object;

    iput-object v12, v9, Lads_mobile_sdk/tr2;->c:Ljava/io/Closeable;

    iput-object v10, v9, Lads_mobile_sdk/tr2;->d:Lads_mobile_sdk/uj2;

    iput-object v11, v9, Lads_mobile_sdk/tr2;->e:Ljava/util/List;

    iput-object v11, v9, Lads_mobile_sdk/tr2;->f:Lads_mobile_sdk/pt2;

    const/4 v0, 0x3

    iput v0, v9, Lads_mobile_sdk/tr2;->i:I

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2849
    invoke-virtual/range {v3 .. v9}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/h6;Ljava/util/List;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-ne v0, v2, :cond_a

    goto/16 :goto_a

    :cond_a
    move-object v2, v10

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    .line 2850
    :goto_4
    :try_start_8
    check-cast v0, Lads_mobile_sdk/hv;

    .line 2857
    iput-object v0, v2, Lads_mobile_sdk/uj2;->L:Lads_mobile_sdk/hv;

    .line 2859
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3752
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_b

    .line 3753
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v2, 0x0

    .line 3754
    invoke-static {v0, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3755
    :cond_b
    :try_start_9
    invoke-static {v3, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_5
    move-object v12, v5

    goto/16 :goto_c

    :catchall_4
    move-exception v0

    goto/16 :goto_f

    :goto_6
    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    goto :goto_8

    :catchall_5
    move-exception v0

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v3, v4

    :goto_7
    move-object v5, v12

    .line 3763
    :goto_8
    :try_start_a
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3767
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_10

    .line 3769
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_c

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_c

    .line 3775
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 3781
    :cond_c
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_f

    .line 3782
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_e

    .line 3783
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_d

    throw v0

    .line 3784
    :cond_d
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3785
    :cond_e
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 3786
    :cond_f
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 3787
    :cond_10
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    .line 3788
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_8
    move-exception v0

    :try_start_c
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :catchall_9
    move-exception v0

    move-object v12, v5

    goto/16 :goto_e

    .line 3822
    :cond_11
    :try_start_d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v14, v4, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    .line 3823
    :try_start_e
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v5

    invoke-virtual {v5}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v5

    .line 3824
    iput-object v12, v9, Lads_mobile_sdk/tr2;->a:Ljava/lang/Object;

    iput-object v4, v9, Lads_mobile_sdk/tr2;->b:Ljava/lang/Object;

    iput-object v4, v9, Lads_mobile_sdk/tr2;->c:Ljava/io/Closeable;

    iput-object v5, v9, Lads_mobile_sdk/tr2;->d:Lads_mobile_sdk/uj2;

    iput-object v0, v9, Lads_mobile_sdk/tr2;->e:Ljava/util/List;

    iput-object v3, v9, Lads_mobile_sdk/tr2;->f:Lads_mobile_sdk/pt2;

    const/4 v6, 0x4

    iput v6, v9, Lads_mobile_sdk/tr2;->i:I

    invoke-virtual {v3, v0, v9}, Lads_mobile_sdk/pt2;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    if-ne v6, v2, :cond_12

    goto :goto_a

    :cond_12
    move-object v13, v4

    move-object v10, v5

    move-object v14, v12

    move-object v5, v0

    move-object v12, v13

    move-object v0, v6

    .line 3825
    :goto_9
    :try_start_f
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput-object v14, v9, Lads_mobile_sdk/tr2;->a:Ljava/lang/Object;

    iput-object v13, v9, Lads_mobile_sdk/tr2;->b:Ljava/lang/Object;

    iput-object v12, v9, Lads_mobile_sdk/tr2;->c:Ljava/io/Closeable;

    iput-object v10, v9, Lads_mobile_sdk/tr2;->d:Lads_mobile_sdk/uj2;

    iput-object v11, v9, Lads_mobile_sdk/tr2;->e:Ljava/util/List;

    iput-object v11, v9, Lads_mobile_sdk/tr2;->f:Lads_mobile_sdk/pt2;

    const/4 v0, 0x5

    iput v0, v9, Lads_mobile_sdk/tr2;->i:I

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 3826
    invoke-virtual/range {v3 .. v9}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/h6;Ljava/util/List;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-ne v0, v2, :cond_13

    :goto_a
    return-object v2

    :cond_13
    move-object v2, v10

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    .line 3827
    :goto_b
    :try_start_10
    check-cast v0, Lads_mobile_sdk/hv;

    .line 3834
    iput-object v0, v2, Lads_mobile_sdk/uj2;->L:Lads_mobile_sdk/hv;

    .line 3836
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4766
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_14

    .line 4767
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v2, 0x0

    .line 4768
    invoke-static {v0, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 4769
    :cond_14
    :try_start_11
    invoke-static {v3, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto/16 :goto_5

    .line 4770
    :goto_c
    :try_start_12
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    .line 5651
    invoke-interface {v12, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_a
    move-exception v0

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    goto :goto_d

    :catchall_b
    move-exception v0

    move-object v3, v4

    goto/16 :goto_1

    .line 5704
    :goto_d
    :try_start_13
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 5708
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_19

    .line 5710
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_15

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_15

    .line 5716
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5722
    :cond_15
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_18

    .line 5723
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_17

    .line 5724
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_16

    throw v0

    .line 5725
    :cond_16
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 5726
    :cond_17
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 5727
    :cond_18
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 5728
    :cond_19
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    :catchall_c
    move-exception v0

    move-object v2, v0

    .line 5729
    :try_start_14
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    :catchall_d
    move-exception v0

    :try_start_15
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :catchall_e
    move-exception v0

    :goto_e
    move-object v5, v12

    .line 5730
    :goto_f
    invoke-interface {v5, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/nt2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/nt2;

    iget v1, v0, Lads_mobile_sdk/nt2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/nt2;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/nt2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/nt2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/nt2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 905
    iget v2, v0, Lads_mobile_sdk/nt2;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/nt2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/nt2;->a:Lads_mobile_sdk/pt2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 906
    iget-boolean p1, p0, Lads_mobile_sdk/pt2;->H:Z

    if-nez p1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 907
    :cond_3
    iget-object p1, p0, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 1366
    iput-object p0, v0, Lads_mobile_sdk/nt2;->a:Lads_mobile_sdk/pt2;

    iput-object p1, v0, Lads_mobile_sdk/nt2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/nt2;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    move-object v1, p1

    .line 1367
    :goto_1
    :try_start_0
    iget-object p1, v0, Lads_mobile_sdk/pt2;->r:Lkotlinx/coroutines/Job;

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1368
    iget-object v5, v0, Lads_mobile_sdk/pt2;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/ot2;

    invoke-direct {p1, v0, v4}, Lads_mobile_sdk/ot2;-><init>(Lads_mobile_sdk/pt2;Lkotlin/coroutines/Continuation;)V

    .line 1369
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1370
    const-string v2, "<this>"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1628
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, p1, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 1629
    iput-object p1, v0, Lads_mobile_sdk/pt2;->r:Lkotlinx/coroutines/Job;

    .line 1631
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2090
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 2091
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
